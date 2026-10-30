Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CMeshManipulator?download=true
inline.NumInlined: 1427
inline.NumDeleted: 509
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
@.str.1 = private unnamed_addr constant [35 x i8] c"src->getType() == video::EIT_16BIT\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"/opt-bench/work/luanti/luanti/irr/src/CMeshManipulator.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN5sceneL11copyIndicesEPKNS_12IIndexBufferEPNS_12CIndexBufferItEE = private unnamed_addr constant [76 x i8] c"void scene::copyIndices(const scene::IIndexBuffer *, scene::SIndexBuffer *)\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ReferenceCounter > 0\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/luanti/luanti/irr/include/IReferenceCounted.h\00", align 1
@__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv = private unnamed_addr constant [37 x i8] c"bool IReferenceCounted::drop() const\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"getIndexBuffer()->getType() == video::EIT_16BIT\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/luanti/luanti/irr/include/IMeshBuffer.h\00", align 1
@__PRETTY_FUNCTION__._ZN5scene11IMeshBuffer10getIndicesEv = private unnamed_addr constant [38 x i8] c"u16 *scene::IMeshBuffer::getIndices()\00", align 1
@_ZTVN5scene11CMeshBufferIN5video9S3DVertexEEE = linkonce_odr constant { [17 x ptr], [5 x ptr] } { [17 x ptr] [ptr inttoptr (i64 184 to ptr), ptr null, ptr @_ZTIN5scene11CMeshBufferIN5video9S3DVertexEEE, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE11getMaterialEv, ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE11getMaterialEv, ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE15getVertexBufferEv, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE15getVertexBufferEv, ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE14getIndexBufferEv, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE14getIndexBufferEv, ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE14getBoundingBoxEv, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE14setBoundingBoxERKN4core8aabbox3dIfEE, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE22recalculateBoundingBoxEv, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE6appendEPKvjPKtj, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE16setPrimitiveTypeENS_16E_PRIMITIVE_TYPEE, ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE16getPrimitiveTypeEv, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEED1Ev, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEED0Ev], [5 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr inttoptr (i64 -184 to ptr), ptr @_ZTIN5scene11CMeshBufferIN5video9S3DVertexEEE, ptr @_ZTv0_n24_N5scene11CMeshBufferIN5video9S3DVertexEED1Ev, ptr @_ZTv0_n24_N5scene11CMeshBufferIN5video9S3DVertexEED0Ev] }, comdat, align 8
@_ZTTN5scene11CMeshBufferIN5video9S3DVertexEEE = linkonce_odr unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds inrange(-24, 112) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTVN5scene11CMeshBufferIN5video9S3DVertexEEE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 112) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTCN5scene11CMeshBufferIN5video9S3DVertexEEE0_NS_11IMeshBufferE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTCN5scene11CMeshBufferIN5video9S3DVertexEEE0_NS_11IMeshBufferE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTVN5scene11CMeshBufferIN5video9S3DVertexEEE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCN5scene11CMeshBufferIN5video9S3DVertexEEE0_NS_11IMeshBufferE = linkonce_odr constant { [17 x ptr], [5 x ptr] } { [17 x ptr] [ptr inttoptr (i64 184 to ptr), ptr null, ptr @_ZTIN5scene11IMeshBufferE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN5scene11IMeshBufferD1Ev, ptr @_ZN5scene11IMeshBufferD0Ev], [5 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr inttoptr (i64 -184 to ptr), ptr @_ZTIN5scene11IMeshBufferE, ptr @_ZTv0_n24_N5scene11IMeshBufferD1Ev, ptr @_ZTv0_n24_N5scene11IMeshBufferD0Ev] }, comdat, align 8
@_ZTIN5scene11IMeshBufferE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5scene11IMeshBufferE, i32 0, i32 1, ptr @_ZTI17IReferenceCounted, i64 -6141 }, comdat, align 8
@_ZTSN5scene11IMeshBufferE = linkonce_odr constant [22 x i8] c"N5scene11IMeshBufferE\00", comdat, align 1
@_ZTIN5scene11CMeshBufferIN5video9S3DVertexEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5scene11CMeshBufferIN5video9S3DVertexEEE, ptr @_ZTIN5scene11IMeshBufferE }, comdat, align 8
@_ZTSN5scene11CMeshBufferIN5video9S3DVertexEEE = linkonce_odr constant [42 x i8] c"N5scene11CMeshBufferIN5video9S3DVertexEEE\00", comdat, align 1
@_ZTVN5scene13CVertexBufferIN5video9S3DVertexEEE = linkonce_odr constant { [19 x ptr], [5 x ptr] } { [19 x ptr] [ptr inttoptr (i64 72 to ptr), ptr null, ptr @_ZTIN5scene13CVertexBufferIN5video9S3DVertexEEE, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE13getBufferTypeEv, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE14getElementSizeEv, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE8getCountEv, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE7getDataEv, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED0Ev, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE7getTypeEv, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEE7getDataEv, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE11getPositionEj, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEE11getPositionEj, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE9getNormalEj, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEE9getNormalEj, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE10getTCoordsEj, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEE10getTCoordsEj, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE15getWeightBufferEv, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEE13useSwSkinningEv], [5 x ptr] [ptr inttoptr (i64 -72 to ptr), ptr inttoptr (i64 -72 to ptr), ptr @_ZTIN5scene13CVertexBufferIN5video9S3DVertexEEE, ptr @_ZTv0_n24_N5scene13CVertexBufferIN5video9S3DVertexEED1Ev, ptr @_ZTv0_n24_N5scene13CVertexBufferIN5video9S3DVertexEED0Ev] }, comdat, align 8
@_ZTIN5scene13IVertexBufferE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5scene13IVertexBufferE, i32 2, i32 2, ptr @_ZTI17IReferenceCounted, i64 -6141, ptr @_ZTIN5scene8HWBufferE, i64 2 }, comdat, align 8
@_ZTSN5scene13IVertexBufferE = linkonce_odr constant [24 x i8] c"N5scene13IVertexBufferE\00", comdat, align 1
@_ZTIN5scene8HWBufferE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5scene8HWBufferE, i32 0, i32 1, ptr @_ZTI17IReferenceCounted, i64 -6141 }, comdat, align 8
@_ZTSN5scene8HWBufferE = linkonce_odr constant [18 x i8] c"N5scene8HWBufferE\00", comdat, align 1
@_ZTIN5scene13CVertexBufferIN5video9S3DVertexEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE, ptr @_ZTIN5scene13IVertexBufferE }, comdat, align 8
@_ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE = linkonce_odr constant [44 x i8] c"N5scene13CVertexBufferIN5video9S3DVertexEEE\00", comdat, align 1
@_ZTVN5scene12CIndexBufferItEE = linkonce_odr constant { [11 x ptr], [5 x ptr] } { [11 x ptr] [ptr inttoptr (i64 56 to ptr), ptr null, ptr @_ZTIN5scene12CIndexBufferItEE, ptr @_ZNK5scene12CIndexBufferItE13getBufferTypeEv, ptr @_ZNK5scene12CIndexBufferItE14getElementSizeEv, ptr @_ZNK5scene12CIndexBufferItE8getCountEv, ptr @_ZNK5scene12CIndexBufferItE7getDataEv, ptr @_ZN5scene12CIndexBufferItED1Ev, ptr @_ZN5scene12CIndexBufferItED0Ev, ptr @_ZNK5scene12CIndexBufferItE7getTypeEv, ptr @_ZN5scene12CIndexBufferItE7getDataEv], [5 x ptr] [ptr inttoptr (i64 -56 to ptr), ptr inttoptr (i64 -56 to ptr), ptr @_ZTIN5scene12CIndexBufferItEE, ptr @_ZTv0_n24_N5scene12CIndexBufferItED1Ev, ptr @_ZTv0_n24_N5scene12CIndexBufferItED0Ev] }, comdat, align 8
@_ZTIN5scene12IIndexBufferE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5scene12IIndexBufferE, i32 2, i32 2, ptr @_ZTI17IReferenceCounted, i64 -6141, ptr @_ZTIN5scene8HWBufferE, i64 2 }, comdat, align 8
@_ZTSN5scene12IIndexBufferE = linkonce_odr constant [23 x i8] c"N5scene12IIndexBufferE\00", comdat, align 1
@_ZTIN5scene12CIndexBufferItEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5scene12CIndexBufferItEE, ptr @_ZTIN5scene12IIndexBufferE }, comdat, align 8
@_ZTSN5scene12CIndexBufferItEE = linkonce_odr constant [26 x i8] c"N5scene12CIndexBufferItEE\00", comdat, align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"T::getType() == src->getType()\00", align 1
@__PRETTY_FUNCTION__._ZN5scene12copyVerticesIN5video9S3DVertexEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE = private unnamed_addr constant [105 x i8] c"void scene::copyVertices(const scene::IVertexBuffer *, scene::CVertexBuffer<T> *) [T = video::S3DVertex]\00", align 1
@_ZTVN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE = linkonce_odr constant { [17 x ptr], [5 x ptr] } { [17 x ptr] [ptr inttoptr (i64 184 to ptr), ptr null, ptr @_ZTIN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE11getMaterialEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE11getMaterialEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE15getVertexBufferEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE15getVertexBufferEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE14getIndexBufferEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE14getIndexBufferEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE14getBoundingBoxEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE14setBoundingBoxERKN4core8aabbox3dIfEE, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE22recalculateBoundingBoxEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE6appendEPKvjPKtj, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE16setPrimitiveTypeENS_16E_PRIMITIVE_TYPEE, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE16getPrimitiveTypeEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEED1Ev, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEED0Ev], [5 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr inttoptr (i64 -184 to ptr), ptr @_ZTIN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE, ptr @_ZTv0_n24_N5scene11CMeshBufferIN5video17S3DVertex2TCoordsEED1Ev, ptr @_ZTv0_n24_N5scene11CMeshBufferIN5video17S3DVertex2TCoordsEED0Ev] }, comdat, align 8
@_ZTTN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE = linkonce_odr unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds inrange(-24, 112) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTVN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 112) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTCN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE0_NS_11IMeshBufferE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTCN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE0_NS_11IMeshBufferE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTVN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE0_NS_11IMeshBufferE = linkonce_odr constant { [17 x ptr], [5 x ptr] } { [17 x ptr] [ptr inttoptr (i64 184 to ptr), ptr null, ptr @_ZTIN5scene11IMeshBufferE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN5scene11IMeshBufferD1Ev, ptr @_ZN5scene11IMeshBufferD0Ev], [5 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr inttoptr (i64 -184 to ptr), ptr @_ZTIN5scene11IMeshBufferE, ptr @_ZTv0_n24_N5scene11IMeshBufferD1Ev, ptr @_ZTv0_n24_N5scene11IMeshBufferD0Ev] }, comdat, align 8
@_ZTIN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE, ptr @_ZTIN5scene11IMeshBufferE }, comdat, align 8
@_ZTSN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE = linkonce_odr constant [51 x i8] c"N5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE\00", comdat, align 1
@_ZTVN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE = linkonce_odr constant { [19 x ptr], [5 x ptr] } { [19 x ptr] [ptr inttoptr (i64 72 to ptr), ptr null, ptr @_ZTIN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE13getBufferTypeEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE14getElementSizeEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE8getCountEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE7getDataEv, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEED1Ev, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEED0Ev, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE7getTypeEv, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE7getDataEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE11getPositionEj, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE11getPositionEj, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE9getNormalEj, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE9getNormalEj, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE10getTCoordsEj, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE10getTCoordsEj, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE15getWeightBufferEv, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE13useSwSkinningEv], [5 x ptr] [ptr inttoptr (i64 -72 to ptr), ptr inttoptr (i64 -72 to ptr), ptr @_ZTIN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE, ptr @_ZTv0_n24_N5scene13CVertexBufferIN5video17S3DVertex2TCoordsEED1Ev, ptr @_ZTv0_n24_N5scene13CVertexBufferIN5video17S3DVertex2TCoordsEED0Ev] }, comdat, align 8
@_ZTIN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE, ptr @_ZTIN5scene13IVertexBufferE }, comdat, align 8
@_ZTSN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE = linkonce_odr constant [53 x i8] c"N5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE\00", comdat, align 1
@__PRETTY_FUNCTION__._ZN5scene12copyVerticesIN5video17S3DVertex2TCoordsEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE = private unnamed_addr constant [113 x i8] c"void scene::copyVertices(const scene::IVertexBuffer *, scene::CVertexBuffer<T> *) [T = video::S3DVertex2TCoords]\00", align 1
@_ZTVN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE = linkonce_odr constant { [17 x ptr], [5 x ptr] } { [17 x ptr] [ptr inttoptr (i64 184 to ptr), ptr null, ptr @_ZTIN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE11getMaterialEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertexTangentsEE11getMaterialEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertexTangentsEE15getVertexBufferEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE15getVertexBufferEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertexTangentsEE14getIndexBufferEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE14getIndexBufferEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertexTangentsEE14getBoundingBoxEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE14setBoundingBoxERKN4core8aabbox3dIfEE, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE22recalculateBoundingBoxEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE6appendEPKvjPKtj, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE16setPrimitiveTypeENS_16E_PRIMITIVE_TYPEE, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertexTangentsEE16getPrimitiveTypeEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEED1Ev, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEED0Ev], [5 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr inttoptr (i64 -184 to ptr), ptr @_ZTIN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE, ptr @_ZTv0_n24_N5scene11CMeshBufferIN5video17S3DVertexTangentsEED1Ev, ptr @_ZTv0_n24_N5scene11CMeshBufferIN5video17S3DVertexTangentsEED0Ev] }, comdat, align 8
@_ZTTN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE = linkonce_odr unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds inrange(-24, 112) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTVN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 112) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTCN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE0_NS_11IMeshBufferE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTCN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE0_NS_11IMeshBufferE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTVN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE0_NS_11IMeshBufferE = linkonce_odr constant { [17 x ptr], [5 x ptr] } { [17 x ptr] [ptr inttoptr (i64 184 to ptr), ptr null, ptr @_ZTIN5scene11IMeshBufferE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN5scene11IMeshBufferD1Ev, ptr @_ZN5scene11IMeshBufferD0Ev], [5 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr inttoptr (i64 -184 to ptr), ptr @_ZTIN5scene11IMeshBufferE, ptr @_ZTv0_n24_N5scene11IMeshBufferD1Ev, ptr @_ZTv0_n24_N5scene11IMeshBufferD0Ev] }, comdat, align 8
@_ZTIN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE, ptr @_ZTIN5scene11IMeshBufferE }, comdat, align 8
@_ZTSN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE = linkonce_odr constant [51 x i8] c"N5scene11CMeshBufferIN5video17S3DVertexTangentsEEE\00", comdat, align 1
@_ZTVN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE = linkonce_odr constant { [19 x ptr], [5 x ptr] } { [19 x ptr] [ptr inttoptr (i64 72 to ptr), ptr null, ptr @_ZTIN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE13getBufferTypeEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE14getElementSizeEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE8getCountEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE7getDataEv, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEED1Ev, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEED0Ev, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE7getTypeEv, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEE7getDataEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE11getPositionEj, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEE11getPositionEj, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE9getNormalEj, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEE9getNormalEj, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE10getTCoordsEj, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEE10getTCoordsEj, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE15getWeightBufferEv, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEE13useSwSkinningEv], [5 x ptr] [ptr inttoptr (i64 -72 to ptr), ptr inttoptr (i64 -72 to ptr), ptr @_ZTIN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE, ptr @_ZTv0_n24_N5scene13CVertexBufferIN5video17S3DVertexTangentsEED1Ev, ptr @_ZTv0_n24_N5scene13CVertexBufferIN5video17S3DVertexTangentsEED0Ev] }, comdat, align 8
@_ZTIN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE, ptr @_ZTIN5scene13IVertexBufferE }, comdat, align 8
@_ZTSN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE = linkonce_odr constant [53 x i8] c"N5scene13CVertexBufferIN5video17S3DVertexTangentsEEE\00", comdat, align 1
@__PRETTY_FUNCTION__._ZN5scene12copyVerticesIN5video17S3DVertexTangentsEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE = private unnamed_addr constant [113 x i8] c"void scene::copyVertices(const scene::IVertexBuffer *, scene::CVertexBuffer<T> *) [T = video::S3DVertexTangents]\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZNK5scene16CMeshManipulator18recalculateNormalsEPNS_11IMeshBufferEbb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !149 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(28) %i.d), !inline_history !149
  %i.i = icmp eq i32 %i.h, 0
  %i.j = load ptr, ptr %1, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(28) %i.m) ; 6 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(28) %i.u) ; 8 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(28) %i.ac)
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  br i1 %i.ah, label %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 131, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene11IMeshBuffer10getIndicesEv) #18
  unreachable

