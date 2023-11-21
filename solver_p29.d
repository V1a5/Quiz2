module solver_p29;
import std.stdio;
import io;

class SortData{
    int value;
    int index;
    
    public this(int value, int index){
        this.value = value;
        this.index = index;
    }

    static SortData[] constructList(int[] data){
        SortData[] indices = new SortData[data.length];
        for(int i = 0; i<data.length; i++){
            indices[i] = new SortData(data[i], i+1);
        }
        return indices;
    }
}

void solve_sort_indexes(int[] data){
    SortData[] sortData = SortData.constructList(data);

    for (int i = 0; i < sortData.length; ++i) {
        for (int j = 0; j < sortData.length - 1; ++j) {
            if (sortData[j].value > sortData[j + 1].value) {
            swap(sortData[j], sortData[j + 1]);
            }
        }  
    }


    print!SortData.printValue(sortData);
    print!SortData.printIndex(sortData);

}
void swap(ref SortData a, ref SortData b){
    SortData temp = a;
    a = b;
    b = temp;
}