_ZN5scene11IMeshBuffer10getIndicesEv.exit.i:      ; preds = %bb.c
  %i.ai = load ptr, ptr %1, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !150 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(28) %i.al), !inline_history !150 ; 6 uses
  br i1 %2, label %.preheader130.i, label %.preheader131.i.a

.preheader131.i.a:                                ; preds = %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i
  %.not142.i = icmp eq i32 %i.y, 0
  br i1 %.not142.i, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph.i

.preheader130.i:                                  ; preds = %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i
  %.not134.i = icmp eq i32 %i.q, 0                ; 2 uses
  br i1 %.not134.i, label %.preheader129.i, label %.lr.ph136.i

.lr.ph.i:                                         ; preds = %.preheader131.i.a, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i
  %.0133.i = phi i32 [ %i.ez, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i ], [ 0, %.preheader131.i.a ] ; 4 uses
  %i.aq = zext i32 %.0133.i to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !22
  %i.at = zext i16 %i.as to i32
  %i.au = load ptr, ptr %1, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i32 noundef %i.at), !inline_history !151 ; 2 uses
  %i.bc = add nuw i32 %.0133.i, 1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.bd ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !22
  %i.bg = zext i16 %i.bf to i32
  %i.bh = load ptr, ptr %1, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(28) %i.bk, i32 noundef %i.bg), !inline_history !151 ; 2 uses
  %i.bp = add i32 %.0133.i, 2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.bq ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !22
  %i.bt = zext i16 %i.bs to i32
  %i.bu = load ptr, ptr %1, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call noundef ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(28) %i.bx, i32 noundef %i.bt), !inline_history !151 ; 2 uses
  %i.cc = load float, ptr %i.bo, align 4, !tbaa !25
  %i.cd = load float, ptr %i.bb, align 4, !tbaa !25
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.cg = load float, ptr %i.cb, align 4, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ci = load <2 x float>, ptr %i.ce, align 4, !tbaa !26 ; 2 uses
  %i.cj = load <2 x float>, ptr %i.cf, align 4, !tbaa !26 ; 3 uses
  %i.ck = fsub <2 x float> %i.ci, %i.cj           ; 2 uses
  %i.cl = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cm = insertelement <2 x float> %i.cl, float %i.cc, i64 1
  %i.cn = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.co = insertelement <2 x float> %i.cn, float %i.cd, i64 1 ; 2 uses
  %i.cp = fsub <2 x float> %i.cm, %i.co           ; 2 uses
  %i.cq = load <2 x float>, ptr %i.ch, align 4, !tbaa !26 ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cs = insertelement <2 x float> %i.cr, float %i.cg, i64 1
  %i.ct = fsub <2 x float> %i.cs, %i.co           ; 2 uses
  %i.cu = fsub <2 x float> %i.cq, %i.cj           ; 2 uses
  %i.cv = fneg <2 x float> %i.cu
  %i.cw = fmul <2 x float> %i.cp, %i.cv
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.ct, <2 x float> %i.cw) ; 5 uses
  %i.cy = extractelement <2 x float> %i.ct, i64 1
  %i.cz = fneg float %i.cy
  %i.da = extractelement <2 x float> %i.ck, i64 0
  %i.db = fmul float %i.da, %i.cz
  %i.dc = extractelement <2 x float> %i.cp, i64 1
  %i.dd = extractelement <2 x float> %i.cu, i64 0
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.dd, float %i.db) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.cx, %i.cx
  %i.df = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dg = extractelement <2 x float> %i.cx, i64 0 ; 2 uses
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.df)
  %i.di = tail call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.dh) ; 2 uses
  %i.dj = fcmp oeq float %i.di, 0.000000e+00
  br i1 %i.dj, label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.dk = fpext float %i.di to double
  %i.dl = tail call double @sqrt(double noundef %i.dk) #19
  %i.dm = fdiv double 1.000000e+00, %i.dl         ; 2 uses
  %i.dn = fpext <2 x float> %i.cx to <2 x double>
  %i.do = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x double> %i.dp, %i.dn
  %i.dr = fptrunc <2 x double> %i.dq to <2 x float>
  %i.ds = fpext float %i.de to double
  %i.dt = fmul double %i.dm, %i.ds
  %i.du = fptrunc double %i.dt to float
  br label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i

_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i: ; preds = %bb.e, %.lr.ph.i
  %.sroa.0115.0.i = phi <2 x float> [ %i.cx, %.lr.ph.i ], [ %i.dr, %bb.e ] ; 3 uses
  %.sroa.8120.0.i = phi float [ %i.de, %.lr.ph.i ], [ %i.du, %bb.e ] ; 3 uses
  %i.dv = load i16, ptr %i.ar, align 2, !tbaa !22
  %i.dw = zext i16 %i.dv to i32
  %i.dx = load ptr, ptr %1, align 8, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = tail call noundef ptr %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !20
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 88
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ed(ptr noundef nonnull align 8 dereferenceable(28) %i.ea, i32 noundef %i.dw), !inline_history !152 ; 2 uses
  store <2 x float> %.sroa.0115.0.i, ptr %i.ee, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store float %.sroa.8120.0.i, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !26
  %i.ef = load i16, ptr %i.be, align 2, !tbaa !22
  %i.eg = zext i16 %i.ef to i32
  %i.eh = load ptr, ptr %1, align 8, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = tail call noundef ptr %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !20
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 88
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.en(ptr noundef nonnull align 8 dereferenceable(28) %i.ek, i32 noundef %i.eg), !inline_history !152 ; 2 uses
  store <2 x float> %.sroa.0115.0.i, ptr %i.eo, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx125.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store float %.sroa.8120.0.i, ptr %.sroa.6.0..sroa_idx125.i, align 4, !tbaa !26
  %i.ep = load i16, ptr %i.br, align 2, !tbaa !22
  %i.eq = zext i16 %i.ep to i32
  %i.er = load ptr, ptr %1, align 8, !tbaa !20
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = tail call noundef ptr %i.et(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !20
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 88
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ex(ptr noundef nonnull align 8 dereferenceable(28) %i.eu, i32 noundef %i.eq), !inline_history !152 ; 2 uses
  store <2 x float> %.sroa.0115.0.i, ptr %i.ey, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx127.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store float %.sroa.8120.0.i, ptr %.sroa.6.0..sroa_idx127.i, align 4, !tbaa !26
  %i.ez = add i32 %.0133.i, 3                     ; 2 uses
  %i.fa = icmp ult i32 %i.ez, %i.y
  br i1 %i.fa, label %.lr.ph.i, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, !llvm.loop !153

.preheader129.i:                                  ; preds = %.lr.ph136.i, %.preheader130.i
  %.not143.i = icmp eq i32 %i.y, 0
  br i1 %.not143.i, label %.preheader.i, label %.lr.ph138.i

.lr.ph136.i:                                      ; preds = %.preheader130.i, %.lr.ph136.i
  %.078135.i = phi i32 [ %i.fk, %.lr.ph136.i ], [ 0, %.preheader130.i ] ; 2 uses
  %i.fb = load ptr, ptr %1, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = tail call noundef ptr %i.fd(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 88
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.fh(ptr noundef nonnull align 8 dereferenceable(28) %i.fe, i32 noundef %.078135.i), !inline_history !152 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.fi, align 4, !tbaa !26
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store float 0.000000e+00, ptr %i.fj, align 4, !tbaa !28
  %i.fk = add nuw i32 %.078135.i, 1               ; 2 uses
  %.not.i = icmp eq i32 %i.fk, %i.q
  br i1 %.not.i, label %.preheader129.i, label %.lr.ph136.i, !llvm.loop !154

.preheader.i:                                     ; preds = %bb.h, %.preheader129.i
  br i1 %.not134.i, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph141.i

.lr.ph138.i:                                      ; preds = %.preheader129.i, %bb.h
  %.1137.i = phi i32 [ %i.lu, %bb.h ], [ 0, %.preheader129.i ] ; 4 uses
  %i.fl = zext i32 %.1137.i to i64
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.fl ; 2 uses
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !22
  %i.fo = zext i16 %i.fn to i32
  %i.fp = load ptr, ptr %1, align 8, !tbaa !20
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = tail call noundef ptr %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !20
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 72
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.fv(ptr noundef nonnull align 8 dereferenceable(28) %i.fs, i32 noundef %i.fo), !inline_history !151 ; 2 uses
  %i.fx = add nuw i32 %.1137.i, 1
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.fy ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !22
  %i.gb = zext i16 %i.ga to i32
  %i.gc = load ptr, ptr %1, align 8, !tbaa !20
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = tail call noundef ptr %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !20
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.gi(ptr noundef nonnull align 8 dereferenceable(28) %i.gf, i32 noundef %i.gb), !inline_history !151 ; 2 uses
  %i.gk = add i32 %.1137.i, 2
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.gl ; 2 uses
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !22
  %i.go = zext i16 %i.gn to i32
  %i.gp = load ptr, ptr %1, align 8, !tbaa !20
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = tail call noundef ptr %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !20
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 72
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.gv(ptr noundef nonnull align 8 dereferenceable(28) %i.gs, i32 noundef %i.go), !inline_history !151 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.ha = load float, ptr %i.fw, align 4, !tbaa !25 ; 2 uses
  %i.hb = load <2 x float>, ptr %i.gj, align 4, !tbaa !26 ; 4 uses
  %i.hc = load <2 x float>, ptr %i.gw, align 4, !tbaa !26 ; 4 uses
  %i.hd = load <2 x float>, ptr %i.gx, align 4, !tbaa !26 ; 5 uses
  %i.he = load <2 x float>, ptr %i.gy, align 4, !tbaa !26 ; 5 uses
  %i.hf = fsub <2 x float> %i.hd, %i.he           ; 2 uses
  %i.hg = shufflevector <2 x float> %i.hd, <2 x float> %i.hb, <2 x i32> <i32 1, i32 2>
  %i.hh = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hi = insertelement <2 x float> %i.hh, float %i.ha, i64 1 ; 2 uses
  %i.hj = fsub <2 x float> %i.hg, %i.hi           ; 2 uses
  %i.hk = load <2 x float>, ptr %i.gz, align 4, !tbaa !26 ; 5 uses
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> %i.hc, <2 x i32> <i32 1, i32 2>
  %i.hm = fsub <2 x float> %i.hl, %i.hi           ; 2 uses
  %i.hn = fsub <2 x float> %i.hk, %i.he           ; 2 uses
  %i.ho = fneg <2 x float> %i.hn
  %i.hp = fmul <2 x float> %i.hj, %i.ho
  %i.hq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.hm, <2 x float> %i.hp) ; 5 uses
  %i.hr = extractelement <2 x float> %i.hm, i64 1
  %i.hs = fneg float %i.hr
  %i.ht = extractelement <2 x float> %i.hf, i64 0
  %i.hu = fmul float %i.ht, %i.hs
  %i.hv = extractelement <2 x float> %i.hj, i64 1
  %i.hw = extractelement <2 x float> %i.hn, i64 0
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hv, float %i.hw, float %i.hu) ; 4 uses
  %foldExtExtBinop83 = fmul <2 x float> %i.hq, %i.hq
  %i.hy = extractelement <2 x float> %foldExtExtBinop83, i64 1
  %i.hz = extractelement <2 x float> %i.hq, i64 0 ; 2 uses
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.hz, float %i.hz, float %i.hy)
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.hx, float %i.ia) ; 2 uses
  %i.ic = fcmp oeq float %i.ib, 0.000000e+00
  br i1 %i.ic, label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit83.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph138.i
  %i.id = fpext float %i.ib to double
  %i.ie = tail call double @sqrt(double noundef %i.id) #19
  %i.if = fdiv double 1.000000e+00, %i.ie         ; 2 uses
  %i.ig = fpext <2 x float> %i.hq to <2 x double>
  %i.ih = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x double> %i.ii, %i.ig
  %i.ik = fptrunc <2 x double> %i.ij to <2 x float>
  %i.il = fpext float %i.hx to double
  %i.im = fmul double %i.if, %i.il
  %i.in = fptrunc double %i.im to float
  br label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit83.i

_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit83.i: ; preds = %bb.f, %.lr.ph138.i
  %.sroa.8.0.i = phi float [ %i.hx, %.lr.ph138.i ], [ %i.in, %bb.f ] ; 3 uses
  %.sroa.099.0.i = phi <2 x float> [ %i.hq, %.lr.ph138.i ], [ %i.ik, %bb.f ] ; 3 uses
  br i1 %3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit83.i
  %foldExtExtBinop85 = fsub <2 x float> %i.hb, %i.hc
  %i.io = extractelement <2 x float> %foldExtExtBinop85, i64 0 ; 2 uses
  %foldExtExtBinop87 = fsub <2 x float> %i.hd, %i.hk ; 2 uses
  %foldExtExtBinop89 = fsub <2 x float> %i.hd, %i.hk
  %i.ip = extractelement <2 x float> %foldExtExtBinop89, i64 1 ; 2 uses
  %foldExtExtBinop91 = fmul <2 x float> %foldExtExtBinop87, %foldExtExtBinop87
  %i.iq = extractelement <2 x float> %foldExtExtBinop91, i64 0
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.io, float %i.io, float %i.iq)
  %i.is = tail call noundef float @llvm.fmuladd.f32(float %i.ip, float %i.ip, float %i.ir) ; 3 uses
  %i.it = tail call float @sqrtf(float noundef %i.is) #19 ; 2 uses
  %i.iu = insertelement <2 x float> poison, float %i.ha, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = shufflevector <2 x float> %i.hc, <2 x float> %i.hb, <2 x i32> <i32 0, i32 2>
  %i.ix = fsub <2 x float> %i.iv, %i.iw           ; 2 uses
  %i.iy = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = shufflevector <2 x float> %i.hc, <2 x float> %i.hb, <2 x i32> <i32 1, i32 3>
  %i.ja = fsub <2 x float> %i.iy, %i.iz           ; 2 uses
  %i.jb = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jc = shufflevector <2 x float> %i.hd, <2 x float> %i.hk, <2 x i32> <i32 3, i32 1>
  %i.jd = fsub <2 x float> %i.jb, %i.jc           ; 2 uses
  %i.je = fmul <2 x float> %i.ja, %i.ja
  %i.jf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ix, <2 x float> %i.ix, <2 x float> %i.je)
  %i.jg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jd, <2 x float> %i.jd, <2 x float> %i.jf) ; 4 uses
  %4 = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jh = extractelement <2 x float> %i.jg, i64 0 ; 2 uses
  %i.ji = tail call float @sqrtf(float noundef %i.jh) #19
  %i.jj = extractelement <2 x float> %i.jg, i64 1 ; 2 uses
  %i.jk = tail call float @sqrtf(float noundef %i.jj) #19 ; 2 uses
  %i.jl = fadd float %i.jj, %i.jh
  %i.jm = fsub float %i.jl, %i.is
  %5 = insertelement <2 x float> poison, float %i.it, i64 0
  %6 = insertelement <2 x float> %5, float %i.ji, i64 1
  %7 = fmul <2 x float> %6, splat (float 2.000000e+00) ; 2 uses
  %8 = extractelement <2 x float> %7, i64 1
  %i.jn = fmul float %8, %i.jk
  %i.jo = fdiv float %i.jm, %i.jn
  %i.jp = tail call float @acosf(float noundef %i.jo) #19
  %9 = fsub <2 x float> %4, %i.jg
  %10 = insertelement <2 x float> poison, float %i.is, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fadd <2 x float> %11, %9
  %13 = insertelement <2 x float> poison, float %i.jk, i64 0
  %14 = insertelement <2 x float> %13, float %i.it, i64 1
  %15 = fmul <2 x float> %7, %14
  %16 = fdiv <2 x float> %12, %15                 ; 2 uses
  %17 = extractelement <2 x float> %16, i64 0
  %18 = tail call float @acosf(float noundef %17) #19
  %19 = extractelement <2 x float> %16, i64 1
  %i.jq = tail call float @acosf(float noundef %19) #19
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.jp, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %18, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit83.i
  %.sroa.7.0.i = phi float [ %i.jq, %bb.g ], [ 1.000000e+00, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit83.i ] ; 2 uses
  %.sroa.096.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i, %bb.g ], [ splat (float 1.000000e+00), %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit83.i ] ; 4 uses
  %.sroa.096.0.vec.extract.i = extractelement <2 x float> %.sroa.096.0.i, i64 0
  %i.jr = fmul float %.sroa.8.0.i, %.sroa.096.0.vec.extract.i
  %i.js = load i16, ptr %i.fm, align 2, !tbaa !22
  %i.jt = zext i16 %i.js to i32
  %i.ju = load ptr, ptr %1, align 8, !tbaa !20
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = tail call noundef ptr %i.jw(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !20
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 88
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ka(ptr noundef nonnull align 8 dereferenceable(28) %i.jx, i32 noundef %i.jt), !inline_history !152 ; 3 uses
  %i.kc = shufflevector <2 x float> %.sroa.096.0.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kd = fmul <2 x float> %.sroa.099.0.i, %i.kc
  %i.ke = load <2 x float>, ptr %i.kb, align 4, !tbaa !26
  %i.kf = fadd <2 x float> %i.kd, %i.ke
  store <2 x float> %i.kf, ptr %i.kb, align 4, !tbaa !26
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 2 uses
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !28
  %i.ki = fadd float %i.jr, %i.kh
  store float %i.ki, ptr %i.kg, align 4, !tbaa !28
  %.sroa.096.4.vec.extract.i = extractelement <2 x float> %.sroa.096.0.i, i64 1
  %i.kj = fmul float %.sroa.8.0.i, %.sroa.096.4.vec.extract.i
  %i.kk = load i16, ptr %i.fz, align 2, !tbaa !22
  %i.kl = zext i16 %i.kk to i32
  %i.km = load ptr, ptr %1, align 8, !tbaa !20
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = tail call noundef ptr %i.ko(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !20
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 88
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ks(ptr noundef nonnull align 8 dereferenceable(28) %i.kp, i32 noundef %i.kl), !inline_history !152 ; 3 uses
  %i.ku = shufflevector <2 x float> %.sroa.096.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kv = fmul <2 x float> %.sroa.099.0.i, %i.ku
  %i.kw = load <2 x float>, ptr %i.kt, align 4, !tbaa !26
  %i.kx = fadd <2 x float> %i.kv, %i.kw
  store <2 x float> %i.kx, ptr %i.kt, align 4, !tbaa !26
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !28
  %i.la = fadd float %i.kj, %i.kz
  store float %i.la, ptr %i.ky, align 4, !tbaa !28
  %i.lb = fmul float %.sroa.8.0.i, %.sroa.7.0.i
  %i.lc = load i16, ptr %i.gm, align 2, !tbaa !22
  %i.ld = zext i16 %i.lc to i32
  %i.le = load ptr, ptr %1, align 8, !tbaa !20
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = tail call noundef ptr %i.lg(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !20
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 88
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.lk(ptr noundef nonnull align 8 dereferenceable(28) %i.lh, i32 noundef %i.ld), !inline_history !152 ; 3 uses
  %i.lm = insertelement <2 x float> poison, float %.sroa.7.0.i, i64 0
  %i.ln = shufflevector <2 x float> %i.lm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lo = fmul <2 x float> %.sroa.099.0.i, %i.ln
  %i.lp = load <2 x float>, ptr %i.ll, align 4, !tbaa !26
  %i.lq = fadd <2 x float> %i.lo, %i.lp
  store <2 x float> %i.lq, ptr %i.ll, align 4, !tbaa !26
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !28
  %i.lt = fadd float %i.lb, %i.ls
  store float %i.lt, ptr %i.lr, align 4, !tbaa !28
  %i.lu = add i32 %.1137.i, 3                     ; 2 uses
  %i.lv = icmp ult i32 %i.lu, %i.y
  br i1 %i.lv, label %.lr.ph138.i, label %.preheader.i, !llvm.loop !155

.lr.ph141.i:                                      ; preds = %.preheader.i, %_ZN4core8vector3dIfE9normalizeEv.exit.i
  %.2140.i = phi i32 [ %i.mx, %_ZN4core8vector3dIfE9normalizeEv.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.lw = load ptr, ptr %1, align 8, !tbaa !20
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = tail call noundef ptr %i.ly(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !20
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 88
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.mc(ptr noundef nonnull align 8 dereferenceable(28) %i.lz, i32 noundef %.2140.i), !inline_history !152 ; 3 uses
  %i.me = load <2 x float>, ptr %i.md, align 4, !tbaa !26 ; 4 uses
  %foldExtExtBinop93 = fmul <2 x float> %i.me, %i.me
  %i.mf = extractelement <2 x float> %foldExtExtBinop93, i64 1
  %i.mg = extractelement <2 x float> %i.me, i64 0 ; 2 uses
  %i.mh = tail call float @llvm.fmuladd.f32(float %i.mg, float %i.mg, float %i.mf)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !28 ; 3 uses
  %i.mk = tail call float @llvm.fmuladd.f32(float %i.mj, float %i.mj, float %i.mh) ; 2 uses
  %i.ml = fcmp oeq float %i.mk, 0.000000e+00
  br i1 %i.ml, label %_ZN4core8vector3dIfE9normalizeEv.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph141.i
  %i.mm = fpext float %i.mk to double
  %i.mn = tail call double @sqrt(double noundef %i.mm) #19
  %i.mo = fdiv double 1.000000e+00, %i.mn         ; 2 uses
  %i.mp = fpext <2 x float> %i.me to <2 x double>
  %i.mq = insertelement <2 x double> poison, double %i.mo, i64 0
  %i.mr = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ms = fmul <2 x double> %i.mr, %i.mp
  %i.mt = fptrunc <2 x double> %i.ms to <2 x float>
  store <2 x float> %i.mt, ptr %i.md, align 4, !tbaa !26
  %i.mu = fpext float %i.mj to double
  %i.mv = fmul double %i.mo, %i.mu
  %i.mw = fptrunc double %i.mv to float
  store float %i.mw, ptr %i.mi, align 4, !tbaa !28
  br label %_ZN4core8vector3dIfE9normalizeEv.exit.i

_ZN4core8vector3dIfE9normalizeEv.exit.i:          ; preds = %bb.i, %.lr.ph141.i
  %i.mx = add nuw i32 %.2140.i, 1                 ; 2 uses
  %.not80.i = icmp eq i32 %i.mx, %i.q
  br i1 %.not80.i, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph141.i, !llvm.loop !156

bb.j:                                             ; preds = %bb.b
  br i1 %i.ah, label %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i7, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 131, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene11IMeshBuffer10getIndicesEv) #18
  unreachable

_ZN5scene11IMeshBuffer10getIndicesEv.exit.i7:     ; preds = %bb.j
  %i.my = load ptr, ptr %1, align 8, !tbaa !20
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 40
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = tail call noundef ptr %i.na(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !157 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !20
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 56
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = tail call noundef ptr %i.ne(ptr noundef nonnull align 8 dereferenceable(28) %i.nb), !inline_history !157 ; 6 uses
  br i1 %2, label %.preheader130.i22, label %.preheader131.i8

.preheader131.i8:                                 ; preds = %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i7
  %.not142.i9 = icmp eq i32 %i.y, 0
  br i1 %.not142.i9, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph.i10

.preheader130.i22:                                ; preds = %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i7
  %.not134.i23 = icmp eq i32 %i.q, 0              ; 2 uses
  br i1 %.not134.i23, label %.preheader129.i27, label %.lr.ph136.i24

.lr.ph.i10:                                       ; preds = %.preheader131.i8, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i16
  %.0133.i11 = phi i32 [ %i.rj, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i16 ], [ 0, %.preheader131.i8 ] ; 4 uses
  %i.ng = zext i32 %.0133.i11 to i64
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.ng ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !29
  %i.nj = load ptr, ptr %1, align 8, !tbaa !20
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = tail call noundef ptr %i.nl(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !20
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  %i.np = load ptr, ptr %i.no, align 8
  %i.nq = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.np(ptr noundef nonnull align 8 dereferenceable(28) %i.nm, i32 noundef %i.ni), !inline_history !158 ; 2 uses
  %i.nr = add nuw i32 %.0133.i11, 1
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.ns ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !29
  %i.nv = load ptr, ptr %1, align 8, !tbaa !20
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = tail call noundef ptr %i.nx(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !20
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 72
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ob(ptr noundef nonnull align 8 dereferenceable(28) %i.ny, i32 noundef %i.nu), !inline_history !158 ; 2 uses
  %i.od = add i32 %.0133.i11, 2
  %i.oe = zext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.oe ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !29
  %i.oh = load ptr, ptr %1, align 8, !tbaa !20
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = tail call noundef ptr %i.oj(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !20
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 72
  %i.on = load ptr, ptr %i.om, align 8
  %i.oo = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.on(ptr noundef nonnull align 8 dereferenceable(28) %i.ok, i32 noundef %i.og), !inline_history !158 ; 2 uses
  %i.op = load float, ptr %i.oc, align 4, !tbaa !25
  %i.oq = load float, ptr %i.nq, align 4, !tbaa !25
  %i.or = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.os = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.ot = load float, ptr %i.oo, align 4, !tbaa !25
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  %i.ov = load <2 x float>, ptr %i.or, align 4, !tbaa !26 ; 2 uses
  %i.ow = load <2 x float>, ptr %i.os, align 4, !tbaa !26 ; 3 uses
  %i.ox = fsub <2 x float> %i.ov, %i.ow           ; 2 uses
  %i.oy = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.oz = insertelement <2 x float> %i.oy, float %i.op, i64 1
  %i.pa = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pb = insertelement <2 x float> %i.pa, float %i.oq, i64 1 ; 2 uses
  %i.pc = fsub <2 x float> %i.oz, %i.pb           ; 2 uses
  %i.pd = load <2 x float>, ptr %i.ou, align 4, !tbaa !26 ; 2 uses
  %i.pe = shufflevector <2 x float> %i.pd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pf = insertelement <2 x float> %i.pe, float %i.ot, i64 1
  %i.pg = fsub <2 x float> %i.pf, %i.pb           ; 2 uses
  %i.ph = fsub <2 x float> %i.pd, %i.ow           ; 2 uses
  %i.pi = fneg <2 x float> %i.ph
  %i.pj = fmul <2 x float> %i.pc, %i.pi
  %i.pk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ox, <2 x float> %i.pg, <2 x float> %i.pj) ; 5 uses
  %i.pl = extractelement <2 x float> %i.pg, i64 1
  %i.pm = fneg float %i.pl
  %i.pn = extractelement <2 x float> %i.ox, i64 0
  %i.po = fmul float %i.pn, %i.pm
  %i.pp = extractelement <2 x float> %i.pc, i64 1
  %i.pq = extractelement <2 x float> %i.ph, i64 0
  %i.pr = tail call float @llvm.fmuladd.f32(float %i.pp, float %i.pq, float %i.po) ; 4 uses
  %foldExtExtBinop95 = fmul <2 x float> %i.pk, %i.pk
  %i.ps = extractelement <2 x float> %foldExtExtBinop95, i64 1
  %i.pt = extractelement <2 x float> %i.pk, i64 0 ; 2 uses
  %i.pu = tail call float @llvm.fmuladd.f32(float %i.pt, float %i.pt, float %i.ps)
  %i.pv = tail call float @llvm.fmuladd.f32(float %i.pr, float %i.pr, float %i.pu) ; 2 uses
  %i.pw = fcmp oeq float %i.pv, 0.000000e+00
  br i1 %i.pw, label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i16, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i10
  %i.px = fpext float %i.pv to double
  %i.py = tail call double @sqrt(double noundef %i.px) #19
  %i.pz = fdiv double 1.000000e+00, %i.py         ; 2 uses
  %i.qa = fpext <2 x float> %i.pk to <2 x double>
  %i.qb = insertelement <2 x double> poison, double %i.pz, i64 0
  %i.qc = shufflevector <2 x double> %i.qb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qd = fmul <2 x double> %i.qc, %i.qa
  %i.qe = fptrunc <2 x double> %i.qd to <2 x float>
  %i.qf = fpext float %i.pr to double
  %i.qg = fmul double %i.pz, %i.qf
  %i.qh = fptrunc double %i.qg to float
  br label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i16

_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i16: ; preds = %bb.l, %.lr.ph.i10
  %.sroa.0115.0.i17 = phi <2 x float> [ %i.pk, %.lr.ph.i10 ], [ %i.qe, %bb.l ] ; 3 uses
  %.sroa.8120.0.i18 = phi float [ %i.pr, %.lr.ph.i10 ], [ %i.qh, %bb.l ] ; 3 uses
  %i.qi = load i32, ptr %i.nh, align 4, !tbaa !29
  %i.qj = load ptr, ptr %1, align 8, !tbaa !20
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  %i.ql = load ptr, ptr %i.qk, align 8
  %i.qm = tail call noundef ptr %i.ql(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !20
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 88
  %i.qp = load ptr, ptr %i.qo, align 8
  %i.qq = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.qp(ptr noundef nonnull align 8 dereferenceable(28) %i.qm, i32 noundef %i.qi), !inline_history !159 ; 2 uses
  store <2 x float> %.sroa.0115.0.i17, ptr %i.qq, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store float %.sroa.8120.0.i18, ptr %.sroa.6.0..sroa_idx.i19, align 4, !tbaa !26
  %i.qr = load i32, ptr %i.nt, align 4, !tbaa !29
  %i.qs = load ptr, ptr %1, align 8, !tbaa !20
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.qu = load ptr, ptr %i.qt, align 8
  %i.qv = tail call noundef ptr %i.qu(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !20
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 88
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.qy(ptr noundef nonnull align 8 dereferenceable(28) %i.qv, i32 noundef %i.qr), !inline_history !159 ; 2 uses
  store <2 x float> %.sroa.0115.0.i17, ptr %i.qz, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx125.i20 = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  store float %.sroa.8120.0.i18, ptr %.sroa.6.0..sroa_idx125.i20, align 4, !tbaa !26
  %i.ra = load i32, ptr %i.of, align 4, !tbaa !29
  %i.rb = load ptr, ptr %1, align 8, !tbaa !20
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 24
  %i.rd = load ptr, ptr %i.rc, align 8
  %i.re = tail call noundef ptr %i.rd(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !20
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 88
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.rh(ptr noundef nonnull align 8 dereferenceable(28) %i.re, i32 noundef %i.ra), !inline_history !159 ; 2 uses
  store <2 x float> %.sroa.0115.0.i17, ptr %i.ri, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx127.i21 = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store float %.sroa.8120.0.i18, ptr %.sroa.6.0..sroa_idx127.i21, align 4, !tbaa !26
  %i.rj = add i32 %.0133.i11, 3                   ; 2 uses
  %i.rk = icmp ult i32 %i.rj, %i.y
  br i1 %i.rk, label %.lr.ph.i10, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, !llvm.loop !160

.preheader129.i27:                                ; preds = %.lr.ph136.i24, %.preheader130.i22
  %.not143.i28 = icmp eq i32 %i.y, 0
  br i1 %.not143.i28, label %.preheader.i44, label %.lr.ph138.i29

.lr.ph136.i24:                                    ; preds = %.preheader130.i22, %.lr.ph136.i24
  %.078135.i25 = phi i32 [ %i.ru, %.lr.ph136.i24 ], [ 0, %.preheader130.i22 ] ; 2 uses
  %i.rl = load ptr, ptr %1, align 8, !tbaa !20
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %i.rn = load ptr, ptr %i.rm, align 8
  %i.ro = tail call noundef ptr %i.rn(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !20
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 88
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.rr(ptr noundef nonnull align 8 dereferenceable(28) %i.ro, i32 noundef %.078135.i25), !inline_history !159 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.rs, align 4, !tbaa !26
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store float 0.000000e+00, ptr %i.rt, align 4, !tbaa !28
  %i.ru = add nuw i32 %.078135.i25, 1             ; 2 uses
  %.not.i26 = icmp eq i32 %i.ru, %i.q
  br i1 %.not.i26, label %.preheader129.i27, label %.lr.ph136.i24, !llvm.loop !161

.preheader.i44:                                   ; preds = %bb.o, %.preheader129.i27
  br i1 %.not134.i23, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph141.i45

.lr.ph138.i29:                                    ; preds = %.preheader129.i27, %bb.o
  %.1137.i30 = phi i32 [ %i.xy, %bb.o ], [ 0, %.preheader129.i27 ] ; 4 uses
  %i.rv = zext i32 %.1137.i30 to i64
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.rv ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !29
  %i.ry = load ptr, ptr %1, align 8, !tbaa !20
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  %i.sa = load ptr, ptr %i.rz, align 8
  %i.sb = tail call noundef ptr %i.sa(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !20
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 72
  %i.se = load ptr, ptr %i.sd, align 8
  %i.sf = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.se(ptr noundef nonnull align 8 dereferenceable(28) %i.sb, i32 noundef %i.rx), !inline_history !158 ; 2 uses
  %i.sg = add nuw i32 %.1137.i30, 1
  %i.sh = zext i32 %i.sg to i64
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.sh ; 2 uses
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !29
  %i.sk = load ptr, ptr %1, align 8, !tbaa !20
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  %i.sm = load ptr, ptr %i.sl, align 8
  %i.sn = tail call noundef ptr %i.sm(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !20
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 72
  %i.sq = load ptr, ptr %i.sp, align 8
  %i.sr = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.sq(ptr noundef nonnull align 8 dereferenceable(28) %i.sn, i32 noundef %i.sj), !inline_history !158 ; 2 uses
  %i.ss = add i32 %.1137.i30, 2
  %i.st = zext i32 %i.ss to i64
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.st ; 2 uses
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !29
  %i.sw = load ptr, ptr %1, align 8, !tbaa !20
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  %i.sy = load ptr, ptr %i.sx, align 8
  %i.sz = tail call noundef ptr %i.sy(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !20
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 72
  %i.tc = load ptr, ptr %i.tb, align 8
  %i.td = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.tc(ptr noundef nonnull align 8 dereferenceable(28) %i.sz, i32 noundef %i.sv), !inline_history !158 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.sr, i64 4
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  %i.th = load float, ptr %i.sf, align 4, !tbaa !25 ; 2 uses
  %i.ti = load <2 x float>, ptr %i.sr, align 4, !tbaa !26 ; 4 uses
  %i.tj = load <2 x float>, ptr %i.td, align 4, !tbaa !26 ; 4 uses
  %i.tk = load <2 x float>, ptr %i.te, align 4, !tbaa !26 ; 5 uses
  %i.tl = load <2 x float>, ptr %i.tf, align 4, !tbaa !26 ; 5 uses
  %i.tm = fsub <2 x float> %i.tk, %i.tl           ; 2 uses
  %i.tn = shufflevector <2 x float> %i.tk, <2 x float> %i.ti, <2 x i32> <i32 1, i32 2>
  %i.to = shufflevector <2 x float> %i.tl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tp = insertelement <2 x float> %i.to, float %i.th, i64 1 ; 2 uses
  %i.tq = fsub <2 x float> %i.tn, %i.tp           ; 2 uses
  %i.tr = load <2 x float>, ptr %i.tg, align 4, !tbaa !26 ; 5 uses
  %i.ts = shufflevector <2 x float> %i.tr, <2 x float> %i.tj, <2 x i32> <i32 1, i32 2>
  %i.tt = fsub <2 x float> %i.ts, %i.tp           ; 2 uses
  %i.tu = fsub <2 x float> %i.tr, %i.tl           ; 2 uses
  %i.tv = fneg <2 x float> %i.tu
  %i.tw = fmul <2 x float> %i.tq, %i.tv
  %i.tx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tm, <2 x float> %i.tt, <2 x float> %i.tw) ; 5 uses
  %i.ty = extractelement <2 x float> %i.tt, i64 1
  %i.tz = fneg float %i.ty
  %i.ua = extractelement <2 x float> %i.tm, i64 0
  %i.ub = fmul float %i.ua, %i.tz
  %i.uc = extractelement <2 x float> %i.tq, i64 1
  %i.ud = extractelement <2 x float> %i.tu, i64 0
  %i.ue = tail call float @llvm.fmuladd.f32(float %i.uc, float %i.ud, float %i.ub) ; 4 uses
  %foldExtExtBinop97 = fmul <2 x float> %i.tx, %i.tx
  %i.uf = extractelement <2 x float> %foldExtExtBinop97, i64 1
  %i.ug = extractelement <2 x float> %i.tx, i64 0 ; 2 uses
  %i.uh = tail call float @llvm.fmuladd.f32(float %i.ug, float %i.ug, float %i.uf)
  %i.ui = tail call float @llvm.fmuladd.f32(float %i.ue, float %i.ue, float %i.uh) ; 2 uses
  %i.uj = fcmp oeq float %i.ui, 0.000000e+00
  br i1 %i.uj, label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit83.i35, label %bb.m

bb.m:                                             ; preds = %.lr.ph138.i29
  %i.uk = fpext float %i.ui to double
  %i.ul = tail call double @sqrt(double noundef %i.uk) #19
  %i.um = fdiv double 1.000000e+00, %i.ul         ; 2 uses
  %i.un = fpext <2 x float> %i.tx to <2 x double>
  %i.uo = insertelement <2 x double> poison, double %i.um, i64 0
  %i.up = shufflevector <2 x double> %i.uo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uq = fmul <2 x double> %i.up, %i.un
  %i.ur = fptrunc <2 x double> %i.uq to <2 x float>
  %i.us = fpext float %i.ue to double
  %i.ut = fmul double %i.um, %i.us
  %i.uu = fptrunc double %i.ut to float
  br label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit83.i35

_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit83.i35: ; preds = %bb.m, %.lr.ph138.i29
  %.sroa.8.0.i36 = phi float [ %i.ue, %.lr.ph138.i29 ], [ %i.uu, %bb.m ] ; 3 uses
  %.sroa.099.0.i37 = phi <2 x float> [ %i.tx, %.lr.ph138.i29 ], [ %i.ur, %bb.m ] ; 3 uses
  br i1 %3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit83.i35
  %foldExtExtBinop99 = fsub <2 x float> %i.ti, %i.tj
  %i.uv = extractelement <2 x float> %foldExtExtBinop99, i64 0 ; 2 uses
  %foldExtExtBinop101 = fsub <2 x float> %i.tk, %i.tr ; 2 uses
  %foldExtExtBinop103 = fsub <2 x float> %i.tk, %i.tr
  %i.uw = extractelement <2 x float> %foldExtExtBinop103, i64 1 ; 2 uses
  %foldExtExtBinop105 = fmul <2 x float> %foldExtExtBinop101, %foldExtExtBinop101
  %i.ux = extractelement <2 x float> %foldExtExtBinop105, i64 0
  %i.uy = tail call float @llvm.fmuladd.f32(float %i.uv, float %i.uv, float %i.ux)
  %i.uz = tail call noundef float @llvm.fmuladd.f32(float %i.uw, float %i.uw, float %i.uy) ; 3 uses
  %i.va = tail call float @sqrtf(float noundef %i.uz) #19 ; 2 uses
  %i.vb = insertelement <2 x float> poison, float %i.th, i64 0
  %i.vc = shufflevector <2 x float> %i.vb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vd = shufflevector <2 x float> %i.tj, <2 x float> %i.ti, <2 x i32> <i32 0, i32 2>
  %i.ve = fsub <2 x float> %i.vc, %i.vd           ; 2 uses
  %i.vf = shufflevector <2 x float> %i.tl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vg = shufflevector <2 x float> %i.tj, <2 x float> %i.ti, <2 x i32> <i32 1, i32 3>
  %i.vh = fsub <2 x float> %i.vf, %i.vg           ; 2 uses
  %i.vi = shufflevector <2 x float> %i.tl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vj = shufflevector <2 x float> %i.tk, <2 x float> %i.tr, <2 x i32> <i32 3, i32 1>
  %i.vk = fsub <2 x float> %i.vi, %i.vj           ; 2 uses
  %i.vl = fmul <2 x float> %i.vh, %i.vh
  %i.vm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ve, <2 x float> %i.ve, <2 x float> %i.vl)
  %i.vn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vk, <2 x float> %i.vk, <2 x float> %i.vm) ; 4 uses
  %20 = shufflevector <2 x float> %i.vn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vo = extractelement <2 x float> %i.vn, i64 0 ; 2 uses
  %i.vp = tail call float @sqrtf(float noundef %i.vo) #19
  %i.vq = extractelement <2 x float> %i.vn, i64 1 ; 2 uses
  %i.vr = tail call float @sqrtf(float noundef %i.vq) #19 ; 2 uses
  %i.vs = fadd float %i.vq, %i.vo
  %i.vt = fsub float %i.vs, %i.uz
  %21 = insertelement <2 x float> poison, float %i.va, i64 0
  %22 = insertelement <2 x float> %21, float %i.vp, i64 1
  %23 = fmul <2 x float> %22, splat (float 2.000000e+00) ; 2 uses
  %24 = extractelement <2 x float> %23, i64 1
  %i.vu = fmul float %24, %i.vr
  %i.vv = fdiv float %i.vt, %i.vu
  %i.vw = tail call float @acosf(float noundef %i.vv) #19
  %25 = fsub <2 x float> %20, %i.vn
  %26 = insertelement <2 x float> poison, float %i.uz, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = fadd <2 x float> %27, %25
  %29 = insertelement <2 x float> poison, float %i.vr, i64 0
  %30 = insertelement <2 x float> %29, float %i.va, i64 1
  %31 = fmul <2 x float> %23, %30
  %32 = fdiv <2 x float> %28, %31                 ; 2 uses
  %33 = extractelement <2 x float> %32, i64 0
  %34 = tail call float @acosf(float noundef %33) #19
  %35 = extractelement <2 x float> %32, i64 1
  %i.vx = tail call float @acosf(float noundef %35) #19
  %.sroa.0.0.vec.insert.i.i49 = insertelement <2 x float> poison, float %i.vw, i64 0
  %.sroa.0.4.vec.insert.i.i50 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i49, float %34, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit83.i35
  %.sroa.7.0.i38 = phi float [ %i.vx, %bb.n ], [ 1.000000e+00, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit83.i35 ] ; 2 uses
  %.sroa.096.0.i39 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i50, %bb.n ], [ splat (float 1.000000e+00), %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit83.i35 ] ; 4 uses
  %.sroa.096.0.vec.extract.i40 = extractelement <2 x float> %.sroa.096.0.i39, i64 0
  %i.vy = fmul float %.sroa.8.0.i36, %.sroa.096.0.vec.extract.i40
  %i.vz = load i32, ptr %i.rw, align 4, !tbaa !29
  %i.wa = load ptr, ptr %1, align 8, !tbaa !20
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 24
  %i.wc = load ptr, ptr %i.wb, align 8
  %i.wd = tail call noundef ptr %i.wc(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !20
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 88
  %i.wg = load ptr, ptr %i.wf, align 8
  %i.wh = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.wg(ptr noundef nonnull align 8 dereferenceable(28) %i.wd, i32 noundef %i.vz), !inline_history !159 ; 3 uses
  %i.wi = shufflevector <2 x float> %.sroa.096.0.i39, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wj = fmul <2 x float> %.sroa.099.0.i37, %i.wi
  %i.wk = load <2 x float>, ptr %i.wh, align 4, !tbaa !26
  %i.wl = fadd <2 x float> %i.wj, %i.wk
  store <2 x float> %i.wl, ptr %i.wh, align 4, !tbaa !26
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wh, i64 8 ; 2 uses
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !28
  %i.wo = fadd float %i.vy, %i.wn
  store float %i.wo, ptr %i.wm, align 4, !tbaa !28
  %.sroa.096.4.vec.extract.i43 = extractelement <2 x float> %.sroa.096.0.i39, i64 1
  %i.wp = fmul float %.sroa.8.0.i36, %.sroa.096.4.vec.extract.i43
  %i.wq = load i32, ptr %i.si, align 4, !tbaa !29
  %i.wr = load ptr, ptr %1, align 8, !tbaa !20
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 24
  %i.wt = load ptr, ptr %i.ws, align 8
  %i.wu = tail call noundef ptr %i.wt(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !20
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 88
  %i.wx = load ptr, ptr %i.ww, align 8
  %i.wy = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.wx(ptr noundef nonnull align 8 dereferenceable(28) %i.wu, i32 noundef %i.wq), !inline_history !159 ; 3 uses
  %i.wz = shufflevector <2 x float> %.sroa.096.0.i39, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xa = fmul <2 x float> %.sroa.099.0.i37, %i.wz
  %i.xb = load <2 x float>, ptr %i.wy, align 4, !tbaa !26
  %i.xc = fadd <2 x float> %i.xa, %i.xb
  store <2 x float> %i.xc, ptr %i.wy, align 4, !tbaa !26
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wy, i64 8 ; 2 uses
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !28
  %i.xf = fadd float %i.wp, %i.xe
  store float %i.xf, ptr %i.xd, align 4, !tbaa !28
  %i.xg = fmul float %.sroa.8.0.i36, %.sroa.7.0.i38
  %i.xh = load i32, ptr %i.su, align 4, !tbaa !29
  %i.xi = load ptr, ptr %1, align 8, !tbaa !20
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 24
  %i.xk = load ptr, ptr %i.xj, align 8
  %i.xl = tail call noundef ptr %i.xk(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !20
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 88
  %i.xo = load ptr, ptr %i.xn, align 8
  %i.xp = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.xo(ptr noundef nonnull align 8 dereferenceable(28) %i.xl, i32 noundef %i.xh), !inline_history !159 ; 3 uses
  %i.xq = insertelement <2 x float> poison, float %.sroa.7.0.i38, i64 0
  %i.xr = shufflevector <2 x float> %i.xq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xs = fmul <2 x float> %.sroa.099.0.i37, %i.xr
  %i.xt = load <2 x float>, ptr %i.xp, align 4, !tbaa !26
  %i.xu = fadd <2 x float> %i.xs, %i.xt
  store <2 x float> %i.xu, ptr %i.xp, align 4, !tbaa !26
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xp, i64 8 ; 2 uses
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !28
  %i.xx = fadd float %i.xg, %i.xw
  store float %i.xx, ptr %i.xv, align 4, !tbaa !28
  %i.xy = add i32 %.1137.i30, 3                   ; 2 uses
  %i.xz = icmp ult i32 %i.xy, %i.y
  br i1 %i.xz, label %.lr.ph138.i29, label %.preheader.i44, !llvm.loop !162

.lr.ph141.i45:                                    ; preds = %.preheader.i44, %_ZN4core8vector3dIfE9normalizeEv.exit.i47
  %.2140.i46 = phi i32 [ %i.zb, %_ZN4core8vector3dIfE9normalizeEv.exit.i47 ], [ 0, %.preheader.i44 ] ; 2 uses
  %i.ya = load ptr, ptr %1, align 8, !tbaa !20
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 24
  %i.yc = load ptr, ptr %i.yb, align 8
  %i.yd = tail call noundef ptr %i.yc(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !20
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 88
  %i.yg = load ptr, ptr %i.yf, align 8
  %i.yh = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.yg(ptr noundef nonnull align 8 dereferenceable(28) %i.yd, i32 noundef %.2140.i46), !inline_history !159 ; 3 uses
  %i.yi = load <2 x float>, ptr %i.yh, align 4, !tbaa !26 ; 4 uses
  %foldExtExtBinop107 = fmul <2 x float> %i.yi, %i.yi
  %i.yj = extractelement <2 x float> %foldExtExtBinop107, i64 1
  %i.yk = extractelement <2 x float> %i.yi, i64 0 ; 2 uses
  %i.yl = tail call float @llvm.fmuladd.f32(float %i.yk, float %i.yk, float %i.yj)
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yh, i64 8 ; 2 uses
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !28 ; 3 uses
  %i.yo = tail call float @llvm.fmuladd.f32(float %i.yn, float %i.yn, float %i.yl) ; 2 uses
  %i.yp = fcmp oeq float %i.yo, 0.000000e+00
  br i1 %i.yp, label %_ZN4core8vector3dIfE9normalizeEv.exit.i47, label %bb.p

bb.p:                                             ; preds = %.lr.ph141.i45
  %i.yq = fpext float %i.yo to double
  %i.yr = tail call double @sqrt(double noundef %i.yq) #19
  %i.ys = fdiv double 1.000000e+00, %i.yr         ; 2 uses
  %i.yt = fpext <2 x float> %i.yi to <2 x double>
  %i.yu = insertelement <2 x double> poison, double %i.ys, i64 0
  %i.yv = shufflevector <2 x double> %i.yu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yw = fmul <2 x double> %i.yv, %i.yt
  %i.yx = fptrunc <2 x double> %i.yw to <2 x float>
  store <2 x float> %i.yx, ptr %i.yh, align 4, !tbaa !26
  %i.yy = fpext float %i.yn to double
  %i.yz = fmul double %i.ys, %i.yy
  %i.za = fptrunc double %i.yz to float
  store float %i.za, ptr %i.ym, align 4, !tbaa !28
  br label %_ZN4core8vector3dIfE9normalizeEv.exit.i47

_ZN4core8vector3dIfE9normalizeEv.exit.i47:        ; preds = %bb.p, %.lr.ph141.i45
  %i.zb = add nuw i32 %.2140.i46, 1               ; 2 uses
  %.not80.i48 = icmp eq i32 %i.zb, %i.q
  br i1 %.not80.i48, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph141.i45, !llvm.loop !163

_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit: ; preds = %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i16, %_ZN4core8vector3dIfE9normalizeEv.exit.i47, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i, %_ZN4core8vector3dIfE9normalizeEv.exit.i, %.preheader.i44, %.preheader131.i8, %.preheader.i, %.preheader131.i.a, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5scene16CMeshManipulator18recalculateNormalsEPNS_5IMeshEbb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene11SkinnedMesh14resetAnimationEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.i = load ptr, ptr %1, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.016 = phi i32 [ %i.u, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.016)
  %i.r = load ptr, ptr %0, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.q, i1 noundef zeroext %2, i1 noundef zeroext %3)
  %i.u = add nuw i32 %.016, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !164

bb.e:                                             ; preds = %._crit_edge
  tail call void @_ZN5scene11SkinnedMesh16updateStaticPoseEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.a
  ret void
}

declare void @_ZN5scene11SkinnedMesh14resetAnimationEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #2

declare void @_ZN5scene11SkinnedMesh16updateStaticPoseEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK5scene16CMeshManipulator14createMeshCopyEPNS_5IMeshE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #20 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 1, ptr %i.c, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene5SMeshE, i64 24), ptr %i.a, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene5SMeshE, i64 160), ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 72, i1 false)
  %i.e = load ptr, ptr %1, align 8, !tbaa !20
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.not65 = icmp eq i32 %i.g, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) %i.k, i64 24, i1 false), !tbaa.struct !32
  br label %bb.y

.lr.ph:                                           ; preds = %bb.b, %_ZNK17IReferenceCounted4dropEv.exit
  %.064 = phi i32 [ %i.gp, %_ZNK17IReferenceCounted4dropEv.exit ], [ 0, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.064) ; 20 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !165 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(28) %i.t), !inline_history !165
  switch i32 %i.x, label %_ZNK17IReferenceCounted4dropEv.exit [
    i32 0, label %bb.c
    i32 1, label %bb.j
    i32 2, label %bb.q
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.y = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #20 ; 8 uses
  invoke void @_ZN5scene11CMeshBufferIN5video9S3DVertexEEC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.y)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef nonnull align 8 dereferenceable(127) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.ad, ptr noundef nonnull align 8 dereferenceable(127) %i.ac) ; 0 uses
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(28) %i.ai), !inline_history !166
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN5scene12copyVerticesIN5video9S3DVertexEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 120, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene12copyVerticesIN5video9S3DVertexEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE) #18
  unreachable

_ZN5scene12copyVerticesIN5video9S3DVertexEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE.exit: ; preds = %bb.d
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(28) %i.ai), !inline_history !166 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(28) %i.ai), !inline_history !166
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.az
  tail call void @_ZNSt6vectorIN5video9S3DVertexESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef %i.at, ptr noundef %i.ba)
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef i32 %i.bj(ptr noundef nonnull align 8 dereferenceable(28) %i.be), !inline_history !167
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN5sceneL11copyIndicesEPKNS_12IIndexBufferEPNS_12CIndexBufferItEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5scene12copyVerticesIN5video9S3DVertexEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5sceneL11copyIndicesEPKNS_12IIndexBufferEPNS_12CIndexBufferItEE) #18
  unreachable

_ZN5sceneL11copyIndicesEPKNS_12IIndexBufferEPNS_12CIndexBufferItEE.exit: ; preds = %_ZN5scene12copyVerticesIN5video9S3DVertexEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE.exit
  %i.bm = load ptr, ptr %i.be, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(28) %i.be), !inline_history !167 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(28) %i.be), !inline_history !167
end_hunk_0
begin_hunk_1_@_ZNK4core8CMatrix4IfEeqERKS1_:bb.a
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !26
  %i.bk = fcmp oeq float %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !26
  %i.bp = fcmp oeq float %i.bm, %i.bo
  br i1 %i.bp, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load float, ptr %i.bq, align 4, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !26
  %i.bu = fcmp oeq float %i.br, %i.bt
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.by = load float, ptr %i.bx, align 4, !tbaa !26
  %i.bz = fcmp oeq float %i.bw, %i.by
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.b ], [ %i.bz, %bb.p ], [ false, %bb.c ], [ false, %bb.k ], [ false, %bb.d ], [ false, %bb.o ], [ false, %bb.e ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.n ], [ false, %bb.g ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.m ]
  ret i1 %.lcssa
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

declare void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorItSaItEE13_M_assign_auxIPKtEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.f = load ptr, ptr %0, align 8, !tbaa !93     ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775806
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #20 ; 4 uses
  %i.m = icmp samesign ugt i64 %i.c, 2
  br i1 %i.m, label %bb.d, label %bb.e, !prof !94

bb.d:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.l, ptr align 2 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIPKtEEPtmT_S6_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %i.n = icmp eq i64 %i.c, 2
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIPKtEEPtmT_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load i16, ptr %1, align 2, !tbaa !22
  store i16 %i.o, ptr %i.l, align 2, !tbaa !22
  br label %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIPKtEEPtmT_S6_.exit

_ZNSt6vectorItSaItEE20_M_allocate_and_copyIPKtEEPtmT_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIPKtEEPtmT_S6_.exit
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #21
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit: ; preds = %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIPKtEEPtmT_S6_.exit, %bb.g
  store ptr %i.l, ptr %0, align 8, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !95
  store ptr %i.v, ptr %i.d, align 8, !tbaa !92
  br label %_ZNSt6vectorItSaItEE15_M_erase_at_endEPt.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95   ; 5 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.z, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKtlEvRT_T0_St26random_access_iterator_tag.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp sgt i64 %i.c, 2
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !94

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.f, ptr align 2 %1, i64 %i.c, i1 false)
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !95
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %i.c, 2
  br i1 %i.ab, label %bb.l, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

bb.l:                                             ; preds = %bb.k
  %i.ac = load i16, ptr %1, align 2, !tbaa !22
  store i16 %i.ac, ptr %i.f, align 2, !tbaa !22
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

_ZSt4copyIPKtPtET0_T_S4_S3_.exit:                 ; preds = %bb.j, %bb.k, %bb.l
  %i.ad = phi ptr [ %.pre, %bb.j ], [ %i.x, %bb.k ], [ %i.x, %bb.l ]
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %.not.i16 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i16, label %_ZNSt6vectorItSaItEE15_M_erase_at_endEPt.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !95
  br label %_ZNSt6vectorItSaItEE15_M_erase_at_endEPt.exit

_ZSt9__advanceIPKtlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.h
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.z ; 3 uses
  %i.af = ptrtoint ptr %.sink.i to i64
  %i.ag = icmp sgt i64 %i.z, 2
  br i1 %i.ag, label %bb.m, label %bb.n, !prof !94

bb.m:                                             ; preds = %_ZSt9__advanceIPKtlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.f, ptr align 2 %1, i64 %i.z, i1 false)
  %.pre21 = load ptr, ptr %i.w, align 8, !tbaa !95
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit17

bb.n:                                             ; preds = %_ZSt9__advanceIPKtlEvRT_T0_St26random_access_iterator_tag.exit
  %i.ah = icmp eq i64 %i.z, 2
  br i1 %i.ah, label %bb.o, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit17

bb.o:                                             ; preds = %bb.n
  %i.ai = load i16, ptr %1, align 2, !tbaa !22
  store i16 %i.ai, ptr %i.f, align 2, !tbaa !22
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit17

_ZSt4copyIPKtPtET0_T_S4_S3_.exit17:               ; preds = %bb.m, %bb.n, %bb.o
  %i.aj = phi ptr [ %.pre21, %bb.m ], [ %i.x, %bb.n ], [ %i.x, %bb.o ] ; 3 uses
  %i.ak = sub i64 %i.a, %i.af                     ; 4 uses
  %i.al = icmp sgt i64 %i.ak, 2
  br i1 %i.al, label %bb.p, label %bb.q, !prof !94

bb.p:                                             ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.aj, ptr align 2 %.sink.i, i64 %i.ak, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit

bb.q:                                             ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit17
  %i.am = icmp eq i64 %i.ak, 2
  br i1 %i.am, label %bb.r, label %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit

bb.r:                                             ; preds = %bb.q
  %i.an = load i16, ptr %.sink.i, align 2, !tbaa !22
  store i16 %i.an, ptr %i.aj, align 2, !tbaa !22
  br label %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.p, %bb.q, %bb.r
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !95
  br label %_ZNSt6vectorItSaItEE15_M_erase_at_endEPt.exit

_ZNSt6vectorItSaItEE15_M_erase_at_endEPt.exit:    ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit, %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video9SMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5video14SMaterialLayerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #21
  br label %_ZN5video14SMaterialLayerD2Ev.exit

_ZN5video14SMaterialLayerD2Ev.exit:               ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %.not.i.1 = icmp eq ptr %i.d, null
  br i1 %.not.i.1, label %_ZN5video14SMaterialLayerD2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #21
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1

_ZN5video14SMaterialLayerD2Ev.exit.1:             ; preds = %bb.c, %_ZN5video14SMaterialLayerD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %.not.i.2 = icmp eq ptr %i.f, null
  br i1 %.not.i.2, label %_ZN5video14SMaterialLayerD2Ev.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 64) #21
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2

_ZN5video14SMaterialLayerD2Ev.exit.2:             ; preds = %bb.d, %_ZN5video14SMaterialLayerD2Ev.exit.1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 2 uses
  %.not.i.3 = icmp eq ptr %i.h, null
  br i1 %.not.i.3, label %_ZN5video14SMaterialLayerD2Ev.exit.3, label %bb.e

bb.e:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 64) #21
  br label %_ZN5video14SMaterialLayerD2Ev.exit.3

_ZN5video14SMaterialLayerD2Ev.exit.3:             ; preds = %bb.e, %_ZN5video14SMaterialLayerD2Ev.exit.2
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene11IMeshBufferD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene11IMeshBufferD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene11IMeshBufferD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene11IMeshBufferD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(127) ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE11getMaterialEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(127) ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE11getMaterialEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE15getVertexBufferEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE15getVertexBufferEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE14getIndexBufferEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE14getIndexBufferEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(24) ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE14getBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene11CMeshBufferIN5video9S3DVertexEE14setBoundingBoxERKN4core8aabbox3dIfEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene11CMeshBufferIN5video9S3DVertexEE22recalculateBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !99   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 40
  %i.k = and i64 %i.j, 4294967295
  %.not = icmp eq i64 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 5 uses
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !100
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !98
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !99   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 40                  ; 2 uses
  %i.t = and i64 %i.s, 4294967294
  %.not22 = icmp eq i64 %i.t, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.promoted4 = load float, ptr %i.l, align 8
  %.promoted = load float, ptr %i.m, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.promoted6 = load float, ptr %i.u, align 8, !tbaa !101
  %.promoted7 = load float, ptr %i.v, align 4, !tbaa !102
  %.promoted8 = load float, ptr %i.w, align 4, !tbaa !103
  %.promoted9 = load float, ptr %i.x, align 8, !tbaa !104
  %wide.trip.count = and i64 %i.s, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.y = phi float [ %.promoted9, %.lr.ph ], [ %i.av, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.z = phi float [ %.promoted8, %.lr.ph ], [ %i.at, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.aa = phi float [ %.promoted7, %.lr.ph ], [ %i.ap, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.ab = phi float [ %.promoted6, %.lr.ph ], [ %i.an, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.ac = phi float [ %.promoted, %.lr.ph ], [ %i.al, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.ad = phi float [ %.promoted4, %.lr.ph ], [ %i.ar, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv ; 3 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !25 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !105 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !28 ; 6 uses
  %i.ak = fcmp ogt float %i.af, %i.ac
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.af, ptr %i.m, align 4, !tbaa !106
end_hunk_1
begin_hunk_2_@_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEED2Ev:bb.a

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #19, !inline_history !6
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !31   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #18
  unreachable

bb.f:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %i.q = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.q, ptr %i.n, align 8, !tbaa !31
  %.not.i2 = icmp eq i32 %i.q, 0
  br i1 %.not.i2, label %bb.g, label %_ZNK17IReferenceCounted4dropEv.exit3

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #19, !inline_history !6
  br label %_ZNK17IReferenceCounted4dropEv.exit3

_ZNK17IReferenceCounted4dropEv.exit3:             ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72   ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 64) #21
  br label %_ZN5video14SMaterialLayerD2Ev.exit.i

_ZN5video14SMaterialLayerD2Ev.exit.i:             ; preds = %bb.h, %_ZNK17IReferenceCounted4dropEv.exit3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72   ; 2 uses
  %.not.i.1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.1.i, label %_ZN5video14SMaterialLayerD2Ev.exit.1.i, label %bb.i

bb.i:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 64) #21
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1.i

_ZN5video14SMaterialLayerD2Ev.exit.1.i:           ; preds = %bb.i, %_ZN5video14SMaterialLayerD2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72   ; 2 uses
  %.not.i.2.i = icmp eq ptr %i.z, null
  br i1 %.not.i.2.i, label %_ZN5video14SMaterialLayerD2Ev.exit.2.i, label %bb.j

bb.j:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 64) #21
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2.i

_ZN5video14SMaterialLayerD2Ev.exit.2.i:           ; preds = %bb.j, %_ZN5video14SMaterialLayerD2Ev.exit.1.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72 ; 2 uses
  %.not.i.3.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.3.i, label %_ZN5video9SMaterialD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 64) #21
  br label %_ZN5video9SMaterialD2Ev.exit

_ZN5video9SMaterialD2Ev.exit:                     ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !142
  %i.f = load ptr, ptr %0, align 8, !tbaa !140    ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775744
  br i1 %i.k, label %bb.c, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #20 ; 3 uses
  %i.m = and i64 %i.c, 9223372036854775744
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 4 %1, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %0, align 8, !tbaa !140    ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !142
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.s) #21
  br label %_ZNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, %bb.d
  store ptr %i.l, ptr %0, align 8, !tbaa !140
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.t, ptr %i.n, align 8, !tbaa !139
  store ptr %i.t, ptr %i.d, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !139
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.x, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKN5video17S3DVertexTangentsElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp sgt i64 %i.c, 64
  br i1 %i.y, label %bb.g, label %bb.h, !prof !94

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %1, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %bb.f
  %i.z = icmp eq i64 %i.c, 64
  br i1 %i.z, label %bb.i, label %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false)
  br label %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit

_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !139
  %.not.i16 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i16, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE15_M_erase_at_endEPS1_.exit, label %_ZSt8_DestroyIPN5video17S3DVertexTangentsES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5video17S3DVertexTangentsES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !139
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZSt9__advanceIPKN5video17S3DVertexTangentsElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.x ; 2 uses
  %i.ac = icmp sgt i64 %i.x, 64
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !94

bb.j:                                             ; preds = %_ZSt9__advanceIPKN5video17S3DVertexTangentsElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %1, i64 %i.x, i1 false)
  br label %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17

bb.k:                                             ; preds = %_ZSt9__advanceIPKN5video17S3DVertexTangentsElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ad = icmp eq i64 %i.x, 64
  br i1 %i.ad, label %bb.l, label %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false)
  br label %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17

_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17: ; preds = %bb.j, %bb.k, %bb.l
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !139 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN5video17S3DVertexTangentsEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %i.ae, %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sink.i, %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.011.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0810.i.i.i.i, i64 64, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN5video17S3DVertexTangentsEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !10

_ZSt22__uninitialized_copy_aIPKN5video17S3DVertexTangentsEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ae, %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17 ], [ %i.ag, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.u, align 8, !tbaa !139
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE15_M_erase_at_endEPS1_.exit: ; preds = %_ZSt8_DestroyIPN5video17S3DVertexTangentsES1_EvT_S3_RSaIT0_E.exit.i, %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit, %_ZSt22__uninitialized_copy_aIPKN5video17S3DVertexTangentsEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE13_M_deallocateEPS1_m.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{ptr @_ZN5scene5SMeshD1Ev, null, null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev, null, null, null, null}
!5 = distinct !{!5, !27}
!6 = distinct !{null}
!7 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEED1Ev, null, null, null, null}
!8 = distinct !{!8, !27}
!9 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEED1Ev, null, null, null, null}
!10 = distinct !{!10, !27}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"vtable pointer", !14, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"short", !15, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"float", !15, i64 0}
!24 = !{!"_ZTSN4core8vector3dIfEE", !23, i64 0, !23, i64 4, !23, i64 8}
!25 = !{!24, !23, i64 0}
!26 = !{!23, !23, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!24, !23, i64 8}
!29 = !{!16, !16, i64 0}
!30 = !{!"_ZTS17IReferenceCounted", !16, i64 8}
!31 = !{!30, !16, i64 8}
!32 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 12, i64 4, !26, i64 16, i64 4, !26, i64 20, i64 4, !26}
!33 = !{!"_ZTSN5scene11IMeshBufferE"}
!34 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !15, i64 0}
!35 = !{!"_ZTSN5video6SColorE", !16, i64 0}
!36 = !{!"_ZTSN5video17E_COMPARISON_FUNCE", !15, i64 0}
!37 = !{!"_ZTSN5video20E_ANTI_ALIASING_MODEE", !15, i64 0}
!38 = !{!"_ZTSN5video13E_COLOR_PLANEE", !15, i64 0}
!39 = !{!"_ZTSN5video17E_BLEND_OPERATIONE", !15, i64 0}
!40 = !{!"bool", !15, i64 0}
!41 = !{!"_ZTSN5video8E_ZWRITEE", !15, i64 0}
!42 = !{!"_ZTSN5video9SMaterialE", !15, i64 0, !34, i64 96, !35, i64 100, !23, i64 104, !23, i64 108, !23, i64 112, !23, i64 116, !23, i64 120, !36, i64 124, !37, i64 124, !38, i64 125, !39, i64 125, !40, i64 126, !40, i64 126, !41, i64 126, !40, i64 126, !40, i64 126, !40, i64 126, !40, i64 126}
!43 = !{!"any pointer", !15, i64 0}
!44 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE", !43, i64 0}
!45 = !{!"p1 _ZTSN5scene12CIndexBufferItEE", !43, i64 0}
!46 = !{!"_ZTSN4core8aabbox3dIfEE", !24, i64 0, !24, i64 12}
!47 = !{!"_ZTSN5scene16E_PRIMITIVE_TYPEE", !15, i64 0}
!48 = !{!"_ZTSN5scene11CMeshBufferIN5video9S3DVertexEEE", !33, i64 0, !42, i64 8, !44, i64 136, !45, i64 144, !46, i64 152, !47, i64 176}
!49 = !{!48, !44, i64 136}
!50 = !{!48, !45, i64 144}
!51 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE", !43, i64 0}
!52 = !{!"_ZTSN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE", !33, i64 0, !42, i64 8, !51, i64 136, !45, i64 144, !46, i64 152, !47, i64 176}
!53 = !{!52, !51, i64 136}
!54 = !{!52, !45, i64 144}
!55 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE", !43, i64 0}
!56 = !{!"_ZTSN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE", !33, i64 0, !42, i64 8, !55, i64 136, !45, i64 144, !46, i64 152, !47, i64 176}
!57 = !{!56, !55, i64 136}
!58 = !{!56, !45, i64 144}
!59 = !{!"p1 _ZTSN5video8ITextureE", !43, i64 0}
!60 = !{!"_ZTSN5video20E_TEXTURE_MIN_FILTERE", !15, i64 0}
!61 = !{!"_ZTSN5video20E_TEXTURE_MAG_FILTERE", !15, i64 0}
!62 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !43, i64 0}
!63 = !{!"_ZTSN5video14SMaterialLayerE", !59, i64 0, !15, i64 8, !15, i64 8, !15, i64 9, !60, i64 10, !61, i64 11, !15, i64 12, !15, i64 13, !62, i64 16}
!64 = !{!63, !59, i64 0}
!65 = !{!15, !15, i64 0}
!66 = !{!48, !47, i64 176}
!67 = !{!"_ZTSN5scene18E_HARDWARE_MAPPINGE", !15, i64 0}
!68 = !{!"_ZTSN5scene8HWBufferE", !67, i64 8, !43, i64 16, !16, i64 24}
!69 = !{!68, !67, i64 8}
!70 = !{!68, !43, i64 16}
!71 = !{!68, !16, i64 24}
!72 = !{!63, !62, i64 16}
!73 = !{!"any p2 pointer", !43, i64 0}
!74 = !{!"p2 _ZTSN5scene11IMeshBufferE", !73, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIPN5scene11IMeshBufferESaIS2_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!75, !74, i64 8}
!77 = !{!75, !74, i64 16}
!78 = !{!"p1 _ZTSN5scene11IMeshBufferE", !43, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!75, !74, i64 0}
!81 = !{!"p1 int", !43, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!82, !81, i64 8}
!84 = !{!82, !81, i64 16}
!85 = !{!82, !81, i64 0}
!86 = !{!52, !47, i64 176}
!87 = !{!56, !47, i64 176}
!88 = !{!74, !74, i64 0}
!89 = !{ptr @_ZN5scene5SMeshD1Ev}
!90 = !{!"p1 short", !43, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!92 = !{!91, !90, i64 16}
!93 = !{!91, !90, i64 0}
!94 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!95 = !{!91, !90, i64 8}
!96 = !{!"p1 _ZTSN5video9S3DVertexE", !43, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!97, !96, i64 8}
!99 = !{!97, !96, i64 0}
!100 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26}
!101 = !{!46, !23, i64 16}
!102 = !{!46, !23, i64 20}
!103 = !{!46, !23, i64 4}
!104 = !{!46, !23, i64 8}
!105 = !{!24, !23, i64 4}
!106 = !{!46, !23, i64 12}
!107 = !{!46, !23, i64 0}
!108 = !{!90, !90, i64 0}
!109 = !{ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEED1Ev}
!110 = !{!"p1 _ZTSN5scene12WeightBufferE", !43, i64 0}
!111 = !{!"_ZTS7irr_ptrIN5scene12WeightBufferEE", !110, i64 0}
!112 = !{!111, !110, i64 0}
!113 = !{!97, !96, i64 16}
!114 = !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev}
!115 = !{!"_ZTSN5scene13IVertexBufferE", !68, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE12_Vector_implE", !97, i64 0}
!117 = !{!"_ZTSSt12_Vector_baseIN5video9S3DVertexESaIS1_EE", !116, i64 0}
!118 = !{!"_ZTSSt6vectorIN5video9S3DVertexESaIS1_EE", !117, i64 0}
!119 = !{!"_ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE", !115, i64 0, !118, i64 32, !111, i64 56, !40, i64 64}
!120 = !{!119, !40, i64 64}
!121 = !{i8 0, i8 2}
!122 = !{}
!123 = !{ptr @_ZN5scene12CIndexBufferItED1Ev}
!124 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 12, i64 4, !26, i64 16, i64 4, !26, i64 20, i64 4, !26, i64 24, i64 4, !29, i64 28, i64 4, !26, i64 32, i64 4, !26, i64 36, i64 2, !22}
!125 = !{!"p1 _ZTSN5video17S3DVertex2TCoordsE", !43, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!127 = !{!126, !125, i64 8}
!128 = !{!126, !125, i64 0}
!129 = !{ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEED1Ev}
!130 = !{!126, !125, i64 16}
!131 = !{ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEED1Ev}
!132 = !{!"_ZTSNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE12_Vector_implE", !126, i64 0}
!133 = !{!"_ZTSSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE", !132, i64 0}
!134 = !{!"_ZTSSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE", !133, i64 0}
!135 = !{!"_ZTSN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE", !115, i64 0, !134, i64 32, !111, i64 56, !40, i64 64}
!136 = !{!135, !40, i64 64}
!137 = !{!"p1 _ZTSN5video17S3DVertexTangentsE", !43, i64 0}
!138 = !{!"_ZTSNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE17_Vector_impl_dataE", !137, i64 0, !137, i64 8, !137, i64 16}
!139 = !{!138, !137, i64 8}
!140 = !{!138, !137, i64 0}
!141 = !{ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEED1Ev}
!142 = !{!138, !137, i64 16}
!143 = !{ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEED1Ev}
!144 = !{!"_ZTSNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE12_Vector_implE", !138, i64 0}
!145 = !{!"_ZTSSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE", !144, i64 0}
!146 = !{!"_ZTSSt6vectorIN5video17S3DVertexTangentsESaIS1_EE", !145, i64 0}
!147 = !{!"_ZTSN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE", !115, i64 0, !146, i64 32, !111, i64 56, !40, i64 64}
!148 = !{!147, !40, i64 64}
!149 = distinct !{null}
!150 = distinct !{null, null}
!151 = distinct !{null, null}
!152 = distinct !{null, null}
!153 = distinct !{!153, !27}
!154 = distinct !{!154, !27}
!155 = distinct !{!155, !27}
!156 = distinct !{!156, !27}
!157 = distinct !{null, null}
!158 = distinct !{null, null}
!159 = distinct !{null, null}
!160 = distinct !{!160, !27}
end_hunk_2
