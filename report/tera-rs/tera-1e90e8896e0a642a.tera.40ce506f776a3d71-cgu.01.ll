Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.01?download=true
inline.NumInlined: 2035
inline.NumDeleted: 262
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine19render_component_toQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !dbg !8806, !alias.scope !8790
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.411.0..sroa_idx.i, align 8, !dbg !8806, !alias.scope !8790
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !8806
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !8806
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !8806, !alias.scope !8790
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i, align 8, !dbg !8806, !alias.scope !8790
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !8806
  store i64 0, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !8806, !alias.scope !8790
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 232, !dbg !8806
  store ptr null, ptr %i.y, align 8, !dbg !8806, !alias.scope !8790
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 248, !dbg !8806
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !8806
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 256, !dbg !8806
  store ptr %2, ptr %i.s, align 8, !dbg !8807, !alias.scope !8790
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 264, !dbg !8808
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !8808, !alias.scope !8791, !nonnull !1852, !noundef !1852
  store ptr %i.ad, ptr %i.aa, align 8, !dbg !8809, !alias.scope !8790
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 272, !dbg !8810
  store ptr %i.ae, ptr %i.z, align 8, !dbg !8811, !alias.scope !8790
  store i8 %spec.select.i, ptr %i.ab, align 8, !dbg !8812, !alias.scope !8790
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 200, !dbg !8813
  store ptr %4, ptr %i.af, align 8, !dbg !8813
  invoke void @_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.f, !dbg !8814

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera2vm5state5StateEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %i.a) #24
          to label %bb.c unwind label %bb.j, !dbg !8815

bb.g:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera2vm5state5StateEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %i.a)
          to label %bb.h unwind label %bb.d, !dbg !8815

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8816
    #dbg_value(ptr %3, !3913, !DIExpression(), !8766)
    #dbg_value(ptr %3, !3920, !DIExpression(), !8768)
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtB8_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3), !dbg !8817
  br label %bb.i, !dbg !8818

bb.i:                                             ; preds = %bb.k, %bb.h
  ret void, !dbg !8819

bb.j:                                             ; preds = %bb.c, %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !8820
  unreachable, !dbg !8820

bb.k:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !8821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8822
    #dbg_value(ptr %3, !3913, !DIExpression(), !8770)
    #dbg_value(ptr %3, !3920, !DIExpression(), !8772)
  tail call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtB8_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3), !dbg !8823
  br label %bb.i, !dbg !8818

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera7context7ContextEBF_.exit: ; preds = %bb.c
  resume { ptr, i32 } %.pn, !dbg !8820
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9468 {
bb.a:
  %.sroa.7.i.i4448 = alloca [6 x i8], align 2     ; 4 uses
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 6 uses
  %i.s = alloca [40 x i8], align 8                ; 9 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 8                ; 9 uses
  %i.w = alloca [40 x i8], align 8                ; 12 uses
  %.sroa.73.i4057 = alloca [6 x i8], align 2      ; 5 uses
  %i.x = alloca [40 x i8], align 8                ; 6 uses
  %i.y = alloca [40 x i8], align 8                ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 6 uses
  %i.aa = alloca [40 x i8], align 8               ; 6 uses
  %i.ab = alloca [40 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [40 x i8], align 8               ; 12 uses
  %.sroa.73.i = alloca [6 x i8], align 2          ; 5 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [40 x i8], align 8               ; 8 uses
  %i.ag = alloca [64 x i8], align 16              ; 8 uses
  %i.ah = alloca [64 x i8], align 16              ; 8 uses
  %i.ai = alloca [40 x i8], align 8               ; 8 uses
  %i.aj = alloca [40 x i8], align 8               ; 8 uses
  %i.ak = alloca [40 x i8], align 8               ; 8 uses
  %i.al = alloca [40 x i8], align 8               ; 6 uses
  %i.am = alloca [40 x i8], align 8               ; 8 uses
  %i.an = alloca [40 x i8], align 8               ; 12 uses
  %.sroa.7.i.i3506 = alloca [6 x i8], align 2     ; 4 uses
  %i.ao = alloca [40 x i8], align 8               ; 12 uses
  %.sroa.7.i.i = alloca [6 x i8], align 2         ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [48 x i8], align 8               ; 6 uses
  %i.ar = alloca [72 x i8], align 8               ; 5 uses
  %i.as = alloca [72 x i8], align 8               ; 5 uses
  %i.at = alloca [72 x i8], align 8               ; 5 uses
  %i.au = alloca [72 x i8], align 8               ; 5 uses
  %i.av = alloca [72 x i8], align 8               ; 5 uses
  %i.aw = alloca [72 x i8], align 8               ; 5 uses
  %i.ax = alloca [72 x i8], align 8               ; 5 uses
  %i.ay = alloca [72 x i8], align 8               ; 5 uses
  %i.az = alloca [72 x i8], align 8               ; 5 uses
  %i.ba = alloca [72 x i8], align 8               ; 5 uses
  %i.bb = alloca [72 x i8], align 8               ; 5 uses
  %i.bc = alloca [72 x i8], align 8               ; 5 uses
  %i.bd = alloca [72 x i8], align 8               ; 5 uses
  %i.be = alloca [72 x i8], align 8               ; 5 uses
  %i.bf = alloca [48 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !17735, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !17745)
    #dbg_declare(ptr poison, !17746, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !17757)
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [72 x i8], align 8               ; 4 uses
  %i.bi = alloca [40 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !17758, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !17765)
    #dbg_declare(ptr poison, !17762, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !17766)
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !17767, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !17780)
    #dbg_declare(ptr poison, !17767, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !17780)
    #dbg_declare(ptr poison, !17767, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !17780)
    #dbg_declare(ptr poison, !4211, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !9501)
    #dbg_declare(ptr poison, !17776, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !17783)
  %i.bk = alloca [40 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !17784, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !17796)
    #dbg_declare(ptr poison, !17784, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !17796)
    #dbg_declare(ptr poison, !17784, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !17796)
  %i.bl = alloca [40 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !17797, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !17809)
    #dbg_declare(ptr poison, !17797, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !17809)
    #dbg_declare(ptr poison, !17797, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !17809)
  %i.bm = alloca [40 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !17771, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !17811)
    #dbg_declare(ptr poison, !17771, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !17811)
    #dbg_declare(ptr poison, !17771, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !17811)
    #dbg_declare(ptr poison, !4211, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !9511)
    #dbg_declare(ptr poison, !17770, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !17813)
  %i.bn = alloca [40 x i8], align 8               ; 4 uses
  %i.bo = alloca [72 x i8], align 8               ; 4 uses
  %i.bp = alloca [40 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !17761, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !17815)
    #dbg_declare(ptr poison, !17760, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !17816)
    #dbg_declare(ptr poison, !17740, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !17819)
    #dbg_declare(ptr poison, !17751, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !17821)
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !17822, !DIExpression(), !17830)
    #dbg_value(ptr poison, !17841, !DIExpression(), !17845)
  %i.bt = alloca [24 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !17846, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !17855)
  %i.bu = alloca [48 x i8], align 16              ; 10 uses
  %i.bv = alloca [80 x i8], align 16              ; 4 uses
    #dbg_declare(ptr poison, !17849, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !17861)
  %i.bw = alloca [48 x i8], align 16              ; 10 uses
  %i.bx = alloca [64 x i8], align 8               ; 4 uses
    #dbg_value(ptr poison, !17822, !DIExpression(), !17866)
    #dbg_value(ptr poison, !17875, !DIExpression(), !17877)
    #dbg_value(ptr poison, !17878, !DIExpression(), !17881)
  %i.by = alloca [80 x i8], align 16              ; 4 uses
  %i.bz = alloca [24 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !17737, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !17884)
    #dbg_declare(ptr poison, !17749, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !17886)
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [24 x i8], align 8               ; 6 uses
  %i.cg = alloca [24 x i8], align 8               ; 6 uses
  %i.ch = alloca [24 x i8], align 8               ; 6 uses
  %i.ci = alloca [24 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !17736, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !17887)
    #dbg_declare(ptr poison, !17732, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !17888)
  %.sroa.135513 = alloca [71 x i8], align 1       ; 11 uses
    #dbg_declare(ptr %.sroa.135513, !17747, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !17889)
  %i.cj = alloca [72 x i8], align 8               ; 4 uses
    #dbg_value(ptr poison, !4302, !DIExpression(), !9539)
    #dbg_value(ptr poison, !4334, !DIExpression(), !9540)
  %i.ck = alloca [72 x i8], align 8               ; 4 uses
  %i.cl = alloca [24 x i8], align 8               ; 11 uses
  %.sroa.85490 = alloca [6 x i8], align 2         ; 6 uses
  %i.cm = alloca [72 x i8], align 8               ; 4 uses
  %i.cn = alloca [72 x i8], align 8               ; 4 uses
    #dbg_value(ptr poison, !4302, !DIExpression(), !9543)
    #dbg_value(ptr poison, !4334, !DIExpression(), !9544)
  %i.co = alloca [72 x i8], align 8               ; 4 uses
  %i.cp = alloca [24 x i8], align 8               ; 18 uses
  %i.cq = alloca [24 x i8], align 8               ; 4 uses
  %i.cr = alloca [144 x i8], align 8              ; 5 uses
  %i.cs = alloca [32 x i8], align 8               ; 7 uses
  %i.ct = alloca [56 x i8], align 8               ; 5 uses
  %i.cu = alloca [48 x i8], align 8               ; 4 uses
  %i.cv = alloca [72 x i8], align 8               ; 6 uses
  %i.cw = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.05472.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65474 = alloca [7 x i8], align 1         ; 4 uses
  %i.cx = alloca [12 x i8], align 8               ; 8 uses
  %i.cy = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.05462.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65464 = alloca [7 x i8], align 1         ; 4 uses
  %.sroa.55468 = alloca [3 x i8], align 1         ; 4 uses
    #dbg_declare(ptr %.sroa.55468, !4349, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !9546)
    #dbg_declare(ptr %.sroa.55468, !17697, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !17890)
  %i.cz = alloca [24 x i8], align 8               ; 6 uses
  %i.da = alloca [24 x i8], align 8               ; 4 uses
  %i.db = alloca [144 x i8], align 8              ; 5 uses
  %i.dc = alloca [32 x i8], align 8               ; 7 uses
  %i.dd = alloca [56 x i8], align 8               ; 5 uses
  %i.de = alloca [48 x i8], align 8               ; 4 uses
  %i.df = alloca [72 x i8], align 8               ; 6 uses
  %i.dg = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.05445 = alloca [32 x i8], align 8        ; 4 uses
  %i.dh = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.05442.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65444 = alloca [7 x i8], align 1         ; 4 uses
  %i.di = alloca [12 x i8], align 8               ; 7 uses
  %i.dj = alloca [24 x i8], align 8               ; 8 uses
  %i.dk = alloca [32 x i8], align 8               ; 7 uses
  %i.dl = alloca [24 x i8], align 8               ; 2 uses
  %i.dm = alloca [24 x i8], align 8               ; 4 uses
  %i.dn = alloca [24 x i8], align 8               ; 9 uses
  %i.do = alloca [24 x i8], align 8               ; 3 uses
  %.sroa.05431 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9549)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9549)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9550)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9550)
  %i.dp = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.05423 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9549)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9549)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9550)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9550)
  %i.dq = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.05411 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9553)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9553)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9554)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9554)
  %i.dr = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.05403 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9553)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9553)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9554)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9554)
  %i.ds = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.05391 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9557)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9557)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9558)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9558)
  %i.dt = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.05383 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9557)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9557)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9558)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9558)
  %i.du = alloca [24 x i8], align 8               ; 6 uses
  %i.dv = alloca [32 x i8], align 8               ; 7 uses
  %i.dw = alloca [16 x i8], align 8               ; 5 uses
  %i.dx = alloca [16 x i8], align 8               ; 5 uses
  %i.dy = alloca [24 x i8], align 8               ; 2 uses
  %i.dz = alloca [144 x i8], align 8              ; 5 uses
  %i.ea = alloca [32 x i8], align 8               ; 7 uses
  %i.eb = alloca [56 x i8], align 8               ; 5 uses
  %i.ec = alloca [48 x i8], align 8               ; 4 uses
  %i.ed = alloca [12 x i8], align 4               ; 8 uses
  %.sroa.05363 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9561)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9561)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9562)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9562)
  %i.ee = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.05355 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9561)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9561)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9562)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9562)
  %i.ef = alloca [24 x i8], align 8               ; 9 uses
  %i.eg = alloca [32 x i8], align 8               ; 7 uses
  %i.eh = alloca [16 x i8], align 8               ; 5 uses
  %i.ei = alloca [16 x i8], align 8               ; 5 uses
  %i.ej = alloca [24 x i8], align 8               ; 2 uses
  %i.ek = alloca [144 x i8], align 8              ; 5 uses
  %i.el = alloca [32 x i8], align 8               ; 7 uses
  %i.em = alloca [56 x i8], align 8               ; 5 uses
  %i.en = alloca [48 x i8], align 8               ; 4 uses
  %i.eo = alloca [12 x i8], align 4               ; 8 uses
  %.sroa.05335 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9565)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9565)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9566)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9566)
  %i.ep = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.05327 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9565)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9565)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9566)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9566)
  %i.eq = alloca [24 x i8], align 8               ; 9 uses
  %i.er = alloca [32 x i8], align 8               ; 7 uses
  %i.es = alloca [16 x i8], align 8               ; 5 uses
  %i.et = alloca [16 x i8], align 8               ; 5 uses
  %i.eu = alloca [24 x i8], align 8               ; 2 uses
  %i.ev = alloca [144 x i8], align 8              ; 5 uses
  %i.ew = alloca [32 x i8], align 8               ; 7 uses
  %i.ex = alloca [56 x i8], align 8               ; 5 uses
  %i.ey = alloca [48 x i8], align 8               ; 4 uses
  %i.ez = alloca [12 x i8], align 4               ; 8 uses
  %.sroa.05307 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9569)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9569)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9570)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9570)
  %i.fa = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.05299 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9569)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9569)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9570)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9570)
  %i.fb = alloca [24 x i8], align 8               ; 9 uses
  %i.fc = alloca [32 x i8], align 8               ; 7 uses
  %i.fd = alloca [16 x i8], align 8               ; 5 uses
  %i.fe = alloca [16 x i8], align 8               ; 5 uses
  %i.ff = alloca [24 x i8], align 8               ; 2 uses
  %i.fg = alloca [144 x i8], align 8              ; 5 uses
  %i.fh = alloca [32 x i8], align 8               ; 7 uses
  %i.fi = alloca [56 x i8], align 8               ; 5 uses
  %i.fj = alloca [48 x i8], align 8               ; 4 uses
  %i.fk = alloca [12 x i8], align 4               ; 8 uses
  %.sroa.05279 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9573)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9573)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9574)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9574)
  %i.fl = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.05271 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9573)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9573)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9574)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9574)
  %i.fm = alloca [24 x i8], align 8               ; 9 uses
  %i.fn = alloca [144 x i8], align 8              ; 5 uses
  %i.fo = alloca [32 x i8], align 8               ; 7 uses
  %i.fp = alloca [56 x i8], align 8               ; 5 uses
  %i.fq = alloca [48 x i8], align 8               ; 4 uses
  %i.fr = alloca [144 x i8], align 8              ; 5 uses
  %i.fs = alloca [32 x i8], align 8               ; 7 uses
  %i.ft = alloca [56 x i8], align 8               ; 5 uses
  %i.fu = alloca [48 x i8], align 8               ; 4 uses
  %i.fv = alloca [24 x i8], align 8               ; 8 uses
  %i.fw = alloca [72 x i8], align 8               ; 6 uses
  %i.fx = alloca [72 x i8], align 8               ; 7 uses
  %i.fy = alloca [12 x i8], align 4               ; 8 uses
  %i.fz = alloca [16 x i8], align 8               ; 5 uses
  %i.ga = alloca [16 x i8], align 8               ; 5 uses
  %i.gb = alloca [24 x i8], align 8               ; 2 uses
  %i.gc = alloca [144 x i8], align 8              ; 5 uses
  %i.gd = alloca [32 x i8], align 8               ; 7 uses
  %i.ge = alloca [56 x i8], align 8               ; 5 uses
  %i.gf = alloca [48 x i8], align 8               ; 4 uses
  %i.gg = alloca [16 x i8], align 8               ; 5 uses
  %i.gh = alloca [16 x i8], align 8               ; 5 uses
  %i.gi = alloca [24 x i8], align 8               ; 2 uses
  %i.gj = alloca [144 x i8], align 8              ; 5 uses
  %i.gk = alloca [32 x i8], align 8               ; 7 uses
  %i.gl = alloca [56 x i8], align 8               ; 5 uses
  %i.gm = alloca [48 x i8], align 8               ; 4 uses
  %.sroa.05233.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65235 = alloca [7 x i8], align 1         ; 4 uses
  %i.gn = alloca [12 x i8], align 8               ; 7 uses
  %i.go = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.05230.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65232 = alloca [7 x i8], align 1         ; 4 uses
  %i.gp = alloca [12 x i8], align 8               ; 8 uses
  %i.gq = alloca [24 x i8], align 8               ; 10 uses
  %i.gr = alloca [144 x i8], align 8              ; 5 uses
  %i.gs = alloca [32 x i8], align 8               ; 7 uses
  %i.gt = alloca [56 x i8], align 8               ; 5 uses
  %i.gu = alloca [48 x i8], align 8               ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !28852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !dbg !28853
    #dbg_value(ptr %i.cy, !5276, !DIExpression(), !16478)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy), !dbg !28854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !28853
  br label %.outer, !dbg !28853

bb.bdz:                                           ; preds = %bb.bdt
    #dbg_value(ptr %i.faq, !17702, !DIExpression(), !23127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !dbg !28855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !28856
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk11expand_span(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.faq, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cx)
          to label %bb.beb unwind label %bb.bea, !dbg !28857

bb.bea:                                           ; preds = %.invoke9533, %bb.bee, %bb.bed, %bb.bec, %bb.bdz
  %i.faz = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !28858

.body:                                            ; preds = %bb.beg, %bb.bea
  %eh.lpad-body = phi { ptr, i32 } [ %i.faz, %bb.bea ], [ %i.fbn, %bb.beg ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.cv) #24
          to label %.body4439 unwind label %bb.gi, !dbg !28858

bb.beb:                                           ; preds = %bb.bdz
  %i.fba = load i64, ptr %i.ct, align 8, !dbg !28859, !range !5411, !noundef !1852
  %i.fbb = trunc nuw i64 %i.fba to i1, !dbg !28860
  br i1 %i.fbb, label %bb.bec, label %.invoke9533, !dbg !28860, !prof !5801

bb.bec:                                           ; preds = %bb.beb
  %i.fbc = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !28861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %i.fbc, i64 48, i1 false), !dbg !28861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !28862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !dbg !28863
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine13report_target(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.faq)
          to label %bb.bed unwind label %bb.bea, !dbg !28864

.invoke9533:                                      ; preds = %bb.bdt, %bb.beb
  %i.fbd = phi ptr [ @6, %bb.beb ], [ @5, %bb.bdt ]
  %i.fbe = phi i64 [ 24, %bb.beb ], [ 15, %bb.bdt ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fbd, i64 noundef %i.fbe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #27
          to label %.cont9534 unwind label %bb.bea, !dbg !28865

.cont9534:                                        ; preds = %.invoke9533
  unreachable

bb.bed:                                           ; preds = %bb.bec
  %i.fbf = load ptr, ptr %i.cs, align 8, !dbg !28866, !nonnull !1852, !noundef !1852
  %i.fbg = getelementptr inbounds nuw i8, ptr %i.cs, i64 8, !dbg !28866
  %i.fbh = load i64, ptr %i.fbg, align 8, !dbg !28866, !noundef !1852
    #dbg_value(ptr %i.fbf, !17704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23128)
    #dbg_value(i64 %i.fbh, !17704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23128)
  %i.fbi = getelementptr inbounds nuw i8, ptr %i.cs, i64 16, !dbg !28867
  %i.fbj = load ptr, ptr %i.fbi, align 8, !dbg !28867, !nonnull !1852, !noundef !1852
  %i.fbk = getelementptr inbounds nuw i8, ptr %i.cs, i64 24, !dbg !28867
  %i.fbl = load i64, ptr %i.fbk, align 8, !dbg !28867, !noundef !1852
    #dbg_value(ptr %i.fbj, !17705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23128)
    #dbg_value(i64 %i.fbl, !17705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23128)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !28868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !28869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !dbg !28870
    #dbg_value(ptr %i.cv, !20671, !DIExpression(), !23130)
  invoke fastcc void @_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5yXxDE1DkoT_4tera6errors5ErrorNtB5_12SpecToString14spec_to_stringBC_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cv)
          to label %bb.bee unwind label %bb.bea, !dbg !28871

bb.bee:                                           ; preds = %bb.bed
  invoke void @_RNvMNtCs5yXxDE1DkoT_4tera6errorsNtB2_11ReportError3new(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fbf, i64 noundef %i.fbh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fbj, i64 noundef %i.fbl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu)
          to label %bb.bef unwind label %bb.bea, !dbg !28872

bb.bef:                                           ; preds = %bb.bee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !28873
    #dbg_declare(ptr %i.cr, !6239, !DIExpression(), !16480)
  %i.fbm = invoke fastcc noundef ptr @_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit()
          to label %bb.bei unwind label %bb.beg, !dbg !28874 ; 2 uses

bb.beg:                                           ; preds = %bb.bef
  %i.fbn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors11ReportErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.cr) #24
          to label %.body unwind label %bb.beh, !dbg !28875

bb.beh:                                           ; preds = %bb.beg
  %i.fbo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !28876
  unreachable, !dbg !28876

bb.bei:                                           ; preds = %bb.bef
    #dbg_value(ptr %i.fbm, !6244, !DIExpression(), !16481)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.fbm, ptr noundef nonnull align 8 dereferenceable(144) %i.cr, i64 144, i1 false), !dbg !28877
  store i8 2, ptr %0, align 8, !dbg !28878
  %.sroa.05475.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28878
  store ptr %i.fbm, ptr %.sroa.05475.sroa.5.0..sroa_idx, align 8, !dbg !28878
  %.sroa.45476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !28878
  store ptr null, ptr %.sroa.45476.0..sroa_idx, align 8, !dbg !28878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !28879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !28880
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.cv)
          to label %bb.bej unwind label %.loopexit.split-lp6195.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28858

bb.bej:                                           ; preds = %bb.bei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !28858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !28852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !dbg !28853
    #dbg_value(ptr %i.cy, !5276, !DIExpression(), !16483)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy), !dbg !28881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !28853
  br label %bb.bij, !dbg !23922

bb.bek:                                           ; preds = %bb.c
  %i.fbp = trunc i64 %.sroa.0210.07551 to i32     ; 2 uses
    #dbg_value(ptr %i.aig, !17707, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23131)
    #dbg_value(ptr %i.aig, !23132, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23135)
    #dbg_value(ptr %i.aig, !19894, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23136)
    #dbg_value(ptr %i.aig, !23137, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23140)
    #dbg_value(ptr %i.aig, !23141, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23145)
    #dbg_value(ptr %i.aig, !23146, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23150)
    #dbg_value(ptr %i.aig, !19894, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23151)
    #dbg_value(ptr %i.aig, !23137, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23153)
    #dbg_value(ptr %i.aig, !23141, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23156)
    #dbg_value(ptr %i.aig, !23146, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23159)
    #dbg_value(ptr %i.aig, !23132, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23161)
    #dbg_value(ptr %i.aig, !19894, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23162)
    #dbg_value(ptr %i.aig, !23137, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23164)
    #dbg_value(ptr %i.aig, !23141, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23167)
    #dbg_value(ptr %i.aig, !23146, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23170)
    #dbg_value(ptr %i.aig, !19944, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23171)
    #dbg_value(ptr %i.aig, !23137, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23173)
    #dbg_value(ptr %i.aig, !23141, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23176)
    #dbg_value(ptr %i.aig, !23146, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23179)
    #dbg_value(ptr %i.aic, !18751, !DIExpression(), !18826)
    #dbg_value(ptr %i.aic, !17708, !DIExpression(), !23180)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !28882
  %i.fbq = getelementptr inbounds nuw i8, ptr %i.aig, i64 24, !dbg !28883 ; 2 uses
  %i.fbr = load i64, ptr %i.fbq, align 8, !dbg !28883, !noundef !1852 ; 2 uses
  %i.fbs = icmp ult i64 %i.fbr, 384307168202282326, !dbg !28884
  call void @llvm.assume(i1 %i.fbs), !dbg !28885
  switch i64 %i.fbr, label %..thread6081_crit_edge [
    i64 1, label %bb.bel
    i64 0, label %bb.bep
  ], !dbg !28886

..thread6081_crit_edge:                           ; preds = %bb.bek
  %.phi.trans.insert8438 = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  %.pre8439 = load ptr, ptr %.phi.trans.insert8438, align 8, !dbg !28887 ; 2 uses
  %.phi.trans.insert8440 = getelementptr inbounds nuw i8, ptr %.pre8439, i64 16
  %.pre8441 = load i64, ptr %.phi.trans.insert8440, align 8, !dbg !28888
  br label %.thread6081, !dbg !28886

bb.bel:                                           ; preds = %bb.bek
    #dbg_value(ptr poison, !19899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19903)
    #dbg_value(ptr poison, !19905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19909)
    #dbg_value(i64 %i.fbr, !19899, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19903)
    #dbg_value(i64 %i.fbr, !19905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19909)
  %i.fbt = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !28889
  %i.fbu = load ptr, ptr %i.fbt, align 8, !dbg !28889, !nonnull !1852, !noundef !1852 ; 4 uses
    #dbg_value(ptr %i.fbu, !19899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19903)
    #dbg_value(ptr %i.fbu, !19905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19909)
    #dbg_value(ptr %i.fbu, !19914, !DIExpression(), !23198)
    #dbg_value(ptr %i.fbu, !19393, !DIExpression(), !23199)
    #dbg_value(ptr %i.fbu, !20093, !DIExpression(), !23202)
    #dbg_value(ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, !19915, !DIExpression(), !23198)
  %i.fbv = getelementptr inbounds nuw i8, ptr %i.fbu, i64 16, !dbg !28890
  %i.fbw = load i64, ptr %i.fbv, align 8, !dbg !28890, !noundef !1852 ; 4 uses
    #dbg_value(ptr poison, !20289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23206)
    #dbg_value(i64 %i.fbw, !20289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23206)
  %i.fbx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, i64 8), align 8, !dbg !28891, !noundef !1852
    #dbg_value(ptr poison, !20288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23206)
    #dbg_value(i64 %i.fbx, !20288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23206)
    #dbg_value(ptr poison, !20303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23211)
    #dbg_value(i64 %i.fbw, !20303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23211)
    #dbg_value(ptr poison, !20314, !DIExpression(), !23212)
    #dbg_value(ptr poison, !20304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23211)
    #dbg_value(i64 %i.fbx, !20304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23211)
    #dbg_value(ptr poison, !20315, !DIExpression(), !23213)
    #dbg_value(i64 %i.fbw, !20307, !DIExpression(), !23214)
    #dbg_value(i64 %i.fbw, !20320, !DIExpression(), !23217)
    #dbg_value(i64 %i.fbw, !20325, !DIExpression(), !23218)
  %i.fby = icmp eq i64 %i.fbw, %i.fbx, !dbg !28892
  br i1 %i.fby, label %bb.bem, label %.thread6081, !dbg !28892

bb.bem:                                           ; preds = %bb.bel
  %i.fbz = load ptr, ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, align 8, !dbg !28891, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fbz, !20304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23211)
    #dbg_value(ptr %i.fbz, !20288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23206)
  %i.fca = getelementptr inbounds nuw i8, ptr %i.fbu, i64 8, !dbg !28893
  %i.fcb = load ptr, ptr %i.fca, align 8, !dbg !28893, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fcb, !20289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23206)
    #dbg_value(ptr %i.fcb, !20303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23211)
    #dbg_value(ptr %i.fcb, !20321, !DIExpression(), !23217)
    #dbg_value(ptr %i.fbz, !20322, !DIExpression(), !23217)
  %bcmp2505 = call i32 @bcmp(ptr nonnull %i.fcb, ptr nonnull %i.fbz, i64 %i.fbw), !dbg !28894
  %i.fcc = icmp eq i32 %bcmp2505, 0, !dbg !28894
  br i1 %i.fcc, label %bb.ben, label %.thread6081, !dbg !19911

bb.ben:                                           ; preds = %bb.bem
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State12dump_context(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2), !dbg !28895
  br label %bb.beo, !dbg !28896

bb.beo:                                           ; preds = %.thread6081, %bb.ben
  %i.fcd = load i64, ptr %i.fbq, align 8, !dbg !28897, !noundef !1852 ; 6 uses
  %i.fce = icmp ult i64 %i.fcd, 384307168202282326, !dbg !28898
  call void @llvm.assume(i1 %i.fce), !dbg !28899
  %i.fcf = add nsw i64 %i.fcd, -1, !dbg !28900    ; 2 uses
    #dbg_value(i64 %i.fcf, !17710, !DIExpression(), !23227)
  %.not2507 = icmp eq i64 %i.fcf, 0, !dbg !28901
  br i1 %.not2507, label %bb.beq, label %bb.beu, !dbg !28901

.thread6081:                                      ; preds = %..thread6081_crit_edge, %bb.bem, %bb.bel
  %i.fcg = phi i64 [ %.pre8441, %..thread6081_crit_edge ], [ %i.fbw, %bb.bem ], [ %i.fbw, %bb.bel ], !dbg !28888
  %i.fch = phi ptr [ %.pre8439, %..thread6081_crit_edge ], [ %i.fbu, %bb.bem ], [ %i.fbu, %bb.bel ], !dbg !28887
    #dbg_value(ptr %i.fch, !19899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19921)
    #dbg_value(ptr %i.fch, !19905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19924)
    #dbg_value(ptr %i.fch, !20089, !DIExpression(), !23228)
    #dbg_value(ptr %i.fch, !20093, !DIExpression(), !23229)
  %i.fci = getelementptr inbounds nuw i8, ptr %i.fch, i64 8, !dbg !28902
  %i.fcj = load ptr, ptr %i.fci, align 8, !dbg !28902, !nonnull !1852, !noundef !1852
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State9get_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fcj, i64 noundef %i.fcg), !dbg !28903
  br label %bb.beo, !dbg !28896

bb.bep:                                           ; preds = %bb.bek
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #26, !dbg !28904
  unreachable, !dbg !28904

bb.beq:                                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4471, %bb.beo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28905, !noalias !23238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false), !dbg !28906
    #dbg_value(i32 %i.fbp, !4349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !23239)
    #dbg_value(i32 %i.fbp, !4349, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !23239)
    #dbg_value(i8 0, !4349, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !23239)
  call void @llvm.experimental.noalias.scope.decl(metadata !23240), !dbg !28907
    #dbg_value(ptr %2, !4354, !DIExpression(), !16496)
    #dbg_declare(ptr poison, !4355, !DIExpression(), !16497)
    #dbg_declare(ptr %i.a, !5232, !DIExpression(), !16499)
    #dbg_value(ptr %2, !5237, !DIExpression(), !16500)
  store i32 %i.fbp, ptr %i.aba, align 8, !dbg !28905, !noalias !23241
  store i32 %i.fbp, ptr %.sroa.45499.0..sroa_idx, align 4, !dbg !28905, !noalias !23241
  store i8 0, ptr %.sroa.55500.0..sroa_idx, align 8, !dbg !28905, !noalias !23241
    #dbg_value(ptr %2, !5239, !DIExpression(), !16502)
    #dbg_value(ptr %2, !5249, !DIExpression(), !16504)
    #dbg_declare(ptr %i.a, !5244, !DIExpression(), !16505)
    #dbg_value(i64 40, !5254, !DIExpression(), !16508)
  %i.fck = load i64, ptr %i.aan, align 8, !dbg !28908, !alias.scope !23242, !noundef !1852 ; 3 uses
    #dbg_value(i64 %i.fck, !5245, !DIExpression(), !16511)
    #dbg_value(i64 %i.fck, !5264, !DIExpression(), !16513)
    #dbg_value(ptr %2, !5261, !DIExpression(), !16514)
  %i.fcl = load i64, ptr %2, align 8, !dbg !28909, !range !5271, !alias.scope !23242, !noundef !1852
  %i.fcm = icmp eq i64 %i.fck, %i.fcl, !dbg !28910
  br i1 %i.fcm, label %bb.ber, label %bb.bgi, !dbg !28910

bb.ber:                                           ; preds = %bb.beq
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs5yXxDE1DkoT_4tera5value5ValueINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusivemEEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.bgi unwind label %bb.bes, !dbg !28911, !noalias !23243

bb.bes:                                           ; preds = %bb.ber
  %i.fcn = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !5272, !DIExpression(), !16517)
    #dbg_value(ptr %i.a, !5276, !DIExpression(), !16519)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %common.resume unwind label %bb.bet, !dbg !28912, !noalias !23244

bb.bet:                                           ; preds = %bb.bes
  %i.fco = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !28913, !noalias !23244
  unreachable, !dbg !28913

.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bga, %bb.bfh, %bb.bfi, %.invoke9535, %bb.bez, %bb.bgj, %bb.bgl, %bb.bgp, %bb.bgq
  %lpad.loopexit.split-lp10443 = landingpad { ptr, i32 }
          cleanup
  br label %.thread6087

bb.beu:                                           ; preds = %bb.beo
  %.val3019 = load i8, ptr %i.cp, align 8, !dbg !28914, !range !5099, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !6187, !DIExpression(), !16521)
    #dbg_value(ptr poison, !6193, !DIExpression(), !16523)
  %i.fcp = icmp ne i8 %.val3019, 10, !dbg !28915
  call void @llvm.assume(i1 %i.fcp), !dbg !28915
  %i.fcq = icmp eq i8 %.val3019, 2, !dbg !28916
  br i1 %i.fcq, label %bb.bew, label %bb.bev, !dbg !28917

bb.bev:                                           ; preds = %bb.beu
    #dbg_value(ptr %i.cp, !17712, !DIExpression(), !23245)
    #dbg_value(i8 0, !17713, !DIExpression(), !23246)
    #dbg_value(ptr poison, !19949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19953)
    #dbg_value(ptr poison, !19955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19961)
    #dbg_value(i64 %i.fcd, !19949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19953)
    #dbg_value(i64 %i.fcd, !19955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19961)
  %i.fcr = icmp eq i64 %i.fcd, 0, !dbg !28918
  br i1 %i.fcr, label %bb.bez, label %bb.bey, !dbg !28918, !prof !5359

bb.bew:                                           ; preds = %bb.beu
  %i.fcs = getelementptr i8, ptr %i.aic, i64 16
  %.val3178 = load i64, ptr %i.fcs, align 8, !dbg !28919, !noundef !1852
    #dbg_value(ptr poison, !7565, !DIExpression(), !16526)
    #dbg_value(i64 0, !7585, !DIExpression(), !16528)
    #dbg_value(i64 0, !7583, !DIExpression(), !16529)
    #dbg_value(i64 0, !7590, !DIExpression(), !16531)
    #dbg_value(i64 0, !7596, !DIExpression(), !16533)
    #dbg_value(ptr poison, !7581, !DIExpression(), !16529)
    #dbg_value(i64 poison, !7582, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !16529)
    #dbg_value(ptr poison, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16535)
    #dbg_value(ptr poison, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16537)
    #dbg_value(i64 %.val3178, !7602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16535)
    #dbg_value(i64 %.val3178, !7605, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16537)
  %i.fct = and i64 %.sroa.0210.07551, 4294967295, !dbg !28920 ; 2 uses
    #dbg_value(i64 %i.fct, !7603, !DIExpression(), !16535)
    #dbg_value(i64 %i.fct, !7606, !DIExpression(), !16537)
  %i.fcu = icmp ugt i64 %.val3178, %i.fct, !dbg !28921
  br i1 %i.fcu, label %bb.bex, label %.invoke9535, !dbg !28921

bb.bex:                                           ; preds = %bb.bew
  %i.fcv = getelementptr i8, ptr %i.aic, i64 8
  %.val3177 = load ptr, ptr %i.fcv, align 8, !dbg !28919, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %.val3177, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16535)
    #dbg_value(ptr %.val3177, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16537)
  %i.fcw = getelementptr inbounds nuw [56 x i8], ptr %.val3177, i64 %i.fct, !dbg !28922 ; 2 uses
    #dbg_value(ptr %i.fcw, !7574, !DIExpression(), !16526)
    #dbg_value(ptr undef, !7585, !DIExpression(DW_OP_deref), !16528)
    #dbg_value(ptr undef, !7565, !DIExpression(), !16526)
    #dbg_value(ptr %i.fcw, !7575, !DIExpression(), !16538)
    #dbg_value(ptr %i.fcw, !7588, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16539)
    #dbg_value(ptr %i.fcw, !7608, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16541)
    #dbg_value(ptr %i.fcw, !7610, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16543)
    #dbg_value(ptr %i.fcw, !7613, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16545)
  %i.fcx = getelementptr inbounds nuw i8, ptr %i.fcw, i64 48, !dbg !28923
  %i.fcy = load i64, ptr %i.fcx, align 8, !dbg !28923, !noundef !1852
    #dbg_value(ptr poison, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16531)
    #dbg_value(ptr poison, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16533)
    #dbg_value(i64 %i.fcy, !7593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16531)
    #dbg_value(i64 %i.fcy, !7599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16533)
  %.not6132 = icmp eq i64 %i.fcy, 0, !dbg !28924
  br i1 %.not6132, label %.invoke9535, label %bb.bgo, !dbg !28924

bb.bey:                                           ; preds = %bb.bev
  %i.fcz = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !28925
  %i.fda = load ptr, ptr %i.fcz, align 8, !dbg !28925, !nonnull !1852, !noundef !1852 ; 3 uses
    #dbg_value(ptr %i.fda, !19949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19953)
    #dbg_value(ptr %i.fda, !19955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19961)
    #dbg_value(i64 %i.fcd, !23253, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !23264)
    #dbg_value(i64 %i.fcd, !23267, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !23272)
    #dbg_value(ptr %i.fda, !23265, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23273)
    #dbg_value(ptr %i.fda, !23254, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23274)
    #dbg_value(i64 %i.fcd, !23265, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !23273)
    #dbg_value(i64 %i.fcd, !23254, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !23274)
    #dbg_value(ptr %i.fda, !23255, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23275)
    #dbg_value(ptr %i.fda, !23268, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23272)
  %.idx10385 = mul nuw i64 %i.fcd, 24, !dbg !28926
  %i.fdb = getelementptr i8, ptr %i.fda, i64 %.idx10385, !dbg !28926 ; 2 uses
    #dbg_value(ptr %i.fda, !17714, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23276)
    #dbg_value(ptr %i.fdb, !17714, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23276)
    #dbg_value(i64 0, !17714, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23276)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fdb) ]
  %i.fdc = icmp eq i64 %i.fcd, 1, !dbg !28927
  br i1 %i.fdc, label %._crit_edge, label %.lr.ph10382, !dbg !28928

.lr.ph10382:                                      ; preds = %bb.bey
  %.sroa.05482.010377 = getelementptr inbounds nuw i8, ptr %i.fda, i64 24, !dbg !28929
  br label %bb.bfz, !dbg !28928

bb.bez:                                           ; preds = %bb.bev
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #27
          to label %bb.fy unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28930

bb.bfa:                                           ; preds = %bb.bgd
  %.sroa.05482.0 = getelementptr inbounds nuw i8, ptr %.sroa.05482.010381, i64 24, !dbg !28929 ; 2 uses
    #dbg_value(ptr %.sroa.05482.0, !17714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23276)
    #dbg_value(i64 %i.fez, !17714, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23276)
    #dbg_value(ptr %i.ffg, !17712, !DIExpression(), !23245)
    #dbg_value(ptr undef, !4334, !DIExpression(), !9544)
    #dbg_value(ptr undef, !4302, !DIExpression(), !9543)
    #dbg_value(ptr %.sroa.05482.0, !4313, !DIExpression(), !16556)
    #dbg_value(ptr %i.fdb, !4314, !DIExpression(), !16557)
    #dbg_value(ptr poison, !7627, !DIExpression(), !16558)
    #dbg_value(ptr poison, !7628, !DIExpression(), !16559)
  %i.fdd = icmp eq ptr %.sroa.05482.0, %i.fdb, !dbg !28927
  br i1 %i.fdd, label %._crit_edge, label %bb.bfz, !dbg !28928

._crit_edge:                                      ; preds = %bb.bfa, %bb.bey
  %.sroa.0301.0.lcssa = phi ptr [ %i.cp, %bb.bey ], [ %i.ffg, %bb.bfa ], !dbg !23227 ; 17 uses
    #dbg_value(ptr poison, !17714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23276)
    #dbg_value(i64 poison, !17714, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23276)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.85490), !dbg !28931
  call void @llvm.experimental.noalias.scope.decl(metadata !23277), !dbg !28932
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i4448), !dbg !28933
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5014, !DIExpression(), !16563)
  call void @llvm.experimental.noalias.scope.decl(metadata !23278), !dbg !28933
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5017, !DIExpression(), !16567)
    #dbg_value(i64 1, !5041, !DIExpression(), !16570)
    #dbg_value(i8 0, !5047, !DIExpression(), !16570)
    #dbg_value(i64 1, !5056, !DIExpression(), !16572)
    #dbg_value(i8 0, !5060, !DIExpression(), !16572)
    #dbg_value(i64 1, !5041, !DIExpression(), !16575)
    #dbg_value(i8 0, !5047, !DIExpression(), !16575)
    #dbg_value(i64 1, !5056, !DIExpression(), !16577)
    #dbg_value(i8 0, !5060, !DIExpression(), !16577)
    #dbg_value(i64 1, !5041, !DIExpression(), !16580)
    #dbg_value(i8 0, !5047, !DIExpression(), !16580)
    #dbg_value(i64 1, !5056, !DIExpression(), !16582)
    #dbg_value(i8 0, !5060, !DIExpression(), !16582)
    #dbg_value(i64 1, !5041, !DIExpression(), !16586)
    #dbg_value(i8 0, !5047, !DIExpression(), !16586)
    #dbg_value(i64 1, !5056, !DIExpression(), !16588)
    #dbg_value(i8 0, !5060, !DIExpression(), !16588)
  %i.fde = load i8, ptr %.sroa.0301.0.lcssa, align 8, !dbg !28934, !range !5099, !alias.scope !23279, !noundef !1852 ; 4 uses
  %i.fdf = icmp ne i8 %i.fde, 10, !dbg !28934
  call void @llvm.assume(i1 %i.fdf), !dbg !28934
  %i.fdg = add nsw i8 %i.fde, -2, !dbg !28934
  %i.fdh = icmp samesign ugt i8 %i.fde, 1, !dbg !28934
  %narrow.i.i4449 = select i1 %i.fdh, i8 %i.fdg, i8 8, !dbg !28934
  switch i8 %narrow.i.i4449, label %bb.bfb [
    i8 0, label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469
    i8 1, label %bb.bfc
    i8 2, label %bb.bfd
    i8 3, label %bb.bfe
    i8 4, label %bb.bff
    i8 5, label %bb.bfg
    i8 6, label %bb.bfh
    i8 7, label %bb.bfi
    i8 8, label %bb.bfj
    i8 9, label %bb.bfk
    i8 10, label %bb.bfl
    i8 11, label %bb.bfm
  ], !dbg !28934

bb.bfb:                                           ; preds = %._crit_edge
  unreachable, !dbg !28935

bb.bfc:                                           ; preds = %._crit_edge
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !28934

bb.bfd:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5021, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16589)
  %i.fdi = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 1, !dbg !28936
  %i.fdj = load i8, ptr %i.fdi, align 1, !dbg !28936, !range !3887, !alias.scope !23279, !noundef !1852
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !28937

bb.bfe:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5023, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16590)
  %i.fdk = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !28938
  %i.fdl = load i64, ptr %i.fdk, align 8, !dbg !28938, !alias.scope !23279, !noundef !1852
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !28937

bb.bff:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16591)
  %i.fdm = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !28939
  %i.fdn = load i64, ptr %i.fdm, align 8, !dbg !28939, !alias.scope !23279, !noundef !1852
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !28937

bb.bfg:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16592)
  %i.fdo = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !28940
  %i.fdp = load i64, ptr %i.fdo, align 8, !dbg !28940, !alias.scope !23279, !noundef !1852
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !28937

bb.bfh:                                           ; preds = %._crit_edge
  %i.fdq = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !28941
    #dbg_value(ptr %i.fdq, !5029, !DIExpression(), !16593)
  %.val.i.i4466 = load ptr, ptr %i.fdq, align 8, !dbg !28942, !alias.scope !23279 ; 2 uses
    #dbg_value(ptr poison, !5104, !DIExpression(), !16595)
  %i.fdr = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxoE13new_uninit_inCs5yXxDE1DkoT_4tera()
          to label %.noexc4467 unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28943 ; 2 uses

.noexc4467:                                       ; preds = %bb.bfh
    #dbg_value(ptr %i.fdr, !5110, !DIExpression(), !16596)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i4466) ]
    #dbg_value(ptr %.val.i.i4466, !5122, !DIExpression(), !16598)
    #dbg_value(ptr %i.fdr, !5129, !DIExpression(), !16598)
    #dbg_value(ptr %.val.i.i4466, !5132, !DIExpression(), !16600)
    #dbg_value(ptr %.val.i.i4466, !5140, !DIExpression(), !16602)
    #dbg_value(ptr %i.fdr, !5138, !DIExpression(), !16600)
    #dbg_value(ptr %i.fdr, !5143, !DIExpression(), !16602)
    #dbg_value(i64 1, !5144, !DIExpression(), !16602)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fdr, ptr noundef nonnull readonly align 16 dereferenceable(16) %.val.i.i4466, i64 16, i1 false), !dbg !28944, !noalias !23280
  %i.fds = ptrtoint ptr %i.fdr to i64, !dbg !28945
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !28937

bb.bfi:                                           ; preds = %._crit_edge
  %i.fdt = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !28946
    #dbg_value(ptr %i.fdt, !5031, !DIExpression(), !16605)
  %.val34.i.i4465 = load ptr, ptr %i.fdt, align 8, !dbg !28947, !alias.scope !23279 ; 2 uses
    #dbg_value(ptr poison, !5146, !DIExpression(), !16607)
  %i.fdu = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxnE13new_uninit_inCs5yXxDE1DkoT_4tera()
          to label %.noexc4468 unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28948 ; 2 uses

.noexc4468:                                       ; preds = %bb.bfi
    #dbg_value(ptr %i.fdu, !5150, !DIExpression(), !16608)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val34.i.i4465) ]
    #dbg_value(ptr %.val34.i.i4465, !5159, !DIExpression(), !16610)
    #dbg_value(ptr %i.fdu, !5163, !DIExpression(), !16610)
    #dbg_value(ptr %.val34.i.i4465, !5165, !DIExpression(), !16612)
    #dbg_value(ptr %.val34.i.i4465, !5171, !DIExpression(), !16614)
    #dbg_value(ptr %i.fdu, !5169, !DIExpression(), !16612)
    #dbg_value(ptr %i.fdu, !5174, !DIExpression(), !16614)
    #dbg_value(i64 1, !5175, !DIExpression(), !16614)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fdu, ptr noundef nonnull readonly align 16 dereferenceable(16) %.val34.i.i4465, i64 16, i1 false), !dbg !28949, !noalias !23280
  %i.fdv = ptrtoint ptr %i.fdu to i64, !dbg !28950
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !28937

bb.bfj:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5032, !DIExpression(), !16615)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5088, !DIExpression(), !16616)
  %i.fdw = trunc nuw i8 %i.fde to i1, !dbg !28951
  br i1 %i.fdw, label %bb.bfn, label %bb.bfo, !dbg !28951

bb.bfk:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5034, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16617)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5074, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16618)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5177, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16620)
  %i.fdx = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !28952
  %i.fdy = load ptr, ptr %i.fdx, align 8, !dbg !28952, !alias.scope !23279, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fdy, !5046, !DIExpression(), !16622)
    #dbg_value(ptr %i.fdy, !5059, !DIExpression(), !16582)
  %i.fdz = atomicrmw add ptr %i.fdy, i64 1 monotonic, align 8, !dbg !28953, !noalias !23280
    #dbg_value(i64 %i.fdz, !5075, !DIExpression(), !16623)
  %i.fea = icmp slt i64 %i.fdz, 0, !dbg !28954
  br i1 %i.fea, label %bb.bft, label %bb.bfs, !dbg !28954

bb.bfl:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5036, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16624)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5067, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16625)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5188, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16627)
  %i.feb = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !28955
  %i.fec = load ptr, ptr %i.feb, align 8, !dbg !28955, !alias.scope !23279, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fec, !5046, !DIExpression(), !16629)
    #dbg_value(ptr %i.fec, !5059, !DIExpression(), !16577)
  %i.fed = atomicrmw add ptr %i.fec, i64 1 monotonic, align 8, !dbg !28956, !noalias !23280
    #dbg_value(i64 %i.fed, !5068, !DIExpression(), !16630)
  %i.fee = icmp slt i64 %i.fed, 0, !dbg !28957
  br i1 %i.fee, label %bb.bfv, label %bb.bfu, !dbg !28957

bb.bfm:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5038, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16631)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5053, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16632)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5199, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16634)
  %i.fef = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !28958
  %i.feg = load ptr, ptr %i.fef, align 8, !dbg !28958, !alias.scope !23279, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.feg, !5046, !DIExpression(), !16636)
    #dbg_value(ptr %i.feg, !5059, !DIExpression(), !16572)
  %i.feh = atomicrmw add ptr %i.feg, i64 1 monotonic, align 8, !dbg !28959, !noalias !23280
    #dbg_value(i64 %i.feh, !5054, !DIExpression(), !16637)
  %i.fei = icmp slt i64 %i.feh, 0, !dbg !28960
  br i1 %i.fei, label %bb.bfx, label %bb.bfw, !dbg !28960

bb.bfn:                                           ; preds = %bb.bfj
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5095, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16638)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5082, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16639)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5209, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16641)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5096, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16638)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5217, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16643)
  %i.fej = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !28961
  %i.fek = load ptr, ptr %i.fej, align 8, !dbg !28961, !alias.scope !23279, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fek, !5046, !DIExpression(), !16645)
    #dbg_value(ptr %i.fek, !5059, !DIExpression(), !16588)
end_hunk_1
begin_hunk_2_@_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_:bb.a
    #dbg_value(ptr %i.fgu, !19899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19939)
    #dbg_value(ptr %i.fgu, !19905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19942)
    #dbg_value(ptr %i.fgu, !20089, !DIExpression(), !23339)
    #dbg_value(ptr %i.fgu, !20093, !DIExpression(), !23342)
  %i.fgv = getelementptr inbounds nuw i8, ptr %i.fgu, i64 8, !dbg !29036
  %i.fgw = load ptr, ptr %i.fgv, align 8, !dbg !29036, !nonnull !1852, !noundef !1852
  %i.fgx = getelementptr inbounds nuw i8, ptr %i.fgu, i64 16, !dbg !29037
  %i.fgy = load i64, ptr %i.fgx, align 8, !dbg !29037, !noundef !1852
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine19undefined_var_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aic, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fgw, i64 noundef %i.fgy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fgs)
          to label %bb.bgr unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29038

bb.bgq:                                           ; preds = %bb.bgo
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #27
          to label %bb.fy unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29034

bb.bgr:                                           ; preds = %bb.bgp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.co, i64 72, i1 false), !dbg !29039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !29040
  br label %bb.bgn, !dbg !29041

.thread6087:                                      ; preds = %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread6083
  %.pn6086 = phi { ptr, i32 } [ %i.fga, %.thread6083 ], [ %lpad.loopexit.split-lp10443, %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
    #dbg_value(ptr %i.cp, !5276, !DIExpression(), !16719)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %common.resume unwind label %bb.gi, !dbg !29042

bb.bgs:                                           ; preds = %bb.c
    #dbg_value(ptr %i.aig, !17720, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23354)
    #dbg_value(ptr %i.aig, !23132, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23356)
    #dbg_value(ptr %i.aig, !19894, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23357)
    #dbg_value(ptr %i.aig, !23137, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23359)
    #dbg_value(ptr %i.aig, !23141, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23362)
    #dbg_value(ptr %i.aig, !23146, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23365)
    #dbg_value(ptr %i.aig, !19894, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23366)
    #dbg_value(ptr %i.aig, !23137, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23368)
    #dbg_value(ptr %i.aig, !23141, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23371)
    #dbg_value(ptr %i.aig, !23146, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23374)
    #dbg_value(ptr %i.aig, !19894, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23375)
    #dbg_value(ptr %i.aig, !23137, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23377)
    #dbg_value(ptr %i.aig, !23141, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23380)
    #dbg_value(ptr %i.aig, !23146, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23383)
    #dbg_value(ptr %i.aig, !23132, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23385)
    #dbg_value(ptr %i.aig, !19944, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23386)
    #dbg_value(ptr %i.aig, !23137, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23388)
    #dbg_value(ptr %i.aig, !23141, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23391)
    #dbg_value(ptr %i.aig, !23146, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23394)
    #dbg_value(ptr %i.aic, !18751, !DIExpression(), !18824)
    #dbg_value(ptr %i.aic, !17721, !DIExpression(), !23395)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !dbg !29043
  %i.fgz = getelementptr inbounds nuw i8, ptr %i.aig, i64 24, !dbg !29044 ; 3 uses
  %i.fha = load i64, ptr %i.fgz, align 8, !dbg !29044, !noundef !1852 ; 2 uses
  %i.fhb = icmp ult i64 %i.fha, 384307168202282326, !dbg !29045
  call void @llvm.assume(i1 %i.fhb), !dbg !29046
  switch i64 %i.fha, label %..thread6103_crit_edge [
    i64 1, label %bb.bgt
    i64 0, label %bb.bgw
  ], !dbg !29047

..thread6103_crit_edge:                           ; preds = %bb.bgs
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !29048 ; 2 uses
  %.phi.trans.insert8436 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre8437 = load i64, ptr %.phi.trans.insert8436, align 8, !dbg !29049
  br label %.thread6103, !dbg !29047

bb.bgt:                                           ; preds = %bb.bgs
    #dbg_value(ptr poison, !19899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19970)
    #dbg_value(ptr poison, !19905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19973)
    #dbg_value(i64 %i.fha, !19899, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19970)
    #dbg_value(i64 %i.fha, !19905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19973)
  %i.fhc = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !29050
  %i.fhd = load ptr, ptr %i.fhc, align 8, !dbg !29050, !nonnull !1852, !noundef !1852 ; 4 uses
    #dbg_value(ptr %i.fhd, !19899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19970)
    #dbg_value(ptr %i.fhd, !19905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19973)
    #dbg_value(ptr %i.fhd, !19914, !DIExpression(), !23413)
    #dbg_value(ptr %i.fhd, !19393, !DIExpression(), !23414)
    #dbg_value(ptr %i.fhd, !20093, !DIExpression(), !23417)
    #dbg_value(ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, !19915, !DIExpression(), !23413)
  %i.fhe = getelementptr inbounds nuw i8, ptr %i.fhd, i64 16, !dbg !29051
  %i.fhf = load i64, ptr %i.fhe, align 8, !dbg !29051, !noundef !1852 ; 4 uses
    #dbg_value(ptr poison, !20289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23421)
    #dbg_value(i64 %i.fhf, !20289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23421)
  %i.fhg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, i64 8), align 8, !dbg !29052, !noundef !1852
    #dbg_value(ptr poison, !20288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23421)
    #dbg_value(i64 %i.fhg, !20288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23421)
    #dbg_value(ptr poison, !20303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23426)
    #dbg_value(i64 %i.fhf, !20303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23426)
    #dbg_value(ptr poison, !20314, !DIExpression(), !23427)
    #dbg_value(ptr poison, !20304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23426)
    #dbg_value(i64 %i.fhg, !20304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23426)
    #dbg_value(ptr poison, !20315, !DIExpression(), !23428)
    #dbg_value(i64 %i.fhf, !20308, !DIExpression(), !23429)
    #dbg_value(i64 %i.fhf, !20320, !DIExpression(), !23432)
    #dbg_value(i64 %i.fhf, !20326, !DIExpression(), !23433)
  %i.fhh = icmp eq i64 %i.fhf, %i.fhg, !dbg !29053
  br i1 %i.fhh, label %bb.bgu, label %.thread6103, !dbg !29053

bb.bgu:                                           ; preds = %bb.bgt
  %i.fhi = load ptr, ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, align 8, !dbg !29052, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fhi, !20304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23426)
    #dbg_value(ptr %i.fhi, !20288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23421)
  %i.fhj = getelementptr inbounds nuw i8, ptr %i.fhd, i64 8, !dbg !29054
  %i.fhk = load ptr, ptr %i.fhj, align 8, !dbg !29054, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fhk, !20289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23421)
    #dbg_value(ptr %i.fhk, !20303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23426)
    #dbg_value(ptr %i.fhk, !20321, !DIExpression(), !23432)
    #dbg_value(ptr %i.fhi, !20322, !DIExpression(), !23432)
  %bcmp = call i32 @bcmp(ptr nonnull %i.fhk, ptr nonnull %i.fhi, i64 %i.fhf), !dbg !29055
  %i.fhl = icmp eq i32 %bcmp, 0, !dbg !29055
  br i1 %i.fhl, label %bb.bgv, label %.thread6103, !dbg !19975

bb.bgv:                                           ; preds = %bb.bgu
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State12dump_context(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2), !dbg !29056
  br label %bb.bgx, !dbg !29057

.thread6103:                                      ; preds = %..thread6103_crit_edge, %bb.bgu, %bb.bgt
  %i.fhm = phi i64 [ %.pre8437, %..thread6103_crit_edge ], [ %i.fhf, %bb.bgu ], [ %i.fhf, %bb.bgt ], !dbg !29049
  %i.fhn = phi ptr [ %.pre, %..thread6103_crit_edge ], [ %i.fhd, %bb.bgu ], [ %i.fhd, %bb.bgt ], !dbg !29048
    #dbg_value(ptr %i.fhn, !19899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19982)
    #dbg_value(ptr %i.fhn, !19905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19985)
    #dbg_value(ptr %i.fhn, !20089, !DIExpression(), !23442)
    #dbg_value(ptr %i.fhn, !20093, !DIExpression(), !23443)
  %i.fho = getelementptr inbounds nuw i8, ptr %i.fhn, i64 8, !dbg !29058
  %i.fhp = load ptr, ptr %i.fho, align 8, !dbg !29058, !nonnull !1852, !noundef !1852
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State9get_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fhp, i64 noundef %i.fhm), !dbg !29059
  br label %bb.bgx, !dbg !29057

bb.bgw:                                           ; preds = %bb.bgs
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #26, !dbg !29060
  unreachable, !dbg !29060

.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bhx, %bb.bhu, %bb.bht, %bb.bhs, %bb.bhr, %bb.bhq, %bb.bhp, %bb.bho, %bb.bhn, %bb.bhl, %bb.bhk, %bb.bhj, %.noexc2785, %bb.bhi, %.noexc2783, %bb.bhh, %bb.bhg, %.invoke9537, %bb.bih, %bb.big, %bb.bic, %bb.bhv
  %lpad.loopexit.split-lp10440 = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.cl, !5276, !DIExpression(), !16721)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %common.resume unwind label %bb.gi, !dbg !29061

bb.bgx:                                           ; preds = %bb.bgv, %.thread6103
  %.val3018 = load i8, ptr %i.cl, align 8, !dbg !29062, !range !5099, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !6187, !DIExpression(), !16723)
    #dbg_value(ptr poison, !6193, !DIExpression(), !16725)
  %i.fhq = icmp ne i8 %.val3018, 10, !dbg !29063
  call void @llvm.assume(i1 %i.fhq), !dbg !29063
  %i.fhr = icmp eq i8 %.val3018, 2, !dbg !29064
  br i1 %i.fhr, label %bb.bgz, label %bb.bgy, !dbg !29065

bb.bgy:                                           ; preds = %bb.bgx
  %i.fhs = load i64, ptr %i.fgz, align 8, !dbg !29066, !noundef !1852 ; 3 uses
  %i.fht = icmp ult i64 %i.fhs, 384307168202282326, !dbg !29067
  call void @llvm.assume(i1 %i.fht), !dbg !29068
    #dbg_value(i64 %i.fhs, !17724, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !23452)
  switch i64 %i.fhs, label %.lr.ph10376.a [
    i64 1, label %.loopexit6182
    i64 0, label %bb.bhv
  ], !dbg !29069, !prof !7634

bb.bgz:                                           ; preds = %bb.bgx
  %i.fhu = getelementptr i8, ptr %i.aic, i64 16
  %.val3172 = load i64, ptr %i.fhu, align 8, !dbg !29070, !noundef !1852
    #dbg_value(ptr poison, !7565, !DIExpression(), !16728)
    #dbg_value(i64 0, !7585, !DIExpression(), !16730)
    #dbg_value(i64 0, !7583, !DIExpression(), !16731)
    #dbg_value(i64 0, !7590, !DIExpression(), !16733)
    #dbg_value(i64 0, !7596, !DIExpression(), !16735)
    #dbg_value(ptr poison, !7581, !DIExpression(), !16731)
    #dbg_value(i64 poison, !7582, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !16731)
    #dbg_value(ptr poison, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16737)
    #dbg_value(ptr poison, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16739)
    #dbg_value(i64 %.val3172, !7602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16737)
    #dbg_value(i64 %.val3172, !7605, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16739)
  %i.fhv = and i64 %.sroa.0210.07551, 4294967295, !dbg !29071 ; 2 uses
    #dbg_value(i64 %i.fhv, !7603, !DIExpression(), !16737)
    #dbg_value(i64 %i.fhv, !7606, !DIExpression(), !16739)
  %i.fhw = icmp ugt i64 %.val3172, %i.fhv, !dbg !29072
  br i1 %i.fhw, label %bb.bha, label %.invoke9537, !dbg !29072

bb.bha:                                           ; preds = %bb.bgz
  %i.fhx = getelementptr i8, ptr %i.aic, i64 8
  %.val3171 = load ptr, ptr %i.fhx, align 8, !dbg !29070, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %.val3171, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16737)
    #dbg_value(ptr %.val3171, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16739)
  %i.fhy = getelementptr inbounds nuw [56 x i8], ptr %.val3171, i64 %i.fhv, !dbg !29073 ; 2 uses
    #dbg_value(ptr %i.fhy, !7574, !DIExpression(), !16728)
    #dbg_value(ptr undef, !7585, !DIExpression(DW_OP_deref), !16730)
    #dbg_value(ptr undef, !7565, !DIExpression(), !16728)
    #dbg_value(ptr %i.fhy, !7575, !DIExpression(), !16740)
    #dbg_value(ptr %i.fhy, !7588, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16741)
    #dbg_value(ptr %i.fhy, !7608, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16743)
    #dbg_value(ptr %i.fhy, !7610, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16745)
    #dbg_value(ptr %i.fhy, !7613, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16747)
  %i.fhz = getelementptr inbounds nuw i8, ptr %i.fhy, i64 48, !dbg !29074
  %i.fia = load i64, ptr %i.fhz, align 8, !dbg !29074, !noundef !1852
    #dbg_value(ptr poison, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16733)
    #dbg_value(ptr poison, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16735)
    #dbg_value(i64 %i.fia, !7593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16733)
    #dbg_value(i64 %i.fia, !7599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16735)
  %.not6130 = icmp eq i64 %i.fia, 0, !dbg !29075
  br i1 %.not6130, label %.invoke9537, label %bb.bif, !dbg !29075

.loopexit6182:                                    ; preds = %bb.bhw, %bb.bgy
  %.sroa.0322.0 = phi ptr [ %i.cl, %bb.bgy ], [ %i.fjx, %bb.bhw ], !dbg !23452 ; 7 uses
    #dbg_value(ptr %.sroa.0322.0, !17726, !DIExpression(), !23453)
    #dbg_value(ptr %.sroa.0322.0, !17725, !DIExpression(), !23454)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.135513), !dbg !17756
  call void @llvm.experimental.noalias.scope.decl(metadata !23455), !dbg !29076
  call void @llvm.experimental.noalias.scope.decl(metadata !23456), !dbg !29076
    #dbg_value(ptr poison, !20984, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !16754)
    #dbg_value(ptr %1, !20995, !DIExpression(), !16755)
    #dbg_value(ptr %1, !21019, !DIExpression(), !16757)
    #dbg_value(ptr %.sroa.0322.0, !20996, !DIExpression(), !16755)
    #dbg_value(ptr %.sroa.0322.0, !20989, !DIExpression(), !16758)
    #dbg_value(ptr %2, !20997, !DIExpression(), !16755)
    #dbg_value(ptr %3, !20998, !DIExpression(), !16755)
    #dbg_value(ptr poison, !20985, !DIExpression(), !16759)
    #dbg_value(i8 %i.aap, !21021, !DIExpression(), !16761)
  %i.fib = load i8, ptr %i.aas, align 1, !dbg !29077, !range !3887, !noalias !23457, !noundef !1852
    #dbg_value(i8 %i.fib, !21022, !DIExpression(), !16761)
  %spec.select.i = select i1 %.not.i, i8 %i.fib, i8 %i.aap, !dbg !29078
    #dbg_value(i8 %spec.select.i, !21022, !DIExpression(), !16761)
  %i.fic = trunc nuw i8 %spec.select.i to i1, !dbg !29079
  br i1 %i.fic, label %bb.bhc, label %bb.bhb, !dbg !29079

bb.bhb:                                           ; preds = %bb.bhd, %bb.bhc, %.loopexit6182
    #dbg_value(ptr %2, !21026, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16766)
    #dbg_value(ptr %2, !21028, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16768)
    #dbg_value(ptr %2, !21030, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16770)
  %i.fid = load i64, ptr %i.aaw, align 8, !dbg !29080, !alias.scope !23456, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !21032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16772)
    #dbg_value(i64 %i.fid, !21032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16772)
  %.not84.i = icmp eq i64 %i.fid, 0, !dbg !29081
  br i1 %.not84.i, label %bb.bhr, label %bb.bhs, !dbg !29081

bb.bhc:                                           ; preds = %.loopexit6182
  %i.fie = load i8, ptr %.sroa.0322.0, align 8, !dbg !29082, !range !5099, !alias.scope !23455, !noundef !1852 ; 5 uses
  %i.fif = icmp ne i8 %i.fie, 10, !dbg !29082
  call void @llvm.assume(i1 %i.fif), !dbg !29082
  %i.fig = add nsw i8 %i.fie, -2, !dbg !29082
  %i.fih = icmp samesign ugt i8 %i.fie, 1, !dbg !29082
  %narrow.i = select i1 %i.fih, i8 %i.fig, i8 8, !dbg !29082
  switch i8 %narrow.i, label %bb.bhb [
    i8 8, label %bb.bhd
    i8 9, label %bb.bhe
    i8 10, label %bb.bhe
    i8 11, label %bb.bhe
  ], !dbg !29083

bb.bhd:                                           ; preds = %bb.bhc
    #dbg_value(ptr %.sroa.0322.0, !20990, !DIExpression(), !16773)
    #dbg_value(ptr %.sroa.0322.0, !21037, !DIExpression(), !16775)
  %i.fii = trunc nuw i8 %i.fie to i1, !dbg !29084
  %.sroa.027.0.in.i.v.sroa.sel.v.sroa.sel.v = select i1 %i.fii, i64 1, i64 23, !dbg !29085
  %.sroa.027.0.in.i.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0322.0, i64 %.sroa.027.0.in.i.v.sroa.sel.v.sroa.sel.v, !dbg !29085
  %.sroa.027.0.i = load i8, ptr %.sroa.027.0.in.i.v.sroa.sel.v.sroa.sel, align 1, !dbg !29086, !range !3887, !alias.scope !23455, !noundef !1852
    #dbg_value(ptr undef, !20984, !DIExpression(), !16754)
  %i.fij = trunc nuw i8 %.sroa.027.0.i to i1, !dbg !29087
  br i1 %i.fij, label %bb.bhb, label %bb.bhe, !dbg !29088

bb.bhe:                                           ; preds = %bb.bhd, %bb.bhc, %bb.bhc, %bb.bhc
  %i.fik = icmp samesign ult i8 %i.fie, 2, !dbg !29089
  br i1 %i.fik, label %bb.bhf, label %bb.bhg, !dbg !29090

bb.bhf:                                           ; preds = %bb.bhe
    #dbg_value(ptr %.sroa.0322.0, !21004, !DIExpression(), !16776)
    #dbg_value(ptr %2, !21026, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16778)
    #dbg_value(ptr %2, !21028, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16780)
    #dbg_value(ptr %2, !21030, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16782)
  %i.fil = load i64, ptr %i.aaw, align 8, !dbg !29091, !alias.scope !23456, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !21032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16784)
    #dbg_value(i64 %i.fil, !21032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16784)
  %.not81.i = icmp eq i64 %i.fil, 0, !dbg !29092
  br i1 %.not81.i, label %bb.bhh, label %bb.bhi, !dbg !29092

bb.bhg:                                           ; preds = %bb.bhe
    #dbg_value(ptr %2, !21043, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !16786)
    #dbg_value(ptr poison, !21044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16787)
    #dbg_value(i64 poison, !21044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16787)
  store i64 0, ptr %i.aau, align 8, !dbg !29093, !alias.scope !23456
  %i.fim = invoke noundef ptr @_RINvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB6_5Value6formatINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aat)
          to label %.noexc unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29094 ; 2 uses

.noexc:                                           ; preds = %bb.bhg
    #dbg_value(ptr %i.fim, !21046, !DIExpression(), !16789)
  %.not77.i = icmp eq ptr %i.fim, null, !dbg !29095
  br i1 %.not77.i, label %bb.bhm, label %bb.bhl, !dbg !29096

bb.bhh:                                           ; preds = %bb.bhf
  %i.fin = load ptr, ptr %i.aaz, align 8, !dbg !29097, !noalias !23457, !nonnull !1852, !noundef !1852
  %i.fio = invoke { ptr, i64 } @_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0)
          to label %.noexc2783 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29098 ; 2 uses

.noexc2783:                                       ; preds = %bb.bhh
  %i.fip = extractvalue { ptr, i64 } %i.fio, 0, !dbg !29098
  %i.fiq = extractvalue { ptr, i64 } %i.fio, 1, !dbg !29098
  %i.fir = invoke noundef ptr %i.fin(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fip, i64 noundef %i.fiq, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %.noexc2784 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29097, !inline_history !12291 ; 2 uses

.noexc2784:                                       ; preds = %.noexc2783
    #dbg_value(ptr %i.fir, !21046, !DIExpression(), !16791)
  %.not82.i = icmp eq ptr %i.fir, null, !dbg !29099
  br i1 %.not82.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread, label %bb.bhj, !dbg !29100

bb.bhi:                                           ; preds = %bb.bhf
  %i.fis = load ptr, ptr %i.aax, align 8, !dbg !29101, !alias.scope !23456, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fis, !21032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16784)
    #dbg_value(!DIArgList(ptr %i.fis, i64 %i.fil), !21034, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_constu, 24, DW_OP_minus, DW_OP_stack_value), !16795)
    #dbg_value(!DIArgList(ptr %i.fis, i64 %i.fil), !21005, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_constu, 24, DW_OP_minus, DW_OP_stack_value), !16796)
  %i.fit = load ptr, ptr %i.aaz, align 8, !dbg !29102, !noalias !23457, !nonnull !1852, !noundef !1852
  %i.fiu = invoke { ptr, i64 } @_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0)
          to label %.noexc2785 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29103 ; 2 uses

.noexc2785:                                       ; preds = %bb.bhi
  %i.fiv = getelementptr [24 x i8], ptr %i.fis, i64 %i.fil, !dbg !29104
    #dbg_value(ptr %i.fiv, !21005, !DIExpression(DW_OP_constu, 24, DW_OP_minus, DW_OP_stack_value), !16796)
    #dbg_value(ptr %i.fiv, !21034, !DIExpression(DW_OP_constu, 24, DW_OP_minus, DW_OP_stack_value), !16795)
  %i.fiw = getelementptr i8, ptr %i.fiv, i64 -24, !dbg !29104
    #dbg_value(ptr %i.fiw, !21034, !DIExpression(), !16795)
    #dbg_value(ptr %i.fiw, !21005, !DIExpression(), !16796)
  %i.fix = extractvalue { ptr, i64 } %i.fiu, 0, !dbg !29103
  %i.fiy = extractvalue { ptr, i64 } %i.fiu, 1, !dbg !29103
  %i.fiz = invoke noundef ptr %i.fit(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fix, i64 noundef %i.fiy, ptr noundef nonnull %i.fiw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %.noexc2786 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29102, !inline_history !12291 ; 2 uses

.noexc2786:                                       ; preds = %.noexc2785
    #dbg_value(ptr %i.fiz, !21046, !DIExpression(), !16798)
  %.not83.i = icmp eq ptr %i.fiz, null, !dbg !29105
  br i1 %.not83.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread, label %bb.bhk, !dbg !29106

bb.bhj:                                           ; preds = %.noexc2784
    #dbg_value(ptr %i.fir, !21008, !DIExpression(), !16799)
    #dbg_value(ptr %i.fir, !21065, !DIExpression(), !16801)
    #dbg_value(ptr %i.fir, !21069, !DIExpression(), !16802)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !29107, !noalias !23457
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bb, ptr noundef nonnull %i.fir)
          to label %.noexc2787 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29107

.noexc2787:                                       ; preds = %bb.bhj
  %.sroa.05505.0.copyload5512 = load i8, ptr %i.bb, align 8, !dbg !29108, !noalias !23458
    #dbg_value(i8 %.sroa.05505.0.copyload5512, !17747, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23459)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5520, i64 71, i1 false), !dbg !29108, !noalias !23458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !29109, !noalias !23457
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit, !dbg !29110

bb.bhk:                                           ; preds = %.noexc2786
    #dbg_value(ptr %i.fiz, !21006, !DIExpression(), !16803)
    #dbg_value(ptr %i.fiz, !21065, !DIExpression(), !16805)
    #dbg_value(ptr %i.fiz, !21068, !DIExpression(), !16806)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !29111, !noalias !23457
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noundef nonnull %i.fiz)
          to label %.noexc2788 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29111

.noexc2788:                                       ; preds = %bb.bhk
  %.sroa.05505.0.copyload5511 = load i8, ptr %i.bc, align 8, !dbg !29112, !noalias !23458
    #dbg_value(i8 %.sroa.05505.0.copyload5511, !17747, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23459)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5519, i64 71, i1 false), !dbg !29112, !noalias !23458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !29113, !noalias !23457
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit, !dbg !29110

bb.bhl:                                           ; preds = %.noexc
    #dbg_value(ptr %i.fim, !21010, !DIExpression(), !16807)
    #dbg_value(ptr %i.fim, !21065, !DIExpression(), !16809)
    #dbg_value(ptr %i.fim, !21070, !DIExpression(), !16810)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !29114, !noalias !23457
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ba, ptr noundef nonnull %i.fim)
          to label %.noexc2789 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29114

.noexc2789:                                       ; preds = %bb.bhl
  %.sroa.05505.0.copyload5508 = load i8, ptr %i.ba, align 8, !dbg !29115, !noalias !23458
    #dbg_value(i8 %.sroa.05505.0.copyload5508, !17747, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23459)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5516, i64 71, i1 false), !dbg !29115, !noalias !23458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !29116, !noalias !23457
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit, !dbg !29117

bb.bhm:                                           ; preds = %.noexc
    #dbg_value(ptr %2, !21081, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !16812)
    #dbg_value(ptr %2, !21083, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !16814)
    #dbg_value(ptr %2, !21085, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !16816)
  %i.fja = load ptr, ptr %i.aav, align 8, !dbg !29118, !alias.scope !23456, !nonnull !1852, !noundef !1852 ; 2 uses
  %i.fjb = load i64, ptr %i.aau, align 8, !dbg !29119, !alias.scope !23456, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fja, !21012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16820)
    #dbg_value(i64 %i.fjb, !21012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16820)
    #dbg_value(ptr %2, !21026, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16822)
    #dbg_value(ptr %2, !21028, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16824)
    #dbg_value(ptr %2, !21030, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16826)
  %i.fjc = load i64, ptr %i.aaw, align 8, !dbg !29120, !alias.scope !23456, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !21032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16828)
    #dbg_value(i64 %i.fjc, !21032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16828)
  %.not78.i = icmp eq i64 %i.fjc, 0, !dbg !29121
  br i1 %.not78.i, label %bb.bhn, label %bb.bho, !dbg !29121

bb.bhn:                                           ; preds = %bb.bhm
  %i.fjd = load ptr, ptr %i.aaz, align 8, !dbg !29122, !noalias !23460, !nonnull !1852, !noundef !1852
  %i.fje = invoke noundef ptr %i.fjd(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fja, i64 noundef %i.fjb, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %.noexc2790 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29122, !inline_history !12291 ; 2 uses

.noexc2790:                                       ; preds = %bb.bhn
    #dbg_value(ptr %i.fje, !21046, !DIExpression(), !16830)
  %.not79.i = icmp eq ptr %i.fje, null, !dbg !29123
  br i1 %.not79.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread, label %bb.bhp, !dbg !29124

bb.bho:                                           ; preds = %bb.bhm
  %i.fjf = load ptr, ptr %i.aax, align 8, !dbg !29125, !alias.scope !23456, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fjf, !21032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16828)
  %i.fjg = getelementptr [24 x i8], ptr %i.fjf, i64 %i.fjc, !dbg !29126
  %i.fjh = getelementptr i8, ptr %i.fjg, i64 -24, !dbg !29126
    #dbg_value(ptr %i.fjh, !21035, !DIExpression(), !16834)
    #dbg_value(ptr %i.fjh, !21013, !DIExpression(), !16835)
  %i.fji = load ptr, ptr %i.aaz, align 8, !dbg !29127, !noalias !23460, !nonnull !1852, !noundef !1852
  %i.fjj = invoke noundef ptr %i.fji(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fja, i64 noundef %i.fjb, ptr noundef nonnull %i.fjh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %.noexc2791 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29127, !inline_history !12291 ; 2 uses

.noexc2791:                                       ; preds = %bb.bho
    #dbg_value(ptr %i.fjj, !21046, !DIExpression(), !16837)
  %.not80.i = icmp eq ptr %i.fjj, null, !dbg !29128
  br i1 %.not80.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread, label %bb.bhq, !dbg !29129

bb.bhp:                                           ; preds = %.noexc2790
    #dbg_value(ptr %i.fje, !21016, !DIExpression(), !16838)
    #dbg_value(ptr %i.fje, !21065, !DIExpression(), !16840)
    #dbg_value(ptr %i.fje, !21072, !DIExpression(), !16841)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !29130, !noalias !23457
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ay, ptr noundef nonnull %i.fje)
          to label %.noexc2792 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29130

.noexc2792:                                       ; preds = %bb.bhp
  %.sroa.05505.0.copyload5510 = load i8, ptr %i.ay, align 8, !dbg !29131, !noalias !23458
    #dbg_value(i8 %.sroa.05505.0.copyload5510, !17747, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23459)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5518, i64 71, i1 false), !dbg !29131, !noalias !23458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !29132, !noalias !23457
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit, !dbg !29133

bb.bhq:                                           ; preds = %.noexc2791
    #dbg_value(ptr %i.fjj, !21014, !DIExpression(), !16842)
    #dbg_value(ptr %i.fjj, !21065, !DIExpression(), !16844)
    #dbg_value(ptr %i.fjj, !21071, !DIExpression(), !16845)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !29134, !noalias !23457
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.az, ptr noundef nonnull %i.fjj)
          to label %.noexc2793 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29134

.noexc2793:                                       ; preds = %bb.bhq
  %.sroa.05505.0.copyload5509 = load i8, ptr %i.az, align 8, !dbg !29135, !noalias !23458
    #dbg_value(i8 %.sroa.05505.0.copyload5509, !17747, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23459)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5517, i64 71, i1 false), !dbg !29135, !noalias !23458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !29136, !noalias !23457
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit, !dbg !29133

bb.bhr:                                           ; preds = %bb.bhb
  %i.fjk = invoke noundef ptr @_RINvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB6_5Value6formatINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc2794 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29137 ; 2 uses

.noexc2794:                                       ; preds = %bb.bhr
    #dbg_value(ptr %i.fjk, !21046, !DIExpression(), !16847)
  %.not85.i = icmp eq ptr %i.fjk, null, !dbg !29138
  br i1 %.not85.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread, label %bb.bht, !dbg !29139

bb.bhs:                                           ; preds = %bb.bhb
  %i.fjl = load ptr, ptr %i.aax, align 8, !dbg !29140, !alias.scope !23456, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fjl, !21032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16772)
  %i.fjm = getelementptr [24 x i8], ptr %i.fjl, i64 %i.fid, !dbg !29141
  %i.fjn = getelementptr i8, ptr %i.fjm, i64 -24, !dbg !29141
    #dbg_value(ptr %i.fjn, !21033, !DIExpression(), !16851)
    #dbg_value(ptr %i.fjn, !20999, !DIExpression(), !16852)
  %i.fjo = invoke noundef ptr @_RINvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB6_5Value6formatINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fjn)
          to label %.noexc2795 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29142 ; 2 uses

.noexc2795:                                       ; preds = %bb.bhs
    #dbg_value(ptr %i.fjo, !21046, !DIExpression(), !16854)
  %.not86.i = icmp eq ptr %i.fjo, null, !dbg !29143
  br i1 %.not86.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread, label %bb.bhu, !dbg !29144

bb.bht:                                           ; preds = %.noexc2794
    #dbg_value(ptr %i.fjk, !21002, !DIExpression(), !16855)
    #dbg_value(ptr %i.fjk, !21065, !DIExpression(), !16857)
    #dbg_value(ptr %i.fjk, !21067, !DIExpression(), !16858)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !29145, !noalias !23457
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bd, ptr noundef nonnull %i.fjk)
          to label %.noexc2796 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29145

.noexc2796:                                       ; preds = %bb.bht
  %.sroa.05505.0.copyload5507 = load i8, ptr %i.bd, align 8, !dbg !29146, !noalias !23458
    #dbg_value(i8 %.sroa.05505.0.copyload5507, !17747, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23459)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5515, i64 71, i1 false), !dbg !29146, !noalias !23458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !29147, !noalias !23457
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit, !dbg !29117

bb.bhu:                                           ; preds = %.noexc2795
    #dbg_value(ptr %i.fjo, !21000, !DIExpression(), !16859)
    #dbg_value(ptr %i.fjo, !21065, !DIExpression(), !16861)
    #dbg_value(ptr %i.fjo, !21066, !DIExpression(), !16862)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !29148, !noalias !23457
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.be, ptr noundef nonnull %i.fjo)
          to label %.noexc2797 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29148

.noexc2797:                                       ; preds = %bb.bhu
  %.sroa.05505.0.copyload5506 = load i8, ptr %i.be, align 8, !dbg !29149, !noalias !23458
    #dbg_value(i8 %.sroa.05505.0.copyload5506, !17747, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23459)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5514, i64 71, i1 false), !dbg !29149, !noalias !23458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !29150, !noalias !23457
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit, !dbg !29117

.lr.ph10376.a:                                    ; preds = %bb.bgy
  %i.fjp = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !29151
  %i.fjq = load ptr, ptr %i.fjp, align 8, !dbg !29151, !nonnull !1852, !noundef !1852 ; 3 uses
    #dbg_value(ptr %i.fjq, !19949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20000)
    #dbg_value(ptr %i.fjq, !19955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20003)
    #dbg_value(i64 %i.fhs, !23257, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !23470)
    #dbg_value(i64 %i.fhs, !23267, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !23473)
    #dbg_value(ptr %i.fjq, !23265, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23474)
    #dbg_value(ptr %i.fjq, !23254, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23475)
    #dbg_value(i64 %i.fhs, !23265, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !23474)
    #dbg_value(i64 %i.fhs, !23254, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !23475)
    #dbg_value(ptr %i.fjq, !23258, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23476)
    #dbg_value(ptr %i.fjq, !23268, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23473)
  %.idx10384 = mul nuw i64 %i.fhs, 24, !dbg !29152
  %i.fjr = getelementptr i8, ptr %i.fjq, i64 %.idx10384, !dbg !29152 ; 2 uses
    #dbg_value(ptr %i.fjq, !17727, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23477)
    #dbg_value(ptr %i.fjr, !17727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23477)
    #dbg_value(i64 0, !17727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23477)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fjr) ]
  %.sroa.05502.010371 = getelementptr inbounds nuw i8, ptr %i.fjq, i64 24, !dbg !29153
  br label %bb.bhx, !dbg !29154

bb.bhv:                                           ; preds = %bb.bgy
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #27
          to label %bb.fy unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29155

bb.bhw:                                           ; preds = %bb.bhz
  %.sroa.05502.0 = getelementptr inbounds nuw i8, ptr %.sroa.05502.010375, i64 24, !dbg !29153 ; 2 uses
    #dbg_value(ptr %.sroa.05502.0, !17727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23477)
    #dbg_value(i64 %i.fjy, !17727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23477)
    #dbg_value(ptr %i.fjx, !17726, !DIExpression(), !23453)
    #dbg_value(ptr %i.fjx, !17725, !DIExpression(), !23454)
    #dbg_value(ptr undef, !4334, !DIExpression(), !9540)
    #dbg_value(ptr undef, !4302, !DIExpression(), !9539)
    #dbg_value(ptr %.sroa.05502.0, !4313, !DIExpression(), !16863)
    #dbg_value(ptr %i.fjr, !4314, !DIExpression(), !16864)
    #dbg_value(ptr poison, !7627, !DIExpression(), !16866)
    #dbg_value(ptr poison, !7628, !DIExpression(), !16867)
  %i.fjs = icmp eq ptr %.sroa.05502.0, %i.fjr, !dbg !29156
  br i1 %i.fjs, label %.loopexit6182, label %bb.bhx, !dbg !29154

bb.bhx:                                           ; preds = %.lr.ph10376.a, %bb.bhw
  %.sroa.05502.010375 = phi ptr [ %.sroa.05502.010371, %.lr.ph10376.a ], [ %.sroa.05502.0, %bb.bhw ] ; 2 uses
  %.sroa.0322.110374 = phi ptr [ %i.cl, %.lr.ph10376.a ], [ %i.fjx, %bb.bhw ] ; 2 uses
  %.pn10373 = phi ptr [ %i.fjq, %.lr.ph10376.a ], [ %.sroa.05502.010375, %bb.bhw ] ; 4 uses
  %.sroa.85504.010372 = phi i64 [ 0, %.lr.ph10376.a ], [ %i.fjy, %bb.bhw ]
    #dbg_value(ptr %.sroa.0322.110374, !17726, !DIExpression(), !23453)
    #dbg_value(i64 %.sroa.85504.010372, !17727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23477)
    #dbg_value(ptr %.sroa.05502.010375, !17727, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23477)
    #dbg_value(ptr %.sroa.05502.010375, !4335, !DIExpression(), !16868)
    #dbg_value(i64 %.sroa.85504.010372, !4338, !DIExpression(), !16869)
    #dbg_value(i64 %.sroa.85504.010372, !17727, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !23477)
    #dbg_value(i64 %.sroa.85504.010372, !17728, !DIExpression(), !23478)
    #dbg_value(ptr %.sroa.05502.010375, !17729, !DIExpression(), !23478)
    #dbg_value(ptr %.sroa.05502.010375, !20089, !DIExpression(), !23480)
    #dbg_value(ptr %.sroa.05502.010375, !20093, !DIExpression(), !23483)
    #dbg_value(ptr %.sroa.05502.010375, !20089, !DIExpression(), !23485)
    #dbg_value(ptr %.sroa.05502.010375, !20093, !DIExpression(), !23488)
  %i.fjt = getelementptr inbounds nuw i8, ptr %.pn10373, i64 32, !dbg !29157
  %i.fju = load ptr, ptr %i.fjt, align 8, !dbg !29157, !nonnull !1852, !noundef !1852
  %i.fjv = getelementptr inbounds nuw i8, ptr %.pn10373, i64 40, !dbg !29158
  %i.fjw = load i64, ptr %i.fjv, align 8, !dbg !29158, !noundef !1852
  %i.fjx = invoke noundef align 8 ptr @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value8get_attr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.110374, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fju, i64 noundef %i.fjw)
          to label %bb.bhz unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29159 ; 3 uses

_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit: ; preds = %.noexc2797, %.noexc2796, %.noexc2793, %.noexc2792, %.noexc2789, %.noexc2788, %.noexc2787
  %.sroa.05505.0 = phi i8 [ %.sroa.05505.0.copyload5508, %.noexc2789 ], [ %.sroa.05505.0.copyload5507, %.noexc2796 ], [ %.sroa.05505.0.copyload5506, %.noexc2797 ], [ %.sroa.05505.0.copyload5512, %.noexc2787 ], [ %.sroa.05505.0.copyload5511, %.noexc2788 ], [ %.sroa.05505.0.copyload5510, %.noexc2792 ], [ %.sroa.05505.0.copyload5509, %.noexc2793 ], !dbg !29160 ; 2 uses
    #dbg_value(i8 %.sroa.05505.0, !17747, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23459)
  %.not2499 = icmp eq i8 %.sroa.05505.0, -1, !dbg !29161
  br i1 %.not2499, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread, label %bb.bhy, !dbg !29162

bb.bhy:                                           ; preds = %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit
    #dbg_value(i8 %.sroa.05505.0, !17746, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23499)
  %.sroa.45584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !29163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.45584.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, i64 71, i1 false), !dbg !29164
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.135513), !dbg !29165
    #dbg_value(i8 %.sroa.05505.0, !17732, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23500)
    #dbg_value(i8 %.sroa.05505.0, !17736, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23501)
    #dbg_value(i8 %.sroa.05505.0, !17735, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23502)
  store i8 %.sroa.05505.0, ptr %0, align 8, !dbg !29163
  br label %bb.bie, !dbg !29166

_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread: ; preds = %.noexc2784, %.noexc2786, %.noexc2790, %.noexc2791, %.noexc2794, %.noexc2795, %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.135513), !dbg !29165
    #dbg_value(ptr %i.cl, !5276, !DIExpression(), !16871)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl), !dbg !29167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !dbg !29168
  br label %.outer, !dbg !29169

bb.bhz:                                           ; preds = %bb.bhx
  %i.fjy = add i64 %.sroa.85504.010372, 1, !dbg !29170 ; 3 uses
    #dbg_value(i64 %i.fjy, !17727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23477)
  %.not2500 = icmp eq ptr %i.fjx, null, !dbg !29171
  br i1 %.not2500, label %bb.bia, label %bb.bhw, !dbg !29172

bb.bia:                                           ; preds = %bb.bhz
  %i.fjz = getelementptr i8, ptr %i.aic, i64 16
  %i.fka = getelementptr inbounds nuw i8, ptr %.pn10373, i64 32
  %i.fkb = getelementptr inbounds nuw i8, ptr %.pn10373, i64 40
  %.val3170 = load i64, ptr %i.fjz, align 8, !dbg !29173, !noundef !1852
    #dbg_value(ptr poison, !7565, !DIExpression(), !16874)
    #dbg_value(i64 %i.fjy, !7585, !DIExpression(), !16876)
    #dbg_value(i64 %i.fjy, !7583, !DIExpression(), !16877)
    #dbg_value(i64 %i.fjy, !7590, !DIExpression(), !16879)
    #dbg_value(i64 %i.fjy, !7596, !DIExpression(), !16881)
    #dbg_value(ptr poison, !7581, !DIExpression(), !16877)
    #dbg_value(i64 poison, !7582, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !16877)
    #dbg_value(ptr poison, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16883)
    #dbg_value(ptr poison, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16885)
    #dbg_value(i64 %.val3170, !7602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16883)
    #dbg_value(i64 %.val3170, !7605, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16885)
  %i.fkc = and i64 %.sroa.0210.07551, 4294967295, !dbg !29174 ; 2 uses
    #dbg_value(i64 %i.fkc, !7603, !DIExpression(), !16883)
    #dbg_value(i64 %i.fkc, !7606, !DIExpression(), !16885)
  %i.fkd = icmp ugt i64 %.val3170, %i.fkc, !dbg !29175
  br i1 %i.fkd, label %bb.bib, label %.invoke9537, !dbg !29175

bb.bib:                                           ; preds = %bb.bia
  %i.fke = getelementptr i8, ptr %i.aic, i64 8
  %.val3169 = load ptr, ptr %i.fke, align 8, !dbg !29173, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %.val3169, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16883)
    #dbg_value(ptr %.val3169, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16885)
  %i.fkf = getelementptr inbounds nuw [56 x i8], ptr %.val3169, i64 %i.fkc, !dbg !29176 ; 2 uses
    #dbg_value(ptr %i.fkf, !7574, !DIExpression(), !16874)
    #dbg_value(ptr undef, !7585, !DIExpression(DW_OP_deref), !16876)
    #dbg_value(ptr undef, !7565, !DIExpression(), !16874)
    #dbg_value(ptr %i.fkf, !7575, !DIExpression(), !16886)
    #dbg_value(ptr %i.fkf, !7588, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16887)
    #dbg_value(ptr %i.fkf, !7608, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16889)
    #dbg_value(ptr %i.fkf, !7610, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16891)
    #dbg_value(ptr %i.fkf, !7613, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16893)
  %i.fkg = getelementptr inbounds nuw i8, ptr %i.fkf, i64 48, !dbg !29177
  %i.fkh = load i64, ptr %i.fkg, align 8, !dbg !29177, !noundef !1852
    #dbg_value(ptr poison, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16879)
    #dbg_value(ptr poison, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16881)
    #dbg_value(i64 %i.fkh, !7593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16879)
    #dbg_value(i64 %i.fkh, !7599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16881)
  %i.fki = icmp ult i64 %i.fjy, %i.fkh, !dbg !29178
  br i1 %i.fki, label %bb.bic, label %.invoke9537, !dbg !29178

bb.bic:                                           ; preds = %bb.bib
  %i.fkj = getelementptr inbounds nuw i8, ptr %i.fkf, i64 40, !dbg !29179
  %i.fkk = load ptr, ptr %i.fkj, align 8, !dbg !29179, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fkk, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16879)
    #dbg_value(ptr %i.fkk, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16881)
  %i.fkl = getelementptr inbounds nuw [48 x i8], ptr %i.fkk, i64 %i.fjy, !dbg !29180
    #dbg_value(ptr %i.fkl, !19926, !DIExpression(), !20005)
    #dbg_value(ptr %i.fkl, !17731, !DIExpression(), !23504)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !dbg !29181
  %i.fkm = load ptr, ptr %i.fka, align 8, !dbg !29182, !nonnull !1852, !noundef !1852
  %i.fkn = load i64, ptr %i.fkb, align 8, !dbg !29183, !noundef !1852
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine21undefined_field_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.110374, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fkm, i64 noundef %i.fkn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fkl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aic)
          to label %bb.bid unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29184

bb.bid:                                           ; preds = %bb.bic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cj, i64 72, i1 false), !dbg !29185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !dbg !29186
  br label %bb.bie, !dbg !29187

bb.bie:                                           ; preds = %bb.bhy, %bb.bid, %bb.bii
    #dbg_value(ptr %i.cl, !5276, !DIExpression(), !16898)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl), !dbg !29188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !dbg !29168
  br label %bb.bij, !dbg !23922

bb.bif:                                           ; preds = %bb.bha
  %i.fko = getelementptr inbounds nuw i8, ptr %i.fhy, i64 40, !dbg !29189
  %i.fkp = load ptr, ptr %i.fko, align 8, !dbg !29189, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fkp, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16733)
    #dbg_value(ptr %i.fkp, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16735)
    #dbg_value(ptr %i.fkp, !19926, !DIExpression(), !19987)
    #dbg_value(ptr %i.fkp, !17723, !DIExpression(), !23516)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !dbg !29190
  %i.fkq = load i64, ptr %i.fgz, align 8, !dbg !29191, !noundef !1852
    #dbg_value(ptr poison, !19899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19992)
    #dbg_value(ptr poison, !19905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19995)
    #dbg_value(i64 %i.fkq, !19899, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19992)
    #dbg_value(i64 %i.fkq, !19905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19995)
  %.not2503 = icmp eq i64 %i.fkq, 0, !dbg !29192
  br i1 %.not2503, label %bb.bih, label %bb.big, !dbg !29192

.invoke9537:                                      ; preds = %bb.bha, %bb.bgz, %bb.bib, %bb.bia
  %i.fkr = phi ptr [ @104, %bb.bib ], [ @104, %bb.bia ], [ @106, %bb.bgz ], [ @106, %bb.bha ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fkr) #27
          to label %.cont9538 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29193

.cont9538:                                        ; preds = %.invoke9537
  unreachable

bb.big:                                           ; preds = %bb.bif
  %i.fks = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !29194
  %i.fkt = load ptr, ptr %i.fks, align 8, !dbg !29194, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fkt, !19899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19992)
    #dbg_value(ptr %i.fkt, !19905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19995)
    #dbg_value(ptr %i.fkt, !20089, !DIExpression(), !23525)
    #dbg_value(ptr %i.fkt, !20093, !DIExpression(), !23528)
  %i.fku = getelementptr inbounds nuw i8, ptr %i.fkt, i64 8, !dbg !29195
  %i.fkv = load ptr, ptr %i.fku, align 8, !dbg !29195, !nonnull !1852, !noundef !1852
  %i.fkw = getelementptr inbounds nuw i8, ptr %i.fkt, i64 16, !dbg !29196
  %i.fkx = load i64, ptr %i.fkw, align 8, !dbg !29196, !noundef !1852
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine19undefined_var_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aic, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fkv, i64 noundef %i.fkx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fkp)
          to label %bb.bii unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29197

bb.bih:                                           ; preds = %bb.bif
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #27
          to label %bb.fy unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29192

bb.bii:                                           ; preds = %bb.big
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ck, i64 72, i1 false), !dbg !29198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !dbg !29199
  br label %bb.bie, !dbg !29200

bb.bij:                                           ; preds = %bb.gg, %bb.hg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit3609, %bb.nk, %_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk8get_span.exit.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1d_5ValueEEEB1f_.exit, %bb.qx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1c_.exit, %bb.uq, %bb.yn, %bb.aal, %bb.acm, %bb.aen, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4088, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4118, %bb.aim, %bb.ajj, %bb.akl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4193, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4211, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4229, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4247, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4265, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4281, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4299, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4316, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4331, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4346, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4361, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4428, %bb.bej, %bb.bgn, %bb.bie, %bb.d
  ret void, !dbg !23550
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %2, ptr noalias nofree noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29845 {
bb.a:
  %.sroa.7.i.i4448 = alloca [6 x i8], align 2     ; 4 uses
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 6 uses
  %i.s = alloca [40 x i8], align 8                ; 9 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 8                ; 9 uses
  %i.w = alloca [40 x i8], align 8                ; 12 uses
  %.sroa.73.i4057 = alloca [6 x i8], align 2      ; 5 uses
  %i.x = alloca [40 x i8], align 8                ; 6 uses
  %i.y = alloca [40 x i8], align 8                ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 6 uses
  %i.aa = alloca [40 x i8], align 8               ; 6 uses
  %i.ab = alloca [40 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [40 x i8], align 8               ; 12 uses
  %.sroa.73.i = alloca [6 x i8], align 2          ; 5 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [40 x i8], align 8               ; 8 uses
  %i.ag = alloca [64 x i8], align 16              ; 8 uses
  %i.ah = alloca [64 x i8], align 16              ; 8 uses
  %i.ai = alloca [40 x i8], align 8               ; 8 uses
  %i.aj = alloca [40 x i8], align 8               ; 8 uses
  %i.ak = alloca [40 x i8], align 8               ; 8 uses
  %i.al = alloca [40 x i8], align 8               ; 6 uses
  %i.am = alloca [40 x i8], align 8               ; 8 uses
  %i.an = alloca [40 x i8], align 8               ; 12 uses
  %.sroa.7.i.i3506 = alloca [6 x i8], align 2     ; 4 uses
  %i.ao = alloca [40 x i8], align 8               ; 12 uses
  %.sroa.7.i.i = alloca [6 x i8], align 2         ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [48 x i8], align 8               ; 6 uses
  %i.ar = alloca [72 x i8], align 8               ; 5 uses
  %i.as = alloca [72 x i8], align 8               ; 5 uses
  %i.at = alloca [72 x i8], align 8               ; 5 uses
  %i.au = alloca [72 x i8], align 8               ; 5 uses
  %i.av = alloca [72 x i8], align 8               ; 5 uses
  %i.aw = alloca [72 x i8], align 8               ; 5 uses
  %i.ax = alloca [72 x i8], align 8               ; 5 uses
  %i.ay = alloca [72 x i8], align 8               ; 5 uses
  %i.az = alloca [72 x i8], align 8               ; 5 uses
  %i.ba = alloca [72 x i8], align 8               ; 5 uses
  %i.bb = alloca [72 x i8], align 8               ; 5 uses
  %i.bc = alloca [72 x i8], align 8               ; 5 uses
  %i.bd = alloca [72 x i8], align 8               ; 5 uses
  %i.be = alloca [72 x i8], align 8               ; 5 uses
  %i.bf = alloca [48 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !38110, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !38120)
    #dbg_declare(ptr poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !38132)
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [72 x i8], align 8               ; 4 uses
  %i.bi = alloca [40 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !38133, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !38140)
    #dbg_declare(ptr poison, !38137, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !38141)
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !38142, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !38155)
    #dbg_declare(ptr poison, !38142, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !38155)
    #dbg_declare(ptr poison, !38142, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !38155)
    #dbg_declare(ptr poison, !4211, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !29878)
    #dbg_declare(ptr poison, !38151, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !38158)
  %i.bk = alloca [40 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !38159, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !38171)
    #dbg_declare(ptr poison, !38159, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !38171)
    #dbg_declare(ptr poison, !38159, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !38171)
  %i.bl = alloca [40 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !38172, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !38184)
    #dbg_declare(ptr poison, !38172, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !38184)
    #dbg_declare(ptr poison, !38172, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !38184)
  %i.bm = alloca [40 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !38146, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !38186)
    #dbg_declare(ptr poison, !38146, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !38186)
    #dbg_declare(ptr poison, !38146, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !38186)
    #dbg_declare(ptr poison, !4211, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !29888)
    #dbg_declare(ptr poison, !38145, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !38188)
  %i.bn = alloca [40 x i8], align 8               ; 4 uses
  %i.bo = alloca [72 x i8], align 8               ; 4 uses
  %i.bp = alloca [40 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !38136, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !38190)
    #dbg_declare(ptr poison, !38135, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !38191)
    #dbg_declare(ptr poison, !38115, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !38194)
    #dbg_declare(ptr poison, !38126, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !38196)
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !38197, !DIExpression(), !38205)
    #dbg_value(ptr poison, !38216, !DIExpression(), !38220)
  %i.bt = alloca [24 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !38221, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !38230)
  %i.bu = alloca [48 x i8], align 16              ; 10 uses
  %i.bv = alloca [80 x i8], align 16              ; 4 uses
    #dbg_declare(ptr poison, !38224, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !38236)
  %i.bw = alloca [48 x i8], align 16              ; 10 uses
  %i.bx = alloca [64 x i8], align 8               ; 4 uses
    #dbg_value(ptr poison, !38197, !DIExpression(), !38241)
    #dbg_value(ptr poison, !38250, !DIExpression(), !38252)
    #dbg_value(ptr poison, !38253, !DIExpression(), !38256)
  %i.by = alloca [80 x i8], align 16              ; 4 uses
  %i.bz = alloca [24 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !38112, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !38259)
    #dbg_declare(ptr poison, !38124, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !38261)
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [24 x i8], align 8               ; 6 uses
  %i.cg = alloca [24 x i8], align 8               ; 6 uses
  %i.ch = alloca [24 x i8], align 8               ; 6 uses
  %i.ci = alloca [24 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !38111, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !38262)
    #dbg_declare(ptr poison, !38107, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !38263)
  %.sroa.135513 = alloca [71 x i8], align 1       ; 11 uses
    #dbg_declare(ptr %.sroa.135513, !38122, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !38264)
  %i.cj = alloca [72 x i8], align 8               ; 4 uses
    #dbg_value(ptr poison, !4302, !DIExpression(), !29916)
    #dbg_value(ptr poison, !4334, !DIExpression(), !29917)
  %i.ck = alloca [72 x i8], align 8               ; 4 uses
  %i.cl = alloca [24 x i8], align 8               ; 11 uses
  %.sroa.85490 = alloca [6 x i8], align 2         ; 6 uses
  %i.cm = alloca [72 x i8], align 8               ; 4 uses
  %i.cn = alloca [72 x i8], align 8               ; 4 uses
    #dbg_value(ptr poison, !4302, !DIExpression(), !29920)
    #dbg_value(ptr poison, !4334, !DIExpression(), !29921)
  %i.co = alloca [72 x i8], align 8               ; 4 uses
  %i.cp = alloca [24 x i8], align 8               ; 18 uses
  %i.cq = alloca [24 x i8], align 8               ; 4 uses
  %i.cr = alloca [144 x i8], align 8              ; 5 uses
  %i.cs = alloca [32 x i8], align 8               ; 7 uses
  %i.ct = alloca [56 x i8], align 8               ; 5 uses
  %i.cu = alloca [48 x i8], align 8               ; 4 uses
  %i.cv = alloca [72 x i8], align 8               ; 6 uses
  %i.cw = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.05472.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65474 = alloca [7 x i8], align 1         ; 4 uses
  %i.cx = alloca [12 x i8], align 8               ; 8 uses
  %i.cy = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.05462.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65464 = alloca [7 x i8], align 1         ; 4 uses
  %.sroa.55468 = alloca [3 x i8], align 1         ; 4 uses
    #dbg_declare(ptr %.sroa.55468, !4349, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !29923)
    #dbg_declare(ptr %.sroa.55468, !38072, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !38265)
  %i.cz = alloca [24 x i8], align 8               ; 6 uses
  %i.da = alloca [24 x i8], align 8               ; 4 uses
  %i.db = alloca [144 x i8], align 8              ; 5 uses
  %i.dc = alloca [32 x i8], align 8               ; 7 uses
  %i.dd = alloca [56 x i8], align 8               ; 5 uses
  %i.de = alloca [48 x i8], align 8               ; 4 uses
  %i.df = alloca [72 x i8], align 8               ; 6 uses
  %i.dg = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.05445 = alloca [32 x i8], align 8        ; 4 uses
  %i.dh = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.05442.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65444 = alloca [7 x i8], align 1         ; 4 uses
  %i.di = alloca [12 x i8], align 8               ; 7 uses
  %i.dj = alloca [24 x i8], align 8               ; 8 uses
  %i.dk = alloca [32 x i8], align 8               ; 7 uses
  %i.dl = alloca [24 x i8], align 8               ; 2 uses
  %i.dm = alloca [24 x i8], align 8               ; 4 uses
  %i.dn = alloca [24 x i8], align 8               ; 9 uses
  %i.do = alloca [24 x i8], align 8               ; 3 uses
  %.sroa.05431 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29926)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29926)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29927)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29927)
  %i.dp = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.05423 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29926)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29926)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29927)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29927)
  %i.dq = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.05411 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29930)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29930)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29931)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29931)
  %i.dr = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.05403 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29930)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29930)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29931)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29931)
  %i.ds = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.05391 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29934)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29934)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29935)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29935)
  %i.dt = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.05383 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29934)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29934)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29935)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29935)
  %i.du = alloca [24 x i8], align 8               ; 6 uses
  %i.dv = alloca [32 x i8], align 8               ; 7 uses
  %i.dw = alloca [16 x i8], align 8               ; 5 uses
  %i.dx = alloca [16 x i8], align 8               ; 5 uses
  %i.dy = alloca [24 x i8], align 8               ; 2 uses
  %i.dz = alloca [144 x i8], align 8              ; 5 uses
  %i.ea = alloca [32 x i8], align 8               ; 7 uses
  %i.eb = alloca [56 x i8], align 8               ; 5 uses
  %i.ec = alloca [48 x i8], align 8               ; 4 uses
  %i.ed = alloca [12 x i8], align 4               ; 8 uses
  %.sroa.05363 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29938)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29938)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29939)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29939)
  %i.ee = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.05355 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29938)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29938)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29939)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29939)
  %i.ef = alloca [24 x i8], align 8               ; 9 uses
  %i.eg = alloca [32 x i8], align 8               ; 7 uses
  %i.eh = alloca [16 x i8], align 8               ; 5 uses
  %i.ei = alloca [16 x i8], align 8               ; 5 uses
  %i.ej = alloca [24 x i8], align 8               ; 2 uses
  %i.ek = alloca [144 x i8], align 8              ; 5 uses
  %i.el = alloca [32 x i8], align 8               ; 7 uses
  %i.em = alloca [56 x i8], align 8               ; 5 uses
  %i.en = alloca [48 x i8], align 8               ; 4 uses
  %i.eo = alloca [12 x i8], align 4               ; 8 uses
  %.sroa.05335 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29942)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29942)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29943)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29943)
  %i.ep = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.05327 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29942)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29942)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29943)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29943)
  %i.eq = alloca [24 x i8], align 8               ; 9 uses
  %i.er = alloca [32 x i8], align 8               ; 7 uses
  %i.es = alloca [16 x i8], align 8               ; 5 uses
  %i.et = alloca [16 x i8], align 8               ; 5 uses
  %i.eu = alloca [24 x i8], align 8               ; 2 uses
  %i.ev = alloca [144 x i8], align 8              ; 5 uses
  %i.ew = alloca [32 x i8], align 8               ; 7 uses
  %i.ex = alloca [56 x i8], align 8               ; 5 uses
  %i.ey = alloca [48 x i8], align 8               ; 4 uses
  %i.ez = alloca [12 x i8], align 4               ; 8 uses
  %.sroa.05307 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29946)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29946)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29947)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29947)
  %i.fa = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.05299 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29946)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29946)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29947)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29947)
  %i.fb = alloca [24 x i8], align 8               ; 9 uses
  %i.fc = alloca [32 x i8], align 8               ; 7 uses
  %i.fd = alloca [16 x i8], align 8               ; 5 uses
  %i.fe = alloca [16 x i8], align 8               ; 5 uses
  %i.ff = alloca [24 x i8], align 8               ; 2 uses
  %i.fg = alloca [144 x i8], align 8              ; 5 uses
  %i.fh = alloca [32 x i8], align 8               ; 7 uses
  %i.fi = alloca [56 x i8], align 8               ; 5 uses
  %i.fj = alloca [48 x i8], align 8               ; 4 uses
  %i.fk = alloca [12 x i8], align 4               ; 8 uses
  %.sroa.05279 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29950)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29950)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29951)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29951)
  %i.fl = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.05271 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29950)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29950)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29951)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29951)
  %i.fm = alloca [24 x i8], align 8               ; 9 uses
  %i.fn = alloca [144 x i8], align 8              ; 5 uses
  %i.fo = alloca [32 x i8], align 8               ; 7 uses
  %i.fp = alloca [56 x i8], align 8               ; 5 uses
  %i.fq = alloca [48 x i8], align 8               ; 4 uses
  %i.fr = alloca [144 x i8], align 8              ; 5 uses
  %i.fs = alloca [32 x i8], align 8               ; 7 uses
  %i.ft = alloca [56 x i8], align 8               ; 5 uses
  %i.fu = alloca [48 x i8], align 8               ; 4 uses
  %i.fv = alloca [24 x i8], align 8               ; 8 uses
  %i.fw = alloca [72 x i8], align 8               ; 6 uses
  %i.fx = alloca [72 x i8], align 8               ; 7 uses
  %i.fy = alloca [12 x i8], align 4               ; 8 uses
  %i.fz = alloca [16 x i8], align 8               ; 5 uses
  %i.ga = alloca [16 x i8], align 8               ; 5 uses
  %i.gb = alloca [24 x i8], align 8               ; 2 uses
  %i.gc = alloca [144 x i8], align 8              ; 5 uses
  %i.gd = alloca [32 x i8], align 8               ; 7 uses
  %i.ge = alloca [56 x i8], align 8               ; 5 uses
  %i.gf = alloca [48 x i8], align 8               ; 4 uses
  %i.gg = alloca [16 x i8], align 8               ; 5 uses
  %i.gh = alloca [16 x i8], align 8               ; 5 uses
  %i.gi = alloca [24 x i8], align 8               ; 2 uses
  %i.gj = alloca [144 x i8], align 8              ; 5 uses
  %i.gk = alloca [32 x i8], align 8               ; 7 uses
  %i.gl = alloca [56 x i8], align 8               ; 5 uses
  %i.gm = alloca [48 x i8], align 8               ; 4 uses
  %.sroa.05233.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65235 = alloca [7 x i8], align 1         ; 4 uses
  %i.gn = alloca [12 x i8], align 8               ; 7 uses
  %i.go = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.05230.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65232 = alloca [7 x i8], align 1         ; 4 uses
  %i.gp = alloca [12 x i8], align 8               ; 8 uses
  %i.gq = alloca [24 x i8], align 8               ; 10 uses
  %i.gr = alloca [144 x i8], align 8              ; 5 uses
  %i.gs = alloca [32 x i8], align 8               ; 7 uses
  %i.gt = alloca [56 x i8], align 8               ; 5 uses
  %i.gu = alloca [48 x i8], align 8               ; 4 uses
end_hunk_2
begin_hunk_3_@_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !49214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !dbg !49215
    #dbg_value(ptr %i.cy, !5276, !DIExpression(), !36853)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy), !dbg !49216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !49215
  br label %.outer, !dbg !49215

bb.bdy:                                           ; preds = %bb.bds
    #dbg_value(ptr %i.fam, !38077, !DIExpression(), !43492)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !dbg !49217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !49218
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk11expand_span(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fam, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cx)
          to label %bb.bea unwind label %bb.bdz, !dbg !49219

bb.bdz:                                           ; preds = %.invoke9533, %bb.bed, %bb.bec, %bb.beb, %bb.bdy
  %i.fav = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !49220

.body:                                            ; preds = %bb.bef, %bb.bdz
  %eh.lpad-body = phi { ptr, i32 } [ %i.fav, %bb.bdz ], [ %i.fbj, %bb.bef ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.cv) #24
          to label %.body4439 unwind label %bb.gi, !dbg !49220

bb.bea:                                           ; preds = %bb.bdy
  %i.faw = load i64, ptr %i.ct, align 8, !dbg !49221, !range !5411, !noundef !1852
  %i.fax = trunc nuw i64 %i.faw to i1, !dbg !49222
  br i1 %i.fax, label %bb.beb, label %.invoke9533, !dbg !49222, !prof !5801

bb.beb:                                           ; preds = %bb.bea
  %i.fay = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !49223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %i.fay, i64 48, i1 false), !dbg !49223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !49224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !dbg !49225
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine13report_target(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fam)
          to label %bb.bec unwind label %bb.bdz, !dbg !49226

.invoke9533:                                      ; preds = %bb.bds, %bb.bea
  %i.faz = phi ptr [ @6, %bb.bea ], [ @5, %bb.bds ]
  %i.fba = phi i64 [ 24, %bb.bea ], [ 15, %bb.bds ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.faz, i64 noundef %i.fba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #27
          to label %.cont9534 unwind label %bb.bdz, !dbg !49227

.cont9534:                                        ; preds = %.invoke9533
  unreachable

bb.bec:                                           ; preds = %bb.beb
  %i.fbb = load ptr, ptr %i.cs, align 8, !dbg !49228, !nonnull !1852, !noundef !1852
  %i.fbc = getelementptr inbounds nuw i8, ptr %i.cs, i64 8, !dbg !49228
  %i.fbd = load i64, ptr %i.fbc, align 8, !dbg !49228, !noundef !1852
    #dbg_value(ptr %i.fbb, !38079, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43493)
    #dbg_value(i64 %i.fbd, !38079, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43493)
  %i.fbe = getelementptr inbounds nuw i8, ptr %i.cs, i64 16, !dbg !49229
  %i.fbf = load ptr, ptr %i.fbe, align 8, !dbg !49229, !nonnull !1852, !noundef !1852
  %i.fbg = getelementptr inbounds nuw i8, ptr %i.cs, i64 24, !dbg !49229
  %i.fbh = load i64, ptr %i.fbg, align 8, !dbg !49229, !noundef !1852
    #dbg_value(ptr %i.fbf, !38080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43493)
    #dbg_value(i64 %i.fbh, !38080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43493)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !49230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !49231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !dbg !49232
    #dbg_value(ptr %i.cv, !41046, !DIExpression(), !43495)
  invoke fastcc void @_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5yXxDE1DkoT_4tera6errors5ErrorNtB5_12SpecToString14spec_to_stringBC_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cv)
          to label %bb.bed unwind label %bb.bdz, !dbg !49233

bb.bed:                                           ; preds = %bb.bec
  invoke void @_RNvMNtCs5yXxDE1DkoT_4tera6errorsNtB2_11ReportError3new(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fbb, i64 noundef %i.fbd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fbf, i64 noundef %i.fbh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu)
          to label %bb.bee unwind label %bb.bdz, !dbg !49234

bb.bee:                                           ; preds = %bb.bed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !49235
    #dbg_declare(ptr %i.cr, !6239, !DIExpression(), !36855)
  %i.fbi = invoke fastcc noundef ptr @_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit()
          to label %bb.beh unwind label %bb.bef, !dbg !49236 ; 2 uses

bb.bef:                                           ; preds = %bb.bee
  %i.fbj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors11ReportErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.cr) #24
          to label %.body unwind label %bb.beg, !dbg !49237

bb.beg:                                           ; preds = %bb.bef
  %i.fbk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !49238
  unreachable, !dbg !49238

bb.beh:                                           ; preds = %bb.bee
    #dbg_value(ptr %i.fbi, !6244, !DIExpression(), !36856)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.fbi, ptr noundef nonnull align 8 dereferenceable(144) %i.cr, i64 144, i1 false), !dbg !49239
  store i8 2, ptr %0, align 8, !dbg !49240
  %.sroa.05475.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49240
  store ptr %i.fbi, ptr %.sroa.05475.sroa.5.0..sroa_idx, align 8, !dbg !49240
  %.sroa.45476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !49240
  store ptr null, ptr %.sroa.45476.0..sroa_idx, align 8, !dbg !49240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !49241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !49242
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.cv)
          to label %bb.bei unwind label %.loopexit.split-lp6195.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49220

bb.bei:                                           ; preds = %bb.beh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !49220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !49214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !dbg !49215
    #dbg_value(ptr %i.cy, !5276, !DIExpression(), !36858)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy), !dbg !49243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !49215
  br label %bb.bii, !dbg !44287

bb.bej:                                           ; preds = %bb.c
  %i.fbl = trunc i64 %.sroa.0210.07551 to i32     ; 2 uses
    #dbg_value(ptr %i.aig, !38082, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43496)
    #dbg_value(ptr %i.aig, !43497, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43500)
    #dbg_value(ptr %i.aig, !40269, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43501)
    #dbg_value(ptr %i.aig, !43502, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43505)
    #dbg_value(ptr %i.aig, !43506, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43510)
    #dbg_value(ptr %i.aig, !43511, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43515)
    #dbg_value(ptr %i.aig, !40269, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43516)
    #dbg_value(ptr %i.aig, !43502, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43518)
    #dbg_value(ptr %i.aig, !43506, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43521)
    #dbg_value(ptr %i.aig, !43511, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43524)
    #dbg_value(ptr %i.aig, !43497, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43526)
    #dbg_value(ptr %i.aig, !40269, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43527)
    #dbg_value(ptr %i.aig, !43502, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43529)
    #dbg_value(ptr %i.aig, !43506, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43532)
    #dbg_value(ptr %i.aig, !43511, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43535)
    #dbg_value(ptr %i.aig, !40319, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43536)
    #dbg_value(ptr %i.aig, !43502, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43538)
    #dbg_value(ptr %i.aig, !43506, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43541)
    #dbg_value(ptr %i.aig, !43511, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43544)
    #dbg_value(ptr %i.aic, !39126, !DIExpression(), !39201)
    #dbg_value(ptr %i.aic, !38083, !DIExpression(), !43545)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !49244
  %i.fbm = getelementptr inbounds nuw i8, ptr %i.aig, i64 24, !dbg !49245 ; 2 uses
  %i.fbn = load i64, ptr %i.fbm, align 8, !dbg !49245, !noundef !1852 ; 2 uses
  %i.fbo = icmp ult i64 %i.fbn, 384307168202282326, !dbg !49246
  call void @llvm.assume(i1 %i.fbo), !dbg !49247
  switch i64 %i.fbn, label %..thread6081_crit_edge [
    i64 1, label %bb.bek
    i64 0, label %bb.beo
  ], !dbg !49248

..thread6081_crit_edge:                           ; preds = %bb.bej
  %.phi.trans.insert8438 = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  %.pre8439 = load ptr, ptr %.phi.trans.insert8438, align 8, !dbg !49249 ; 2 uses
  %.phi.trans.insert8440 = getelementptr inbounds nuw i8, ptr %.pre8439, i64 16
  %.pre8441 = load i64, ptr %.phi.trans.insert8440, align 8, !dbg !49250
  br label %.thread6081, !dbg !49248

bb.bek:                                           ; preds = %bb.bej
    #dbg_value(ptr poison, !40274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40278)
    #dbg_value(ptr poison, !40280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40284)
    #dbg_value(i64 %i.fbn, !40274, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40278)
    #dbg_value(i64 %i.fbn, !40280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40284)
  %i.fbp = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !49251
  %i.fbq = load ptr, ptr %i.fbp, align 8, !dbg !49251, !nonnull !1852, !noundef !1852 ; 4 uses
    #dbg_value(ptr %i.fbq, !40274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40278)
    #dbg_value(ptr %i.fbq, !40280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40284)
    #dbg_value(ptr %i.fbq, !40289, !DIExpression(), !43563)
    #dbg_value(ptr %i.fbq, !39768, !DIExpression(), !43564)
    #dbg_value(ptr %i.fbq, !40468, !DIExpression(), !43567)
    #dbg_value(ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, !40290, !DIExpression(), !43563)
  %i.fbr = getelementptr inbounds nuw i8, ptr %i.fbq, i64 16, !dbg !49252
  %i.fbs = load i64, ptr %i.fbr, align 8, !dbg !49252, !noundef !1852 ; 4 uses
    #dbg_value(ptr poison, !40664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43571)
    #dbg_value(i64 %i.fbs, !40664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43571)
  %i.fbt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, i64 8), align 8, !dbg !49253, !noundef !1852
    #dbg_value(ptr poison, !40663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43571)
    #dbg_value(i64 %i.fbt, !40663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43571)
    #dbg_value(ptr poison, !40678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43576)
    #dbg_value(i64 %i.fbs, !40678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43576)
    #dbg_value(ptr poison, !40689, !DIExpression(), !43577)
    #dbg_value(ptr poison, !40679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43576)
    #dbg_value(i64 %i.fbt, !40679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43576)
    #dbg_value(ptr poison, !40690, !DIExpression(), !43578)
    #dbg_value(i64 %i.fbs, !40682, !DIExpression(), !43579)
    #dbg_value(i64 %i.fbs, !40695, !DIExpression(), !43582)
    #dbg_value(i64 %i.fbs, !40700, !DIExpression(), !43583)
  %i.fbu = icmp eq i64 %i.fbs, %i.fbt, !dbg !49254
  br i1 %i.fbu, label %bb.bel, label %.thread6081, !dbg !49254

bb.bel:                                           ; preds = %bb.bek
  %i.fbv = load ptr, ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, align 8, !dbg !49253, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fbv, !40679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43576)
    #dbg_value(ptr %i.fbv, !40663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43571)
  %i.fbw = getelementptr inbounds nuw i8, ptr %i.fbq, i64 8, !dbg !49255
  %i.fbx = load ptr, ptr %i.fbw, align 8, !dbg !49255, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fbx, !40664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43571)
    #dbg_value(ptr %i.fbx, !40678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43576)
    #dbg_value(ptr %i.fbx, !40696, !DIExpression(), !43582)
    #dbg_value(ptr %i.fbv, !40697, !DIExpression(), !43582)
  %bcmp2505 = call i32 @bcmp(ptr nonnull %i.fbx, ptr nonnull %i.fbv, i64 %i.fbs), !dbg !49256
  %i.fby = icmp eq i32 %bcmp2505, 0, !dbg !49256
  br i1 %i.fby, label %bb.bem, label %.thread6081, !dbg !40286

bb.bem:                                           ; preds = %bb.bel
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State12dump_context(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2), !dbg !49257
  br label %bb.ben, !dbg !49258

bb.ben:                                           ; preds = %.thread6081, %bb.bem
  %i.fbz = load i64, ptr %i.fbm, align 8, !dbg !49259, !noundef !1852 ; 6 uses
  %i.fca = icmp ult i64 %i.fbz, 384307168202282326, !dbg !49260
  call void @llvm.assume(i1 %i.fca), !dbg !49261
  %i.fcb = add nsw i64 %i.fbz, -1, !dbg !49262    ; 2 uses
    #dbg_value(i64 %i.fcb, !38085, !DIExpression(), !43592)
  %.not2507 = icmp eq i64 %i.fcb, 0, !dbg !49263
  br i1 %.not2507, label %bb.bep, label %bb.bet, !dbg !49263

.thread6081:                                      ; preds = %..thread6081_crit_edge, %bb.bel, %bb.bek
  %i.fcc = phi i64 [ %.pre8441, %..thread6081_crit_edge ], [ %i.fbs, %bb.bel ], [ %i.fbs, %bb.bek ], !dbg !49250
  %i.fcd = phi ptr [ %.pre8439, %..thread6081_crit_edge ], [ %i.fbq, %bb.bel ], [ %i.fbq, %bb.bek ], !dbg !49249
    #dbg_value(ptr %i.fcd, !40274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40296)
    #dbg_value(ptr %i.fcd, !40280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40299)
    #dbg_value(ptr %i.fcd, !40464, !DIExpression(), !43593)
    #dbg_value(ptr %i.fcd, !40468, !DIExpression(), !43594)
  %i.fce = getelementptr inbounds nuw i8, ptr %i.fcd, i64 8, !dbg !49264
  %i.fcf = load ptr, ptr %i.fce, align 8, !dbg !49264, !nonnull !1852, !noundef !1852
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State9get_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fcf, i64 noundef %i.fcc), !dbg !49265
  br label %bb.ben, !dbg !49258

bb.beo:                                           ; preds = %bb.bej
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #26, !dbg !49266
  unreachable, !dbg !49266

bb.bep:                                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4471, %bb.ben
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !49267, !noalias !43603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false), !dbg !49268
    #dbg_value(i32 %i.fbl, !4349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !43604)
    #dbg_value(i32 %i.fbl, !4349, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !43604)
    #dbg_value(i8 0, !4349, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !43604)
  call void @llvm.experimental.noalias.scope.decl(metadata !43605), !dbg !49269
    #dbg_value(ptr %2, !4354, !DIExpression(), !36871)
    #dbg_declare(ptr poison, !4355, !DIExpression(), !36872)
    #dbg_declare(ptr %i.a, !5232, !DIExpression(), !36874)
    #dbg_value(ptr %2, !5237, !DIExpression(), !36875)
  store i32 %i.fbl, ptr %i.aba, align 8, !dbg !49267, !noalias !43606
  store i32 %i.fbl, ptr %.sroa.45499.0..sroa_idx, align 4, !dbg !49267, !noalias !43606
  store i8 0, ptr %.sroa.55500.0..sroa_idx, align 8, !dbg !49267, !noalias !43606
    #dbg_value(ptr %2, !5239, !DIExpression(), !36877)
    #dbg_value(ptr %2, !5249, !DIExpression(), !36879)
    #dbg_declare(ptr %i.a, !5244, !DIExpression(), !36880)
    #dbg_value(i64 40, !5254, !DIExpression(), !36883)
  %i.fcg = load i64, ptr %i.aan, align 8, !dbg !49270, !alias.scope !43607, !noundef !1852 ; 3 uses
    #dbg_value(i64 %i.fcg, !5245, !DIExpression(), !36886)
    #dbg_value(i64 %i.fcg, !5264, !DIExpression(), !36888)
    #dbg_value(ptr %2, !5261, !DIExpression(), !36889)
  %i.fch = load i64, ptr %2, align 8, !dbg !49271, !range !5271, !alias.scope !43607, !noundef !1852
  %i.fci = icmp eq i64 %i.fcg, %i.fch, !dbg !49272
  br i1 %i.fci, label %bb.beq, label %bb.bgh, !dbg !49272

bb.beq:                                           ; preds = %bb.bep
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs5yXxDE1DkoT_4tera5value5ValueINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusivemEEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.bgh unwind label %bb.ber, !dbg !49273, !noalias !43608

bb.ber:                                           ; preds = %bb.beq
  %i.fcj = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !5272, !DIExpression(), !36892)
    #dbg_value(ptr %i.a, !5276, !DIExpression(), !36894)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %common.resume unwind label %bb.bes, !dbg !49274, !noalias !43609

bb.bes:                                           ; preds = %bb.ber
  %i.fck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !49275, !noalias !43609
  unreachable, !dbg !49275

.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bfz, %bb.bfg, %bb.bfh, %.invoke9535, %bb.bey, %bb.bgi, %bb.bgk, %bb.bgo, %bb.bgp
  %lpad.loopexit.split-lp10443 = landingpad { ptr, i32 }
          cleanup
  br label %.thread6087

bb.bet:                                           ; preds = %bb.ben
  %.val3019 = load i8, ptr %i.cp, align 8, !dbg !49276, !range !5099, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !6187, !DIExpression(), !36896)
    #dbg_value(ptr poison, !6193, !DIExpression(), !36898)
  %i.fcl = icmp ne i8 %.val3019, 10, !dbg !49277
  call void @llvm.assume(i1 %i.fcl), !dbg !49277
  %i.fcm = icmp eq i8 %.val3019, 2, !dbg !49278
  br i1 %i.fcm, label %bb.bev, label %bb.beu, !dbg !49279

bb.beu:                                           ; preds = %bb.bet
    #dbg_value(ptr %i.cp, !38087, !DIExpression(), !43610)
    #dbg_value(i8 0, !38088, !DIExpression(), !43611)
    #dbg_value(ptr poison, !40324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40328)
    #dbg_value(ptr poison, !40330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40336)
    #dbg_value(i64 %i.fbz, !40324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40328)
    #dbg_value(i64 %i.fbz, !40330, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40336)
  %i.fcn = icmp eq i64 %i.fbz, 0, !dbg !49280
  br i1 %i.fcn, label %bb.bey, label %bb.bex, !dbg !49280, !prof !5359

bb.bev:                                           ; preds = %bb.bet
  %i.fco = getelementptr i8, ptr %i.aic, i64 16
  %.val3178 = load i64, ptr %i.fco, align 8, !dbg !49281, !noundef !1852
    #dbg_value(ptr poison, !7565, !DIExpression(), !36901)
    #dbg_value(i64 0, !7585, !DIExpression(), !36903)
    #dbg_value(i64 0, !7583, !DIExpression(), !36904)
    #dbg_value(i64 0, !7590, !DIExpression(), !36906)
    #dbg_value(i64 0, !7596, !DIExpression(), !36908)
    #dbg_value(ptr poison, !7581, !DIExpression(), !36904)
    #dbg_value(i64 poison, !7582, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !36904)
    #dbg_value(ptr poison, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36910)
    #dbg_value(ptr poison, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36912)
    #dbg_value(i64 %.val3178, !7602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36910)
    #dbg_value(i64 %.val3178, !7605, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36912)
  %i.fcp = and i64 %.sroa.0210.07551, 4294967295, !dbg !49282 ; 2 uses
    #dbg_value(i64 %i.fcp, !7603, !DIExpression(), !36910)
    #dbg_value(i64 %i.fcp, !7606, !DIExpression(), !36912)
  %i.fcq = icmp ugt i64 %.val3178, %i.fcp, !dbg !49283
  br i1 %i.fcq, label %bb.bew, label %.invoke9535, !dbg !49283

bb.bew:                                           ; preds = %bb.bev
  %i.fcr = getelementptr i8, ptr %i.aic, i64 8
  %.val3177 = load ptr, ptr %i.fcr, align 8, !dbg !49281, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %.val3177, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36910)
    #dbg_value(ptr %.val3177, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36912)
  %i.fcs = getelementptr inbounds nuw [56 x i8], ptr %.val3177, i64 %i.fcp, !dbg !49284 ; 2 uses
    #dbg_value(ptr %i.fcs, !7574, !DIExpression(), !36901)
    #dbg_value(ptr undef, !7585, !DIExpression(DW_OP_deref), !36903)
    #dbg_value(ptr undef, !7565, !DIExpression(), !36901)
    #dbg_value(ptr %i.fcs, !7575, !DIExpression(), !36913)
    #dbg_value(ptr %i.fcs, !7588, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !36914)
    #dbg_value(ptr %i.fcs, !7608, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !36916)
    #dbg_value(ptr %i.fcs, !7610, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !36918)
    #dbg_value(ptr %i.fcs, !7613, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !36920)
  %i.fct = getelementptr inbounds nuw i8, ptr %i.fcs, i64 48, !dbg !49285
  %i.fcu = load i64, ptr %i.fct, align 8, !dbg !49285, !noundef !1852
    #dbg_value(ptr poison, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36906)
    #dbg_value(ptr poison, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36908)
    #dbg_value(i64 %i.fcu, !7593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36906)
    #dbg_value(i64 %i.fcu, !7599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36908)
  %.not6132 = icmp eq i64 %i.fcu, 0, !dbg !49286
  br i1 %.not6132, label %.invoke9535, label %bb.bgn, !dbg !49286

bb.bex:                                           ; preds = %bb.beu
  %i.fcv = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !49287
  %i.fcw = load ptr, ptr %i.fcv, align 8, !dbg !49287, !nonnull !1852, !noundef !1852 ; 3 uses
    #dbg_value(ptr %i.fcw, !40324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40328)
    #dbg_value(ptr %i.fcw, !40330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40336)
    #dbg_value(i64 %i.fbz, !43618, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43629)
    #dbg_value(i64 %i.fbz, !43632, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43637)
    #dbg_value(ptr %i.fcw, !43630, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !43638)
    #dbg_value(ptr %i.fcw, !43619, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !43639)
    #dbg_value(i64 %i.fbz, !43630, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !43638)
    #dbg_value(i64 %i.fbz, !43619, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !43639)
    #dbg_value(ptr %i.fcw, !43620, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !43640)
    #dbg_value(ptr %i.fcw, !43633, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !43637)
  %.idx10385 = mul nuw i64 %i.fbz, 24, !dbg !49288
  %i.fcx = getelementptr i8, ptr %i.fcw, i64 %.idx10385, !dbg !49288 ; 2 uses
    #dbg_value(ptr %i.fcw, !38089, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !43641)
    #dbg_value(ptr %i.fcx, !38089, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43641)
    #dbg_value(i64 0, !38089, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43641)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fcx) ]
  %i.fcy = icmp eq i64 %i.fbz, 1, !dbg !49289
  br i1 %i.fcy, label %._crit_edge, label %.lr.ph10382, !dbg !49290

.lr.ph10382:                                      ; preds = %bb.bex
  %.sroa.05482.010377 = getelementptr inbounds nuw i8, ptr %i.fcw, i64 24, !dbg !49291
  br label %bb.bfy, !dbg !49290

bb.bey:                                           ; preds = %bb.beu
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #27
          to label %bb.fy unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49292

bb.bez:                                           ; preds = %bb.bgc
  %.sroa.05482.0 = getelementptr inbounds nuw i8, ptr %.sroa.05482.010381, i64 24, !dbg !49291 ; 2 uses
    #dbg_value(ptr %.sroa.05482.0, !38089, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43641)
    #dbg_value(i64 %i.fev, !38089, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43641)
    #dbg_value(ptr %i.ffc, !38087, !DIExpression(), !43610)
    #dbg_value(ptr undef, !4334, !DIExpression(), !29921)
    #dbg_value(ptr undef, !4302, !DIExpression(), !29920)
    #dbg_value(ptr %.sroa.05482.0, !4313, !DIExpression(), !36931)
    #dbg_value(ptr %i.fcx, !4314, !DIExpression(), !36932)
    #dbg_value(ptr poison, !7627, !DIExpression(), !36933)
    #dbg_value(ptr poison, !7628, !DIExpression(), !36934)
  %i.fcz = icmp eq ptr %.sroa.05482.0, %i.fcx, !dbg !49289
  br i1 %i.fcz, label %._crit_edge, label %bb.bfy, !dbg !49290

._crit_edge:                                      ; preds = %bb.bez, %bb.bex
  %.sroa.0301.0.lcssa = phi ptr [ %i.cp, %bb.bex ], [ %i.ffc, %bb.bez ], !dbg !43592 ; 17 uses
    #dbg_value(ptr poison, !38089, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43641)
    #dbg_value(i64 poison, !38089, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43641)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.85490), !dbg !49293
  call void @llvm.experimental.noalias.scope.decl(metadata !43642), !dbg !49294
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i4448), !dbg !49295
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5014, !DIExpression(), !36938)
  call void @llvm.experimental.noalias.scope.decl(metadata !43643), !dbg !49295
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5017, !DIExpression(), !36942)
    #dbg_value(i64 1, !5041, !DIExpression(), !36945)
    #dbg_value(i8 0, !5047, !DIExpression(), !36945)
    #dbg_value(i64 1, !5056, !DIExpression(), !36947)
    #dbg_value(i8 0, !5060, !DIExpression(), !36947)
    #dbg_value(i64 1, !5041, !DIExpression(), !36950)
    #dbg_value(i8 0, !5047, !DIExpression(), !36950)
    #dbg_value(i64 1, !5056, !DIExpression(), !36952)
    #dbg_value(i8 0, !5060, !DIExpression(), !36952)
    #dbg_value(i64 1, !5041, !DIExpression(), !36955)
    #dbg_value(i8 0, !5047, !DIExpression(), !36955)
    #dbg_value(i64 1, !5056, !DIExpression(), !36957)
    #dbg_value(i8 0, !5060, !DIExpression(), !36957)
    #dbg_value(i64 1, !5041, !DIExpression(), !36961)
    #dbg_value(i8 0, !5047, !DIExpression(), !36961)
    #dbg_value(i64 1, !5056, !DIExpression(), !36963)
    #dbg_value(i8 0, !5060, !DIExpression(), !36963)
  %i.fda = load i8, ptr %.sroa.0301.0.lcssa, align 8, !dbg !49296, !range !5099, !alias.scope !43644, !noundef !1852 ; 4 uses
  %i.fdb = icmp ne i8 %i.fda, 10, !dbg !49296
  call void @llvm.assume(i1 %i.fdb), !dbg !49296
  %i.fdc = add nsw i8 %i.fda, -2, !dbg !49296
  %i.fdd = icmp samesign ugt i8 %i.fda, 1, !dbg !49296
  %narrow.i.i4449 = select i1 %i.fdd, i8 %i.fdc, i8 8, !dbg !49296
  switch i8 %narrow.i.i4449, label %bb.bfa [
    i8 0, label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469
    i8 1, label %bb.bfb
    i8 2, label %bb.bfc
    i8 3, label %bb.bfd
    i8 4, label %bb.bfe
    i8 5, label %bb.bff
    i8 6, label %bb.bfg
    i8 7, label %bb.bfh
    i8 8, label %bb.bfi
    i8 9, label %bb.bfj
    i8 10, label %bb.bfk
    i8 11, label %bb.bfl
  ], !dbg !49296

bb.bfa:                                           ; preds = %._crit_edge
  unreachable, !dbg !49297

bb.bfb:                                           ; preds = %._crit_edge
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !49296

bb.bfc:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5021, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !36964)
  %i.fde = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 1, !dbg !49298
  %i.fdf = load i8, ptr %i.fde, align 1, !dbg !49298, !range !3887, !alias.scope !43644, !noundef !1852
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !49299

bb.bfd:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5023, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !36965)
  %i.fdg = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !49300
  %i.fdh = load i64, ptr %i.fdg, align 8, !dbg !49300, !alias.scope !43644, !noundef !1852
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !49299

bb.bfe:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !36966)
  %i.fdi = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !49301
  %i.fdj = load i64, ptr %i.fdi, align 8, !dbg !49301, !alias.scope !43644, !noundef !1852
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !49299

bb.bff:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !36967)
  %i.fdk = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !49302
  %i.fdl = load i64, ptr %i.fdk, align 8, !dbg !49302, !alias.scope !43644, !noundef !1852
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !49299

bb.bfg:                                           ; preds = %._crit_edge
  %i.fdm = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !49303
    #dbg_value(ptr %i.fdm, !5029, !DIExpression(), !36968)
  %.val.i.i4466 = load ptr, ptr %i.fdm, align 8, !dbg !49304, !alias.scope !43644 ; 2 uses
    #dbg_value(ptr poison, !5104, !DIExpression(), !36970)
  %i.fdn = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxoE13new_uninit_inCs5yXxDE1DkoT_4tera()
          to label %.noexc4467 unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49305 ; 2 uses

.noexc4467:                                       ; preds = %bb.bfg
    #dbg_value(ptr %i.fdn, !5110, !DIExpression(), !36971)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i4466) ]
    #dbg_value(ptr %.val.i.i4466, !5122, !DIExpression(), !36973)
    #dbg_value(ptr %i.fdn, !5129, !DIExpression(), !36973)
    #dbg_value(ptr %.val.i.i4466, !5132, !DIExpression(), !36975)
    #dbg_value(ptr %.val.i.i4466, !5140, !DIExpression(), !36977)
    #dbg_value(ptr %i.fdn, !5138, !DIExpression(), !36975)
    #dbg_value(ptr %i.fdn, !5143, !DIExpression(), !36977)
    #dbg_value(i64 1, !5144, !DIExpression(), !36977)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fdn, ptr noundef nonnull readonly align 16 dereferenceable(16) %.val.i.i4466, i64 16, i1 false), !dbg !49306, !noalias !43645
  %i.fdo = ptrtoint ptr %i.fdn to i64, !dbg !49307
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !49299

bb.bfh:                                           ; preds = %._crit_edge
  %i.fdp = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !49308
    #dbg_value(ptr %i.fdp, !5031, !DIExpression(), !36980)
  %.val34.i.i4465 = load ptr, ptr %i.fdp, align 8, !dbg !49309, !alias.scope !43644 ; 2 uses
    #dbg_value(ptr poison, !5146, !DIExpression(), !36982)
  %i.fdq = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxnE13new_uninit_inCs5yXxDE1DkoT_4tera()
          to label %.noexc4468 unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49310 ; 2 uses

.noexc4468:                                       ; preds = %bb.bfh
    #dbg_value(ptr %i.fdq, !5150, !DIExpression(), !36983)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val34.i.i4465) ]
    #dbg_value(ptr %.val34.i.i4465, !5159, !DIExpression(), !36985)
    #dbg_value(ptr %i.fdq, !5163, !DIExpression(), !36985)
    #dbg_value(ptr %.val34.i.i4465, !5165, !DIExpression(), !36987)
    #dbg_value(ptr %.val34.i.i4465, !5171, !DIExpression(), !36989)
    #dbg_value(ptr %i.fdq, !5169, !DIExpression(), !36987)
    #dbg_value(ptr %i.fdq, !5174, !DIExpression(), !36989)
    #dbg_value(i64 1, !5175, !DIExpression(), !36989)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fdq, ptr noundef nonnull readonly align 16 dereferenceable(16) %.val34.i.i4465, i64 16, i1 false), !dbg !49311, !noalias !43645
  %i.fdr = ptrtoint ptr %i.fdq to i64, !dbg !49312
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !49299

bb.bfi:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5032, !DIExpression(), !36990)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5088, !DIExpression(), !36991)
  %i.fds = trunc nuw i8 %i.fda to i1, !dbg !49313
  br i1 %i.fds, label %bb.bfm, label %bb.bfn, !dbg !49313

bb.bfj:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5034, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !36992)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5074, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !36993)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5177, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !36995)
  %i.fdt = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !49314
  %i.fdu = load ptr, ptr %i.fdt, align 8, !dbg !49314, !alias.scope !43644, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fdu, !5046, !DIExpression(), !36997)
    #dbg_value(ptr %i.fdu, !5059, !DIExpression(), !36957)
  %i.fdv = atomicrmw add ptr %i.fdu, i64 1 monotonic, align 8, !dbg !49315, !noalias !43645
    #dbg_value(i64 %i.fdv, !5075, !DIExpression(), !36998)
  %i.fdw = icmp slt i64 %i.fdv, 0, !dbg !49316
  br i1 %i.fdw, label %bb.bfs, label %bb.bfr, !dbg !49316

bb.bfk:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5036, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !36999)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5067, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !37000)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5188, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !37002)
  %i.fdx = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !49317
  %i.fdy = load ptr, ptr %i.fdx, align 8, !dbg !49317, !alias.scope !43644, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fdy, !5046, !DIExpression(), !37004)
    #dbg_value(ptr %i.fdy, !5059, !DIExpression(), !36952)
  %i.fdz = atomicrmw add ptr %i.fdy, i64 1 monotonic, align 8, !dbg !49318, !noalias !43645
    #dbg_value(i64 %i.fdz, !5068, !DIExpression(), !37005)
  %i.fea = icmp slt i64 %i.fdz, 0, !dbg !49319
  br i1 %i.fea, label %bb.bfu, label %bb.bft, !dbg !49319

bb.bfl:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5038, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !37006)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5053, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !37007)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5199, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !37009)
  %i.feb = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !49320
  %i.fec = load ptr, ptr %i.feb, align 8, !dbg !49320, !alias.scope !43644, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fec, !5046, !DIExpression(), !37011)
    #dbg_value(ptr %i.fec, !5059, !DIExpression(), !36947)
  %i.fed = atomicrmw add ptr %i.fec, i64 1 monotonic, align 8, !dbg !49321, !noalias !43645
    #dbg_value(i64 %i.fed, !5054, !DIExpression(), !37012)
  %i.fee = icmp slt i64 %i.fed, 0, !dbg !49322
  br i1 %i.fee, label %bb.bfw, label %bb.bfv, !dbg !49322

bb.bfm:                                           ; preds = %bb.bfi
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5095, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !37013)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5082, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !37014)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5209, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !37016)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5096, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !37013)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5217, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !37018)
  %i.fef = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !49323
  %i.feg = load ptr, ptr %i.fef, align 8, !dbg !49323, !alias.scope !43644, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.feg, !5046, !DIExpression(), !37020)
    #dbg_value(ptr %i.feg, !5059, !DIExpression(), !36963)
end_hunk_3
begin_hunk_4_@_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_:bb.a
    #dbg_value(ptr %i.fgq, !40274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40314)
    #dbg_value(ptr %i.fgq, !40280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40317)
    #dbg_value(ptr %i.fgq, !40464, !DIExpression(), !43704)
    #dbg_value(ptr %i.fgq, !40468, !DIExpression(), !43707)
  %i.fgr = getelementptr inbounds nuw i8, ptr %i.fgq, i64 8, !dbg !49398
  %i.fgs = load ptr, ptr %i.fgr, align 8, !dbg !49398, !nonnull !1852, !noundef !1852
  %i.fgt = getelementptr inbounds nuw i8, ptr %i.fgq, i64 16, !dbg !49399
  %i.fgu = load i64, ptr %i.fgt, align 8, !dbg !49399, !noundef !1852
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine19undefined_var_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aic, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fgs, i64 noundef %i.fgu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fgo)
          to label %bb.bgq unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49400

bb.bgp:                                           ; preds = %bb.bgn
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #27
          to label %bb.fy unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49396

bb.bgq:                                           ; preds = %bb.bgo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.co, i64 72, i1 false), !dbg !49401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !49402
  br label %bb.bgm, !dbg !49403

.thread6087:                                      ; preds = %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread6083
  %.pn6086 = phi { ptr, i32 } [ %i.ffw, %.thread6083 ], [ %lpad.loopexit.split-lp10443, %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
    #dbg_value(ptr %i.cp, !5276, !DIExpression(), !37094)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %common.resume unwind label %bb.gi, !dbg !49404

bb.bgr:                                           ; preds = %bb.c
    #dbg_value(ptr %i.aig, !38095, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43719)
    #dbg_value(ptr %i.aig, !43497, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43721)
    #dbg_value(ptr %i.aig, !40269, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43722)
    #dbg_value(ptr %i.aig, !43502, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43724)
    #dbg_value(ptr %i.aig, !43506, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43727)
    #dbg_value(ptr %i.aig, !43511, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43730)
    #dbg_value(ptr %i.aig, !40269, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43731)
    #dbg_value(ptr %i.aig, !43502, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43733)
    #dbg_value(ptr %i.aig, !43506, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43736)
    #dbg_value(ptr %i.aig, !43511, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43739)
    #dbg_value(ptr %i.aig, !40269, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43740)
    #dbg_value(ptr %i.aig, !43502, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43742)
    #dbg_value(ptr %i.aig, !43506, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43745)
    #dbg_value(ptr %i.aig, !43511, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43748)
    #dbg_value(ptr %i.aig, !43497, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43750)
    #dbg_value(ptr %i.aig, !40319, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43751)
    #dbg_value(ptr %i.aig, !43502, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43753)
    #dbg_value(ptr %i.aig, !43506, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43756)
    #dbg_value(ptr %i.aig, !43511, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !43759)
    #dbg_value(ptr %i.aic, !39126, !DIExpression(), !39199)
    #dbg_value(ptr %i.aic, !38096, !DIExpression(), !43760)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !dbg !49405
  %i.fgv = getelementptr inbounds nuw i8, ptr %i.aig, i64 24, !dbg !49406 ; 3 uses
  %i.fgw = load i64, ptr %i.fgv, align 8, !dbg !49406, !noundef !1852 ; 2 uses
  %i.fgx = icmp ult i64 %i.fgw, 384307168202282326, !dbg !49407
  call void @llvm.assume(i1 %i.fgx), !dbg !49408
  switch i64 %i.fgw, label %..thread6103_crit_edge [
    i64 1, label %bb.bgs
    i64 0, label %bb.bgv
  ], !dbg !49409

..thread6103_crit_edge:                           ; preds = %bb.bgr
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !49410 ; 2 uses
  %.phi.trans.insert8436 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre8437 = load i64, ptr %.phi.trans.insert8436, align 8, !dbg !49411
  br label %.thread6103, !dbg !49409

bb.bgs:                                           ; preds = %bb.bgr
    #dbg_value(ptr poison, !40274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40345)
    #dbg_value(ptr poison, !40280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40348)
    #dbg_value(i64 %i.fgw, !40274, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40345)
    #dbg_value(i64 %i.fgw, !40280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40348)
  %i.fgy = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !49412
  %i.fgz = load ptr, ptr %i.fgy, align 8, !dbg !49412, !nonnull !1852, !noundef !1852 ; 4 uses
    #dbg_value(ptr %i.fgz, !40274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40345)
    #dbg_value(ptr %i.fgz, !40280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40348)
    #dbg_value(ptr %i.fgz, !40289, !DIExpression(), !43778)
    #dbg_value(ptr %i.fgz, !39768, !DIExpression(), !43779)
    #dbg_value(ptr %i.fgz, !40468, !DIExpression(), !43782)
    #dbg_value(ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, !40290, !DIExpression(), !43778)
  %i.fha = getelementptr inbounds nuw i8, ptr %i.fgz, i64 16, !dbg !49413
  %i.fhb = load i64, ptr %i.fha, align 8, !dbg !49413, !noundef !1852 ; 4 uses
    #dbg_value(ptr poison, !40664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43786)
    #dbg_value(i64 %i.fhb, !40664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43786)
  %i.fhc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, i64 8), align 8, !dbg !49414, !noundef !1852
    #dbg_value(ptr poison, !40663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43786)
    #dbg_value(i64 %i.fhc, !40663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43786)
    #dbg_value(ptr poison, !40678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43791)
    #dbg_value(i64 %i.fhb, !40678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43791)
    #dbg_value(ptr poison, !40689, !DIExpression(), !43792)
    #dbg_value(ptr poison, !40679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43791)
    #dbg_value(i64 %i.fhc, !40679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43791)
    #dbg_value(ptr poison, !40690, !DIExpression(), !43793)
    #dbg_value(i64 %i.fhb, !40683, !DIExpression(), !43794)
    #dbg_value(i64 %i.fhb, !40695, !DIExpression(), !43797)
    #dbg_value(i64 %i.fhb, !40701, !DIExpression(), !43798)
  %i.fhd = icmp eq i64 %i.fhb, %i.fhc, !dbg !49415
  br i1 %i.fhd, label %bb.bgt, label %.thread6103, !dbg !49415

bb.bgt:                                           ; preds = %bb.bgs
  %i.fhe = load ptr, ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, align 8, !dbg !49414, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fhe, !40679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43791)
    #dbg_value(ptr %i.fhe, !40663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43786)
  %i.fhf = getelementptr inbounds nuw i8, ptr %i.fgz, i64 8, !dbg !49416
  %i.fhg = load ptr, ptr %i.fhf, align 8, !dbg !49416, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fhg, !40664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43786)
    #dbg_value(ptr %i.fhg, !40678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43791)
    #dbg_value(ptr %i.fhg, !40696, !DIExpression(), !43797)
    #dbg_value(ptr %i.fhe, !40697, !DIExpression(), !43797)
  %bcmp = call i32 @bcmp(ptr nonnull %i.fhg, ptr nonnull %i.fhe, i64 %i.fhb), !dbg !49417
  %i.fhh = icmp eq i32 %bcmp, 0, !dbg !49417
  br i1 %i.fhh, label %bb.bgu, label %.thread6103, !dbg !40350

bb.bgu:                                           ; preds = %bb.bgt
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State12dump_context(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2), !dbg !49418
  br label %bb.bgw, !dbg !49419

.thread6103:                                      ; preds = %..thread6103_crit_edge, %bb.bgt, %bb.bgs
  %i.fhi = phi i64 [ %.pre8437, %..thread6103_crit_edge ], [ %i.fhb, %bb.bgt ], [ %i.fhb, %bb.bgs ], !dbg !49411
  %i.fhj = phi ptr [ %.pre, %..thread6103_crit_edge ], [ %i.fgz, %bb.bgt ], [ %i.fgz, %bb.bgs ], !dbg !49410
    #dbg_value(ptr %i.fhj, !40274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40357)
    #dbg_value(ptr %i.fhj, !40280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40360)
    #dbg_value(ptr %i.fhj, !40464, !DIExpression(), !43807)
    #dbg_value(ptr %i.fhj, !40468, !DIExpression(), !43808)
  %i.fhk = getelementptr inbounds nuw i8, ptr %i.fhj, i64 8, !dbg !49420
  %i.fhl = load ptr, ptr %i.fhk, align 8, !dbg !49420, !nonnull !1852, !noundef !1852
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State9get_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fhl, i64 noundef %i.fhi), !dbg !49421
  br label %bb.bgw, !dbg !49419

bb.bgv:                                           ; preds = %bb.bgr
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #26, !dbg !49422
  unreachable, !dbg !49422

.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bhw, %bb.bht, %bb.bhs, %bb.bhr, %bb.bhq, %bb.bhp, %bb.bho, %bb.bhn, %bb.bhm, %bb.bhk, %bb.bhj, %bb.bhi, %.noexc2785, %bb.bhh, %.noexc2783, %bb.bhg, %bb.bhf, %.invoke9537, %bb.big, %bb.bif, %bb.bib, %bb.bhu
  %lpad.loopexit.split-lp10440 = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.cl, !5276, !DIExpression(), !37096)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %common.resume unwind label %bb.gi, !dbg !49423

bb.bgw:                                           ; preds = %bb.bgu, %.thread6103
  %.val3018 = load i8, ptr %i.cl, align 8, !dbg !49424, !range !5099, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !6187, !DIExpression(), !37098)
    #dbg_value(ptr poison, !6193, !DIExpression(), !37100)
  %i.fhm = icmp ne i8 %.val3018, 10, !dbg !49425
  call void @llvm.assume(i1 %i.fhm), !dbg !49425
  %i.fhn = icmp eq i8 %.val3018, 2, !dbg !49426
  br i1 %i.fhn, label %bb.bgy, label %bb.bgx, !dbg !49427

bb.bgx:                                           ; preds = %bb.bgw
  %i.fho = load i64, ptr %i.fgv, align 8, !dbg !49428, !noundef !1852 ; 3 uses
  %i.fhp = icmp ult i64 %i.fho, 384307168202282326, !dbg !49429
  call void @llvm.assume(i1 %i.fhp), !dbg !49430
    #dbg_value(i64 %i.fho, !38099, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43817)
  switch i64 %i.fho, label %.lr.ph10376.a [
    i64 1, label %.loopexit6182
    i64 0, label %bb.bhu
  ], !dbg !49431, !prof !7634

bb.bgy:                                           ; preds = %bb.bgw
  %i.fhq = getelementptr i8, ptr %i.aic, i64 16
  %.val3172 = load i64, ptr %i.fhq, align 8, !dbg !49432, !noundef !1852
    #dbg_value(ptr poison, !7565, !DIExpression(), !37103)
    #dbg_value(i64 0, !7585, !DIExpression(), !37105)
    #dbg_value(i64 0, !7583, !DIExpression(), !37106)
    #dbg_value(i64 0, !7590, !DIExpression(), !37108)
    #dbg_value(i64 0, !7596, !DIExpression(), !37110)
    #dbg_value(ptr poison, !7581, !DIExpression(), !37106)
    #dbg_value(i64 poison, !7582, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !37106)
    #dbg_value(ptr poison, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37112)
    #dbg_value(ptr poison, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37114)
    #dbg_value(i64 %.val3172, !7602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37112)
    #dbg_value(i64 %.val3172, !7605, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37114)
  %i.fhr = and i64 %.sroa.0210.07551, 4294967295, !dbg !49433 ; 2 uses
    #dbg_value(i64 %i.fhr, !7603, !DIExpression(), !37112)
    #dbg_value(i64 %i.fhr, !7606, !DIExpression(), !37114)
  %i.fhs = icmp ugt i64 %.val3172, %i.fhr, !dbg !49434
  br i1 %i.fhs, label %bb.bgz, label %.invoke9537, !dbg !49434

bb.bgz:                                           ; preds = %bb.bgy
  %i.fht = getelementptr i8, ptr %i.aic, i64 8
  %.val3171 = load ptr, ptr %i.fht, align 8, !dbg !49432, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %.val3171, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37112)
    #dbg_value(ptr %.val3171, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37114)
  %i.fhu = getelementptr inbounds nuw [56 x i8], ptr %.val3171, i64 %i.fhr, !dbg !49435 ; 2 uses
    #dbg_value(ptr %i.fhu, !7574, !DIExpression(), !37103)
    #dbg_value(ptr undef, !7585, !DIExpression(DW_OP_deref), !37105)
    #dbg_value(ptr undef, !7565, !DIExpression(), !37103)
    #dbg_value(ptr %i.fhu, !7575, !DIExpression(), !37115)
    #dbg_value(ptr %i.fhu, !7588, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !37116)
    #dbg_value(ptr %i.fhu, !7608, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !37118)
    #dbg_value(ptr %i.fhu, !7610, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !37120)
    #dbg_value(ptr %i.fhu, !7613, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !37122)
  %i.fhv = getelementptr inbounds nuw i8, ptr %i.fhu, i64 48, !dbg !49436
  %i.fhw = load i64, ptr %i.fhv, align 8, !dbg !49436, !noundef !1852
    #dbg_value(ptr poison, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37108)
    #dbg_value(ptr poison, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37110)
    #dbg_value(i64 %i.fhw, !7593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37108)
    #dbg_value(i64 %i.fhw, !7599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37110)
  %.not6130 = icmp eq i64 %i.fhw, 0, !dbg !49437
  br i1 %.not6130, label %.invoke9537, label %bb.bie, !dbg !49437

.loopexit6182:                                    ; preds = %bb.bhv, %bb.bgx
  %.sroa.0322.0 = phi ptr [ %i.cl, %bb.bgx ], [ %i.fjt, %bb.bhv ], !dbg !43817 ; 7 uses
    #dbg_value(ptr %.sroa.0322.0, !38101, !DIExpression(), !43818)
    #dbg_value(ptr %.sroa.0322.0, !38100, !DIExpression(), !43819)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.135513), !dbg !38131
  call void @llvm.experimental.noalias.scope.decl(metadata !43820), !dbg !49438
  call void @llvm.experimental.noalias.scope.decl(metadata !43821), !dbg !49438
    #dbg_value(ptr poison, !41349, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !37129)
    #dbg_value(ptr %1, !41360, !DIExpression(), !37130)
    #dbg_value(ptr %1, !41384, !DIExpression(), !37132)
    #dbg_value(ptr %.sroa.0322.0, !41361, !DIExpression(), !37130)
    #dbg_value(ptr %.sroa.0322.0, !41354, !DIExpression(), !37133)
    #dbg_value(ptr %2, !41362, !DIExpression(), !37130)
    #dbg_value(ptr %3, !41363, !DIExpression(), !37130)
    #dbg_value(ptr poison, !41350, !DIExpression(), !37134)
    #dbg_value(i8 %i.aap, !41386, !DIExpression(), !37136)
  %i.fhx = load i8, ptr %i.aas, align 1, !dbg !49439, !range !3887, !noalias !43822, !noundef !1852
    #dbg_value(i8 %i.fhx, !41387, !DIExpression(), !37136)
  %spec.select.i = select i1 %.not.i, i8 %i.fhx, i8 %i.aap, !dbg !49440
    #dbg_value(i8 %spec.select.i, !41387, !DIExpression(), !37136)
  %i.fhy = trunc nuw i8 %spec.select.i to i1, !dbg !49441
  br i1 %i.fhy, label %bb.bhb, label %bb.bha, !dbg !49441

bb.bha:                                           ; preds = %bb.bhc, %bb.bhb, %.loopexit6182
    #dbg_value(ptr %2, !41391, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !37141)
    #dbg_value(ptr %2, !41393, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !37143)
    #dbg_value(ptr %2, !41395, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !37145)
  %i.fhz = load i64, ptr %i.aaw, align 8, !dbg !49442, !alias.scope !43821, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !41397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37147)
    #dbg_value(i64 %i.fhz, !41397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37147)
  %.not84.i = icmp eq i64 %i.fhz, 0, !dbg !49443
  br i1 %.not84.i, label %bb.bhq, label %bb.bhr, !dbg !49443

bb.bhb:                                           ; preds = %.loopexit6182
  %i.fia = load i8, ptr %.sroa.0322.0, align 8, !dbg !49444, !range !5099, !alias.scope !43820, !noundef !1852 ; 5 uses
  %i.fib = icmp ne i8 %i.fia, 10, !dbg !49444
  call void @llvm.assume(i1 %i.fib), !dbg !49444
  %i.fic = add nsw i8 %i.fia, -2, !dbg !49444
  %i.fid = icmp samesign ugt i8 %i.fia, 1, !dbg !49444
  %narrow.i = select i1 %i.fid, i8 %i.fic, i8 8, !dbg !49444
  switch i8 %narrow.i, label %bb.bha [
    i8 8, label %bb.bhc
    i8 9, label %bb.bhd
    i8 10, label %bb.bhd
    i8 11, label %bb.bhd
  ], !dbg !49445

bb.bhc:                                           ; preds = %bb.bhb
    #dbg_value(ptr %.sroa.0322.0, !41355, !DIExpression(), !37148)
    #dbg_value(ptr %.sroa.0322.0, !41402, !DIExpression(), !37150)
  %i.fie = trunc nuw i8 %i.fia to i1, !dbg !49446
  %.sroa.027.0.in.i.v.sroa.sel.v.sroa.sel.v = select i1 %i.fie, i64 1, i64 23, !dbg !49447
  %.sroa.027.0.in.i.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0322.0, i64 %.sroa.027.0.in.i.v.sroa.sel.v.sroa.sel.v, !dbg !49447
  %.sroa.027.0.i = load i8, ptr %.sroa.027.0.in.i.v.sroa.sel.v.sroa.sel, align 1, !dbg !49448, !range !3887, !alias.scope !43820, !noundef !1852
    #dbg_value(ptr undef, !41349, !DIExpression(), !37129)
  %i.fif = trunc nuw i8 %.sroa.027.0.i to i1, !dbg !49449
  br i1 %i.fif, label %bb.bha, label %bb.bhd, !dbg !49450

bb.bhd:                                           ; preds = %bb.bhc, %bb.bhb, %bb.bhb, %bb.bhb
  %i.fig = icmp samesign ult i8 %i.fia, 2, !dbg !49451
  br i1 %i.fig, label %bb.bhe, label %bb.bhf, !dbg !49452

bb.bhe:                                           ; preds = %bb.bhd
    #dbg_value(ptr %.sroa.0322.0, !41369, !DIExpression(), !37151)
    #dbg_value(ptr %2, !41391, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !37153)
    #dbg_value(ptr %2, !41393, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !37155)
    #dbg_value(ptr %2, !41395, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !37157)
  %i.fih = load i64, ptr %i.aaw, align 8, !dbg !49453, !alias.scope !43821, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !41397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37159)
    #dbg_value(i64 %i.fih, !41397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37159)
  %.not81.i = icmp eq i64 %i.fih, 0, !dbg !49454
  br i1 %.not81.i, label %bb.bhg, label %bb.bhh, !dbg !49454

bb.bhf:                                           ; preds = %bb.bhd
    #dbg_value(ptr %2, !41408, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !37161)
    #dbg_value(ptr poison, !41409, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37162)
    #dbg_value(i64 poison, !41409, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37162)
  store i64 0, ptr %i.aau, align 8, !dbg !49455, !alias.scope !43821
  %i.fii = invoke noundef ptr @_RINvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB6_5Value6formatINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aat)
          to label %.noexc unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49456 ; 2 uses

.noexc:                                           ; preds = %bb.bhf
    #dbg_value(ptr %i.fii, !41411, !DIExpression(), !37164)
  %.not77.i = icmp eq ptr %i.fii, null, !dbg !49457
  br i1 %.not77.i, label %bb.bhl, label %bb.bhk, !dbg !49458

bb.bhg:                                           ; preds = %bb.bhe
  %i.fij = load ptr, ptr %i.aaz, align 8, !dbg !49459, !noalias !43822, !nonnull !1852, !noundef !1852
  %i.fik = invoke { ptr, i64 } @_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0)
          to label %.noexc2783 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49460 ; 2 uses

.noexc2783:                                       ; preds = %bb.bhg
  %i.fil = extractvalue { ptr, i64 } %i.fik, 0, !dbg !49460
  %i.fim = extractvalue { ptr, i64 } %i.fik, 1, !dbg !49460
  %i.fin = invoke noundef ptr %i.fij(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fil, i64 noundef %i.fim, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1)
          to label %.noexc2784 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49459, !inline_history !32666 ; 2 uses

.noexc2784:                                       ; preds = %.noexc2783
    #dbg_value(ptr %i.fin, !41411, !DIExpression(), !37166)
  %.not82.i = icmp eq ptr %i.fin, null, !dbg !49461
  br i1 %.not82.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit.thread, label %bb.bhi, !dbg !49462

bb.bhh:                                           ; preds = %bb.bhe
  %i.fio = load ptr, ptr %i.aax, align 8, !dbg !49463, !alias.scope !43821, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fio, !41397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37159)
    #dbg_value(!DIArgList(ptr %i.fio, i64 %i.fih), !41399, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_constu, 24, DW_OP_minus, DW_OP_stack_value), !37170)
    #dbg_value(!DIArgList(ptr %i.fio, i64 %i.fih), !41370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_constu, 24, DW_OP_minus, DW_OP_stack_value), !37171)
  %i.fip = load ptr, ptr %i.aaz, align 8, !dbg !49464, !noalias !43822, !nonnull !1852, !noundef !1852
  %i.fiq = invoke { ptr, i64 } @_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0)
          to label %.noexc2785 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49465 ; 2 uses

.noexc2785:                                       ; preds = %bb.bhh
  %i.fir = getelementptr [24 x i8], ptr %i.fio, i64 %i.fih, !dbg !49466
    #dbg_value(ptr %i.fir, !41370, !DIExpression(DW_OP_constu, 24, DW_OP_minus, DW_OP_stack_value), !37171)
    #dbg_value(ptr %i.fir, !41399, !DIExpression(DW_OP_constu, 24, DW_OP_minus, DW_OP_stack_value), !37170)
  %i.fis = getelementptr i8, ptr %i.fir, i64 -24, !dbg !49466
    #dbg_value(ptr %i.fis, !41399, !DIExpression(), !37170)
    #dbg_value(ptr %i.fis, !41370, !DIExpression(), !37171)
  %i.fit = extractvalue { ptr, i64 } %i.fiq, 0, !dbg !49465
  %i.fiu = extractvalue { ptr, i64 } %i.fiq, 1, !dbg !49465
  %i.fiv = invoke noundef ptr %i.fip(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fit, i64 noundef %i.fiu, ptr noundef nonnull %i.fis, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %.noexc2786 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49464, !inline_history !32666 ; 2 uses

.noexc2786:                                       ; preds = %.noexc2785
    #dbg_value(ptr %i.fiv, !41411, !DIExpression(), !37173)
  %.not83.i = icmp eq ptr %i.fiv, null, !dbg !49467
  br i1 %.not83.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit.thread, label %bb.bhj, !dbg !49468

bb.bhi:                                           ; preds = %.noexc2784
    #dbg_value(ptr %i.fin, !41373, !DIExpression(), !37174)
    #dbg_value(ptr %i.fin, !41430, !DIExpression(), !37176)
    #dbg_value(ptr %i.fin, !41434, !DIExpression(), !37177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !49469, !noalias !43822
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bb, ptr noundef nonnull %i.fin)
          to label %.noexc2787 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49469

.noexc2787:                                       ; preds = %bb.bhi
  %.sroa.05505.0.copyload5512 = load i8, ptr %i.bb, align 8, !dbg !49470, !noalias !43823
    #dbg_value(i8 %.sroa.05505.0.copyload5512, !38122, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !43824)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5520, i64 71, i1 false), !dbg !49470, !noalias !43823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !49471, !noalias !43822
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit, !dbg !49472

bb.bhj:                                           ; preds = %.noexc2786
    #dbg_value(ptr %i.fiv, !41371, !DIExpression(), !37178)
    #dbg_value(ptr %i.fiv, !41430, !DIExpression(), !37180)
    #dbg_value(ptr %i.fiv, !41433, !DIExpression(), !37181)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !49473, !noalias !43822
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noundef nonnull %i.fiv)
          to label %.noexc2788 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49473

.noexc2788:                                       ; preds = %bb.bhj
  %.sroa.05505.0.copyload5511 = load i8, ptr %i.bc, align 8, !dbg !49474, !noalias !43823
    #dbg_value(i8 %.sroa.05505.0.copyload5511, !38122, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !43824)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5519, i64 71, i1 false), !dbg !49474, !noalias !43823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !49475, !noalias !43822
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit, !dbg !49472

bb.bhk:                                           ; preds = %.noexc
    #dbg_value(ptr %i.fii, !41375, !DIExpression(), !37182)
    #dbg_value(ptr %i.fii, !41430, !DIExpression(), !37184)
    #dbg_value(ptr %i.fii, !41435, !DIExpression(), !37185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !49476, !noalias !43822
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ba, ptr noundef nonnull %i.fii)
          to label %.noexc2789 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49476

.noexc2789:                                       ; preds = %bb.bhk
  %.sroa.05505.0.copyload5508 = load i8, ptr %i.ba, align 8, !dbg !49477, !noalias !43823
    #dbg_value(i8 %.sroa.05505.0.copyload5508, !38122, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !43824)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5516, i64 71, i1 false), !dbg !49477, !noalias !43823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !49478, !noalias !43822
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit, !dbg !49479

bb.bhl:                                           ; preds = %.noexc
    #dbg_value(ptr %2, !41446, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !37187)
    #dbg_value(ptr %2, !41448, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !37189)
    #dbg_value(ptr %2, !41450, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !37191)
  %i.fiw = load ptr, ptr %i.aav, align 8, !dbg !49480, !alias.scope !43821, !nonnull !1852, !noundef !1852 ; 2 uses
  %i.fix = load i64, ptr %i.aau, align 8, !dbg !49481, !alias.scope !43821, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fiw, !41377, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37195)
    #dbg_value(i64 %i.fix, !41377, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37195)
    #dbg_value(ptr %2, !41391, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !37197)
    #dbg_value(ptr %2, !41393, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !37199)
    #dbg_value(ptr %2, !41395, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !37201)
  %i.fiy = load i64, ptr %i.aaw, align 8, !dbg !49482, !alias.scope !43821, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !41397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37203)
    #dbg_value(i64 %i.fiy, !41397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37203)
  %.not78.i = icmp eq i64 %i.fiy, 0, !dbg !49483
  br i1 %.not78.i, label %bb.bhm, label %bb.bhn, !dbg !49483

bb.bhm:                                           ; preds = %bb.bhl
  %i.fiz = load ptr, ptr %i.aaz, align 8, !dbg !49484, !noalias !43825, !nonnull !1852, !noundef !1852
  %i.fja = invoke noundef ptr %i.fiz(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fiw, i64 noundef %i.fix, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1)
          to label %.noexc2790 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49484, !inline_history !32666 ; 2 uses

.noexc2790:                                       ; preds = %bb.bhm
    #dbg_value(ptr %i.fja, !41411, !DIExpression(), !37205)
  %.not79.i = icmp eq ptr %i.fja, null, !dbg !49485
  br i1 %.not79.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit.thread, label %bb.bho, !dbg !49486

bb.bhn:                                           ; preds = %bb.bhl
  %i.fjb = load ptr, ptr %i.aax, align 8, !dbg !49487, !alias.scope !43821, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fjb, !41397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37203)
  %i.fjc = getelementptr [24 x i8], ptr %i.fjb, i64 %i.fiy, !dbg !49488
  %i.fjd = getelementptr i8, ptr %i.fjc, i64 -24, !dbg !49488
    #dbg_value(ptr %i.fjd, !41400, !DIExpression(), !37209)
    #dbg_value(ptr %i.fjd, !41378, !DIExpression(), !37210)
  %i.fje = load ptr, ptr %i.aaz, align 8, !dbg !49489, !noalias !43825, !nonnull !1852, !noundef !1852
  %i.fjf = invoke noundef ptr %i.fje(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fiw, i64 noundef %i.fix, ptr noundef nonnull %i.fjd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %.noexc2791 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49489, !inline_history !32666 ; 2 uses

.noexc2791:                                       ; preds = %bb.bhn
    #dbg_value(ptr %i.fjf, !41411, !DIExpression(), !37212)
  %.not80.i = icmp eq ptr %i.fjf, null, !dbg !49490
  br i1 %.not80.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit.thread, label %bb.bhp, !dbg !49491

bb.bho:                                           ; preds = %.noexc2790
    #dbg_value(ptr %i.fja, !41381, !DIExpression(), !37213)
    #dbg_value(ptr %i.fja, !41430, !DIExpression(), !37215)
    #dbg_value(ptr %i.fja, !41437, !DIExpression(), !37216)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !49492, !noalias !43822
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ay, ptr noundef nonnull %i.fja)
          to label %.noexc2792 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49492

.noexc2792:                                       ; preds = %bb.bho
  %.sroa.05505.0.copyload5510 = load i8, ptr %i.ay, align 8, !dbg !49493, !noalias !43823
    #dbg_value(i8 %.sroa.05505.0.copyload5510, !38122, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !43824)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5518, i64 71, i1 false), !dbg !49493, !noalias !43823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !49494, !noalias !43822
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit, !dbg !49495

bb.bhp:                                           ; preds = %.noexc2791
    #dbg_value(ptr %i.fjf, !41379, !DIExpression(), !37217)
    #dbg_value(ptr %i.fjf, !41430, !DIExpression(), !37219)
    #dbg_value(ptr %i.fjf, !41436, !DIExpression(), !37220)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !49496, !noalias !43822
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.az, ptr noundef nonnull %i.fjf)
          to label %.noexc2793 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49496

.noexc2793:                                       ; preds = %bb.bhp
  %.sroa.05505.0.copyload5509 = load i8, ptr %i.az, align 8, !dbg !49497, !noalias !43823
    #dbg_value(i8 %.sroa.05505.0.copyload5509, !38122, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !43824)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5517, i64 71, i1 false), !dbg !49497, !noalias !43823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !49498, !noalias !43822
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit, !dbg !49495

bb.bhq:                                           ; preds = %bb.bha
  %i.fjg = invoke noundef ptr @_RINvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB6_5Value6formatNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0, ptr noalias nofree noundef nonnull %3)
          to label %.noexc2794 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49499 ; 2 uses

.noexc2794:                                       ; preds = %bb.bhq
    #dbg_value(ptr %i.fjg, !41411, !DIExpression(), !37222)
  %.not85.i = icmp eq ptr %i.fjg, null, !dbg !49500
  br i1 %.not85.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit.thread, label %bb.bhs, !dbg !49501

bb.bhr:                                           ; preds = %bb.bha
  %i.fjh = load ptr, ptr %i.aax, align 8, !dbg !49502, !alias.scope !43821, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fjh, !41397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37147)
  %i.fji = getelementptr [24 x i8], ptr %i.fjh, i64 %i.fhz, !dbg !49503
  %i.fjj = getelementptr i8, ptr %i.fji, i64 -24, !dbg !49503
    #dbg_value(ptr %i.fjj, !41398, !DIExpression(), !37226)
    #dbg_value(ptr %i.fjj, !41364, !DIExpression(), !37227)
  %i.fjk = invoke noundef ptr @_RINvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB6_5Value6formatINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fjj)
          to label %.noexc2795 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49504 ; 2 uses

.noexc2795:                                       ; preds = %bb.bhr
    #dbg_value(ptr %i.fjk, !41411, !DIExpression(), !37229)
  %.not86.i = icmp eq ptr %i.fjk, null, !dbg !49505
  br i1 %.not86.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit.thread, label %bb.bht, !dbg !49506

bb.bhs:                                           ; preds = %.noexc2794
    #dbg_value(ptr %i.fjg, !41367, !DIExpression(), !37230)
    #dbg_value(ptr %i.fjg, !41430, !DIExpression(), !37232)
    #dbg_value(ptr %i.fjg, !41432, !DIExpression(), !37233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !49507, !noalias !43822
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bd, ptr noundef nonnull %i.fjg)
          to label %.noexc2796 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49507

.noexc2796:                                       ; preds = %bb.bhs
  %.sroa.05505.0.copyload5507 = load i8, ptr %i.bd, align 8, !dbg !49508, !noalias !43823
    #dbg_value(i8 %.sroa.05505.0.copyload5507, !38122, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !43824)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5515, i64 71, i1 false), !dbg !49508, !noalias !43823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !49509, !noalias !43822
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit, !dbg !49479

bb.bht:                                           ; preds = %.noexc2795
    #dbg_value(ptr %i.fjk, !41365, !DIExpression(), !37234)
    #dbg_value(ptr %i.fjk, !41430, !DIExpression(), !37236)
    #dbg_value(ptr %i.fjk, !41431, !DIExpression(), !37237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !49510, !noalias !43822
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.be, ptr noundef nonnull %i.fjk)
          to label %.noexc2797 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49510

.noexc2797:                                       ; preds = %bb.bht
  %.sroa.05505.0.copyload5506 = load i8, ptr %i.be, align 8, !dbg !49511, !noalias !43823
    #dbg_value(i8 %.sroa.05505.0.copyload5506, !38122, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !43824)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5514, i64 71, i1 false), !dbg !49511, !noalias !43823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !49512, !noalias !43822
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit, !dbg !49479

.lr.ph10376.a:                                    ; preds = %bb.bgx
  %i.fjl = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !49513
  %i.fjm = load ptr, ptr %i.fjl, align 8, !dbg !49513, !nonnull !1852, !noundef !1852 ; 3 uses
    #dbg_value(ptr %i.fjm, !40324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40375)
    #dbg_value(ptr %i.fjm, !40330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40378)
    #dbg_value(i64 %i.fho, !43622, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43835)
    #dbg_value(i64 %i.fho, !43632, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43838)
    #dbg_value(ptr %i.fjm, !43630, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !43839)
    #dbg_value(ptr %i.fjm, !43619, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !43840)
    #dbg_value(i64 %i.fho, !43630, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !43839)
    #dbg_value(i64 %i.fho, !43619, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !43840)
    #dbg_value(ptr %i.fjm, !43623, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !43841)
    #dbg_value(ptr %i.fjm, !43633, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !43838)
  %.idx10384 = mul nuw i64 %i.fho, 24, !dbg !49514
  %i.fjn = getelementptr i8, ptr %i.fjm, i64 %.idx10384, !dbg !49514 ; 2 uses
    #dbg_value(ptr %i.fjm, !38102, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !43842)
    #dbg_value(ptr %i.fjn, !38102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43842)
    #dbg_value(i64 0, !38102, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43842)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fjn) ]
  %.sroa.05502.010371 = getelementptr inbounds nuw i8, ptr %i.fjm, i64 24, !dbg !49515
  br label %bb.bhw, !dbg !49516

bb.bhu:                                           ; preds = %bb.bgx
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #27
          to label %bb.fy unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49517

bb.bhv:                                           ; preds = %bb.bhy
  %.sroa.05502.0 = getelementptr inbounds nuw i8, ptr %.sroa.05502.010375, i64 24, !dbg !49515 ; 2 uses
    #dbg_value(ptr %.sroa.05502.0, !38102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43842)
    #dbg_value(i64 %i.fju, !38102, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43842)
    #dbg_value(ptr %i.fjt, !38101, !DIExpression(), !43818)
    #dbg_value(ptr %i.fjt, !38100, !DIExpression(), !43819)
    #dbg_value(ptr undef, !4334, !DIExpression(), !29917)
    #dbg_value(ptr undef, !4302, !DIExpression(), !29916)
    #dbg_value(ptr %.sroa.05502.0, !4313, !DIExpression(), !37238)
    #dbg_value(ptr %i.fjn, !4314, !DIExpression(), !37239)
    #dbg_value(ptr poison, !7627, !DIExpression(), !37241)
    #dbg_value(ptr poison, !7628, !DIExpression(), !37242)
  %i.fjo = icmp eq ptr %.sroa.05502.0, %i.fjn, !dbg !49518
  br i1 %i.fjo, label %.loopexit6182, label %bb.bhw, !dbg !49516

bb.bhw:                                           ; preds = %.lr.ph10376.a, %bb.bhv
  %.sroa.05502.010375 = phi ptr [ %.sroa.05502.010371, %.lr.ph10376.a ], [ %.sroa.05502.0, %bb.bhv ] ; 2 uses
  %.sroa.0322.110374 = phi ptr [ %i.cl, %.lr.ph10376.a ], [ %i.fjt, %bb.bhv ] ; 2 uses
  %.pn10373 = phi ptr [ %i.fjm, %.lr.ph10376.a ], [ %.sroa.05502.010375, %bb.bhv ] ; 4 uses
  %.sroa.85504.010372 = phi i64 [ 0, %.lr.ph10376.a ], [ %i.fju, %bb.bhv ]
    #dbg_value(ptr %.sroa.0322.110374, !38101, !DIExpression(), !43818)
    #dbg_value(i64 %.sroa.85504.010372, !38102, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43842)
    #dbg_value(ptr %.sroa.05502.010375, !38102, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !43842)
    #dbg_value(ptr %.sroa.05502.010375, !4335, !DIExpression(), !37243)
    #dbg_value(i64 %.sroa.85504.010372, !4338, !DIExpression(), !37244)
    #dbg_value(i64 %.sroa.85504.010372, !38102, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !43842)
    #dbg_value(i64 %.sroa.85504.010372, !38103, !DIExpression(), !43843)
    #dbg_value(ptr %.sroa.05502.010375, !38104, !DIExpression(), !43843)
    #dbg_value(ptr %.sroa.05502.010375, !40464, !DIExpression(), !43845)
    #dbg_value(ptr %.sroa.05502.010375, !40468, !DIExpression(), !43848)
    #dbg_value(ptr %.sroa.05502.010375, !40464, !DIExpression(), !43850)
    #dbg_value(ptr %.sroa.05502.010375, !40468, !DIExpression(), !43853)
  %i.fjp = getelementptr inbounds nuw i8, ptr %.pn10373, i64 32, !dbg !49519
  %i.fjq = load ptr, ptr %i.fjp, align 8, !dbg !49519, !nonnull !1852, !noundef !1852
  %i.fjr = getelementptr inbounds nuw i8, ptr %.pn10373, i64 40, !dbg !49520
  %i.fjs = load i64, ptr %i.fjr, align 8, !dbg !49520, !noundef !1852
  %i.fjt = invoke noundef align 8 ptr @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value8get_attr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.110374, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fjq, i64 noundef %i.fjs)
          to label %bb.bhy unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49521 ; 3 uses

_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit: ; preds = %.noexc2797, %.noexc2796, %.noexc2793, %.noexc2792, %.noexc2789, %.noexc2788, %.noexc2787
  %.sroa.05505.0 = phi i8 [ %.sroa.05505.0.copyload5508, %.noexc2789 ], [ %.sroa.05505.0.copyload5507, %.noexc2796 ], [ %.sroa.05505.0.copyload5506, %.noexc2797 ], [ %.sroa.05505.0.copyload5512, %.noexc2787 ], [ %.sroa.05505.0.copyload5511, %.noexc2788 ], [ %.sroa.05505.0.copyload5510, %.noexc2792 ], [ %.sroa.05505.0.copyload5509, %.noexc2793 ], !dbg !49522 ; 2 uses
    #dbg_value(i8 %.sroa.05505.0, !38122, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !43824)
  %.not2499 = icmp eq i8 %.sroa.05505.0, -1, !dbg !49523
  br i1 %.not2499, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit.thread, label %bb.bhx, !dbg !49524

bb.bhx:                                           ; preds = %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit
    #dbg_value(i8 %.sroa.05505.0, !38121, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !43864)
  %.sroa.45584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !49525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.45584.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, i64 71, i1 false), !dbg !49526
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.135513), !dbg !49527
    #dbg_value(i8 %.sroa.05505.0, !38107, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !43865)
    #dbg_value(i8 %.sroa.05505.0, !38111, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !43866)
    #dbg_value(i8 %.sroa.05505.0, !38110, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !43867)
  store i8 %.sroa.05505.0, ptr %0, align 8, !dbg !49525
  br label %bb.bid, !dbg !49528

_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit.thread: ; preds = %.noexc2784, %.noexc2786, %.noexc2790, %.noexc2791, %.noexc2794, %.noexc2795, %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.135513), !dbg !49527
    #dbg_value(ptr %i.cl, !5276, !DIExpression(), !37246)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl), !dbg !49529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !dbg !49530
  br label %.outer, !dbg !49531

bb.bhy:                                           ; preds = %bb.bhw
  %i.fju = add i64 %.sroa.85504.010372, 1, !dbg !49532 ; 3 uses
    #dbg_value(i64 %i.fju, !38102, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43842)
  %.not2500 = icmp eq ptr %i.fjt, null, !dbg !49533
  br i1 %.not2500, label %bb.bhz, label %bb.bhv, !dbg !49534

bb.bhz:                                           ; preds = %bb.bhy
  %i.fjv = getelementptr i8, ptr %i.aic, i64 16
  %i.fjw = getelementptr inbounds nuw i8, ptr %.pn10373, i64 32
  %i.fjx = getelementptr inbounds nuw i8, ptr %.pn10373, i64 40
  %.val3170 = load i64, ptr %i.fjv, align 8, !dbg !49535, !noundef !1852
    #dbg_value(ptr poison, !7565, !DIExpression(), !37249)
    #dbg_value(i64 %i.fju, !7585, !DIExpression(), !37251)
    #dbg_value(i64 %i.fju, !7583, !DIExpression(), !37252)
    #dbg_value(i64 %i.fju, !7590, !DIExpression(), !37254)
    #dbg_value(i64 %i.fju, !7596, !DIExpression(), !37256)
    #dbg_value(ptr poison, !7581, !DIExpression(), !37252)
    #dbg_value(i64 poison, !7582, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !37252)
    #dbg_value(ptr poison, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37258)
    #dbg_value(ptr poison, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37260)
    #dbg_value(i64 %.val3170, !7602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37258)
    #dbg_value(i64 %.val3170, !7605, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37260)
  %i.fjy = and i64 %.sroa.0210.07551, 4294967295, !dbg !49536 ; 2 uses
    #dbg_value(i64 %i.fjy, !7603, !DIExpression(), !37258)
    #dbg_value(i64 %i.fjy, !7606, !DIExpression(), !37260)
  %i.fjz = icmp ugt i64 %.val3170, %i.fjy, !dbg !49537
  br i1 %i.fjz, label %bb.bia, label %.invoke9537, !dbg !49537

bb.bia:                                           ; preds = %bb.bhz
  %i.fka = getelementptr i8, ptr %i.aic, i64 8
  %.val3169 = load ptr, ptr %i.fka, align 8, !dbg !49535, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %.val3169, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37258)
    #dbg_value(ptr %.val3169, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37260)
  %i.fkb = getelementptr inbounds nuw [56 x i8], ptr %.val3169, i64 %i.fjy, !dbg !49538 ; 2 uses
    #dbg_value(ptr %i.fkb, !7574, !DIExpression(), !37249)
    #dbg_value(ptr undef, !7585, !DIExpression(DW_OP_deref), !37251)
    #dbg_value(ptr undef, !7565, !DIExpression(), !37249)
    #dbg_value(ptr %i.fkb, !7575, !DIExpression(), !37261)
    #dbg_value(ptr %i.fkb, !7588, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !37262)
    #dbg_value(ptr %i.fkb, !7608, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !37264)
    #dbg_value(ptr %i.fkb, !7610, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !37266)
    #dbg_value(ptr %i.fkb, !7613, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !37268)
  %i.fkc = getelementptr inbounds nuw i8, ptr %i.fkb, i64 48, !dbg !49539
  %i.fkd = load i64, ptr %i.fkc, align 8, !dbg !49539, !noundef !1852
    #dbg_value(ptr poison, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37254)
    #dbg_value(ptr poison, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37256)
    #dbg_value(i64 %i.fkd, !7593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37254)
    #dbg_value(i64 %i.fkd, !7599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37256)
  %i.fke = icmp ult i64 %i.fju, %i.fkd, !dbg !49540
  br i1 %i.fke, label %bb.bib, label %.invoke9537, !dbg !49540

bb.bib:                                           ; preds = %bb.bia
  %i.fkf = getelementptr inbounds nuw i8, ptr %i.fkb, i64 40, !dbg !49541
  %i.fkg = load ptr, ptr %i.fkf, align 8, !dbg !49541, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fkg, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37254)
    #dbg_value(ptr %i.fkg, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37256)
  %i.fkh = getelementptr inbounds nuw [48 x i8], ptr %i.fkg, i64 %i.fju, !dbg !49542
    #dbg_value(ptr %i.fkh, !40301, !DIExpression(), !40380)
    #dbg_value(ptr %i.fkh, !38106, !DIExpression(), !43869)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !dbg !49543
  %i.fki = load ptr, ptr %i.fjw, align 8, !dbg !49544, !nonnull !1852, !noundef !1852
  %i.fkj = load i64, ptr %i.fjx, align 8, !dbg !49545, !noundef !1852
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine21undefined_field_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.110374, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fki, i64 noundef %i.fkj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fkh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aic)
          to label %bb.bic unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49546

bb.bic:                                           ; preds = %bb.bib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cj, i64 72, i1 false), !dbg !49547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !dbg !49548
  br label %bb.bid, !dbg !49549

bb.bid:                                           ; preds = %bb.bhx, %bb.bic, %bb.bih
    #dbg_value(ptr %i.cl, !5276, !DIExpression(), !37273)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl), !dbg !49550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !dbg !49530
  br label %bb.bii, !dbg !44287

bb.bie:                                           ; preds = %bb.bgz
  %i.fkk = getelementptr inbounds nuw i8, ptr %i.fhu, i64 40, !dbg !49551
  %i.fkl = load ptr, ptr %i.fkk, align 8, !dbg !49551, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fkl, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37108)
    #dbg_value(ptr %i.fkl, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37110)
    #dbg_value(ptr %i.fkl, !40301, !DIExpression(), !40362)
    #dbg_value(ptr %i.fkl, !38098, !DIExpression(), !43881)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !dbg !49552
  %i.fkm = load i64, ptr %i.fgv, align 8, !dbg !49553, !noundef !1852
    #dbg_value(ptr poison, !40274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40367)
    #dbg_value(ptr poison, !40280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40370)
    #dbg_value(i64 %i.fkm, !40274, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40367)
    #dbg_value(i64 %i.fkm, !40280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40370)
  %.not2503 = icmp eq i64 %i.fkm, 0, !dbg !49554
  br i1 %.not2503, label %bb.big, label %bb.bif, !dbg !49554

.invoke9537:                                      ; preds = %bb.bgz, %bb.bgy, %bb.bia, %bb.bhz
  %i.fkn = phi ptr [ @104, %bb.bia ], [ @104, %bb.bhz ], [ @106, %bb.bgy ], [ @106, %bb.bgz ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fkn) #27
          to label %.cont9538 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49555

.cont9538:                                        ; preds = %.invoke9537
  unreachable

bb.bif:                                           ; preds = %bb.bie
  %i.fko = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !49556
  %i.fkp = load ptr, ptr %i.fko, align 8, !dbg !49556, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fkp, !40274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40367)
    #dbg_value(ptr %i.fkp, !40280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40370)
    #dbg_value(ptr %i.fkp, !40464, !DIExpression(), !43890)
    #dbg_value(ptr %i.fkp, !40468, !DIExpression(), !43893)
  %i.fkq = getelementptr inbounds nuw i8, ptr %i.fkp, i64 8, !dbg !49557
  %i.fkr = load ptr, ptr %i.fkq, align 8, !dbg !49557, !nonnull !1852, !noundef !1852
  %i.fks = getelementptr inbounds nuw i8, ptr %i.fkp, i64 16, !dbg !49558
  %i.fkt = load i64, ptr %i.fks, align 8, !dbg !49558, !noundef !1852
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine19undefined_var_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aic, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fkr, i64 noundef %i.fkt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fkl)
          to label %bb.bih unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49559

bb.big:                                           ; preds = %bb.bie
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #27
          to label %bb.fy unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !49554

bb.bih:                                           ; preds = %bb.bif
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ck, i64 72, i1 false), !dbg !49560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !dbg !49561
  br label %bb.bid, !dbg !49562

bb.bii:                                           ; preds = %bb.gg, %bb.hg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit3609, %bb.nj, %_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk8get_span.exit.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1d_5ValueEEEB1f_.exit, %bb.qw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1c_.exit, %bb.up, %bb.ym, %bb.aak, %bb.acl, %bb.aem, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4088, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4118, %bb.ail, %bb.aji, %bb.akk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4193, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4211, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4229, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4247, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4265, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4281, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4299, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4316, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4331, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4346, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4361, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4428, %bb.bei, %bb.bgm, %bb.bid, %bb.d
  ret void, !dbg !43915
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(264) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !50207 {
bb.a:
  %.sroa.7.i.i4448 = alloca [6 x i8], align 2     ; 4 uses
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 6 uses
  %i.s = alloca [40 x i8], align 8                ; 9 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 8                ; 9 uses
  %i.w = alloca [40 x i8], align 8                ; 12 uses
  %.sroa.73.i4057 = alloca [6 x i8], align 2      ; 5 uses
  %i.x = alloca [40 x i8], align 8                ; 6 uses
  %i.y = alloca [40 x i8], align 8                ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 6 uses
  %i.aa = alloca [40 x i8], align 8               ; 6 uses
  %i.ab = alloca [40 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [40 x i8], align 8               ; 12 uses
  %.sroa.73.i = alloca [6 x i8], align 2          ; 5 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [40 x i8], align 8               ; 8 uses
  %i.ag = alloca [64 x i8], align 16              ; 8 uses
  %i.ah = alloca [64 x i8], align 16              ; 8 uses
  %i.ai = alloca [40 x i8], align 8               ; 8 uses
  %i.aj = alloca [40 x i8], align 8               ; 8 uses
  %i.ak = alloca [40 x i8], align 8               ; 8 uses
  %i.al = alloca [40 x i8], align 8               ; 6 uses
  %i.am = alloca [40 x i8], align 8               ; 8 uses
  %i.an = alloca [40 x i8], align 8               ; 12 uses
  %.sroa.7.i.i3506 = alloca [6 x i8], align 2     ; 4 uses
  %i.ao = alloca [40 x i8], align 8               ; 12 uses
  %.sroa.7.i.i = alloca [6 x i8], align 2         ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [48 x i8], align 8               ; 6 uses
  %i.ar = alloca [72 x i8], align 8               ; 5 uses
  %i.as = alloca [72 x i8], align 8               ; 5 uses
  %i.at = alloca [72 x i8], align 8               ; 5 uses
  %i.au = alloca [72 x i8], align 8               ; 5 uses
  %i.av = alloca [72 x i8], align 8               ; 5 uses
  %i.aw = alloca [72 x i8], align 8               ; 5 uses
  %i.ax = alloca [72 x i8], align 8               ; 5 uses
  %i.ay = alloca [72 x i8], align 8               ; 5 uses
  %i.az = alloca [72 x i8], align 8               ; 5 uses
  %i.ba = alloca [72 x i8], align 8               ; 5 uses
  %i.bb = alloca [72 x i8], align 8               ; 5 uses
  %i.bc = alloca [72 x i8], align 8               ; 5 uses
  %i.bd = alloca [72 x i8], align 8               ; 5 uses
  %i.be = alloca [72 x i8], align 8               ; 5 uses
  %i.bf = alloca [48 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !58478, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !58488)
    #dbg_declare(ptr poison, !58489, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !58500)
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [72 x i8], align 8               ; 4 uses
  %i.bi = alloca [40 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !58501, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !58508)
    #dbg_declare(ptr poison, !58505, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !58509)
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !58510, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !58523)
    #dbg_declare(ptr poison, !58510, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !58523)
    #dbg_declare(ptr poison, !58510, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !58523)
    #dbg_declare(ptr poison, !4211, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !50240)
    #dbg_declare(ptr poison, !58519, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !58526)
  %i.bk = alloca [40 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !58527, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !58539)
    #dbg_declare(ptr poison, !58527, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !58539)
    #dbg_declare(ptr poison, !58527, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !58539)
  %i.bl = alloca [40 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !58540, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !58552)
    #dbg_declare(ptr poison, !58540, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !58552)
    #dbg_declare(ptr poison, !58540, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !58552)
  %i.bm = alloca [40 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !58514, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !58554)
    #dbg_declare(ptr poison, !58514, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !58554)
    #dbg_declare(ptr poison, !58514, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !58554)
    #dbg_declare(ptr poison, !4211, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !50250)
    #dbg_declare(ptr poison, !58513, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !58556)
  %i.bn = alloca [40 x i8], align 8               ; 4 uses
  %i.bo = alloca [72 x i8], align 8               ; 4 uses
  %i.bp = alloca [40 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !58504, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !58558)
    #dbg_declare(ptr poison, !58503, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !58559)
    #dbg_declare(ptr poison, !58483, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !58562)
    #dbg_declare(ptr poison, !58494, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !58564)
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !58565, !DIExpression(), !58573)
    #dbg_value(ptr poison, !58584, !DIExpression(), !58588)
  %i.bt = alloca [24 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !58589, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !58598)
  %i.bu = alloca [48 x i8], align 16              ; 10 uses
  %i.bv = alloca [80 x i8], align 16              ; 4 uses
    #dbg_declare(ptr poison, !58592, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !58604)
  %i.bw = alloca [48 x i8], align 16              ; 10 uses
  %i.bx = alloca [64 x i8], align 8               ; 4 uses
    #dbg_value(ptr poison, !58565, !DIExpression(), !58609)
    #dbg_value(ptr poison, !58618, !DIExpression(), !58620)
    #dbg_value(ptr poison, !58621, !DIExpression(), !58624)
  %i.by = alloca [80 x i8], align 16              ; 4 uses
  %i.bz = alloca [24 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !58480, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !58627)
    #dbg_declare(ptr poison, !58492, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !58629)
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [24 x i8], align 8               ; 6 uses
  %i.cg = alloca [24 x i8], align 8               ; 6 uses
  %i.ch = alloca [24 x i8], align 8               ; 6 uses
  %i.ci = alloca [24 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !58479, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !58630)
    #dbg_declare(ptr poison, !58475, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !58631)
  %.sroa.135513 = alloca [71 x i8], align 1       ; 11 uses
    #dbg_declare(ptr %.sroa.135513, !58490, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !58632)
  %i.cj = alloca [72 x i8], align 8               ; 4 uses
    #dbg_value(ptr poison, !4302, !DIExpression(), !50278)
    #dbg_value(ptr poison, !4334, !DIExpression(), !50279)
  %i.ck = alloca [72 x i8], align 8               ; 4 uses
  %i.cl = alloca [24 x i8], align 8               ; 11 uses
  %.sroa.85490 = alloca [6 x i8], align 2         ; 6 uses
  %i.cm = alloca [72 x i8], align 8               ; 4 uses
  %i.cn = alloca [72 x i8], align 8               ; 4 uses
    #dbg_value(ptr poison, !4302, !DIExpression(), !50282)
    #dbg_value(ptr poison, !4334, !DIExpression(), !50283)
  %i.co = alloca [72 x i8], align 8               ; 4 uses
  %i.cp = alloca [24 x i8], align 8               ; 18 uses
  %i.cq = alloca [24 x i8], align 8               ; 4 uses
  %i.cr = alloca [144 x i8], align 8              ; 5 uses
  %i.cs = alloca [32 x i8], align 8               ; 7 uses
  %i.ct = alloca [56 x i8], align 8               ; 5 uses
  %i.cu = alloca [48 x i8], align 8               ; 4 uses
  %i.cv = alloca [72 x i8], align 8               ; 6 uses
  %i.cw = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.05472.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65474 = alloca [7 x i8], align 1         ; 4 uses
  %i.cx = alloca [12 x i8], align 8               ; 8 uses
  %i.cy = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.05462.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65464 = alloca [7 x i8], align 1         ; 4 uses
  %.sroa.55468 = alloca [3 x i8], align 1         ; 4 uses
    #dbg_declare(ptr %.sroa.55468, !4349, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !50285)
    #dbg_declare(ptr %.sroa.55468, !58440, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !58633)
  %i.cz = alloca [24 x i8], align 8               ; 6 uses
  %i.da = alloca [24 x i8], align 8               ; 4 uses
  %i.db = alloca [144 x i8], align 8              ; 5 uses
  %i.dc = alloca [32 x i8], align 8               ; 7 uses
  %i.dd = alloca [56 x i8], align 8               ; 5 uses
  %i.de = alloca [48 x i8], align 8               ; 4 uses
  %i.df = alloca [72 x i8], align 8               ; 6 uses
  %i.dg = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.05445 = alloca [32 x i8], align 8        ; 4 uses
  %i.dh = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.05442.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65444 = alloca [7 x i8], align 1         ; 4 uses
  %i.di = alloca [12 x i8], align 8               ; 7 uses
  %i.dj = alloca [24 x i8], align 8               ; 8 uses
  %i.dk = alloca [32 x i8], align 8               ; 7 uses
  %i.dl = alloca [24 x i8], align 8               ; 2 uses
  %i.dm = alloca [24 x i8], align 8               ; 4 uses
  %i.dn = alloca [24 x i8], align 8               ; 9 uses
  %i.do = alloca [24 x i8], align 8               ; 3 uses
  %.sroa.05431 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50288)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50288)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50289)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50289)
  %i.dp = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.05423 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50288)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50288)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50289)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50289)
  %i.dq = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.05411 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50292)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50292)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50293)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50293)
  %i.dr = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.05403 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50292)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50292)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50293)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50293)
  %i.ds = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.05391 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50296)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50296)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50297)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50297)
  %i.dt = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.05383 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50296)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50296)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50297)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50297)
  %i.du = alloca [24 x i8], align 8               ; 6 uses
  %i.dv = alloca [32 x i8], align 8               ; 7 uses
  %i.dw = alloca [16 x i8], align 8               ; 5 uses
  %i.dx = alloca [16 x i8], align 8               ; 5 uses
  %i.dy = alloca [24 x i8], align 8               ; 2 uses
  %i.dz = alloca [144 x i8], align 8              ; 5 uses
  %i.ea = alloca [32 x i8], align 8               ; 7 uses
  %i.eb = alloca [56 x i8], align 8               ; 5 uses
  %i.ec = alloca [48 x i8], align 8               ; 4 uses
  %i.ed = alloca [12 x i8], align 4               ; 8 uses
  %.sroa.05363 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50300)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50300)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50301)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50301)
  %i.ee = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.05355 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50300)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50300)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50301)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50301)
  %i.ef = alloca [24 x i8], align 8               ; 9 uses
  %i.eg = alloca [32 x i8], align 8               ; 7 uses
  %i.eh = alloca [16 x i8], align 8               ; 5 uses
  %i.ei = alloca [16 x i8], align 8               ; 5 uses
  %i.ej = alloca [24 x i8], align 8               ; 2 uses
  %i.ek = alloca [144 x i8], align 8              ; 5 uses
  %i.el = alloca [32 x i8], align 8               ; 7 uses
  %i.em = alloca [56 x i8], align 8               ; 5 uses
  %i.en = alloca [48 x i8], align 8               ; 4 uses
  %i.eo = alloca [12 x i8], align 4               ; 8 uses
  %.sroa.05335 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50304)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50304)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50305)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50305)
  %i.ep = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.05327 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50304)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50304)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50305)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50305)
  %i.eq = alloca [24 x i8], align 8               ; 9 uses
  %i.er = alloca [32 x i8], align 8               ; 7 uses
  %i.es = alloca [16 x i8], align 8               ; 5 uses
  %i.et = alloca [16 x i8], align 8               ; 5 uses
  %i.eu = alloca [24 x i8], align 8               ; 2 uses
  %i.ev = alloca [144 x i8], align 8              ; 5 uses
  %i.ew = alloca [32 x i8], align 8               ; 7 uses
  %i.ex = alloca [56 x i8], align 8               ; 5 uses
  %i.ey = alloca [48 x i8], align 8               ; 4 uses
  %i.ez = alloca [12 x i8], align 4               ; 8 uses
  %.sroa.05307 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50308)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50308)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50309)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50309)
  %i.fa = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.05299 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50308)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50308)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50309)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50309)
  %i.fb = alloca [24 x i8], align 8               ; 9 uses
  %i.fc = alloca [32 x i8], align 8               ; 7 uses
  %i.fd = alloca [16 x i8], align 8               ; 5 uses
  %i.fe = alloca [16 x i8], align 8               ; 5 uses
  %i.ff = alloca [24 x i8], align 8               ; 2 uses
  %i.fg = alloca [144 x i8], align 8              ; 5 uses
  %i.fh = alloca [32 x i8], align 8               ; 7 uses
  %i.fi = alloca [56 x i8], align 8               ; 5 uses
  %i.fj = alloca [48 x i8], align 8               ; 4 uses
  %i.fk = alloca [12 x i8], align 4               ; 8 uses
  %.sroa.05279 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50312)
    #dbg_value(ptr poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50312)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50313)
    #dbg_value(ptr poison, !4371, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50313)
  %i.fl = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.05271 = alloca [24 x i8], align 8        ; 4 uses
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50312)
    #dbg_value(ptr poison, !4364, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50312)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50313)
    #dbg_value(ptr poison, !4372, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50313)
  %i.fm = alloca [24 x i8], align 8               ; 9 uses
  %i.fn = alloca [144 x i8], align 8              ; 5 uses
  %i.fo = alloca [32 x i8], align 8               ; 7 uses
  %i.fp = alloca [56 x i8], align 8               ; 5 uses
  %i.fq = alloca [48 x i8], align 8               ; 4 uses
  %i.fr = alloca [144 x i8], align 8              ; 5 uses
  %i.fs = alloca [32 x i8], align 8               ; 7 uses
  %i.ft = alloca [56 x i8], align 8               ; 5 uses
  %i.fu = alloca [48 x i8], align 8               ; 4 uses
  %i.fv = alloca [24 x i8], align 8               ; 8 uses
  %i.fw = alloca [72 x i8], align 8               ; 6 uses
  %i.fx = alloca [72 x i8], align 8               ; 7 uses
  %i.fy = alloca [12 x i8], align 4               ; 8 uses
  %i.fz = alloca [16 x i8], align 8               ; 5 uses
  %i.ga = alloca [16 x i8], align 8               ; 5 uses
  %i.gb = alloca [24 x i8], align 8               ; 2 uses
  %i.gc = alloca [144 x i8], align 8              ; 5 uses
  %i.gd = alloca [32 x i8], align 8               ; 7 uses
  %i.ge = alloca [56 x i8], align 8               ; 5 uses
  %i.gf = alloca [48 x i8], align 8               ; 4 uses
  %i.gg = alloca [16 x i8], align 8               ; 5 uses
  %i.gh = alloca [16 x i8], align 8               ; 5 uses
  %i.gi = alloca [24 x i8], align 8               ; 2 uses
  %i.gj = alloca [144 x i8], align 8              ; 5 uses
  %i.gk = alloca [32 x i8], align 8               ; 7 uses
  %i.gl = alloca [56 x i8], align 8               ; 5 uses
  %i.gm = alloca [48 x i8], align 8               ; 4 uses
  %.sroa.05233.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65235 = alloca [7 x i8], align 1         ; 4 uses
  %i.gn = alloca [12 x i8], align 8               ; 7 uses
  %i.go = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.05230.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.65232 = alloca [7 x i8], align 1         ; 4 uses
  %i.gp = alloca [12 x i8], align 8               ; 8 uses
  %i.gq = alloca [24 x i8], align 8               ; 10 uses
  %i.gr = alloca [144 x i8], align 8              ; 5 uses
  %i.gs = alloca [32 x i8], align 8               ; 7 uses
  %i.gt = alloca [56 x i8], align 8               ; 5 uses
  %i.gu = alloca [48 x i8], align 8               ; 4 uses
end_hunk_4
begin_hunk_5_@_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !69598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !dbg !69599
    #dbg_value(ptr %i.cy, !5276, !DIExpression(), !57221)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy), !dbg !69600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !69599
  br label %.outer, !dbg !69599

bb.bdz:                                           ; preds = %bb.bdt
    #dbg_value(ptr %i.far, !58445, !DIExpression(), !63871)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !dbg !69601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !69602
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk11expand_span(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.far, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cx)
          to label %bb.beb unwind label %bb.bea, !dbg !69603

bb.bea:                                           ; preds = %.invoke9533, %bb.bee, %bb.bed, %bb.bec, %bb.bdz
  %i.fba = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !69604

.body:                                            ; preds = %bb.beg, %bb.bea
  %eh.lpad-body = phi { ptr, i32 } [ %i.fba, %bb.bea ], [ %i.fbo, %bb.beg ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.cv) #24
          to label %.body4439 unwind label %bb.gi, !dbg !69604

bb.beb:                                           ; preds = %bb.bdz
  %i.fbb = load i64, ptr %i.ct, align 8, !dbg !69605, !range !5411, !noundef !1852
  %i.fbc = trunc nuw i64 %i.fbb to i1, !dbg !69606
  br i1 %i.fbc, label %bb.bec, label %.invoke9533, !dbg !69606, !prof !5801

bb.bec:                                           ; preds = %bb.beb
  %i.fbd = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !69607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %i.fbd, i64 48, i1 false), !dbg !69607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !69608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !dbg !69609
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine13report_target(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.far)
          to label %bb.bed unwind label %bb.bea, !dbg !69610

.invoke9533:                                      ; preds = %bb.bdt, %bb.beb
  %i.fbe = phi ptr [ @6, %bb.beb ], [ @5, %bb.bdt ]
  %i.fbf = phi i64 [ 24, %bb.beb ], [ 15, %bb.bdt ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fbe, i64 noundef %i.fbf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #27
          to label %.cont9534 unwind label %bb.bea, !dbg !69611

.cont9534:                                        ; preds = %.invoke9533
  unreachable

bb.bed:                                           ; preds = %bb.bec
  %i.fbg = load ptr, ptr %i.cs, align 8, !dbg !69612, !nonnull !1852, !noundef !1852
  %i.fbh = getelementptr inbounds nuw i8, ptr %i.cs, i64 8, !dbg !69612
  %i.fbi = load i64, ptr %i.fbh, align 8, !dbg !69612, !noundef !1852
    #dbg_value(ptr %i.fbg, !58447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63872)
    #dbg_value(i64 %i.fbi, !58447, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !63872)
  %i.fbj = getelementptr inbounds nuw i8, ptr %i.cs, i64 16, !dbg !69613
  %i.fbk = load ptr, ptr %i.fbj, align 8, !dbg !69613, !nonnull !1852, !noundef !1852
  %i.fbl = getelementptr inbounds nuw i8, ptr %i.cs, i64 24, !dbg !69613
  %i.fbm = load i64, ptr %i.fbl, align 8, !dbg !69613, !noundef !1852
    #dbg_value(ptr %i.fbk, !58448, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63872)
    #dbg_value(i64 %i.fbm, !58448, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !63872)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !69614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !69615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !dbg !69616
    #dbg_value(ptr %i.cv, !61414, !DIExpression(), !63874)
  invoke fastcc void @_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5yXxDE1DkoT_4tera6errors5ErrorNtB5_12SpecToString14spec_to_stringBC_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cv)
          to label %bb.bee unwind label %bb.bea, !dbg !69617

bb.bee:                                           ; preds = %bb.bed
  invoke void @_RNvMNtCs5yXxDE1DkoT_4tera6errorsNtB2_11ReportError3new(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fbg, i64 noundef %i.fbi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fbk, i64 noundef %i.fbm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu)
          to label %bb.bef unwind label %bb.bea, !dbg !69618

bb.bef:                                           ; preds = %bb.bee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !69619
    #dbg_declare(ptr %i.cr, !6239, !DIExpression(), !57223)
  %i.fbn = invoke fastcc noundef ptr @_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit()
          to label %bb.bei unwind label %bb.beg, !dbg !69620 ; 2 uses

bb.beg:                                           ; preds = %bb.bef
  %i.fbo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors11ReportErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.cr) #24
          to label %.body unwind label %bb.beh, !dbg !69621

bb.beh:                                           ; preds = %bb.beg
  %i.fbp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !69622
  unreachable, !dbg !69622

bb.bei:                                           ; preds = %bb.bef
    #dbg_value(ptr %i.fbn, !6244, !DIExpression(), !57224)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.fbn, ptr noundef nonnull align 8 dereferenceable(144) %i.cr, i64 144, i1 false), !dbg !69623
  store i8 2, ptr %0, align 8, !dbg !69624
  %.sroa.05475.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !69624
  store ptr %i.fbn, ptr %.sroa.05475.sroa.5.0..sroa_idx, align 8, !dbg !69624
  %.sroa.45476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !69624
  store ptr null, ptr %.sroa.45476.0..sroa_idx, align 8, !dbg !69624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !69625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !69626
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.cv)
          to label %bb.bej unwind label %.loopexit.split-lp6195.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69604

bb.bej:                                           ; preds = %bb.bei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !69604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !69598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !dbg !69599
    #dbg_value(ptr %i.cy, !5276, !DIExpression(), !57226)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy), !dbg !69627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !69599
  br label %bb.bij, !dbg !64666

bb.bek:                                           ; preds = %bb.c
  %i.fbq = trunc i64 %.sroa.0210.07551 to i32     ; 2 uses
    #dbg_value(ptr %i.aig, !58450, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63875)
    #dbg_value(ptr %i.aig, !63876, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63879)
    #dbg_value(ptr %i.aig, !60637, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63880)
    #dbg_value(ptr %i.aig, !63881, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63884)
    #dbg_value(ptr %i.aig, !63885, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63889)
    #dbg_value(ptr %i.aig, !63890, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63894)
    #dbg_value(ptr %i.aig, !60637, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63895)
    #dbg_value(ptr %i.aig, !63881, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63897)
    #dbg_value(ptr %i.aig, !63885, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63900)
    #dbg_value(ptr %i.aig, !63890, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63903)
    #dbg_value(ptr %i.aig, !63876, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63905)
    #dbg_value(ptr %i.aig, !60637, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63906)
    #dbg_value(ptr %i.aig, !63881, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63908)
    #dbg_value(ptr %i.aig, !63885, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63911)
    #dbg_value(ptr %i.aig, !63890, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63914)
    #dbg_value(ptr %i.aig, !60687, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63915)
    #dbg_value(ptr %i.aig, !63881, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63917)
    #dbg_value(ptr %i.aig, !63885, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63920)
    #dbg_value(ptr %i.aig, !63890, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !63923)
    #dbg_value(ptr %i.aic, !59494, !DIExpression(), !59569)
    #dbg_value(ptr %i.aic, !58451, !DIExpression(), !63924)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !69628
  %i.fbr = getelementptr inbounds nuw i8, ptr %i.aig, i64 24, !dbg !69629 ; 2 uses
  %i.fbs = load i64, ptr %i.fbr, align 8, !dbg !69629, !noundef !1852 ; 2 uses
  %i.fbt = icmp ult i64 %i.fbs, 384307168202282326, !dbg !69630
  call void @llvm.assume(i1 %i.fbt), !dbg !69631
  switch i64 %i.fbs, label %..thread6081_crit_edge [
    i64 1, label %bb.bel
    i64 0, label %bb.bep
  ], !dbg !69632

..thread6081_crit_edge:                           ; preds = %bb.bek
  %.phi.trans.insert8438 = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  %.pre8439 = load ptr, ptr %.phi.trans.insert8438, align 8, !dbg !69633 ; 2 uses
  %.phi.trans.insert8440 = getelementptr inbounds nuw i8, ptr %.pre8439, i64 16
  %.pre8441 = load i64, ptr %.phi.trans.insert8440, align 8, !dbg !69634
  br label %.thread6081, !dbg !69632

bb.bel:                                           ; preds = %bb.bek
    #dbg_value(ptr poison, !60642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60646)
    #dbg_value(ptr poison, !60648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60652)
    #dbg_value(i64 %i.fbs, !60642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !60646)
    #dbg_value(i64 %i.fbs, !60648, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !60652)
  %i.fbu = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !69635
  %i.fbv = load ptr, ptr %i.fbu, align 8, !dbg !69635, !nonnull !1852, !noundef !1852 ; 4 uses
    #dbg_value(ptr %i.fbv, !60642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60646)
    #dbg_value(ptr %i.fbv, !60648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60652)
    #dbg_value(ptr %i.fbv, !60657, !DIExpression(), !63942)
    #dbg_value(ptr %i.fbv, !60136, !DIExpression(), !63943)
    #dbg_value(ptr %i.fbv, !60836, !DIExpression(), !63946)
    #dbg_value(ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, !60658, !DIExpression(), !63942)
  %i.fbw = getelementptr inbounds nuw i8, ptr %i.fbv, i64 16, !dbg !69636
  %i.fbx = load i64, ptr %i.fbw, align 8, !dbg !69636, !noundef !1852 ; 4 uses
    #dbg_value(ptr poison, !61032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63950)
    #dbg_value(i64 %i.fbx, !61032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !63950)
  %i.fby = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, i64 8), align 8, !dbg !69637, !noundef !1852
    #dbg_value(ptr poison, !61031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63950)
    #dbg_value(i64 %i.fby, !61031, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !63950)
    #dbg_value(ptr poison, !61046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63955)
    #dbg_value(i64 %i.fbx, !61046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !63955)
    #dbg_value(ptr poison, !61057, !DIExpression(), !63956)
    #dbg_value(ptr poison, !61047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63955)
    #dbg_value(i64 %i.fby, !61047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !63955)
    #dbg_value(ptr poison, !61058, !DIExpression(), !63957)
    #dbg_value(i64 %i.fbx, !61050, !DIExpression(), !63958)
    #dbg_value(i64 %i.fbx, !61063, !DIExpression(), !63961)
    #dbg_value(i64 %i.fbx, !61068, !DIExpression(), !63962)
  %i.fbz = icmp eq i64 %i.fbx, %i.fby, !dbg !69638
  br i1 %i.fbz, label %bb.bem, label %.thread6081, !dbg !69638

bb.bem:                                           ; preds = %bb.bel
  %i.fca = load ptr, ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, align 8, !dbg !69637, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fca, !61047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63955)
    #dbg_value(ptr %i.fca, !61031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63950)
  %i.fcb = getelementptr inbounds nuw i8, ptr %i.fbv, i64 8, !dbg !69639
  %i.fcc = load ptr, ptr %i.fcb, align 8, !dbg !69639, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fcc, !61032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63950)
    #dbg_value(ptr %i.fcc, !61046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63955)
    #dbg_value(ptr %i.fcc, !61064, !DIExpression(), !63961)
    #dbg_value(ptr %i.fca, !61065, !DIExpression(), !63961)
  %bcmp2505 = call i32 @bcmp(ptr nonnull %i.fcc, ptr nonnull %i.fca, i64 %i.fbx), !dbg !69640
  %i.fcd = icmp eq i32 %bcmp2505, 0, !dbg !69640
  br i1 %i.fcd, label %bb.ben, label %.thread6081, !dbg !60654

bb.ben:                                           ; preds = %bb.bem
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State12dump_context(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2), !dbg !69641
  br label %bb.beo, !dbg !69642

bb.beo:                                           ; preds = %.thread6081, %bb.ben
  %i.fce = load i64, ptr %i.fbr, align 8, !dbg !69643, !noundef !1852 ; 6 uses
  %i.fcf = icmp ult i64 %i.fce, 384307168202282326, !dbg !69644
  call void @llvm.assume(i1 %i.fcf), !dbg !69645
  %i.fcg = add nsw i64 %i.fce, -1, !dbg !69646    ; 2 uses
    #dbg_value(i64 %i.fcg, !58453, !DIExpression(), !63971)
  %.not2507 = icmp eq i64 %i.fcg, 0, !dbg !69647
  br i1 %.not2507, label %bb.beq, label %bb.beu, !dbg !69647

.thread6081:                                      ; preds = %..thread6081_crit_edge, %bb.bem, %bb.bel
  %i.fch = phi i64 [ %.pre8441, %..thread6081_crit_edge ], [ %i.fbx, %bb.bem ], [ %i.fbx, %bb.bel ], !dbg !69634
  %i.fci = phi ptr [ %.pre8439, %..thread6081_crit_edge ], [ %i.fbv, %bb.bem ], [ %i.fbv, %bb.bel ], !dbg !69633
    #dbg_value(ptr %i.fci, !60642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60664)
    #dbg_value(ptr %i.fci, !60648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60667)
    #dbg_value(ptr %i.fci, !60832, !DIExpression(), !63972)
    #dbg_value(ptr %i.fci, !60836, !DIExpression(), !63973)
  %i.fcj = getelementptr inbounds nuw i8, ptr %i.fci, i64 8, !dbg !69648
  %i.fck = load ptr, ptr %i.fcj, align 8, !dbg !69648, !nonnull !1852, !noundef !1852
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State9get_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fck, i64 noundef %i.fch), !dbg !69649
  br label %bb.beo, !dbg !69642

bb.bep:                                           ; preds = %bb.bek
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #26, !dbg !69650
  unreachable, !dbg !69650

bb.beq:                                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4471, %bb.beo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !69651, !noalias !63982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false), !dbg !69652
    #dbg_value(i32 %i.fbq, !4349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !63983)
    #dbg_value(i32 %i.fbq, !4349, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !63983)
    #dbg_value(i8 0, !4349, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !63983)
  call void @llvm.experimental.noalias.scope.decl(metadata !63984), !dbg !69653
    #dbg_value(ptr %2, !4354, !DIExpression(), !57239)
    #dbg_declare(ptr poison, !4355, !DIExpression(), !57240)
    #dbg_declare(ptr %i.a, !5232, !DIExpression(), !57242)
    #dbg_value(ptr %2, !5237, !DIExpression(), !57243)
  store i32 %i.fbq, ptr %i.aba, align 8, !dbg !69651, !noalias !63985
  store i32 %i.fbq, ptr %.sroa.45499.0..sroa_idx, align 4, !dbg !69651, !noalias !63985
  store i8 0, ptr %.sroa.55500.0..sroa_idx, align 8, !dbg !69651, !noalias !63985
    #dbg_value(ptr %2, !5239, !DIExpression(), !57245)
    #dbg_value(ptr %2, !5249, !DIExpression(), !57247)
    #dbg_declare(ptr %i.a, !5244, !DIExpression(), !57248)
    #dbg_value(i64 40, !5254, !DIExpression(), !57251)
  %i.fcl = load i64, ptr %i.aan, align 8, !dbg !69654, !alias.scope !63986, !noundef !1852 ; 3 uses
    #dbg_value(i64 %i.fcl, !5245, !DIExpression(), !57254)
    #dbg_value(i64 %i.fcl, !5264, !DIExpression(), !57256)
    #dbg_value(ptr %2, !5261, !DIExpression(), !57257)
  %i.fcm = load i64, ptr %2, align 8, !dbg !69655, !range !5271, !alias.scope !63986, !noundef !1852
  %i.fcn = icmp eq i64 %i.fcl, %i.fcm, !dbg !69656
  br i1 %i.fcn, label %bb.ber, label %bb.bgi, !dbg !69656

bb.ber:                                           ; preds = %bb.beq
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs5yXxDE1DkoT_4tera5value5ValueINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusivemEEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.bgi unwind label %bb.bes, !dbg !69657, !noalias !63987

bb.bes:                                           ; preds = %bb.ber
  %i.fco = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !5272, !DIExpression(), !57260)
    #dbg_value(ptr %i.a, !5276, !DIExpression(), !57262)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %common.resume unwind label %bb.bet, !dbg !69658, !noalias !63988

bb.bet:                                           ; preds = %bb.bes
  %i.fcp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !69659, !noalias !63988
  unreachable, !dbg !69659

.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bga, %bb.bfh, %bb.bfi, %.invoke9535, %bb.bez, %bb.bgj, %bb.bgl, %bb.bgp, %bb.bgq
  %lpad.loopexit.split-lp10443 = landingpad { ptr, i32 }
          cleanup
  br label %.thread6087

bb.beu:                                           ; preds = %bb.beo
  %.val3019 = load i8, ptr %i.cp, align 8, !dbg !69660, !range !5099, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !6187, !DIExpression(), !57264)
    #dbg_value(ptr poison, !6193, !DIExpression(), !57266)
  %i.fcq = icmp ne i8 %.val3019, 10, !dbg !69661
  call void @llvm.assume(i1 %i.fcq), !dbg !69661
  %i.fcr = icmp eq i8 %.val3019, 2, !dbg !69662
  br i1 %i.fcr, label %bb.bew, label %bb.bev, !dbg !69663

bb.bev:                                           ; preds = %bb.beu
    #dbg_value(ptr %i.cp, !58455, !DIExpression(), !63989)
    #dbg_value(i8 0, !58456, !DIExpression(), !63990)
    #dbg_value(ptr poison, !60692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60696)
    #dbg_value(ptr poison, !60698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60704)
    #dbg_value(i64 %i.fce, !60692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !60696)
    #dbg_value(i64 %i.fce, !60698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !60704)
  %i.fcs = icmp eq i64 %i.fce, 0, !dbg !69664
  br i1 %i.fcs, label %bb.bez, label %bb.bey, !dbg !69664, !prof !5359

bb.bew:                                           ; preds = %bb.beu
  %i.fct = getelementptr i8, ptr %i.aic, i64 16
  %.val3178 = load i64, ptr %i.fct, align 8, !dbg !69665, !noundef !1852
    #dbg_value(ptr poison, !7565, !DIExpression(), !57269)
    #dbg_value(i64 0, !7585, !DIExpression(), !57271)
    #dbg_value(i64 0, !7583, !DIExpression(), !57272)
    #dbg_value(i64 0, !7590, !DIExpression(), !57274)
    #dbg_value(i64 0, !7596, !DIExpression(), !57276)
    #dbg_value(ptr poison, !7581, !DIExpression(), !57272)
    #dbg_value(i64 poison, !7582, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !57272)
    #dbg_value(ptr poison, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57278)
    #dbg_value(ptr poison, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57280)
    #dbg_value(i64 %.val3178, !7602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57278)
    #dbg_value(i64 %.val3178, !7605, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57280)
  %i.fcu = and i64 %.sroa.0210.07551, 4294967295, !dbg !69666 ; 2 uses
    #dbg_value(i64 %i.fcu, !7603, !DIExpression(), !57278)
    #dbg_value(i64 %i.fcu, !7606, !DIExpression(), !57280)
  %i.fcv = icmp ugt i64 %.val3178, %i.fcu, !dbg !69667
  br i1 %i.fcv, label %bb.bex, label %.invoke9535, !dbg !69667

bb.bex:                                           ; preds = %bb.bew
  %i.fcw = getelementptr i8, ptr %i.aic, i64 8
  %.val3177 = load ptr, ptr %i.fcw, align 8, !dbg !69665, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %.val3177, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57278)
    #dbg_value(ptr %.val3177, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57280)
  %i.fcx = getelementptr inbounds nuw [56 x i8], ptr %.val3177, i64 %i.fcu, !dbg !69668 ; 2 uses
    #dbg_value(ptr %i.fcx, !7574, !DIExpression(), !57269)
    #dbg_value(ptr undef, !7585, !DIExpression(DW_OP_deref), !57271)
    #dbg_value(ptr undef, !7565, !DIExpression(), !57269)
    #dbg_value(ptr %i.fcx, !7575, !DIExpression(), !57281)
    #dbg_value(ptr %i.fcx, !7588, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !57282)
    #dbg_value(ptr %i.fcx, !7608, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !57284)
    #dbg_value(ptr %i.fcx, !7610, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !57286)
    #dbg_value(ptr %i.fcx, !7613, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !57288)
  %i.fcy = getelementptr inbounds nuw i8, ptr %i.fcx, i64 48, !dbg !69669
  %i.fcz = load i64, ptr %i.fcy, align 8, !dbg !69669, !noundef !1852
    #dbg_value(ptr poison, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57274)
    #dbg_value(ptr poison, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57276)
    #dbg_value(i64 %i.fcz, !7593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57274)
    #dbg_value(i64 %i.fcz, !7599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57276)
  %.not6132 = icmp eq i64 %i.fcz, 0, !dbg !69670
  br i1 %.not6132, label %.invoke9535, label %bb.bgo, !dbg !69670

bb.bey:                                           ; preds = %bb.bev
  %i.fda = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !69671
  %i.fdb = load ptr, ptr %i.fda, align 8, !dbg !69671, !nonnull !1852, !noundef !1852 ; 3 uses
    #dbg_value(ptr %i.fdb, !60692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60696)
    #dbg_value(ptr %i.fdb, !60698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60704)
    #dbg_value(i64 %i.fce, !63997, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !64008)
    #dbg_value(i64 %i.fce, !64011, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !64016)
    #dbg_value(ptr %i.fdb, !64009, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !64017)
    #dbg_value(ptr %i.fdb, !63998, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !64018)
    #dbg_value(i64 %i.fce, !64009, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !64017)
    #dbg_value(i64 %i.fce, !63998, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !64018)
    #dbg_value(ptr %i.fdb, !63999, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !64019)
    #dbg_value(ptr %i.fdb, !64012, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !64016)
  %.idx10385 = mul nuw i64 %i.fce, 24, !dbg !69672
  %i.fdc = getelementptr i8, ptr %i.fdb, i64 %.idx10385, !dbg !69672 ; 2 uses
    #dbg_value(ptr %i.fdb, !58457, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !64020)
    #dbg_value(ptr %i.fdc, !58457, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !64020)
    #dbg_value(i64 0, !58457, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !64020)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fdc) ]
  %i.fdd = icmp eq i64 %i.fce, 1, !dbg !69673
  br i1 %i.fdd, label %._crit_edge, label %.lr.ph10382, !dbg !69674

.lr.ph10382:                                      ; preds = %bb.bey
  %.sroa.05482.010377 = getelementptr inbounds nuw i8, ptr %i.fdb, i64 24, !dbg !69675
  br label %bb.bfz, !dbg !69674

bb.bez:                                           ; preds = %bb.bev
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #27
          to label %bb.fy unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69676

bb.bfa:                                           ; preds = %bb.bgd
  %.sroa.05482.0 = getelementptr inbounds nuw i8, ptr %.sroa.05482.010381, i64 24, !dbg !69675 ; 2 uses
    #dbg_value(ptr %.sroa.05482.0, !58457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !64020)
    #dbg_value(i64 %i.ffa, !58457, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !64020)
    #dbg_value(ptr %i.ffh, !58455, !DIExpression(), !63989)
    #dbg_value(ptr undef, !4334, !DIExpression(), !50283)
    #dbg_value(ptr undef, !4302, !DIExpression(), !50282)
    #dbg_value(ptr %.sroa.05482.0, !4313, !DIExpression(), !57299)
    #dbg_value(ptr %i.fdc, !4314, !DIExpression(), !57300)
    #dbg_value(ptr poison, !7627, !DIExpression(), !57301)
    #dbg_value(ptr poison, !7628, !DIExpression(), !57302)
  %i.fde = icmp eq ptr %.sroa.05482.0, %i.fdc, !dbg !69673
  br i1 %i.fde, label %._crit_edge, label %bb.bfz, !dbg !69674

._crit_edge:                                      ; preds = %bb.bfa, %bb.bey
  %.sroa.0301.0.lcssa = phi ptr [ %i.cp, %bb.bey ], [ %i.ffh, %bb.bfa ], !dbg !63971 ; 17 uses
    #dbg_value(ptr poison, !58457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !64020)
    #dbg_value(i64 poison, !58457, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !64020)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.85490), !dbg !69677
  call void @llvm.experimental.noalias.scope.decl(metadata !64021), !dbg !69678
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i4448), !dbg !69679
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5014, !DIExpression(), !57306)
  call void @llvm.experimental.noalias.scope.decl(metadata !64022), !dbg !69679
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5017, !DIExpression(), !57310)
    #dbg_value(i64 1, !5041, !DIExpression(), !57313)
    #dbg_value(i8 0, !5047, !DIExpression(), !57313)
    #dbg_value(i64 1, !5056, !DIExpression(), !57315)
    #dbg_value(i8 0, !5060, !DIExpression(), !57315)
    #dbg_value(i64 1, !5041, !DIExpression(), !57318)
    #dbg_value(i8 0, !5047, !DIExpression(), !57318)
    #dbg_value(i64 1, !5056, !DIExpression(), !57320)
    #dbg_value(i8 0, !5060, !DIExpression(), !57320)
    #dbg_value(i64 1, !5041, !DIExpression(), !57323)
    #dbg_value(i8 0, !5047, !DIExpression(), !57323)
    #dbg_value(i64 1, !5056, !DIExpression(), !57325)
    #dbg_value(i8 0, !5060, !DIExpression(), !57325)
    #dbg_value(i64 1, !5041, !DIExpression(), !57329)
    #dbg_value(i8 0, !5047, !DIExpression(), !57329)
    #dbg_value(i64 1, !5056, !DIExpression(), !57331)
    #dbg_value(i8 0, !5060, !DIExpression(), !57331)
  %i.fdf = load i8, ptr %.sroa.0301.0.lcssa, align 8, !dbg !69680, !range !5099, !alias.scope !64023, !noundef !1852 ; 4 uses
  %i.fdg = icmp ne i8 %i.fdf, 10, !dbg !69680
  call void @llvm.assume(i1 %i.fdg), !dbg !69680
  %i.fdh = add nsw i8 %i.fdf, -2, !dbg !69680
  %i.fdi = icmp samesign ugt i8 %i.fdf, 1, !dbg !69680
  %narrow.i.i4449 = select i1 %i.fdi, i8 %i.fdh, i8 8, !dbg !69680
  switch i8 %narrow.i.i4449, label %bb.bfb [
    i8 0, label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469
    i8 1, label %bb.bfc
    i8 2, label %bb.bfd
    i8 3, label %bb.bfe
    i8 4, label %bb.bff
    i8 5, label %bb.bfg
    i8 6, label %bb.bfh
    i8 7, label %bb.bfi
    i8 8, label %bb.bfj
    i8 9, label %bb.bfk
    i8 10, label %bb.bfl
    i8 11, label %bb.bfm
  ], !dbg !69680

bb.bfb:                                           ; preds = %._crit_edge
  unreachable, !dbg !69681

bb.bfc:                                           ; preds = %._crit_edge
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !69680

bb.bfd:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5021, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !57332)
  %i.fdj = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 1, !dbg !69682
  %i.fdk = load i8, ptr %i.fdj, align 1, !dbg !69682, !range !3887, !alias.scope !64023, !noundef !1852
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !69683

bb.bfe:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5023, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57333)
  %i.fdl = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !69684
  %i.fdm = load i64, ptr %i.fdl, align 8, !dbg !69684, !alias.scope !64023, !noundef !1852
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !69683

bb.bff:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57334)
  %i.fdn = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !69685
  %i.fdo = load i64, ptr %i.fdn, align 8, !dbg !69685, !alias.scope !64023, !noundef !1852
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !69683

bb.bfg:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57335)
  %i.fdp = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !69686
  %i.fdq = load i64, ptr %i.fdp, align 8, !dbg !69686, !alias.scope !64023, !noundef !1852
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !69683

bb.bfh:                                           ; preds = %._crit_edge
  %i.fdr = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !69687
    #dbg_value(ptr %i.fdr, !5029, !DIExpression(), !57336)
  %.val.i.i4466 = load ptr, ptr %i.fdr, align 8, !dbg !69688, !alias.scope !64023 ; 2 uses
    #dbg_value(ptr poison, !5104, !DIExpression(), !57338)
  %i.fds = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxoE13new_uninit_inCs5yXxDE1DkoT_4tera()
          to label %.noexc4467 unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69689 ; 2 uses

.noexc4467:                                       ; preds = %bb.bfh
    #dbg_value(ptr %i.fds, !5110, !DIExpression(), !57339)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i4466) ]
    #dbg_value(ptr %.val.i.i4466, !5122, !DIExpression(), !57341)
    #dbg_value(ptr %i.fds, !5129, !DIExpression(), !57341)
    #dbg_value(ptr %.val.i.i4466, !5132, !DIExpression(), !57343)
    #dbg_value(ptr %.val.i.i4466, !5140, !DIExpression(), !57345)
    #dbg_value(ptr %i.fds, !5138, !DIExpression(), !57343)
    #dbg_value(ptr %i.fds, !5143, !DIExpression(), !57345)
    #dbg_value(i64 1, !5144, !DIExpression(), !57345)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fds, ptr noundef nonnull readonly align 16 dereferenceable(16) %.val.i.i4466, i64 16, i1 false), !dbg !69690, !noalias !64024
  %i.fdt = ptrtoint ptr %i.fds to i64, !dbg !69691
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !69683

bb.bfi:                                           ; preds = %._crit_edge
  %i.fdu = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !69692
    #dbg_value(ptr %i.fdu, !5031, !DIExpression(), !57348)
  %.val34.i.i4465 = load ptr, ptr %i.fdu, align 8, !dbg !69693, !alias.scope !64023 ; 2 uses
    #dbg_value(ptr poison, !5146, !DIExpression(), !57350)
  %i.fdv = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxnE13new_uninit_inCs5yXxDE1DkoT_4tera()
          to label %.noexc4468 unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69694 ; 2 uses

.noexc4468:                                       ; preds = %bb.bfi
    #dbg_value(ptr %i.fdv, !5150, !DIExpression(), !57351)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val34.i.i4465) ]
    #dbg_value(ptr %.val34.i.i4465, !5159, !DIExpression(), !57353)
    #dbg_value(ptr %i.fdv, !5163, !DIExpression(), !57353)
    #dbg_value(ptr %.val34.i.i4465, !5165, !DIExpression(), !57355)
    #dbg_value(ptr %.val34.i.i4465, !5171, !DIExpression(), !57357)
    #dbg_value(ptr %i.fdv, !5169, !DIExpression(), !57355)
    #dbg_value(ptr %i.fdv, !5174, !DIExpression(), !57357)
    #dbg_value(i64 1, !5175, !DIExpression(), !57357)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fdv, ptr noundef nonnull readonly align 16 dereferenceable(16) %.val34.i.i4465, i64 16, i1 false), !dbg !69695, !noalias !64024
  %i.fdw = ptrtoint ptr %i.fdv to i64, !dbg !69696
  br label %_RNvXsX_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit4469, !dbg !69683

bb.bfj:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5032, !DIExpression(), !57358)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5088, !DIExpression(), !57359)
  %i.fdx = trunc nuw i8 %i.fdf to i1, !dbg !69697
  br i1 %i.fdx, label %bb.bfn, label %bb.bfo, !dbg !69697

bb.bfk:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5034, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57360)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5074, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57361)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5177, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57363)
  %i.fdy = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !69698
  %i.fdz = load ptr, ptr %i.fdy, align 8, !dbg !69698, !alias.scope !64023, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fdz, !5046, !DIExpression(), !57365)
    #dbg_value(ptr %i.fdz, !5059, !DIExpression(), !57325)
  %i.fea = atomicrmw add ptr %i.fdz, i64 1 monotonic, align 8, !dbg !69699, !noalias !64024
    #dbg_value(i64 %i.fea, !5075, !DIExpression(), !57366)
  %i.feb = icmp slt i64 %i.fea, 0, !dbg !69700
  br i1 %i.feb, label %bb.bft, label %bb.bfs, !dbg !69700

bb.bfl:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5036, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57367)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5067, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57368)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5188, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57370)
  %i.fec = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !69701
  %i.fed = load ptr, ptr %i.fec, align 8, !dbg !69701, !alias.scope !64023, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fed, !5046, !DIExpression(), !57372)
    #dbg_value(ptr %i.fed, !5059, !DIExpression(), !57320)
  %i.fee = atomicrmw add ptr %i.fed, i64 1 monotonic, align 8, !dbg !69702, !noalias !64024
    #dbg_value(i64 %i.fee, !5068, !DIExpression(), !57373)
  %i.fef = icmp slt i64 %i.fee, 0, !dbg !69703
  br i1 %i.fef, label %bb.bfv, label %bb.bfu, !dbg !69703

bb.bfm:                                           ; preds = %._crit_edge
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5038, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57374)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5053, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57375)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5199, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57377)
  %i.feg = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !69704
  %i.feh = load ptr, ptr %i.feg, align 8, !dbg !69704, !alias.scope !64023, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.feh, !5046, !DIExpression(), !57379)
    #dbg_value(ptr %i.feh, !5059, !DIExpression(), !57315)
  %i.fei = atomicrmw add ptr %i.feh, i64 1 monotonic, align 8, !dbg !69705, !noalias !64024
    #dbg_value(i64 %i.fei, !5054, !DIExpression(), !57380)
  %i.fej = icmp slt i64 %i.fei, 0, !dbg !69706
  br i1 %i.fej, label %bb.bfx, label %bb.bfw, !dbg !69706

bb.bfn:                                           ; preds = %bb.bfj
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5095, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57381)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5082, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57382)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5209, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !57384)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5096, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !57381)
    #dbg_value(ptr %.sroa.0301.0.lcssa, !5217, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !57386)
  %i.fek = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.lcssa, i64 8, !dbg !69707
  %i.fel = load ptr, ptr %i.fek, align 8, !dbg !69707, !alias.scope !64023, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fel, !5046, !DIExpression(), !57388)
    #dbg_value(ptr %i.fel, !5059, !DIExpression(), !57331)
end_hunk_5
begin_hunk_6_@_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_:bb.a
    #dbg_value(ptr %i.fgv, !60642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60682)
    #dbg_value(ptr %i.fgv, !60648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60685)
    #dbg_value(ptr %i.fgv, !60832, !DIExpression(), !64083)
    #dbg_value(ptr %i.fgv, !60836, !DIExpression(), !64086)
  %i.fgw = getelementptr inbounds nuw i8, ptr %i.fgv, i64 8, !dbg !69782
  %i.fgx = load ptr, ptr %i.fgw, align 8, !dbg !69782, !nonnull !1852, !noundef !1852
  %i.fgy = getelementptr inbounds nuw i8, ptr %i.fgv, i64 16, !dbg !69783
  %i.fgz = load i64, ptr %i.fgy, align 8, !dbg !69783, !noundef !1852
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine19undefined_var_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aic, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fgx, i64 noundef %i.fgz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fgt)
          to label %bb.bgr unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69784

bb.bgq:                                           ; preds = %bb.bgo
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #27
          to label %bb.fy unwind label %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69780

bb.bgr:                                           ; preds = %bb.bgp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.co, i64 72, i1 false), !dbg !69785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !69786
  br label %bb.bgn, !dbg !69787

.thread6087:                                      ; preds = %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread6083
  %.pn6086 = phi { ptr, i32 } [ %i.fgb, %.thread6083 ], [ %lpad.loopexit.split-lp10443, %.thread6087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
    #dbg_value(ptr %i.cp, !5276, !DIExpression(), !57462)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %common.resume unwind label %bb.gi, !dbg !69788

bb.bgs:                                           ; preds = %bb.c
    #dbg_value(ptr %i.aig, !58463, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64098)
    #dbg_value(ptr %i.aig, !63876, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64100)
    #dbg_value(ptr %i.aig, !60637, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64101)
    #dbg_value(ptr %i.aig, !63881, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64103)
    #dbg_value(ptr %i.aig, !63885, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64106)
    #dbg_value(ptr %i.aig, !63890, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64109)
    #dbg_value(ptr %i.aig, !60637, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64110)
    #dbg_value(ptr %i.aig, !63881, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64112)
    #dbg_value(ptr %i.aig, !63885, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64115)
    #dbg_value(ptr %i.aig, !63890, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64118)
    #dbg_value(ptr %i.aig, !60637, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64119)
    #dbg_value(ptr %i.aig, !63881, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64121)
    #dbg_value(ptr %i.aig, !63885, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64124)
    #dbg_value(ptr %i.aig, !63890, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64127)
    #dbg_value(ptr %i.aig, !63876, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64129)
    #dbg_value(ptr %i.aig, !60687, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64130)
    #dbg_value(ptr %i.aig, !63881, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64132)
    #dbg_value(ptr %i.aig, !63885, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64135)
    #dbg_value(ptr %i.aig, !63890, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !64138)
    #dbg_value(ptr %i.aic, !59494, !DIExpression(), !59567)
    #dbg_value(ptr %i.aic, !58464, !DIExpression(), !64139)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !dbg !69789
  %i.fha = getelementptr inbounds nuw i8, ptr %i.aig, i64 24, !dbg !69790 ; 3 uses
  %i.fhb = load i64, ptr %i.fha, align 8, !dbg !69790, !noundef !1852 ; 2 uses
  %i.fhc = icmp ult i64 %i.fhb, 384307168202282326, !dbg !69791
  call void @llvm.assume(i1 %i.fhc), !dbg !69792
  switch i64 %i.fhb, label %..thread6103_crit_edge [
    i64 1, label %bb.bgt
    i64 0, label %bb.bgw
  ], !dbg !69793

..thread6103_crit_edge:                           ; preds = %bb.bgs
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !69794 ; 2 uses
  %.phi.trans.insert8436 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre8437 = load i64, ptr %.phi.trans.insert8436, align 8, !dbg !69795
  br label %.thread6103, !dbg !69793

bb.bgt:                                           ; preds = %bb.bgs
    #dbg_value(ptr poison, !60642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60713)
    #dbg_value(ptr poison, !60648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60716)
    #dbg_value(i64 %i.fhb, !60642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !60713)
    #dbg_value(i64 %i.fhb, !60648, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !60716)
  %i.fhd = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !69796
  %i.fhe = load ptr, ptr %i.fhd, align 8, !dbg !69796, !nonnull !1852, !noundef !1852 ; 4 uses
    #dbg_value(ptr %i.fhe, !60642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60713)
    #dbg_value(ptr %i.fhe, !60648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60716)
    #dbg_value(ptr %i.fhe, !60657, !DIExpression(), !64157)
    #dbg_value(ptr %i.fhe, !60136, !DIExpression(), !64158)
    #dbg_value(ptr %i.fhe, !60836, !DIExpression(), !64161)
    #dbg_value(ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, !60658, !DIExpression(), !64157)
  %i.fhf = getelementptr inbounds nuw i8, ptr %i.fhe, i64 16, !dbg !69797
  %i.fhg = load i64, ptr %i.fhf, align 8, !dbg !69797, !noundef !1852 ; 4 uses
    #dbg_value(ptr poison, !61032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !64165)
    #dbg_value(i64 %i.fhg, !61032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !64165)
  %i.fhh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, i64 8), align 8, !dbg !69798, !noundef !1852
    #dbg_value(ptr poison, !61031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !64165)
    #dbg_value(i64 %i.fhh, !61031, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !64165)
    #dbg_value(ptr poison, !61046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !64170)
    #dbg_value(i64 %i.fhg, !61046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !64170)
    #dbg_value(ptr poison, !61057, !DIExpression(), !64171)
    #dbg_value(ptr poison, !61047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !64170)
    #dbg_value(i64 %i.fhh, !61047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !64170)
    #dbg_value(ptr poison, !61058, !DIExpression(), !64172)
    #dbg_value(i64 %i.fhg, !61051, !DIExpression(), !64173)
    #dbg_value(i64 %i.fhg, !61063, !DIExpression(), !64176)
    #dbg_value(i64 %i.fhg, !61069, !DIExpression(), !64177)
  %i.fhi = icmp eq i64 %i.fhg, %i.fhh, !dbg !69799
  br i1 %i.fhi, label %bb.bgu, label %.thread6103, !dbg !69799

bb.bgu:                                           ; preds = %bb.bgt
  %i.fhj = load ptr, ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, align 8, !dbg !69798, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fhj, !61047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !64170)
    #dbg_value(ptr %i.fhj, !61031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !64165)
  %i.fhk = getelementptr inbounds nuw i8, ptr %i.fhe, i64 8, !dbg !69800
  %i.fhl = load ptr, ptr %i.fhk, align 8, !dbg !69800, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fhl, !61032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !64165)
    #dbg_value(ptr %i.fhl, !61046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !64170)
    #dbg_value(ptr %i.fhl, !61064, !DIExpression(), !64176)
    #dbg_value(ptr %i.fhj, !61065, !DIExpression(), !64176)
  %bcmp = call i32 @bcmp(ptr nonnull %i.fhl, ptr nonnull %i.fhj, i64 %i.fhg), !dbg !69801
  %i.fhm = icmp eq i32 %bcmp, 0, !dbg !69801
  br i1 %i.fhm, label %bb.bgv, label %.thread6103, !dbg !60718

bb.bgv:                                           ; preds = %bb.bgu
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State12dump_context(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2), !dbg !69802
  br label %bb.bgx, !dbg !69803

.thread6103:                                      ; preds = %..thread6103_crit_edge, %bb.bgu, %bb.bgt
  %i.fhn = phi i64 [ %.pre8437, %..thread6103_crit_edge ], [ %i.fhg, %bb.bgu ], [ %i.fhg, %bb.bgt ], !dbg !69795
  %i.fho = phi ptr [ %.pre, %..thread6103_crit_edge ], [ %i.fhe, %bb.bgu ], [ %i.fhe, %bb.bgt ], !dbg !69794
    #dbg_value(ptr %i.fho, !60642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60725)
    #dbg_value(ptr %i.fho, !60648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60728)
    #dbg_value(ptr %i.fho, !60832, !DIExpression(), !64186)
    #dbg_value(ptr %i.fho, !60836, !DIExpression(), !64187)
  %i.fhp = getelementptr inbounds nuw i8, ptr %i.fho, i64 8, !dbg !69804
  %i.fhq = load ptr, ptr %i.fhp, align 8, !dbg !69804, !nonnull !1852, !noundef !1852
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State9get_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fhq, i64 noundef %i.fhn), !dbg !69805
  br label %bb.bgx, !dbg !69803

bb.bgw:                                           ; preds = %bb.bgs
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #26, !dbg !69806
  unreachable, !dbg !69806

.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bhx, %bb.bhu, %bb.bht, %bb.bhs, %bb.bhr, %bb.bhq, %bb.bhp, %bb.bho, %bb.bhn, %bb.bhl, %bb.bhk, %bb.bhj, %.noexc2785, %bb.bhi, %.noexc2783, %bb.bhh, %bb.bhg, %.invoke9537, %bb.bih, %bb.big, %bb.bic, %bb.bhv
  %lpad.loopexit.split-lp10440 = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.cl, !5276, !DIExpression(), !57464)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %common.resume unwind label %bb.gi, !dbg !69807

bb.bgx:                                           ; preds = %bb.bgv, %.thread6103
  %.val3018 = load i8, ptr %i.cl, align 8, !dbg !69808, !range !5099, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !6187, !DIExpression(), !57466)
    #dbg_value(ptr poison, !6193, !DIExpression(), !57468)
  %i.fhr = icmp ne i8 %.val3018, 10, !dbg !69809
  call void @llvm.assume(i1 %i.fhr), !dbg !69809
  %i.fhs = icmp eq i8 %.val3018, 2, !dbg !69810
  br i1 %i.fhs, label %bb.bgz, label %bb.bgy, !dbg !69811

bb.bgy:                                           ; preds = %bb.bgx
  %i.fht = load i64, ptr %i.fha, align 8, !dbg !69812, !noundef !1852 ; 3 uses
  %i.fhu = icmp ult i64 %i.fht, 384307168202282326, !dbg !69813
  call void @llvm.assume(i1 %i.fhu), !dbg !69814
    #dbg_value(i64 %i.fht, !58467, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !64196)
  switch i64 %i.fht, label %.lr.ph10376.a [
    i64 1, label %.loopexit6182
    i64 0, label %bb.bhv
  ], !dbg !69815, !prof !7634

bb.bgz:                                           ; preds = %bb.bgx
  %i.fhv = getelementptr i8, ptr %i.aic, i64 16
  %.val3172 = load i64, ptr %i.fhv, align 8, !dbg !69816, !noundef !1852
    #dbg_value(ptr poison, !7565, !DIExpression(), !57471)
    #dbg_value(i64 0, !7585, !DIExpression(), !57473)
    #dbg_value(i64 0, !7583, !DIExpression(), !57474)
    #dbg_value(i64 0, !7590, !DIExpression(), !57476)
    #dbg_value(i64 0, !7596, !DIExpression(), !57478)
    #dbg_value(ptr poison, !7581, !DIExpression(), !57474)
    #dbg_value(i64 poison, !7582, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !57474)
    #dbg_value(ptr poison, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57480)
    #dbg_value(ptr poison, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57482)
    #dbg_value(i64 %.val3172, !7602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57480)
    #dbg_value(i64 %.val3172, !7605, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57482)
  %i.fhw = and i64 %.sroa.0210.07551, 4294967295, !dbg !69817 ; 2 uses
    #dbg_value(i64 %i.fhw, !7603, !DIExpression(), !57480)
    #dbg_value(i64 %i.fhw, !7606, !DIExpression(), !57482)
  %i.fhx = icmp ugt i64 %.val3172, %i.fhw, !dbg !69818
  br i1 %i.fhx, label %bb.bha, label %.invoke9537, !dbg !69818

bb.bha:                                           ; preds = %bb.bgz
  %i.fhy = getelementptr i8, ptr %i.aic, i64 8
  %.val3171 = load ptr, ptr %i.fhy, align 8, !dbg !69816, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %.val3171, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57480)
    #dbg_value(ptr %.val3171, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57482)
  %i.fhz = getelementptr inbounds nuw [56 x i8], ptr %.val3171, i64 %i.fhw, !dbg !69819 ; 2 uses
    #dbg_value(ptr %i.fhz, !7574, !DIExpression(), !57471)
    #dbg_value(ptr undef, !7585, !DIExpression(DW_OP_deref), !57473)
    #dbg_value(ptr undef, !7565, !DIExpression(), !57471)
    #dbg_value(ptr %i.fhz, !7575, !DIExpression(), !57483)
    #dbg_value(ptr %i.fhz, !7588, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !57484)
    #dbg_value(ptr %i.fhz, !7608, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !57486)
    #dbg_value(ptr %i.fhz, !7610, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !57488)
    #dbg_value(ptr %i.fhz, !7613, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !57490)
  %i.fia = getelementptr inbounds nuw i8, ptr %i.fhz, i64 48, !dbg !69820
  %i.fib = load i64, ptr %i.fia, align 8, !dbg !69820, !noundef !1852
    #dbg_value(ptr poison, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57476)
    #dbg_value(ptr poison, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57478)
    #dbg_value(i64 %i.fib, !7593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57476)
    #dbg_value(i64 %i.fib, !7599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57478)
  %.not6130 = icmp eq i64 %i.fib, 0, !dbg !69821
  br i1 %.not6130, label %.invoke9537, label %bb.bif, !dbg !69821

.loopexit6182:                                    ; preds = %bb.bhw, %bb.bgy
  %.sroa.0322.0 = phi ptr [ %i.cl, %bb.bgy ], [ %i.fjy, %bb.bhw ], !dbg !64196 ; 7 uses
    #dbg_value(ptr %.sroa.0322.0, !58469, !DIExpression(), !64197)
    #dbg_value(ptr %.sroa.0322.0, !58468, !DIExpression(), !64198)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.135513), !dbg !58499
  call void @llvm.experimental.noalias.scope.decl(metadata !64199), !dbg !69822
  call void @llvm.experimental.noalias.scope.decl(metadata !64200), !dbg !69822
    #dbg_value(ptr poison, !61728, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57497)
    #dbg_value(ptr %1, !61739, !DIExpression(), !57498)
    #dbg_value(ptr %1, !61763, !DIExpression(), !57500)
    #dbg_value(ptr %.sroa.0322.0, !61740, !DIExpression(), !57498)
    #dbg_value(ptr %.sroa.0322.0, !61733, !DIExpression(), !57501)
    #dbg_value(ptr %2, !61741, !DIExpression(), !57498)
    #dbg_value(ptr %3, !61742, !DIExpression(), !57498)
    #dbg_value(ptr poison, !61729, !DIExpression(), !57502)
    #dbg_value(i8 %i.aap, !61765, !DIExpression(), !57504)
  %i.fic = load i8, ptr %i.aas, align 1, !dbg !69823, !range !3887, !noalias !64201, !noundef !1852
    #dbg_value(i8 %i.fic, !61766, !DIExpression(), !57504)
  %spec.select.i = select i1 %.not.i, i8 %i.fic, i8 %i.aap, !dbg !69824
    #dbg_value(i8 %spec.select.i, !61766, !DIExpression(), !57504)
  %i.fid = trunc nuw i8 %spec.select.i to i1, !dbg !69825
  br i1 %i.fid, label %bb.bhc, label %bb.bhb, !dbg !69825

bb.bhb:                                           ; preds = %bb.bhd, %bb.bhc, %.loopexit6182
    #dbg_value(ptr %2, !61770, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !57509)
    #dbg_value(ptr %2, !61772, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !57511)
    #dbg_value(ptr %2, !61774, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !57513)
  %i.fie = load i64, ptr %i.aaw, align 8, !dbg !69826, !alias.scope !64200, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !61776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57515)
    #dbg_value(i64 %i.fie, !61776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57515)
  %.not84.i = icmp eq i64 %i.fie, 0, !dbg !69827
  br i1 %.not84.i, label %bb.bhr, label %bb.bhs, !dbg !69827

bb.bhc:                                           ; preds = %.loopexit6182
  %i.fif = load i8, ptr %.sroa.0322.0, align 8, !dbg !69828, !range !5099, !alias.scope !64199, !noundef !1852 ; 5 uses
  %i.fig = icmp ne i8 %i.fif, 10, !dbg !69828
  call void @llvm.assume(i1 %i.fig), !dbg !69828
  %i.fih = add nsw i8 %i.fif, -2, !dbg !69828
  %i.fii = icmp samesign ugt i8 %i.fif, 1, !dbg !69828
  %narrow.i = select i1 %i.fii, i8 %i.fih, i8 8, !dbg !69828
  switch i8 %narrow.i, label %bb.bhb [
    i8 8, label %bb.bhd
    i8 9, label %bb.bhe
    i8 10, label %bb.bhe
    i8 11, label %bb.bhe
  ], !dbg !69829

bb.bhd:                                           ; preds = %bb.bhc
    #dbg_value(ptr %.sroa.0322.0, !61734, !DIExpression(), !57516)
    #dbg_value(ptr %.sroa.0322.0, !61781, !DIExpression(), !57518)
  %i.fij = trunc nuw i8 %i.fif to i1, !dbg !69830
  %.sroa.027.0.in.i.v.sroa.sel.v.sroa.sel.v = select i1 %i.fij, i64 1, i64 23, !dbg !69831
  %.sroa.027.0.in.i.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0322.0, i64 %.sroa.027.0.in.i.v.sroa.sel.v.sroa.sel.v, !dbg !69831
  %.sroa.027.0.i = load i8, ptr %.sroa.027.0.in.i.v.sroa.sel.v.sroa.sel, align 1, !dbg !69832, !range !3887, !alias.scope !64199, !noundef !1852
    #dbg_value(ptr undef, !61728, !DIExpression(), !57497)
  %i.fik = trunc nuw i8 %.sroa.027.0.i to i1, !dbg !69833
  br i1 %i.fik, label %bb.bhb, label %bb.bhe, !dbg !69834

bb.bhe:                                           ; preds = %bb.bhd, %bb.bhc, %bb.bhc, %bb.bhc
  %i.fil = icmp samesign ult i8 %i.fif, 2, !dbg !69835
  br i1 %i.fil, label %bb.bhf, label %bb.bhg, !dbg !69836

bb.bhf:                                           ; preds = %bb.bhe
    #dbg_value(ptr %.sroa.0322.0, !61748, !DIExpression(), !57519)
    #dbg_value(ptr %2, !61770, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !57521)
    #dbg_value(ptr %2, !61772, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !57523)
    #dbg_value(ptr %2, !61774, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !57525)
  %i.fim = load i64, ptr %i.aaw, align 8, !dbg !69837, !alias.scope !64200, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !61776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57527)
    #dbg_value(i64 %i.fim, !61776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57527)
  %.not81.i = icmp eq i64 %i.fim, 0, !dbg !69838
  br i1 %.not81.i, label %bb.bhh, label %bb.bhi, !dbg !69838

bb.bhg:                                           ; preds = %bb.bhe
    #dbg_value(ptr %2, !61787, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !57529)
    #dbg_value(ptr poison, !61788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57530)
    #dbg_value(i64 poison, !61788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57530)
  store i64 0, ptr %i.aau, align 8, !dbg !69839, !alias.scope !64200
  %i.fin = invoke noundef ptr @_RINvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB6_5Value6formatINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aat)
          to label %.noexc unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69840 ; 2 uses

.noexc:                                           ; preds = %bb.bhg
    #dbg_value(ptr %i.fin, !61790, !DIExpression(), !57532)
  %.not77.i = icmp eq ptr %i.fin, null, !dbg !69841
  br i1 %.not77.i, label %bb.bhm, label %bb.bhl, !dbg !69842

bb.bhh:                                           ; preds = %bb.bhf
  %i.fio = load ptr, ptr %i.aaz, align 8, !dbg !69843, !noalias !64201, !nonnull !1852, !noundef !1852
  %i.fip = invoke { ptr, i64 } @_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0)
          to label %.noexc2783 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69844 ; 2 uses

.noexc2783:                                       ; preds = %bb.bhh
  %i.fiq = extractvalue { ptr, i64 } %i.fip, 0, !dbg !69844
  %i.fir = extractvalue { ptr, i64 } %i.fip, 1, !dbg !69844
  %i.fis = invoke noundef ptr %i.fio(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fiq, i64 noundef %i.fir, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2)
          to label %.noexc2784 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69843, !inline_history !53034 ; 2 uses

.noexc2784:                                       ; preds = %.noexc2783
    #dbg_value(ptr %i.fis, !61790, !DIExpression(), !57534)
  %.not82.i = icmp eq ptr %i.fis, null, !dbg !69845
  br i1 %.not82.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread, label %bb.bhj, !dbg !69846

bb.bhi:                                           ; preds = %bb.bhf
  %i.fit = load ptr, ptr %i.aax, align 8, !dbg !69847, !alias.scope !64200, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fit, !61776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57527)
    #dbg_value(!DIArgList(ptr %i.fit, i64 %i.fim), !61778, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_constu, 24, DW_OP_minus, DW_OP_stack_value), !57538)
    #dbg_value(!DIArgList(ptr %i.fit, i64 %i.fim), !61749, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_constu, 24, DW_OP_minus, DW_OP_stack_value), !57539)
  %i.fiu = load ptr, ptr %i.aaz, align 8, !dbg !69848, !noalias !64201, !nonnull !1852, !noundef !1852
  %i.fiv = invoke { ptr, i64 } @_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0)
          to label %.noexc2785 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69849 ; 2 uses

.noexc2785:                                       ; preds = %bb.bhi
  %i.fiw = getelementptr [24 x i8], ptr %i.fit, i64 %i.fim, !dbg !69850
    #dbg_value(ptr %i.fiw, !61749, !DIExpression(DW_OP_constu, 24, DW_OP_minus, DW_OP_stack_value), !57539)
    #dbg_value(ptr %i.fiw, !61778, !DIExpression(DW_OP_constu, 24, DW_OP_minus, DW_OP_stack_value), !57538)
  %i.fix = getelementptr i8, ptr %i.fiw, i64 -24, !dbg !69850
    #dbg_value(ptr %i.fix, !61778, !DIExpression(), !57538)
    #dbg_value(ptr %i.fix, !61749, !DIExpression(), !57539)
  %i.fiy = extractvalue { ptr, i64 } %i.fiv, 0, !dbg !69849
  %i.fiz = extractvalue { ptr, i64 } %i.fiv, 1, !dbg !69849
  %i.fja = invoke noundef ptr %i.fiu(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fiy, i64 noundef %i.fiz, ptr noundef nonnull %i.fix, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %.noexc2786 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69848, !inline_history !53034 ; 2 uses

.noexc2786:                                       ; preds = %.noexc2785
    #dbg_value(ptr %i.fja, !61790, !DIExpression(), !57541)
  %.not83.i = icmp eq ptr %i.fja, null, !dbg !69851
  br i1 %.not83.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread, label %bb.bhk, !dbg !69852

bb.bhj:                                           ; preds = %.noexc2784
    #dbg_value(ptr %i.fis, !61752, !DIExpression(), !57542)
    #dbg_value(ptr %i.fis, !61809, !DIExpression(), !57544)
    #dbg_value(ptr %i.fis, !61813, !DIExpression(), !57545)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !69853, !noalias !64201
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bb, ptr noundef nonnull %i.fis)
          to label %.noexc2787 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69853

.noexc2787:                                       ; preds = %bb.bhj
  %.sroa.05505.0.copyload5512 = load i8, ptr %i.bb, align 8, !dbg !69854, !noalias !64202
    #dbg_value(i8 %.sroa.05505.0.copyload5512, !58490, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !64203)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5520, i64 71, i1 false), !dbg !69854, !noalias !64202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !69855, !noalias !64201
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit, !dbg !69856

bb.bhk:                                           ; preds = %.noexc2786
    #dbg_value(ptr %i.fja, !61750, !DIExpression(), !57546)
    #dbg_value(ptr %i.fja, !61809, !DIExpression(), !57548)
    #dbg_value(ptr %i.fja, !61812, !DIExpression(), !57549)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !69857, !noalias !64201
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noundef nonnull %i.fja)
          to label %.noexc2788 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69857

.noexc2788:                                       ; preds = %bb.bhk
  %.sroa.05505.0.copyload5511 = load i8, ptr %i.bc, align 8, !dbg !69858, !noalias !64202
    #dbg_value(i8 %.sroa.05505.0.copyload5511, !58490, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !64203)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5519, i64 71, i1 false), !dbg !69858, !noalias !64202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !69859, !noalias !64201
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit, !dbg !69856

bb.bhl:                                           ; preds = %.noexc
    #dbg_value(ptr %i.fin, !61754, !DIExpression(), !57550)
    #dbg_value(ptr %i.fin, !61809, !DIExpression(), !57552)
    #dbg_value(ptr %i.fin, !61814, !DIExpression(), !57553)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !69860, !noalias !64201
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ba, ptr noundef nonnull %i.fin)
          to label %.noexc2789 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69860

.noexc2789:                                       ; preds = %bb.bhl
  %.sroa.05505.0.copyload5508 = load i8, ptr %i.ba, align 8, !dbg !69861, !noalias !64202
    #dbg_value(i8 %.sroa.05505.0.copyload5508, !58490, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !64203)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5516, i64 71, i1 false), !dbg !69861, !noalias !64202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !69862, !noalias !64201
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit, !dbg !69863

bb.bhm:                                           ; preds = %.noexc
    #dbg_value(ptr %2, !61825, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !57555)
    #dbg_value(ptr %2, !61827, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !57557)
    #dbg_value(ptr %2, !61829, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !57559)
  %i.fjb = load ptr, ptr %i.aav, align 8, !dbg !69864, !alias.scope !64200, !nonnull !1852, !noundef !1852 ; 2 uses
  %i.fjc = load i64, ptr %i.aau, align 8, !dbg !69865, !alias.scope !64200, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fjb, !61756, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57563)
    #dbg_value(i64 %i.fjc, !61756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57563)
    #dbg_value(ptr %2, !61770, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !57565)
    #dbg_value(ptr %2, !61772, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !57567)
    #dbg_value(ptr %2, !61774, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !57569)
  %i.fjd = load i64, ptr %i.aaw, align 8, !dbg !69866, !alias.scope !64200, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !61776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57571)
    #dbg_value(i64 %i.fjd, !61776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57571)
  %.not78.i = icmp eq i64 %i.fjd, 0, !dbg !69867
  br i1 %.not78.i, label %bb.bhn, label %bb.bho, !dbg !69867

bb.bhn:                                           ; preds = %bb.bhm
  %i.fje = load ptr, ptr %i.aaz, align 8, !dbg !69868, !noalias !64204, !nonnull !1852, !noundef !1852
  %i.fjf = invoke noundef ptr %i.fje(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fjb, i64 noundef %i.fjc, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2)
          to label %.noexc2790 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69868, !inline_history !53034 ; 2 uses

.noexc2790:                                       ; preds = %bb.bhn
    #dbg_value(ptr %i.fjf, !61790, !DIExpression(), !57573)
  %.not79.i = icmp eq ptr %i.fjf, null, !dbg !69869
  br i1 %.not79.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread, label %bb.bhp, !dbg !69870

bb.bho:                                           ; preds = %bb.bhm
  %i.fjg = load ptr, ptr %i.aax, align 8, !dbg !69871, !alias.scope !64200, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fjg, !61776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57571)
  %i.fjh = getelementptr [24 x i8], ptr %i.fjg, i64 %i.fjd, !dbg !69872
  %i.fji = getelementptr i8, ptr %i.fjh, i64 -24, !dbg !69872
    #dbg_value(ptr %i.fji, !61779, !DIExpression(), !57577)
    #dbg_value(ptr %i.fji, !61757, !DIExpression(), !57578)
  %i.fjj = load ptr, ptr %i.aaz, align 8, !dbg !69873, !noalias !64204, !nonnull !1852, !noundef !1852
  %i.fjk = invoke noundef ptr %i.fjj(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fjb, i64 noundef %i.fjc, ptr noundef nonnull %i.fji, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %.noexc2791 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69873, !inline_history !53034 ; 2 uses

.noexc2791:                                       ; preds = %bb.bho
    #dbg_value(ptr %i.fjk, !61790, !DIExpression(), !57580)
  %.not80.i = icmp eq ptr %i.fjk, null, !dbg !69874
  br i1 %.not80.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread, label %bb.bhq, !dbg !69875

bb.bhp:                                           ; preds = %.noexc2790
    #dbg_value(ptr %i.fjf, !61760, !DIExpression(), !57581)
    #dbg_value(ptr %i.fjf, !61809, !DIExpression(), !57583)
    #dbg_value(ptr %i.fjf, !61816, !DIExpression(), !57584)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !69876, !noalias !64201
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ay, ptr noundef nonnull %i.fjf)
          to label %.noexc2792 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69876

.noexc2792:                                       ; preds = %bb.bhp
  %.sroa.05505.0.copyload5510 = load i8, ptr %i.ay, align 8, !dbg !69877, !noalias !64202
    #dbg_value(i8 %.sroa.05505.0.copyload5510, !58490, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !64203)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5518, i64 71, i1 false), !dbg !69877, !noalias !64202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !69878, !noalias !64201
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit, !dbg !69879

bb.bhq:                                           ; preds = %.noexc2791
    #dbg_value(ptr %i.fjk, !61758, !DIExpression(), !57585)
    #dbg_value(ptr %i.fjk, !61809, !DIExpression(), !57587)
    #dbg_value(ptr %i.fjk, !61815, !DIExpression(), !57588)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !69880, !noalias !64201
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.az, ptr noundef nonnull %i.fjk)
          to label %.noexc2793 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69880

.noexc2793:                                       ; preds = %bb.bhq
  %.sroa.05505.0.copyload5509 = load i8, ptr %i.az, align 8, !dbg !69881, !noalias !64202
    #dbg_value(i8 %.sroa.05505.0.copyload5509, !58490, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !64203)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5517, i64 71, i1 false), !dbg !69881, !noalias !64202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !69882, !noalias !64201
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit, !dbg !69879

bb.bhr:                                           ; preds = %bb.bhb
  %i.fjl = invoke noundef ptr @_RINvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB6_5Value6formatQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc2794 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69883 ; 2 uses

.noexc2794:                                       ; preds = %bb.bhr
    #dbg_value(ptr %i.fjl, !61790, !DIExpression(), !57590)
  %.not85.i = icmp eq ptr %i.fjl, null, !dbg !69884
  br i1 %.not85.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread, label %bb.bht, !dbg !69885

bb.bhs:                                           ; preds = %bb.bhb
  %i.fjm = load ptr, ptr %i.aax, align 8, !dbg !69886, !alias.scope !64200, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fjm, !61776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57515)
  %i.fjn = getelementptr [24 x i8], ptr %i.fjm, i64 %i.fie, !dbg !69887
  %i.fjo = getelementptr i8, ptr %i.fjn, i64 -24, !dbg !69887
    #dbg_value(ptr %i.fjo, !61777, !DIExpression(), !57594)
    #dbg_value(ptr %i.fjo, !61743, !DIExpression(), !57595)
  %i.fjp = invoke noundef ptr @_RINvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB6_5Value6formatINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fjo)
          to label %.noexc2795 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69888 ; 2 uses

.noexc2795:                                       ; preds = %bb.bhs
    #dbg_value(ptr %i.fjp, !61790, !DIExpression(), !57597)
  %.not86.i = icmp eq ptr %i.fjp, null, !dbg !69889
  br i1 %.not86.i, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread, label %bb.bhu, !dbg !69890

bb.bht:                                           ; preds = %.noexc2794
    #dbg_value(ptr %i.fjl, !61746, !DIExpression(), !57598)
    #dbg_value(ptr %i.fjl, !61809, !DIExpression(), !57600)
    #dbg_value(ptr %i.fjl, !61811, !DIExpression(), !57601)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !69891, !noalias !64201
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bd, ptr noundef nonnull %i.fjl)
          to label %.noexc2796 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69891

.noexc2796:                                       ; preds = %bb.bht
  %.sroa.05505.0.copyload5507 = load i8, ptr %i.bd, align 8, !dbg !69892, !noalias !64202
    #dbg_value(i8 %.sroa.05505.0.copyload5507, !58490, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !64203)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5515, i64 71, i1 false), !dbg !69892, !noalias !64202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !69893, !noalias !64201
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit, !dbg !69863

bb.bhu:                                           ; preds = %.noexc2795
    #dbg_value(ptr %i.fjp, !61744, !DIExpression(), !57602)
    #dbg_value(ptr %i.fjp, !61809, !DIExpression(), !57604)
    #dbg_value(ptr %i.fjp, !61810, !DIExpression(), !57605)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !69894, !noalias !64201
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.be, ptr noundef nonnull %i.fjp)
          to label %.noexc2797 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69894

.noexc2797:                                       ; preds = %bb.bhu
  %.sroa.05505.0.copyload5506 = load i8, ptr %i.be, align 8, !dbg !69895, !noalias !64202
    #dbg_value(i8 %.sroa.05505.0.copyload5506, !58490, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !64203)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513.0..sroa_idx5514, i64 71, i1 false), !dbg !69895, !noalias !64202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !69896, !noalias !64201
  br label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit, !dbg !69863

.lr.ph10376.a:                                    ; preds = %bb.bgy
  %i.fjq = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !69897
  %i.fjr = load ptr, ptr %i.fjq, align 8, !dbg !69897, !nonnull !1852, !noundef !1852 ; 3 uses
    #dbg_value(ptr %i.fjr, !60692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60743)
    #dbg_value(ptr %i.fjr, !60698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60746)
    #dbg_value(i64 %i.fht, !64001, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !64214)
    #dbg_value(i64 %i.fht, !64011, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !64217)
    #dbg_value(ptr %i.fjr, !64009, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !64218)
    #dbg_value(ptr %i.fjr, !63998, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !64219)
    #dbg_value(i64 %i.fht, !64009, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !64218)
    #dbg_value(i64 %i.fht, !63998, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !64219)
    #dbg_value(ptr %i.fjr, !64002, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !64220)
    #dbg_value(ptr %i.fjr, !64012, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !64217)
  %.idx10384 = mul nuw i64 %i.fht, 24, !dbg !69898
  %i.fjs = getelementptr i8, ptr %i.fjr, i64 %.idx10384, !dbg !69898 ; 2 uses
    #dbg_value(ptr %i.fjr, !58470, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !64221)
    #dbg_value(ptr %i.fjs, !58470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !64221)
    #dbg_value(i64 0, !58470, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !64221)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fjs) ]
  %.sroa.05502.010371 = getelementptr inbounds nuw i8, ptr %i.fjr, i64 24, !dbg !69899
  br label %bb.bhx, !dbg !69900

bb.bhv:                                           ; preds = %bb.bgy
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #27
          to label %bb.fy unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69901

bb.bhw:                                           ; preds = %bb.bhz
  %.sroa.05502.0 = getelementptr inbounds nuw i8, ptr %.sroa.05502.010375, i64 24, !dbg !69899 ; 2 uses
    #dbg_value(ptr %.sroa.05502.0, !58470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !64221)
    #dbg_value(i64 %i.fjz, !58470, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !64221)
    #dbg_value(ptr %i.fjy, !58469, !DIExpression(), !64197)
    #dbg_value(ptr %i.fjy, !58468, !DIExpression(), !64198)
    #dbg_value(ptr undef, !4334, !DIExpression(), !50279)
    #dbg_value(ptr undef, !4302, !DIExpression(), !50278)
    #dbg_value(ptr %.sroa.05502.0, !4313, !DIExpression(), !57606)
    #dbg_value(ptr %i.fjs, !4314, !DIExpression(), !57607)
    #dbg_value(ptr poison, !7627, !DIExpression(), !57609)
    #dbg_value(ptr poison, !7628, !DIExpression(), !57610)
  %i.fjt = icmp eq ptr %.sroa.05502.0, %i.fjs, !dbg !69902
  br i1 %i.fjt, label %.loopexit6182, label %bb.bhx, !dbg !69900

bb.bhx:                                           ; preds = %.lr.ph10376.a, %bb.bhw
  %.sroa.05502.010375 = phi ptr [ %.sroa.05502.010371, %.lr.ph10376.a ], [ %.sroa.05502.0, %bb.bhw ] ; 2 uses
  %.sroa.0322.110374 = phi ptr [ %i.cl, %.lr.ph10376.a ], [ %i.fjy, %bb.bhw ] ; 2 uses
  %.pn10373 = phi ptr [ %i.fjr, %.lr.ph10376.a ], [ %.sroa.05502.010375, %bb.bhw ] ; 4 uses
  %.sroa.85504.010372 = phi i64 [ 0, %.lr.ph10376.a ], [ %i.fjz, %bb.bhw ]
    #dbg_value(ptr %.sroa.0322.110374, !58469, !DIExpression(), !64197)
    #dbg_value(i64 %.sroa.85504.010372, !58470, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !64221)
    #dbg_value(ptr %.sroa.05502.010375, !58470, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !64221)
    #dbg_value(ptr %.sroa.05502.010375, !4335, !DIExpression(), !57611)
    #dbg_value(i64 %.sroa.85504.010372, !4338, !DIExpression(), !57612)
    #dbg_value(i64 %.sroa.85504.010372, !58470, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !64221)
    #dbg_value(i64 %.sroa.85504.010372, !58471, !DIExpression(), !64222)
    #dbg_value(ptr %.sroa.05502.010375, !58472, !DIExpression(), !64222)
    #dbg_value(ptr %.sroa.05502.010375, !60832, !DIExpression(), !64224)
    #dbg_value(ptr %.sroa.05502.010375, !60836, !DIExpression(), !64227)
    #dbg_value(ptr %.sroa.05502.010375, !60832, !DIExpression(), !64229)
    #dbg_value(ptr %.sroa.05502.010375, !60836, !DIExpression(), !64232)
  %i.fju = getelementptr inbounds nuw i8, ptr %.pn10373, i64 32, !dbg !69903
  %i.fjv = load ptr, ptr %i.fju, align 8, !dbg !69903, !nonnull !1852, !noundef !1852
  %i.fjw = getelementptr inbounds nuw i8, ptr %.pn10373, i64 40, !dbg !69904
  %i.fjx = load i64, ptr %i.fjw, align 8, !dbg !69904, !noundef !1852
  %i.fjy = invoke noundef align 8 ptr @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value8get_attr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.110374, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fjv, i64 noundef %i.fjx)
          to label %bb.bhz unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69905 ; 3 uses

_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit: ; preds = %.noexc2797, %.noexc2796, %.noexc2793, %.noexc2792, %.noexc2789, %.noexc2788, %.noexc2787
  %.sroa.05505.0 = phi i8 [ %.sroa.05505.0.copyload5508, %.noexc2789 ], [ %.sroa.05505.0.copyload5507, %.noexc2796 ], [ %.sroa.05505.0.copyload5506, %.noexc2797 ], [ %.sroa.05505.0.copyload5512, %.noexc2787 ], [ %.sroa.05505.0.copyload5511, %.noexc2788 ], [ %.sroa.05505.0.copyload5510, %.noexc2792 ], [ %.sroa.05505.0.copyload5509, %.noexc2793 ], !dbg !69906 ; 2 uses
    #dbg_value(i8 %.sroa.05505.0, !58490, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !64203)
  %.not2499 = icmp eq i8 %.sroa.05505.0, -1, !dbg !69907
  br i1 %.not2499, label %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread, label %bb.bhy, !dbg !69908

bb.bhy:                                           ; preds = %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit
    #dbg_value(i8 %.sroa.05505.0, !58489, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !64243)
  %.sroa.45584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.45584.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.135513, i64 71, i1 false), !dbg !69910
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.135513), !dbg !69911
    #dbg_value(i8 %.sroa.05505.0, !58475, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !64244)
    #dbg_value(i8 %.sroa.05505.0, !58479, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !64245)
    #dbg_value(i8 %.sroa.05505.0, !58478, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !64246)
  store i8 %.sroa.05505.0, ptr %0, align 8, !dbg !69909
  br label %bb.bie, !dbg !69912

_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit.thread: ; preds = %.noexc2784, %.noexc2786, %.noexc2790, %.noexc2791, %.noexc2794, %.noexc2795, %_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.135513), !dbg !69911
    #dbg_value(ptr %i.cl, !5276, !DIExpression(), !57614)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl), !dbg !69913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !dbg !69914
  br label %.outer, !dbg !69915

bb.bhz:                                           ; preds = %bb.bhx
  %i.fjz = add i64 %.sroa.85504.010372, 1, !dbg !69916 ; 3 uses
    #dbg_value(i64 %i.fjz, !58470, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !64221)
  %.not2500 = icmp eq ptr %i.fjy, null, !dbg !69917
  br i1 %.not2500, label %bb.bia, label %bb.bhw, !dbg !69918

bb.bia:                                           ; preds = %bb.bhz
  %i.fka = getelementptr i8, ptr %i.aic, i64 16
  %i.fkb = getelementptr inbounds nuw i8, ptr %.pn10373, i64 32
  %i.fkc = getelementptr inbounds nuw i8, ptr %.pn10373, i64 40
  %.val3170 = load i64, ptr %i.fka, align 8, !dbg !69919, !noundef !1852
    #dbg_value(ptr poison, !7565, !DIExpression(), !57617)
    #dbg_value(i64 %i.fjz, !7585, !DIExpression(), !57619)
    #dbg_value(i64 %i.fjz, !7583, !DIExpression(), !57620)
    #dbg_value(i64 %i.fjz, !7590, !DIExpression(), !57622)
    #dbg_value(i64 %i.fjz, !7596, !DIExpression(), !57624)
    #dbg_value(ptr poison, !7581, !DIExpression(), !57620)
    #dbg_value(i64 poison, !7582, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !57620)
    #dbg_value(ptr poison, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57626)
    #dbg_value(ptr poison, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57628)
    #dbg_value(i64 %.val3170, !7602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57626)
    #dbg_value(i64 %.val3170, !7605, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57628)
  %i.fkd = and i64 %.sroa.0210.07551, 4294967295, !dbg !69920 ; 2 uses
    #dbg_value(i64 %i.fkd, !7603, !DIExpression(), !57626)
    #dbg_value(i64 %i.fkd, !7606, !DIExpression(), !57628)
  %i.fke = icmp ugt i64 %.val3170, %i.fkd, !dbg !69921
  br i1 %i.fke, label %bb.bib, label %.invoke9537, !dbg !69921

bb.bib:                                           ; preds = %bb.bia
  %i.fkf = getelementptr i8, ptr %i.aic, i64 8
  %.val3169 = load ptr, ptr %i.fkf, align 8, !dbg !69919, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %.val3169, !7602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57626)
    #dbg_value(ptr %.val3169, !7605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57628)
  %i.fkg = getelementptr inbounds nuw [56 x i8], ptr %.val3169, i64 %i.fkd, !dbg !69922 ; 2 uses
    #dbg_value(ptr %i.fkg, !7574, !DIExpression(), !57617)
    #dbg_value(ptr undef, !7585, !DIExpression(DW_OP_deref), !57619)
    #dbg_value(ptr undef, !7565, !DIExpression(), !57617)
    #dbg_value(ptr %i.fkg, !7575, !DIExpression(), !57629)
    #dbg_value(ptr %i.fkg, !7588, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !57630)
    #dbg_value(ptr %i.fkg, !7608, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !57632)
    #dbg_value(ptr %i.fkg, !7610, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !57634)
    #dbg_value(ptr %i.fkg, !7613, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !57636)
  %i.fkh = getelementptr inbounds nuw i8, ptr %i.fkg, i64 48, !dbg !69923
  %i.fki = load i64, ptr %i.fkh, align 8, !dbg !69923, !noundef !1852
    #dbg_value(ptr poison, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57622)
    #dbg_value(ptr poison, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57624)
    #dbg_value(i64 %i.fki, !7593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57622)
    #dbg_value(i64 %i.fki, !7599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57624)
  %i.fkj = icmp ult i64 %i.fjz, %i.fki, !dbg !69924
  br i1 %i.fkj, label %bb.bic, label %.invoke9537, !dbg !69924

bb.bic:                                           ; preds = %bb.bib
  %i.fkk = getelementptr inbounds nuw i8, ptr %i.fkg, i64 40, !dbg !69925
  %i.fkl = load ptr, ptr %i.fkk, align 8, !dbg !69925, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fkl, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57622)
    #dbg_value(ptr %i.fkl, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57624)
  %i.fkm = getelementptr inbounds nuw [48 x i8], ptr %i.fkl, i64 %i.fjz, !dbg !69926
    #dbg_value(ptr %i.fkm, !60669, !DIExpression(), !60748)
    #dbg_value(ptr %i.fkm, !58474, !DIExpression(), !64248)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !dbg !69927
  %i.fkn = load ptr, ptr %i.fkb, align 8, !dbg !69928, !nonnull !1852, !noundef !1852
  %i.fko = load i64, ptr %i.fkc, align 8, !dbg !69929, !noundef !1852
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine21undefined_field_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0322.110374, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fkn, i64 noundef %i.fko, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fkm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aic)
          to label %bb.bid unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69930

bb.bid:                                           ; preds = %bb.bic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cj, i64 72, i1 false), !dbg !69931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !dbg !69932
  br label %bb.bie, !dbg !69933

bb.bie:                                           ; preds = %bb.bhy, %bb.bid, %bb.bii
    #dbg_value(ptr %i.cl, !5276, !DIExpression(), !57641)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl), !dbg !69934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !dbg !69914
  br label %bb.bij, !dbg !64666

bb.bif:                                           ; preds = %bb.bha
  %i.fkp = getelementptr inbounds nuw i8, ptr %i.fhz, i64 40, !dbg !69935
  %i.fkq = load ptr, ptr %i.fkp, align 8, !dbg !69935, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.fkq, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57476)
    #dbg_value(ptr %i.fkq, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57478)
    #dbg_value(ptr %i.fkq, !60669, !DIExpression(), !60730)
    #dbg_value(ptr %i.fkq, !58466, !DIExpression(), !64260)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !dbg !69936
  %i.fkr = load i64, ptr %i.fha, align 8, !dbg !69937, !noundef !1852
    #dbg_value(ptr poison, !60642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60735)
    #dbg_value(ptr poison, !60648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60738)
    #dbg_value(i64 %i.fkr, !60642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !60735)
    #dbg_value(i64 %i.fkr, !60648, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !60738)
  %.not2503 = icmp eq i64 %i.fkr, 0, !dbg !69938
  br i1 %.not2503, label %bb.bih, label %bb.big, !dbg !69938

.invoke9537:                                      ; preds = %bb.bha, %bb.bgz, %bb.bib, %bb.bia
  %i.fks = phi ptr [ @104, %bb.bib ], [ @104, %bb.bia ], [ @106, %bb.bgz ], [ @106, %bb.bha ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fks) #27
          to label %.cont9538 unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69939

.cont9538:                                        ; preds = %.invoke9537
  unreachable

bb.big:                                           ; preds = %bb.bif
  %i.fkt = getelementptr inbounds nuw i8, ptr %i.aig, i64 16, !dbg !69940
  %i.fku = load ptr, ptr %i.fkt, align 8, !dbg !69940, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.fku, !60642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60735)
    #dbg_value(ptr %i.fku, !60648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60738)
    #dbg_value(ptr %i.fku, !60832, !DIExpression(), !64269)
    #dbg_value(ptr %i.fku, !60836, !DIExpression(), !64272)
  %i.fkv = getelementptr inbounds nuw i8, ptr %i.fku, i64 8, !dbg !69941
  %i.fkw = load ptr, ptr %i.fkv, align 8, !dbg !69941, !nonnull !1852, !noundef !1852
  %i.fkx = getelementptr inbounds nuw i8, ptr %i.fku, i64 16, !dbg !69942
  %i.fky = load i64, ptr %i.fkx, align 8, !dbg !69942, !noundef !1852
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine19undefined_var_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aic, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fkw, i64 noundef %i.fky, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fkq)
          to label %bb.bii unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69943

bb.bih:                                           ; preds = %bb.bif
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #27
          to label %bb.fy unwind label %.loopexit.split-lp6184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !69938

bb.bii:                                           ; preds = %bb.big
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ck, i64 72, i1 false), !dbg !69944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !dbg !69945
  br label %bb.bie, !dbg !69946

bb.bij:                                           ; preds = %bb.gg, %bb.hg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit3609, %bb.nk, %_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk8get_span.exit.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1d_5ValueEEEB1f_.exit, %bb.qx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1c_.exit, %bb.uq, %bb.yn, %bb.aal, %bb.acm, %bb.aen, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4088, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4118, %bb.aim, %bb.ajj, %bb.akl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4193, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4211, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4229, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4247, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4265, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4281, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4299, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4316, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4331, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4346, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4361, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4428, %bb.bej, %bb.bgn, %bb.bie, %bb.d
  ret void, !dbg !64294
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9render_toQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) %2, i64 %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias nofree noundef align 8 dereferenceable(24) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !69960 {
bb.a:
  %i.a = alloca [0 x i8], align 1
    #dbg_declare(ptr poison, !70036, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !70043)
    #dbg_declare(ptr poison, !70036, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !70043)
    #dbg_declare(ptr poison, !70044, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !70049)
    #dbg_declare(ptr poison, !70044, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !70049)
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [264 x i8], align 8               ; 35 uses
    #dbg_declare(ptr poison, !70037, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !70050)
    #dbg_declare(ptr poison, !70037, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !70050)
    #dbg_declare(ptr poison, !70025, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !70051)
    #dbg_declare(ptr poison, !70025, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !70051)
  %i.e = alloca [72 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
    #dbg_value(ptr %2, !70018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !70052)
    #dbg_value(i64 %3, !70018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !70052)
    #dbg_value(ptr %6, !70021, !DIExpression(), !70052)
  store ptr %6, ptr %i.f, align 8
    #dbg_value(ptr %1, !70017, !DIExpression(), !70052)
    #dbg_value(ptr %4, !70019, !DIExpression(), !70052)
    #dbg_value(ptr %5, !70020, !DIExpression(), !70052)
    #dbg_declare(ptr %i.e, !70045, !DIExpression(), !70053)
    #dbg_declare(ptr %i.d, !70027, !DIExpression(), !70054)
    #dbg_declare(ptr %i.c, !70055, !DIExpression(), !70062)
    #dbg_declare(ptr poison, !70029, !DIExpression(), !70063)
    #dbg_declare(ptr poison, !70037, !DIExpression(), !70066)
    #dbg_declare(ptr %i.b, !70055, !DIExpression(), !70068)
end_hunk_6
begin_hunk_7_@llvm.vector.reduce.add.v2i64
!16663 = distinct !DILocation(line: 0, scope: !1436, inlinedAt: !16658)
!16664 = distinct !DILocation(line: 190, column: 42, scope: !1437, inlinedAt: !16661)
!16665 = distinct !DILocation(line: 0, scope: !1439, inlinedAt: !16664)
!16666 = distinct !DILocation(line: 578, column: 15, scope: !7601, inlinedAt: !16664)
!16667 = distinct !DILocation(line: 0, scope: !1440, inlinedAt: !16666)
!16668 = distinct !DILocation(line: 189, column: 14, scope: !1436, inlinedAt: !16658)
!16669 = distinct !DILocation(line: 0, scope: !1441, inlinedAt: !16668)
!16670 = distinct !DILocation(line: 578, column: 15, scope: !1441, inlinedAt: !16668)
!16671 = distinct !DILocation(line: 0, scope: !1442, inlinedAt: !16670)
!16672 = distinct !DILocation(line: 0, scope: !1434, inlinedAt: !16659)
!16673 = distinct !DILocation(line: 190, column: 28, scope: !1437, inlinedAt: !16661)
!16674 = distinct !DILocation(line: 190, column: 36, scope: !1437, inlinedAt: !16661)
!16675 = distinct !DILocation(line: 3894, column: 14, scope: !1443, inlinedAt: !16674)
!16676 = distinct !DILocation(line: 3895, column: 14, scope: !7612, inlinedAt: !16674)
!16677 = distinct !DILocation(line: 1856, column: 27, scope: !1444, inlinedAt: !16676)
!16678 = distinct !DILocation(line: 1873, column: 76, scope: !7615, inlinedAt: !16676)
!16679 = distinct !DILocation(line: 1974, column: 25, scope: !1445, inlinedAt: !16678)
!16680 = distinct !DILocation(line: 825, column: 29, scope: !8842)
!16681 = distinct !DILocation(line: 813, column: 46, scope: !8840)
!16682 = distinct !DILocation(line: 190, column: 14, scope: !1436, inlinedAt: !16681)
!16683 = distinct !DILocation(line: 0, scope: !1435, inlinedAt: !16682)
!16684 = distinct !DILocation(line: 1544, column: 24, scope: !1434, inlinedAt: !16682)
!16685 = distinct !DILocation(line: 0, scope: !1438, inlinedAt: !16684)
!16686 = distinct !DILocation(line: 0, scope: !1436, inlinedAt: !16681)
!16687 = distinct !DILocation(line: 190, column: 42, scope: !1437, inlinedAt: !16684)
!16688 = distinct !DILocation(line: 0, scope: !1439, inlinedAt: !16687)
!16689 = distinct !DILocation(line: 578, column: 15, scope: !7601, inlinedAt: !16687)
!16690 = distinct !DILocation(line: 0, scope: !1440, inlinedAt: !16689)
!16691 = distinct !DILocation(line: 189, column: 14, scope: !1436, inlinedAt: !16681)
!16692 = distinct !DILocation(line: 0, scope: !1441, inlinedAt: !16691)
!16693 = distinct !DILocation(line: 578, column: 15, scope: !1441, inlinedAt: !16691)
!16694 = distinct !DILocation(line: 0, scope: !1442, inlinedAt: !16693)
!16695 = distinct !DILocation(line: 0, scope: !1434, inlinedAt: !16682)
!16696 = distinct !DILocation(line: 190, column: 28, scope: !1437, inlinedAt: !16684)
!16697 = distinct !DILocation(line: 190, column: 36, scope: !1437, inlinedAt: !16684)
!16698 = distinct !DILocation(line: 3894, column: 14, scope: !1443, inlinedAt: !16697)
!16699 = distinct !DILocation(line: 3895, column: 14, scope: !7612, inlinedAt: !16697)
!16700 = distinct !DILocation(line: 1856, column: 27, scope: !1444, inlinedAt: !16699)
!16701 = distinct !DILocation(line: 1873, column: 76, scope: !7615, inlinedAt: !16699)
!16702 = distinct !DILocation(line: 1974, column: 25, scope: !1445, inlinedAt: !16701)
!16703 = distinct !DILocation(line: 2061, column: 18, scope: !906, inlinedAt: !16503)
!16704 = distinct !DILocation(line: 305, column: 20, scope: !915, inlinedAt: !16703)
!16705 = distinct !DILocation(line: 622, column: 14, scope: !914, inlinedAt: !16704)
!16706 = distinct !DILocation(line: 0, scope: !903, inlinedAt: !16501)
!16707 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !16701)
!16708 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !16707)
!16709 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !16708)
!16710 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !16678)
!16711 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !16710)
!16712 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !16711)
!16713 = distinct !DILocation(line: 831, column: 17, scope: !8847)
!16714 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !16713)
!16715 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !16544)
!16716 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !16715)
!16717 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !16716)
!16718 = distinct !DILocation(line: 831, column: 17, scope: !8847)
!16719 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !16718)
!16720 = distinct !DILocation(line: 865, column: 17, scope: !8835)
!16721 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !16720)
!16722 = distinct !DILocation(line: 839, column: 29, scope: !8834)
!16723 = distinct !DILocation(line: 0, scope: !1120, inlinedAt: !16722)
!16724 = distinct !DILocation(line: 429, column: 23, scope: !1120, inlinedAt: !16722)
!16725 = distinct !DILocation(line: 0, scope: !1121, inlinedAt: !16724)
!16726 = distinct !DILocation(line: 841, column: 30, scope: !8834)
!16727 = distinct !DILocation(line: 190, column: 14, scope: !1436, inlinedAt: !16726)
!16728 = distinct !DILocation(line: 0, scope: !1435, inlinedAt: !16727)
!16729 = distinct !DILocation(line: 1544, column: 24, scope: !1434, inlinedAt: !16727)
!16730 = distinct !DILocation(line: 0, scope: !1438, inlinedAt: !16729)
!16731 = distinct !DILocation(line: 0, scope: !1436, inlinedAt: !16726)
!16732 = distinct !DILocation(line: 190, column: 42, scope: !1437, inlinedAt: !16729)
!16733 = distinct !DILocation(line: 0, scope: !1439, inlinedAt: !16732)
!16734 = distinct !DILocation(line: 578, column: 15, scope: !7601, inlinedAt: !16732)
!16735 = distinct !DILocation(line: 0, scope: !1440, inlinedAt: !16734)
!16736 = distinct !DILocation(line: 189, column: 14, scope: !1436, inlinedAt: !16726)
!16737 = distinct !DILocation(line: 0, scope: !1441, inlinedAt: !16736)
!16738 = distinct !DILocation(line: 578, column: 15, scope: !1441, inlinedAt: !16736)
!16739 = distinct !DILocation(line: 0, scope: !1442, inlinedAt: !16738)
!16740 = distinct !DILocation(line: 0, scope: !1434, inlinedAt: !16727)
!16741 = distinct !DILocation(line: 190, column: 28, scope: !1437, inlinedAt: !16729)
!16742 = distinct !DILocation(line: 190, column: 36, scope: !1437, inlinedAt: !16729)
!16743 = distinct !DILocation(line: 3894, column: 14, scope: !1443, inlinedAt: !16742)
!16744 = distinct !DILocation(line: 3895, column: 14, scope: !7612, inlinedAt: !16742)
!16745 = distinct !DILocation(line: 1856, column: 27, scope: !1444, inlinedAt: !16744)
!16746 = distinct !DILocation(line: 1873, column: 76, scope: !7615, inlinedAt: !16744)
!16747 = distinct !DILocation(line: 1974, column: 25, scope: !1445, inlinedAt: !16746)
!16748 = distinct !{!16748, i1 true, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_"}
!16749 = distinct !{!16749, !16748, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_: argument 2"}
!16750 = distinct !{!16750, !16748, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_: argument 3"}
!16751 = distinct !DILocation(line: 864, column: 26, scope: !8831)
!16752 = distinct !DILocation(line: 881, column: 48, scope: !12221, inlinedAt: !16751)
!16753 = distinct !DILocation(line: 678, column: 38, scope: !12201, inlinedAt: !16752)
!16754 = distinct !DILocation(line: 60, column: 34, scope: !12199, inlinedAt: !16753)
!16755 = distinct !DILocation(line: 0, scope: !12221, inlinedAt: !16751)
!16756 = distinct !DILocation(line: 881, column: 18, scope: !12221, inlinedAt: !16751)
!16757 = distinct !DILocation(line: 0, scope: !12227, inlinedAt: !16756)
!16758 = distinct !DILocation(line: 0, scope: !12200, inlinedAt: !16752)
!16759 = distinct !DILocation(line: 0, scope: !12199, inlinedAt: !16753)
!16760 = distinct !DILocation(line: 51, column: 14, scope: !12227, inlinedAt: !16756)
!16761 = distinct !DILocation(line: 0, scope: !12233, inlinedAt: !16760)
!16762 = distinct !{!16762, !16748, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_: argument 4"}
!16763 = distinct !{!16763, !16748, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_: argument 1"}
!16764 = distinct !{!16764, !16748, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_: argument 0"}
!16765 = distinct !DILocation(line: 882, column: 37, scope: !12220, inlinedAt: !16751)
!16766 = distinct !DILocation(line: 3903, column: 18, scope: !12239, inlinedAt: !16765)
!16767 = distinct !DILocation(line: 3904, column: 14, scope: !12239, inlinedAt: !16765)
!16768 = distinct !DILocation(line: 1892, column: 31, scope: !12242, inlinedAt: !16767)
!16769 = distinct !DILocation(line: 1912, column: 78, scope: !12242, inlinedAt: !16767)
!16770 = distinct !DILocation(line: 2058, column: 29, scope: !12245, inlinedAt: !16769)
!16771 = distinct !DILocation(line: 882, column: 59, scope: !12220, inlinedAt: !16751)
!16772 = distinct !DILocation(line: 0, scope: !12251, inlinedAt: !16771)
!16773 = distinct !DILocation(line: 678, column: 32, scope: !12201, inlinedAt: !16752)
!16774 = distinct !DILocation(line: 678, column: 40, scope: !12201, inlinedAt: !16752)
!16775 = distinct !DILocation(line: 144, column: 24, scope: !12257, inlinedAt: !16774)
!16776 = distinct !DILocation(line: 0, scope: !12215, inlinedAt: !16751)
!16777 = distinct !DILocation(line: 888, column: 37, scope: !12214, inlinedAt: !16751)
!16778 = distinct !DILocation(line: 3903, column: 18, scope: !12239, inlinedAt: !16777)
!16779 = distinct !DILocation(line: 3904, column: 14, scope: !21041, inlinedAt: !16777)
!16780 = distinct !DILocation(line: 1892, column: 31, scope: !12242, inlinedAt: !16779)
!16781 = distinct !DILocation(line: 1912, column: 78, scope: !21042, inlinedAt: !16779)
!16782 = distinct !DILocation(line: 2058, column: 29, scope: !12245, inlinedAt: !16781)
!16783 = distinct !DILocation(line: 888, column: 59, scope: !12214, inlinedAt: !16751)
!16784 = distinct !DILocation(line: 0, scope: !12251, inlinedAt: !16783)
!16785 = distinct !DILocation(line: 895, column: 33, scope: !12221, inlinedAt: !16751)
!16786 = distinct !DILocation(line: 3103, column: 18, scope: !12270, inlinedAt: !16785)
!16787 = distinct !DILocation(line: 0, scope: !12269, inlinedAt: !16785)
!16788 = distinct !DILocation(line: 896, column: 13, scope: !12221, inlinedAt: !16751)
!16789 = distinct !DILocation(line: 0, scope: !12288, inlinedAt: !16788)
!16790 = distinct !DILocation(line: 891, column: 17, scope: !12215, inlinedAt: !16751)
!16791 = distinct !DILocation(line: 0, scope: !12288, inlinedAt: !16790)
!16792 = distinct !DILocation(line: 2061, column: 18, scope: !21064, inlinedAt: !16781)
!16793 = distinct !DILocation(line: 305, column: 20, scope: !21063, inlinedAt: !16792)
!16794 = distinct !DILocation(line: 622, column: 14, scope: !21062, inlinedAt: !16793)
!16795 = distinct !DILocation(line: 0, scope: !12249, inlinedAt: !16783)
!16796 = distinct !DILocation(line: 0, scope: !12214, inlinedAt: !16751)
!16797 = distinct !DILocation(line: 889, column: 17, scope: !12214, inlinedAt: !16751)
!16798 = distinct !DILocation(line: 0, scope: !12288, inlinedAt: !16797)
!16799 = distinct !DILocation(line: 0, scope: !12211, inlinedAt: !16751)
!16800 = distinct !DILocation(line: 891, column: 17, scope: !21074, inlinedAt: !16751)
!16801 = distinct !DILocation(line: 0, scope: !12312, inlinedAt: !16800)
!16802 = distinct !DILocation(line: 0, scope: !12308, inlinedAt: !16800)
!16803 = distinct !DILocation(line: 0, scope: !12213, inlinedAt: !16751)
!16804 = distinct !DILocation(line: 889, column: 17, scope: !21078, inlinedAt: !16751)
!16805 = distinct !DILocation(line: 0, scope: !12312, inlinedAt: !16804)
!16806 = distinct !DILocation(line: 0, scope: !12309, inlinedAt: !16804)
!16807 = distinct !DILocation(line: 0, scope: !12209, inlinedAt: !16751)
!16808 = distinct !DILocation(line: 896, column: 13, scope: !21079, inlinedAt: !16751)
!16809 = distinct !DILocation(line: 0, scope: !12312, inlinedAt: !16808)
!16810 = distinct !DILocation(line: 0, scope: !12307, inlinedAt: !16808)
!16811 = distinct !DILocation(line: 899, column: 66, scope: !12221, inlinedAt: !16751)
!16812 = distinct !DILocation(line: 3894, column: 14, scope: !12324, inlinedAt: !16811)
!16813 = distinct !DILocation(line: 3895, column: 14, scope: !12324, inlinedAt: !16811)
!16814 = distinct !DILocation(line: 1856, column: 27, scope: !12327, inlinedAt: !16813)
!16815 = distinct !DILocation(line: 1873, column: 76, scope: !12327, inlinedAt: !16813)
!16816 = distinct !DILocation(line: 1974, column: 25, scope: !12330, inlinedAt: !16815)
!16817 = distinct !DILocation(line: 1977, column: 18, scope: !12330, inlinedAt: !16815)
!16818 = distinct !DILocation(line: 305, column: 20, scope: !21088, inlinedAt: !16817)
!16819 = distinct !DILocation(line: 622, column: 14, scope: !21087, inlinedAt: !16818)
!16820 = distinct !DILocation(line: 0, scope: !12207, inlinedAt: !16751)
!16821 = distinct !DILocation(line: 900, column: 37, scope: !12206, inlinedAt: !16751)
!16822 = distinct !DILocation(line: 3903, column: 18, scope: !12239, inlinedAt: !16821)
!16823 = distinct !DILocation(line: 3904, column: 14, scope: !21089, inlinedAt: !16821)
!16824 = distinct !DILocation(line: 1892, column: 31, scope: !12242, inlinedAt: !16823)
!16825 = distinct !DILocation(line: 1912, column: 78, scope: !21090, inlinedAt: !16823)
!16826 = distinct !DILocation(line: 2058, column: 29, scope: !12245, inlinedAt: !16825)
!16827 = distinct !DILocation(line: 900, column: 59, scope: !12206, inlinedAt: !16751)
!16828 = distinct !DILocation(line: 0, scope: !12251, inlinedAt: !16827)
!16829 = distinct !DILocation(line: 903, column: 17, scope: !12207, inlinedAt: !16751)
!16830 = distinct !DILocation(line: 0, scope: !12288, inlinedAt: !16829)
!16831 = distinct !DILocation(line: 2061, column: 18, scope: !21094, inlinedAt: !16825)
!16832 = distinct !DILocation(line: 305, column: 20, scope: !21093, inlinedAt: !16831)
!16833 = distinct !DILocation(line: 622, column: 14, scope: !21092, inlinedAt: !16832)
!16834 = distinct !DILocation(line: 0, scope: !12248, inlinedAt: !16827)
!16835 = distinct !DILocation(line: 0, scope: !12206, inlinedAt: !16751)
!16836 = distinct !DILocation(line: 901, column: 17, scope: !12206, inlinedAt: !16751)
!16837 = distinct !DILocation(line: 0, scope: !12288, inlinedAt: !16836)
!16838 = distinct !DILocation(line: 0, scope: !12203, inlinedAt: !16751)
!16839 = distinct !DILocation(line: 903, column: 17, scope: !21095, inlinedAt: !16751)
!16840 = distinct !DILocation(line: 0, scope: !12312, inlinedAt: !16839)
!16841 = distinct !DILocation(line: 0, scope: !12305, inlinedAt: !16839)
!16842 = distinct !DILocation(line: 0, scope: !12205, inlinedAt: !16751)
!16843 = distinct !DILocation(line: 901, column: 17, scope: !21097, inlinedAt: !16751)
!16844 = distinct !DILocation(line: 0, scope: !12312, inlinedAt: !16843)
!16845 = distinct !DILocation(line: 0, scope: !12306, inlinedAt: !16843)
!16846 = distinct !DILocation(line: 885, column: 17, scope: !12221, inlinedAt: !16751)
!16847 = distinct !DILocation(line: 0, scope: !12288, inlinedAt: !16846)
!16848 = distinct !DILocation(line: 2061, column: 18, scope: !12245, inlinedAt: !16769)
!16849 = distinct !DILocation(line: 305, column: 20, scope: !12296, inlinedAt: !16848)
!16850 = distinct !DILocation(line: 622, column: 14, scope: !12295, inlinedAt: !16849)
!16851 = distinct !DILocation(line: 0, scope: !12250, inlinedAt: !16771)
!16852 = distinct !DILocation(line: 0, scope: !12220, inlinedAt: !16751)
!16853 = distinct !DILocation(line: 883, column: 17, scope: !12220, inlinedAt: !16751)
!16854 = distinct !DILocation(line: 0, scope: !12288, inlinedAt: !16853)
!16855 = distinct !DILocation(line: 0, scope: !12217, inlinedAt: !16751)
!16856 = distinct !DILocation(line: 885, column: 17, scope: !21098, inlinedAt: !16751)
!16857 = distinct !DILocation(line: 0, scope: !12312, inlinedAt: !16856)
!16858 = distinct !DILocation(line: 0, scope: !12310, inlinedAt: !16856)
!16859 = distinct !DILocation(line: 0, scope: !12219, inlinedAt: !16751)
!16860 = distinct !DILocation(line: 883, column: 17, scope: !21099, inlinedAt: !16751)
!16861 = distinct !DILocation(line: 0, scope: !12312, inlinedAt: !16860)
!16862 = distinct !DILocation(line: 0, scope: !12311, inlinedAt: !16860)
!16863 = distinct !DILocation(line: 0, scope: !715, inlinedAt: !9538)
!16864 = distinct !DILocation(line: 0, scope: !714, inlinedAt: !9538)
!16865 = distinct !DILocation(line: 180, column: 28, scope: !714, inlinedAt: !9538)
!16866 = distinct !DILocation(line: 1662, column: 11, scope: !1446, inlinedAt: !16865)
!16867 = distinct !DILocation(line: 1662, column: 18, scope: !1446, inlinedAt: !16865)
!16868 = distinct !DILocation(line: 0, scope: !729, inlinedAt: !9537)
!16869 = distinct !DILocation(line: 0, scope: !722, inlinedAt: !9537)
!16870 = distinct !DILocation(line: 865, column: 17, scope: !8835)
!16871 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !16870)
!16872 = distinct !DILocation(line: 853, column: 42, scope: !8828)
!16873 = distinct !DILocation(line: 190, column: 14, scope: !1436, inlinedAt: !16872)
!16874 = distinct !DILocation(line: 0, scope: !1435, inlinedAt: !16873)
!16875 = distinct !DILocation(line: 1544, column: 24, scope: !1434, inlinedAt: !16873)
!16876 = distinct !DILocation(line: 0, scope: !1438, inlinedAt: !16875)
!16877 = distinct !DILocation(line: 0, scope: !1436, inlinedAt: !16872)
!16878 = distinct !DILocation(line: 190, column: 42, scope: !1437, inlinedAt: !16875)
!16879 = distinct !DILocation(line: 0, scope: !1439, inlinedAt: !16878)
!16880 = distinct !DILocation(line: 578, column: 15, scope: !7601, inlinedAt: !16878)
!16881 = distinct !DILocation(line: 0, scope: !1440, inlinedAt: !16880)
!16882 = distinct !DILocation(line: 189, column: 14, scope: !1436, inlinedAt: !16872)
!16883 = distinct !DILocation(line: 0, scope: !1441, inlinedAt: !16882)
!16884 = distinct !DILocation(line: 578, column: 15, scope: !1441, inlinedAt: !16882)
!16885 = distinct !DILocation(line: 0, scope: !1442, inlinedAt: !16884)
!16886 = distinct !DILocation(line: 0, scope: !1434, inlinedAt: !16873)
!16887 = distinct !DILocation(line: 190, column: 28, scope: !1437, inlinedAt: !16875)
!16888 = distinct !DILocation(line: 190, column: 36, scope: !1437, inlinedAt: !16875)
!16889 = distinct !DILocation(line: 3894, column: 14, scope: !1443, inlinedAt: !16888)
!16890 = distinct !DILocation(line: 3895, column: 14, scope: !7612, inlinedAt: !16888)
!16891 = distinct !DILocation(line: 1856, column: 27, scope: !1444, inlinedAt: !16890)
!16892 = distinct !DILocation(line: 1873, column: 76, scope: !7615, inlinedAt: !16890)
!16893 = distinct !DILocation(line: 1974, column: 25, scope: !1445, inlinedAt: !16892)
!16894 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !16892)
!16895 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !16894)
!16896 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !16895)
!16897 = distinct !DILocation(line: 865, column: 17, scope: !8835)
!16898 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !16897)
!16899 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !16746)
!16900 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !16899)
!16901 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !16900)
!16902 = !{!573, !3485, !3926, !3230}
!16903 = !DISubroutineType(types: !16902)
!16904 = !DISubprogram(name: "interpret<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_", scope: !491, file: !3254, line: 54, type: !16903, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3761)
!16905 = !DILocalVariable(name: "self", arg: 1, scope: !9468, file: !3254, line: 55, type: !3485)
!16906 = !DILocalVariable(name: "state", arg: 2, scope: !9468, file: !3254, line: 56, type: !3926)
!16907 = !DILocalVariable(name: "output", arg: 3, scope: !9468, file: !3254, line: 57, type: !3230)
!16908 = !DILocalVariable(name: "ip", scope: !9467, file: !3254, line: 59, type: !1832, align: 64)
!16909 = !DILocalVariable(name: "instr", scope: !9466, file: !3254, line: 213, type: !3927, align: 64)
!16910 = !DILocalVariable(name: "current_ip", scope: !9465, file: !3254, line: 215, type: !3659, align: 32)
!16911 = !DILocalVariable(name: "v", scope: !9464, file: !3254, line: 218, type: !3928, align: 64)
!16912 = !DILocalVariable(name: "n", scope: !9463, file: !3254, line: 221, type: !2900, align: 64)
!16913 = !DILocalVariable(name: "attr", scope: !9462, file: !3254, line: 222, type: !2900, align: 64)
!16914 = !DILocalVariable(name: "is_optional", scope: !9461, file: !3254, line: 223, type: !2023, align: 8)
!16915 = !DILocalVariable(name: "a", scope: !9460, file: !3254, line: 224, type: !139, align: 64)
!16916 = !DILocalVariable(name: "a_span", scope: !9460, file: !3254, line: 224, type: !537, align: 32)
!16917 = !DILocalVariable(name: "chunk", scope: !9459, file: !3254, line: 63, type: !3639, align: 64)
!16918 = !DILocalVariable(name: "span", scope: !9458, file: !3254, line: 64, type: !15, align: 64)
!16919 = !DILocalVariable(name: "name", scope: !9457, file: !3254, line: 67, type: !90, align: 64)
!16920 = !DILocalVariable(name: "source", scope: !9457, file: !3254, line: 67, type: !90, align: 64)
!16921 = !DILocalVariable(name: "err", scope: !9456, file: !3254, line: 68, type: !563, align: 64)
!16922 = !DILexicalBlockFile(scope: !9455, file: !3254, discriminator: 0)
!16923 = !DILocalVariable(name: "args", scope: !16922, file: !3254, line: 231, type: !680, align: 64)
!16924 = !DILexicalBlockFile(scope: !9454, file: !3254, discriminator: 0)
!16925 = !DILocalVariable(name: "args", scope: !16924, file: !3254, line: 231, type: !3931, align: 64)
!16926 = !DILocalVariable(name: "next", scope: !9453, file: !3254, line: 233, type: !139, align: 64)
!16927 = !DILocalVariable(name: "is_optional", scope: !9452, file: !3254, line: 238, type: !2023, align: 8)
!16928 = !DILocalVariable(name: "subscript", scope: !9451, file: !3254, line: 239, type: !139, align: 64)
!16929 = !DILocalVariable(name: "subscript_span", scope: !9451, file: !3254, line: 239, type: !537, align: 32)
!16930 = !DILocalVariable(name: "val", scope: !9450, file: !3254, line: 240, type: !139, align: 64)
!16931 = !DILocalVariable(name: "val_span", scope: !9450, file: !3254, line: 240, type: !537, align: 32)
!16932 = !DILocalVariable(name: "chunk", scope: !9449, file: !3254, line: 63, type: !3639, align: 64)
!16933 = !DILocalVariable(name: "span", scope: !9448, file: !3254, line: 64, type: !15, align: 64)
!16934 = !DILocalVariable(name: "name", scope: !9447, file: !3254, line: 67, type: !90, align: 64)
!16935 = !DILocalVariable(name: "source", scope: !9447, file: !3254, line: 67, type: !90, align: 64)
!16936 = !DILocalVariable(name: "err", scope: !9446, file: !3254, line: 68, type: !563, align: 64)
!16937 = !DILocalVariable(name: "chunk", scope: !9445, file: !3254, line: 63, type: !3639, align: 64)
!16938 = !DILocalVariable(name: "span", scope: !9444, file: !3254, line: 64, type: !15, align: 64)
!16939 = !DILocalVariable(name: "name", scope: !9443, file: !3254, line: 67, type: !90, align: 64)
!16940 = !DILocalVariable(name: "source", scope: !9443, file: !3254, line: 67, type: !90, align: 64)
!16941 = !DILocalVariable(name: "err", scope: !9442, file: !3254, line: 68, type: !563, align: 64)
!16942 = !DILocalVariable(name: "c_span", scope: !9441, file: !3254, line: 259, type: !537, align: 32)
!16943 = !DILocalVariable(name: "v", scope: !9440, file: !3254, line: 261, type: !139, align: 64)
!16944 = !DILocalVariable(name: "e", scope: !9439, file: !3254, line: 264, type: !569, align: 64)
!16945 = !DILocalVariable(name: "chunk", scope: !9438, file: !3254, line: 63, type: !3639, align: 64)
!16946 = !DILocalVariable(name: "span", scope: !9437, file: !3254, line: 64, type: !15, align: 64)
!16947 = !DILocalVariable(name: "name", scope: !9436, file: !3254, line: 67, type: !90, align: 64)
!16948 = !DILocalVariable(name: "source", scope: !9436, file: !3254, line: 67, type: !90, align: 64)
!16949 = !DILocalVariable(name: "err", scope: !9435, file: !3254, line: 68, type: !563, align: 64)
!16950 = !DILocalVariable(name: "is_optional", scope: !9434, file: !3254, line: 271, type: !2023, align: 8)
!16951 = !DILocalVariable(name: "step", scope: !9433, file: !3254, line: 272, type: !139, align: 64)
!16952 = !DILocalVariable(name: "step_span", scope: !9433, file: !3254, line: 272, type: !537, align: 32)
!16953 = !DILocalVariable(name: "end", scope: !9432, file: !3254, line: 273, type: !139, align: 64)
!16954 = !DILocalVariable(name: "end_span", scope: !9432, file: !3254, line: 273, type: !537, align: 32)
!16955 = !DILocalVariable(name: "start", scope: !9431, file: !3254, line: 274, type: !139, align: 64)
!16956 = !DILocalVariable(name: "start_span", scope: !9431, file: !3254, line: 274, type: !537, align: 32)
!16957 = !DILocalVariable(name: "val", scope: !9430, file: !3254, line: 275, type: !139, align: 64)
!16958 = !DILocalVariable(name: "val_span", scope: !9430, file: !3254, line: 275, type: !537, align: 32)
!16959 = !DILocalVariable(name: "chunk", scope: !9429, file: !3254, line: 63, type: !3639, align: 64)
!16960 = !DILocalVariable(name: "span", scope: !9428, file: !3254, line: 64, type: !15, align: 64)
!16961 = !DILocalVariable(name: "name", scope: !9427, file: !3254, line: 67, type: !90, align: 64)
!16962 = !DILocalVariable(name: "source", scope: !9427, file: !3254, line: 67, type: !90, align: 64)
!16963 = !DILocalVariable(name: "err", scope: !9426, file: !3254, line: 68, type: !563, align: 64)
!16964 = !DILocalVariable(name: "s", scope: !9425, file: !3254, line: 288, type: !665, align: 128)
!16965 = !DILocalVariable(name: "chunk", scope: !9424, file: !3254, line: 63, type: !3639, align: 64)
!16966 = !DILocalVariable(name: "span", scope: !9423, file: !3254, line: 64, type: !15, align: 64)
!16967 = !DILocalVariable(name: "name", scope: !9422, file: !3254, line: 67, type: !90, align: 64)
!16968 = !DILocalVariable(name: "source", scope: !9422, file: !3254, line: 67, type: !90, align: 64)
!16969 = !DILocalVariable(name: "err", scope: !9421, file: !3254, line: 68, type: !563, align: 64)
!16970 = !DILocalVariable(name: "n", scope: !9420, file: !3254, line: 294, type: !2203, align: 128)
!16971 = !DILocalVariable(name: "chunk", scope: !9419, file: !3254, line: 63, type: !3639, align: 64)
!16972 = !DILocalVariable(name: "span", scope: !9418, file: !3254, line: 64, type: !15, align: 64)
!16973 = !DILocalVariable(name: "name", scope: !9417, file: !3254, line: 67, type: !90, align: 64)
!16974 = !DILocalVariable(name: "source", scope: !9417, file: !3254, line: 67, type: !90, align: 64)
!16975 = !DILocalVariable(name: "err", scope: !9416, file: !3254, line: 68, type: !563, align: 64)
!16976 = !DILexicalBlockFile(scope: !9415, file: !3254, discriminator: 0)
!16977 = !DILocalVariable(name: "args", scope: !16976, file: !3254, line: 296, type: !661, align: 64)
!16978 = !DILexicalBlockFile(scope: !9414, file: !3254, discriminator: 0)
!16979 = !DILocalVariable(name: "args", scope: !16978, file: !3254, line: 296, type: !3931, align: 64)
!16980 = !DILocalVariable(name: "e", scope: !9413, file: !3254, line: 304, type: !665, align: 128)
!16981 = !DILocalVariable(name: "chunk", scope: !9412, file: !3254, line: 63, type: !3639, align: 64)
!16982 = !DILocalVariable(name: "span", scope: !9411, file: !3254, line: 64, type: !15, align: 64)
!16983 = !DILocalVariable(name: "name", scope: !9410, file: !3254, line: 67, type: !90, align: 64)
!16984 = !DILocalVariable(name: "source", scope: !9410, file: !3254, line: 67, type: !90, align: 64)
!16985 = !DILocalVariable(name: "err", scope: !9409, file: !3254, line: 68, type: !563, align: 64)
!16986 = !DILocalVariable(name: "n", scope: !9408, file: !3254, line: 310, type: !2203, align: 128)
!16987 = !DILocalVariable(name: "chunk", scope: !9407, file: !3254, line: 63, type: !3639, align: 64)
!16988 = !DILocalVariable(name: "span", scope: !9406, file: !3254, line: 64, type: !15, align: 64)
!16989 = !DILocalVariable(name: "name", scope: !9405, file: !3254, line: 67, type: !90, align: 64)
!16990 = !DILocalVariable(name: "source", scope: !9405, file: !3254, line: 67, type: !90, align: 64)
!16991 = !DILocalVariable(name: "err", scope: !9404, file: !3254, line: 68, type: !563, align: 64)
!16992 = !DILexicalBlockFile(scope: !9403, file: !3254, discriminator: 0)
!16993 = !DILocalVariable(name: "args", scope: !16992, file: !3254, line: 312, type: !661, align: 64)
!16994 = !DILexicalBlockFile(scope: !9402, file: !3254, discriminator: 0)
!16995 = !DILocalVariable(name: "args", scope: !16994, file: !3254, line: 312, type: !3931, align: 64)
!16996 = !DILocalVariable(name: "st", scope: !9401, file: !3254, line: 317, type: !665, align: 128)
!16997 = !DILocalVariable(name: "chunk", scope: !9400, file: !3254, line: 63, type: !3639, align: 64)
!16998 = !DILocalVariable(name: "span", scope: !9399, file: !3254, line: 64, type: !15, align: 64)
!16999 = !DILocalVariable(name: "name", scope: !9398, file: !3254, line: 67, type: !90, align: 64)
!17000 = !DILocalVariable(name: "source", scope: !9398, file: !3254, line: 67, type: !90, align: 64)
!17001 = !DILocalVariable(name: "err", scope: !9397, file: !3254, line: 68, type: !563, align: 64)
!17002 = !DILocalVariable(name: "n", scope: !9396, file: !3254, line: 323, type: !2203, align: 128)
!17003 = !DILocalVariable(name: "chunk", scope: !9395, file: !3254, line: 63, type: !3639, align: 64)
!17004 = !DILocalVariable(name: "span", scope: !9394, file: !3254, line: 64, type: !15, align: 64)
!17005 = !DILocalVariable(name: "name", scope: !9393, file: !3254, line: 67, type: !90, align: 64)
!17006 = !DILocalVariable(name: "source", scope: !9393, file: !3254, line: 67, type: !90, align: 64)
!17007 = !DILocalVariable(name: "err", scope: !9392, file: !3254, line: 68, type: !563, align: 64)
!17008 = !DILexicalBlockFile(scope: !9391, file: !3254, discriminator: 0)
!17009 = !DILocalVariable(name: "args", scope: !17008, file: !3254, line: 325, type: !661, align: 64)
!17010 = !DILexicalBlockFile(scope: !9390, file: !3254, discriminator: 0)
!17011 = !DILocalVariable(name: "args", scope: !17010, file: !3254, line: 325, type: !3931, align: 64)
!17012 = !DILocalVariable(name: "v", scope: !9389, file: !3254, line: 334, type: !139, align: 64)
!17013 = !DILocalVariable(name: "e", scope: !9388, file: !3254, line: 337, type: !569, align: 64)
!17014 = !DILocalVariable(name: "chunk", scope: !9387, file: !3254, line: 63, type: !3639, align: 64)
!17015 = !DILocalVariable(name: "span", scope: !9386, file: !3254, line: 64, type: !15, align: 64)
!17016 = !DILocalVariable(name: "name", scope: !9385, file: !3254, line: 67, type: !90, align: 64)
!17017 = !DILocalVariable(name: "source", scope: !9385, file: !3254, line: 67, type: !90, align: 64)
!17018 = !DILocalVariable(name: "err", scope: !9384, file: !3254, line: 68, type: !563, align: 64)
!17019 = !DILocalVariable(name: "t", scope: !9383, file: !3254, line: 343, type: !2900, align: 64)
!17020 = !DILocalVariable(name: "captured", scope: !9382, file: !3254, line: 344, type: !3230, align: 64)
!17021 = !DILocalVariable(name: "residual", scope: !9381, file: !3254, line: 345, type: !660, align: 64)
!17022 = !DILocalVariable(name: "val", scope: !9380, file: !3254, line: 345, type: !1829, align: 8)
!17023 = !DILocalVariable(name: "residual", scope: !9379, file: !3254, line: 347, type: !660, align: 64)
!17024 = !DILocalVariable(name: "val", scope: !9378, file: !3254, line: 347, type: !1829, align: 8)
!17025 = !DILocalVariable(name: "top", scope: !9377, file: !3254, line: 351, type: !139, align: 64)
!17026 = !DILocalVariable(name: "top_span", scope: !9377, file: !3254, line: 351, type: !537, align: 32)
!17027 = !DILocalVariable(name: "chunk", scope: !9376, file: !3254, line: 63, type: !3639, align: 64)
!17028 = !DILocalVariable(name: "span", scope: !9375, file: !3254, line: 64, type: !15, align: 64)
!17029 = !DILocalVariable(name: "name", scope: !9374, file: !3254, line: 67, type: !90, align: 64)
!17030 = !DILocalVariable(name: "source", scope: !9374, file: !3254, line: 67, type: !90, align: 64)
!17031 = !DILocalVariable(name: "err", scope: !9373, file: !3254, line: 68, type: !563, align: 64)
!17032 = !DILocalVariable(name: "residual", scope: !9372, file: !3254, line: 358, type: !577, align: 64)
!17033 = !DILocalVariable(name: "val", scope: !9371, file: !3254, line: 358, type: !1829, align: 8)
!17034 = !DILocalVariable(name: "name", scope: !9370, file: !3254, line: 360, type: !2900, align: 64)
!17035 = !DILocalVariable(name: "val", scope: !9369, file: !3254, line: 361, type: !139, align: 64)
!17036 = !DILocalVariable(name: "name", scope: !9368, file: !3254, line: 364, type: !2900, align: 64)
!17037 = !DILocalVariable(name: "val", scope: !9367, file: !3254, line: 365, type: !139, align: 64)
!17038 = !DILocalVariable(name: "name", scope: !9366, file: !3254, line: 368, type: !2900, align: 64)
!17039 = !DILocalVariable(name: "res", scope: !9365, file: !3254, line: 369, type: !573, align: 64)
!17040 = !DILocalVariable(name: "last", scope: !9364, file: !3254, line: 372, type: !1832, align: 64)
!17041 = !DILocalVariable(name: "buf", scope: !9363, file: !3254, line: 373, type: !7, align: 64)
!17042 = !DILocalVariable(name: "result", scope: !9362, file: !3254, line: 374, type: !573, align: 64)
!17043 = !DILocalVariable(name: "e", scope: !9361, file: !3254, line: 378, type: !569, align: 64)
!17044 = !DILocalVariable(name: "report", scope: !9360, file: !3254, line: 379, type: !3932, align: 64)
!17045 = !DILocalVariable(name: "chunk", scope: !9359, file: !3254, line: 380, type: !3639, align: 64)
!17046 = !DILocalVariable(name: "span", scope: !9358, file: !3254, line: 381, type: !3933, align: 64)
!17047 = !DILocalVariable(name: "name", scope: !9357, file: !3254, line: 382, type: !90, align: 64)
!17048 = !DILocalVariable(name: "source", scope: !9357, file: !3254, line: 382, type: !90, align: 64)
!17049 = !DILocalVariable(name: "num_elem", scope: !9356, file: !3254, line: 389, type: !3934, align: 64)
!17050 = !DILocalVariable(name: "elems", scope: !9355, file: !3254, line: 395, type: !656, align: 64)
!17051 = !DILocalVariable(name: "iter", scope: !9354, file: !3254, line: 396, type: !14, align: 64)
!17052 = !DILocalVariable(name: "val", scope: !9353, file: !3254, line: 397, type: !139, align: 64)
!17053 = !DILocalVariable(name: "key", scope: !9352, file: !3254, line: 398, type: !139, align: 64)
!17054 = !DILocalVariable(name: "residual", scope: !9351, file: !3254, line: 399, type: !577, align: 64)
!17055 = !DILocalVariable(name: "val", scope: !9350, file: !3254, line: 399, type: !104, align: 128)
!17056 = !DILocalVariable(name: "map", scope: !9349, file: !3254, line: 402, type: !110, align: 64)
!17057 = !DILocalVariable(name: "entry_types", scope: !9348, file: !3254, line: 406, type: !3935, align: 64)
!17058 = !DILocalVariable(name: "result_map", scope: !9347, file: !3254, line: 407, type: !110, align: 64)
!17059 = !DILocalVariable(name: "iter", scope: !9346, file: !3254, line: 411, type: !654, align: 64)
!17060 = !DILocalVariable(name: "is_spread", scope: !9345, file: !3254, line: 411, type: !3936, align: 64)
!17061 = !DILocalVariable(name: "val", scope: !9344, file: !3254, line: 413, type: !139, align: 64)
!17062 = !DILocalVariable(name: "span", scope: !9344, file: !3254, line: 413, type: !537, align: 32)
!17063 = !DILocalVariable(name: "chunk", scope: !9343, file: !3254, line: 63, type: !3639, align: 64)
!17064 = !DILocalVariable(name: "span", scope: !9342, file: !3254, line: 64, type: !15, align: 64)
!17065 = !DILocalVariable(name: "name", scope: !9341, file: !3254, line: 67, type: !90, align: 64)
!17066 = !DILocalVariable(name: "source", scope: !9341, file: !3254, line: 67, type: !90, align: 64)
!17067 = !DILocalVariable(name: "err", scope: !9340, file: !3254, line: 68, type: !563, align: 64)
end_hunk_7
begin_hunk_8_@llvm.vector.reduce.add.v2i64
!28953 = !DILocation(line: 4354, column: 24, scope: !868, inlinedAt: !16581)
!28954 = !DILocation(line: 2552, column: 12, scope: !871, inlinedAt: !16578)
!28955 = !DILocation(line: 454, column: 20, scope: !895, inlinedAt: !16628)
!28956 = !DILocation(line: 4354, column: 24, scope: !868, inlinedAt: !16576)
!28957 = !DILocation(line: 2552, column: 12, scope: !869, inlinedAt: !16573)
!28958 = !DILocation(line: 454, column: 20, scope: !897, inlinedAt: !16635)
!28959 = !DILocation(line: 4354, column: 24, scope: !868, inlinedAt: !16571)
!28960 = !DILocation(line: 2552, column: 12, scope: !866, inlinedAt: !16568)
!28961 = !DILocation(line: 454, column: 20, scope: !901, inlinedAt: !16644)
!28962 = !DILocation(line: 4354, column: 24, scope: !868, inlinedAt: !16587)
!28963 = !DILocation(line: 2552, column: 12, scope: !873, inlinedAt: !16584)
!28964 = !DILocation(line: 102, column: 10, scope: !875, inlinedAt: !16583)
!28965 = !DILocation(line: 60, column: 23, scope: !900, inlinedAt: !16648)
!28966 = !DILocation(line: 184, column: 17, scope: !857, inlinedAt: !16566)
!28967 = !DILocation(line: 2557, column: 38, scope: !873, inlinedAt: !16584)
!28968 = !DILocation(line: 60, column: 23, scope: !900, inlinedAt: !16642)
!28969 = !DILocation(line: 2553, column: 13, scope: !873, inlinedAt: !16584)
!28970 = !DILocation(line: 184, column: 17, scope: !856, inlinedAt: !16566)
!28971 = !DILocation(line: 2553, column: 13, scope: !871, inlinedAt: !16578)
!28972 = !DILocation(line: 184, column: 17, scope: !855, inlinedAt: !16566)
!28973 = !DILocation(line: 2553, column: 13, scope: !869, inlinedAt: !16573)
!28974 = !DILocation(line: 184, column: 17, scope: !854, inlinedAt: !16566)
!28975 = !DILocation(line: 2553, column: 13, scope: !866, inlinedAt: !16568)
!28976 = !DILocation(line: 203, column: 10, scope: !853, inlinedAt: !16562)
!28977 = !DILocation(line: 203, column: 15, scope: !853, inlinedAt: !16562)
!28978 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !16650)
!28979 = !DILocation(line: 82, column: 9, scope: !722, inlinedAt: !9541)
!28980 = !DILocation(line: 802, column: 36, scope: !8840)
!28981 = !DILocation(line: 410, column: 15, scope: !1121, inlinedAt: !16656)
!28982 = !DILocation(line: 410, column: 9, scope: !1121, inlinedAt: !16656)
!28983 = !DILocation(line: 802, column: 32, scope: !8840)
!28984 = !DILocation(line: 627, column: 9, scope: !10077, inlinedAt: !23307)
!28985 = !DILocation(line: 1873, column: 86, scope: !10078, inlinedAt: !23303)
!28986 = !DILocation(line: 808, column: 39, scope: !8840)
!28987 = !DILocation(line: 804, column: 38, scope: !8840)
!28988 = !DILocation(line: 189, column: 18, scope: !1436, inlinedAt: !16658)
!28989 = !DILocation(line: 184, column: 12, scope: !1442, inlinedAt: !16670)
!28990 = !DILocation(line: 186, column: 27, scope: !1442, inlinedAt: !16670)
!28991 = !DILocation(line: 1873, column: 86, scope: !1444, inlinedAt: !16676)
!28992 = !DILocation(line: 184, column: 12, scope: !1440, inlinedAt: !16666)
!28993 = !DILocation(line: 808, column: 35, scope: !8840)
!28994 = !DILocation(line: 808, column: 29, scope: !8840)
!28995 = !DILocation(line: 811, column: 40, scope: !8840)
!28996 = !DILocation(line: 406, column: 6, scope: !1447, inlinedAt: !16680)
!28997 = !DILocation(line: 813, column: 46, scope: !8840)
!28998 = !DILocation(line: 189, column: 18, scope: !1436, inlinedAt: !16681)
!28999 = !DILocation(line: 184, column: 12, scope: !1442, inlinedAt: !16693)
!29000 = !DILocation(line: 186, column: 27, scope: !1442, inlinedAt: !16693)
!29001 = !DILocation(line: 1873, column: 86, scope: !1444, inlinedAt: !16699)
!29002 = !DILocation(line: 184, column: 12, scope: !1440, inlinedAt: !16689)
!29003 = !DILocation(line: 824, column: 25, scope: !8842)
!29004 = !DILocation(line: 831, column: 17, scope: !8847)
!29005 = !DILocation(line: 828, column: 25, scope: !8842)
!29006 = !DILocation(line: 792, column: 21, scope: !8845)
!29007 = !DILocation(line: 627, column: 9, scope: !913, inlinedAt: !16705)
!29008 = !DILocation(line: 971, column: 18, scope: !909, inlinedAt: !16512)
!29009 = !DILocation(line: 1042, column: 29, scope: !903, inlinedAt: !16501)
!29010 = !DILocation(line: 1043, column: 13, scope: !903, inlinedAt: !16501)
!29011 = !DILocation(line: 26, column: 37, scope: !731, inlinedAt: !16495)
!29012 = !DILocation(line: 831, column: 17, scope: !9465)
!29013 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !16709)
!29014 = !DILocation(line: 186, column: 27, scope: !1440, inlinedAt: !16689)
!29015 = !DILocation(line: 816, column: 45, scope: !8837)
!29016 = !DILocation(line: 627, column: 9, scope: !10077, inlinedAt: !23318)
!29017 = !DILocation(line: 1873, column: 86, scope: !10078, inlinedAt: !23314)
!29018 = !DILocation(line: 816, column: 50, scope: !8837)
!29019 = !DILocation(line: 971, column: 21, scope: !9941, inlinedAt: !23227)
!29020 = !DILocation(line: 815, column: 48, scope: !8837)
!29021 = !DILocation(line: 817, column: 41, scope: !8837)
!29022 = !DILocation(line: 0, scope: !23319)
!29023 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !16712)
!29024 = !DILocation(line: 186, column: 27, scope: !1440, inlinedAt: !16666)
!29025 = !DILocation(line: 806, column: 44, scope: !8839)
!29026 = !DILocation(line: 627, column: 9, scope: !10077, inlinedAt: !23330)
!29027 = !DILocation(line: 1873, column: 86, scope: !10078, inlinedAt: !23326)
!29028 = !DILocation(line: 806, column: 49, scope: !8839)
!29029 = !DILocation(line: 806, column: 40, scope: !8839)
!29030 = !DILocation(line: 806, column: 94, scope: !8839)
!29031 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !16713)
!29032 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !16717)
!29033 = !DILocation(line: 797, column: 40, scope: !8844)
!29034 = !DILocation(line: 238, column: 10, scope: !9934, inlinedAt: !19941)
!29035 = !DILocation(line: 627, column: 9, scope: !16488, inlinedAt: !23337)
!29036 = !DILocation(line: 627, column: 9, scope: !10077, inlinedAt: !23352)
!29037 = !DILocation(line: 1873, column: 86, scope: !10078, inlinedAt: !23348)
!29038 = !DILocation(line: 797, column: 45, scope: !8844)
!29039 = !DILocation(line: 797, column: 36, scope: !8844)
!29040 = !DILocation(line: 797, column: 94, scope: !8844)
!29041 = !DILocation(line: 0, scope: !23353)
!29042 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !16718)
!29043 = !DILocation(line: 834, column: 25, scope: !8835)
!29044 = !DILocation(line: 3136, column: 19, scope: !16484, inlinedAt: !23355)
!29045 = !DILocation(line: 3141, column: 37, scope: !16484, inlinedAt: !23355)
!29046 = !DILocation(line: 3141, column: 18, scope: !16484, inlinedAt: !23355)
!29047 = !DILocation(line: 834, column: 35, scope: !8835)
!29048 = !DILocation(line: 627, column: 9, scope: !16488, inlinedAt: !23401)
!29049 = !DILocation(line: 1873, column: 86, scope: !10078, inlinedAt: !23406)
!29050 = !DILocation(line: 627, column: 9, scope: !16488, inlinedAt: !23412)
!29051 = !DILocation(line: 1873, column: 86, scope: !10078, inlinedAt: !23419)
!29052 = !DILocation(line: 2741, column: 43, scope: !9935, inlinedAt: !19975)
!29053 = !DILocation(line: 21, column: 12, scope: !10307, inlinedAt: !23425)
!29054 = !DILocation(line: 627, column: 9, scope: !10077, inlinedAt: !23441)
!29055 = !DILocation(line: 157, column: 13, scope: !10313, inlinedAt: !23431)
!29056 = !DILocation(line: 835, column: 31, scope: !8835)
!29057 = !DILocation(line: 834, column: 32, scope: !8835)
!29058 = !DILocation(line: 627, column: 9, scope: !10077, inlinedAt: !23451)
!29059 = !DILocation(line: 837, column: 31, scope: !8835)
!29060 = !DILocation(line: 238, column: 10, scope: !9934, inlinedAt: !19984)
!29061 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !16720)
!29062 = !DILocation(line: 839, column: 29, scope: !8834)
!29063 = !DILocation(line: 410, column: 15, scope: !1121, inlinedAt: !16724)
!29064 = !DILocation(line: 410, column: 9, scope: !1121, inlinedAt: !16724)
!29065 = !DILocation(line: 839, column: 24, scope: !8834)
!29066 = !DILocation(line: 3136, column: 19, scope: !16484, inlinedAt: !23384)
!29067 = !DILocation(line: 3141, column: 37, scope: !16484, inlinedAt: !23384)
!29068 = !DILocation(line: 3141, column: 18, scope: !16484, inlinedAt: !23384)
!29069 = !DILocation(line: 846, column: 42, scope: !8832)
!29070 = !DILocation(line: 841, column: 30, scope: !8834)
!29071 = !DILocation(line: 189, column: 18, scope: !1436, inlinedAt: !16726)
!29072 = !DILocation(line: 184, column: 12, scope: !1442, inlinedAt: !16738)
!29073 = !DILocation(line: 186, column: 27, scope: !1442, inlinedAt: !16738)
!29074 = !DILocation(line: 1873, column: 86, scope: !1444, inlinedAt: !16744)
!29075 = !DILocation(line: 184, column: 12, scope: !1440, inlinedAt: !16734)
!29076 = !DILocation(line: 864, column: 26, scope: !8831)
!29077 = !DILocation(line: 51, column: 24, scope: !12227, inlinedAt: !16756)
!29078 = !DILocation(line: 1042, column: 9, scope: !12233, inlinedAt: !16760)
!29079 = !DILocation(line: 881, column: 13, scope: !12221, inlinedAt: !16751)
!29080 = !DILocation(line: 1912, column: 92, scope: !12242, inlinedAt: !16767)
!29081 = !DILocation(line: 307, column: 16, scope: !12250, inlinedAt: !16771)
!29082 = !DILocation(line: 677, column: 15, scope: !12200, inlinedAt: !16752)
!29083 = !DILocation(line: 677, column: 9, scope: !12200, inlinedAt: !16752)
!29084 = !DILocation(line: 145, column: 15, scope: !12257, inlinedAt: !16774)
!29085 = !DILocation(line: 145, column: 9, scope: !12257, inlinedAt: !16774)
!29086 = !DILocation(line: 0, scope: !12257, inlinedAt: !16774)
!29087 = !DILocation(line: 60, column: 34, scope: !12199, inlinedAt: !16753)
!29088 = !DILocation(line: 881, column: 42, scope: !12221, inlinedAt: !16751)
!29089 = !DILocation(line: 887, column: 47, scope: !12215, inlinedAt: !16751)
!29090 = !DILocation(line: 887, column: 23, scope: !12215, inlinedAt: !16751)
!29091 = !DILocation(line: 1912, column: 92, scope: !12242, inlinedAt: !16779)
!29092 = !DILocation(line: 307, column: 16, scope: !12249, inlinedAt: !16783)
!29093 = !DILocation(line: 3117, column: 13, scope: !12269, inlinedAt: !16785)
!29094 = !DILocation(line: 896, column: 19, scope: !12221, inlinedAt: !16751)
!29095 = !DILocation(line: 2176, column: 15, scope: !12288, inlinedAt: !16788)
!29096 = !DILocation(line: 2176, column: 9, scope: !12288, inlinedAt: !16788)
!29097 = !DILocation(line: 891, column: 17, scope: !12215, inlinedAt: !16751)
!29098 = !DILocation(line: 891, column: 41, scope: !12215, inlinedAt: !16751)
!29099 = !DILocation(line: 2176, column: 15, scope: !12288, inlinedAt: !16790)
!29100 = !DILocation(line: 2176, column: 9, scope: !12288, inlinedAt: !16790)
!29101 = !DILocation(line: 627, column: 9, scope: !12294, inlinedAt: !16794)
!29102 = !DILocation(line: 889, column: 17, scope: !12214, inlinedAt: !16751)
!29103 = !DILocation(line: 889, column: 41, scope: !12214, inlinedAt: !16751)
!29104 = !DILocation(line: 307, column: 21, scope: !12249, inlinedAt: !16783)
!29105 = !DILocation(line: 2176, column: 15, scope: !12288, inlinedAt: !16797)
!29106 = !DILocation(line: 2176, column: 9, scope: !12288, inlinedAt: !16797)
!29107 = !DILocation(line: 2190, column: 27, scope: !12308, inlinedAt: !16800)
!29108 = !DILocation(line: 2190, column: 23, scope: !12308, inlinedAt: !16800)
!29109 = !DILocation(line: 2190, column: 40, scope: !12308, inlinedAt: !16800)
!29110 = !DILocation(line: 0, scope: !21077, inlinedAt: !16751)
!29111 = !DILocation(line: 2190, column: 27, scope: !12309, inlinedAt: !16804)
!29112 = !DILocation(line: 2190, column: 23, scope: !12309, inlinedAt: !16804)
!29113 = !DILocation(line: 2190, column: 40, scope: !12309, inlinedAt: !16804)
!29114 = !DILocation(line: 2190, column: 27, scope: !12307, inlinedAt: !16808)
!29115 = !DILocation(line: 2190, column: 23, scope: !12307, inlinedAt: !16808)
!29116 = !DILocation(line: 2190, column: 40, scope: !12307, inlinedAt: !16808)
!29117 = !DILocation(line: 0, scope: !21080, inlinedAt: !16751)
!29118 = !DILocation(line: 627, column: 9, scope: !12333, inlinedAt: !16819)
!29119 = !DILocation(line: 1873, column: 86, scope: !12327, inlinedAt: !16813)
!29120 = !DILocation(line: 1912, column: 92, scope: !12242, inlinedAt: !16823)
!29121 = !DILocation(line: 307, column: 16, scope: !12248, inlinedAt: !16827)
!29122 = !DILocation(line: 903, column: 17, scope: !12207, inlinedAt: !16751)
!29123 = !DILocation(line: 2176, column: 15, scope: !12288, inlinedAt: !16829)
!29124 = !DILocation(line: 2176, column: 9, scope: !12288, inlinedAt: !16829)
!29125 = !DILocation(line: 627, column: 9, scope: !12294, inlinedAt: !16833)
!29126 = !DILocation(line: 307, column: 21, scope: !12248, inlinedAt: !16827)
!29127 = !DILocation(line: 901, column: 17, scope: !12206, inlinedAt: !16751)
!29128 = !DILocation(line: 2176, column: 15, scope: !12288, inlinedAt: !16836)
!29129 = !DILocation(line: 2176, column: 9, scope: !12288, inlinedAt: !16836)
!29130 = !DILocation(line: 2190, column: 27, scope: !12305, inlinedAt: !16839)
!29131 = !DILocation(line: 2190, column: 23, scope: !12305, inlinedAt: !16839)
!29132 = !DILocation(line: 2190, column: 40, scope: !12305, inlinedAt: !16839)
!29133 = !DILocation(line: 0, scope: !21096, inlinedAt: !16751)
!29134 = !DILocation(line: 2190, column: 27, scope: !12306, inlinedAt: !16843)
!29135 = !DILocation(line: 2190, column: 23, scope: !12306, inlinedAt: !16843)
!29136 = !DILocation(line: 2190, column: 40, scope: !12306, inlinedAt: !16843)
!29137 = !DILocation(line: 885, column: 23, scope: !12221, inlinedAt: !16751)
!29138 = !DILocation(line: 2176, column: 15, scope: !12288, inlinedAt: !16846)
!29139 = !DILocation(line: 2176, column: 9, scope: !12288, inlinedAt: !16846)
!29140 = !DILocation(line: 627, column: 9, scope: !12294, inlinedAt: !16850)
!29141 = !DILocation(line: 307, column: 21, scope: !12250, inlinedAt: !16771)
!29142 = !DILocation(line: 883, column: 23, scope: !12220, inlinedAt: !16751)
!29143 = !DILocation(line: 2176, column: 15, scope: !12288, inlinedAt: !16853)
!29144 = !DILocation(line: 2176, column: 9, scope: !12288, inlinedAt: !16853)
!29145 = !DILocation(line: 2190, column: 27, scope: !12310, inlinedAt: !16856)
!29146 = !DILocation(line: 2190, column: 23, scope: !12310, inlinedAt: !16856)
!29147 = !DILocation(line: 2190, column: 40, scope: !12310, inlinedAt: !16856)
!29148 = !DILocation(line: 2190, column: 27, scope: !12311, inlinedAt: !16860)
!29149 = !DILocation(line: 2190, column: 23, scope: !12311, inlinedAt: !16860)
!29150 = !DILocation(line: 2190, column: 40, scope: !12311, inlinedAt: !16860)
!29151 = !DILocation(line: 627, column: 9, scope: !16488, inlinedAt: !23466)
!29152 = !DILocation(line: 971, column: 18, scope: !16554, inlinedAt: !23472)
!29153 = !DILocation(line: 848, scope: !8830)
!29154 = !DILocation(line: 180, column: 28, scope: !714, inlinedAt: !9538)
!29155 = !DILocation(line: 545, column: 13, scope: !9946, inlinedAt: !20002)
!29156 = !DILocation(line: 1663, column: 9, scope: !1446, inlinedAt: !16865)
!29157 = !DILocation(line: 627, column: 9, scope: !10077, inlinedAt: !23498)
!29158 = !DILocation(line: 1873, column: 86, scope: !10078, inlinedAt: !23494)
!29159 = !DILocation(line: 849, column: 39, scope: !8828)
!29160 = !DILocation(line: 0, scope: !12221, inlinedAt: !16751)
!29161 = !DILocation(line: 2176, column: 15, scope: !9483, inlinedAt: !17756)
!29162 = !DILocation(line: 2176, column: 9, scope: !9483, inlinedAt: !17756)
!29163 = !DILocation(line: 2190, column: 23, scope: !9475, inlinedAt: !17744)
!29164 = !DILocation(line: 2178, column: 17, scope: !9483, inlinedAt: !17756)
!29165 = !DILocation(line: 864, column: 57, scope: !8831)
!29166 = !DILocation(line: 0, scope: !23503)
!29167 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !16870)
!29168 = !DILocation(line: 865, column: 17, scope: !8835)
!29169 = !DILocation(line: 865, column: 17, scope: !9465)
!29170 = !DILocation(line: 82, column: 9, scope: !722, inlinedAt: !9537)
!29171 = !DILocation(line: 849, column: 35, scope: !8828)
!29172 = !DILocation(line: 849, column: 29, scope: !8828)
!29173 = !DILocation(line: 853, column: 42, scope: !8828)
!29174 = !DILocation(line: 189, column: 18, scope: !1436, inlinedAt: !16872)
!29175 = !DILocation(line: 184, column: 12, scope: !1442, inlinedAt: !16884)
!29176 = !DILocation(line: 186, column: 27, scope: !1442, inlinedAt: !16884)
!29177 = !DILocation(line: 1873, column: 86, scope: !1444, inlinedAt: !16890)
!29178 = !DILocation(line: 184, column: 12, scope: !1440, inlinedAt: !16880)
!29179 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !16896)
!29180 = !DILocation(line: 186, column: 27, scope: !1440, inlinedAt: !16880)
!29181 = !DILocation(line: 855, column: 48, scope: !8826)
!29182 = !DILocation(line: 627, column: 9, scope: !10077, inlinedAt: !23514)
!29183 = !DILocation(line: 1873, column: 86, scope: !10078, inlinedAt: !23510)
!29184 = !DILocation(line: 855, column: 53, scope: !8826)
!29185 = !DILocation(line: 855, column: 44, scope: !8826)
!29186 = !DILocation(line: 855, column: 98, scope: !8826)
!29187 = !DILocation(line: 0, scope: !23515)
!29188 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !16897)
!29189 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !16901)
!29190 = !DILocation(line: 843, column: 36, scope: !8833)
!29191 = !DILocation(line: 1873, column: 86, scope: !16486, inlinedAt: !23379)
!29192 = !DILocation(line: 238, column: 10, scope: !9934, inlinedAt: !19994)
!29193 = !DILocation(line: 971, column: 21, scope: !9941, inlinedAt: !23517)
!29194 = !DILocation(line: 627, column: 9, scope: !16488, inlinedAt: !23523)
!29195 = !DILocation(line: 627, column: 9, scope: !10077, inlinedAt: !23538)
!29196 = !DILocation(line: 1873, column: 86, scope: !10078, inlinedAt: !23534)
!29197 = !DILocation(line: 843, column: 41, scope: !8833)
!29198 = !DILocation(line: 843, column: 32, scope: !8833)
!29199 = !DILocation(line: 843, column: 90, scope: !8833)
!29200 = !DILocation(line: 0, scope: !23539)
!29201 = distinct !DILexicalBlock(scope: !29208, file: !3254, line: 864, column: 57)
!29202 = distinct !DILexicalBlock(scope: !29208, file: !3254, line: 864, column: 57)
!29203 = distinct !DILexicalBlock(scope: !29205, file: !3254, line: 852, column: 37)
!29204 = distinct !DILexicalBlock(scope: !29205, file: !3254, line: 850, column: 33)
!29205 = distinct !DILexicalBlock(scope: !29206, file: !3254, line: 848, column: 25)
!29206 = distinct !DILexicalBlock(scope: !29207, file: !3254, line: 848, column: 25)
!29207 = distinct !DILexicalBlock(scope: !29209, file: !3254, line: 847, column: 25)
!29208 = distinct !DILexicalBlock(scope: !29209, file: !3254, line: 846, column: 21)
!29209 = distinct !DILexicalBlock(scope: !29211, file: !3254, line: 845, column: 21)
!29210 = distinct !DILexicalBlock(scope: !29211, file: !3254, line: 840, column: 25)
!29211 = distinct !DILexicalBlock(scope: !29212, file: !3254, line: 834, column: 21)
!29212 = distinct !DILexicalBlock(scope: !29213, file: !3254, line: 833, column: 21)
!29213 = distinct !DILexicalBlock(scope: !29842, file: !3254, line: 832, column: 17)
!29214 = distinct !DILexicalBlock(scope: !29217, file: !3254, line: 812, column: 41)
!29215 = distinct !DILexicalBlock(scope: !29217, file: !3254, line: 809, column: 33)
!29216 = distinct !DILexicalBlock(scope: !29217, file: !3254, line: 803, column: 33)
!29217 = distinct !DILexicalBlock(scope: !29218, file: !3254, line: 801, column: 25)
!29218 = distinct !DILexicalBlock(scope: !29219, file: !3254, line: 801, column: 25)
!29219 = distinct !DILexicalBlock(scope: !29220, file: !3254, line: 800, column: 25)
!29220 = distinct !DILexicalBlock(scope: !29222, file: !3254, line: 799, column: 25)
!29221 = distinct !DILexicalBlock(scope: !29222, file: !3254, line: 794, column: 29)
!29222 = distinct !DILexicalBlock(scope: !29223, file: !3254, line: 791, column: 21)
!29223 = distinct !DILexicalBlock(scope: !29224, file: !3254, line: 786, column: 21)
!29224 = distinct !DILexicalBlock(scope: !29225, file: !3254, line: 785, column: 21)
!29225 = distinct !DILexicalBlock(scope: !29842, file: !3254, line: 784, column: 17)
!29226 = distinct !DILexicalBlock(scope: !29227, file: !3254, line: 68, column: 17)
!29227 = distinct !DILexicalBlock(scope: !29228, file: !3254, line: 67, column: 17)
!29228 = distinct !DILexicalBlock(scope: !29229, file: !3254, line: 64, column: 17)
!29229 = distinct !DILexicalBlock(scope: !29230, file: !3254, line: 63, column: 17)
!29230 = distinct !DILexicalBlock(scope: !29232, file: !3254, line: 778, column: 25)
!29231 = distinct !DILexicalBlock(scope: !29232, file: !3254, line: 775, column: 25)
!29232 = distinct !DILexicalBlock(scope: !29842, file: !3254, line: 773, column: 21)
!29233 = distinct !DILexicalBlock(scope: !29842, file: !3254, line: 769, column: 21)
!29234 = distinct !DILexicalBlock(scope: !29235, file: !3254, line: 68, column: 17)
!29235 = distinct !DILexicalBlock(scope: !29236, file: !3254, line: 67, column: 17)
!29236 = distinct !DILexicalBlock(scope: !29237, file: !3254, line: 64, column: 17)
!29237 = distinct !DILexicalBlock(scope: !29238, file: !3254, line: 63, column: 17)
!29238 = distinct !DILexicalBlock(scope: !29240, file: !3254, line: 763, column: 25)
!29239 = distinct !DILexicalBlock(scope: !29240, file: !3254, line: 760, column: 25)
!29240 = distinct !DILexicalBlock(scope: !29241, file: !3254, line: 758, column: 21)
!29241 = distinct !DILexicalBlock(scope: !29842, file: !3254, line: 757, column: 21)
!29242 = distinct !DILexicalBlock(scope: !29243, file: !3969, line: 116, column: 33)
!29243 = distinct !DILexicalBlock(scope: !29247, file: !3969, line: 116, column: 33)
!29244 = distinct !DILexicalBlock(scope: !29245, file: !3254, line: 747, column: 29)
!29245 = distinct !DILexicalBlock(scope: !29247, file: !3254, line: 746, column: 25)
!29246 = distinct !DILexicalBlock(scope: !29247, file: !3254, line: 745, column: 21)
!29247 = distinct !DILexicalBlock(scope: !29248, file: !3254, line: 743, column: 21)
!29248 = distinct !DILexicalBlock(scope: !29249, file: !3254, line: 742, column: 21)
!29249 = distinct !DILexicalBlock(scope: !29842, file: !3254, line: 741, column: 21)
!29250 = distinct !DILexicalBlock(scope: !29251, file: !3254, line: 84, column: 17)
!29251 = distinct !DILexicalBlock(scope: !29842, file: !3254, line: 83, column: 17)
!29252 = distinct !DILexicalBlock(scope: !29253, file: !3254, line: 84, column: 17)
!29253 = distinct !DILexicalBlock(scope: !29842, file: !3254, line: 83, column: 17)
!29254 = distinct !DILexicalBlock(scope: !29255, file: !3969, line: 116, column: 33)
!29255 = distinct !DILexicalBlock(scope: !29257, file: !3969, line: 116, column: 33)
!29256 = distinct !DILexicalBlock(scope: !29257, file: !3254, line: 68, column: 17)
!29257 = distinct !DILexicalBlock(scope: !29258, file: !3254, line: 67, column: 17)
!29258 = distinct !DILexicalBlock(scope: !29259, file: !3254, line: 64, column: 17)
!29259 = distinct !DILexicalBlock(scope: !29261, file: !3254, line: 63, column: 17)
!29260 = distinct !DILexicalBlock(scope: !29261, file: !3254, line: 96, column: 21)
!29261 = distinct !DILexicalBlock(scope: !29262, file: !3254, line: 94, column: 17)
!29262 = distinct !DILexicalBlock(scope: !29263, file: !3254, line: 93, column: 17)
!29263 = distinct !DILexicalBlock(scope: !29842, file: !3254, line: 92, column: 17)
!29264 = distinct !DILexicalBlock(scope: !29265, file: !3969, line: 116, column: 33)
!29265 = distinct !DILexicalBlock(scope: !29267, file: !3969, line: 116, column: 33)
!29266 = distinct !DILexicalBlock(scope: !29267, file: !3254, line: 68, column: 17)
!29267 = distinct !DILexicalBlock(scope: !29268, file: !3254, line: 67, column: 17)
!29268 = distinct !DILexicalBlock(scope: !29269, file: !3254, line: 64, column: 17)
!29269 = distinct !DILexicalBlock(scope: !29271, file: !3254, line: 63, column: 17)
!29270 = distinct !DILexicalBlock(scope: !29271, file: !3254, line: 96, column: 21)
!29271 = distinct !DILexicalBlock(scope: !29272, file: !3254, line: 94, column: 17)
!29272 = distinct !DILexicalBlock(scope: !29273, file: !3254, line: 93, column: 17)
!29273 = distinct !DILexicalBlock(scope: !29842, file: !3254, line: 92, column: 17)
!29274 = distinct !DILexicalBlock(scope: !29275, file: !3969, line: 116, column: 33)
!29275 = distinct !DILexicalBlock(scope: !29277, file: !3969, line: 116, column: 33)
!29276 = distinct !DILexicalBlock(scope: !29277, file: !3254, line: 68, column: 17)
!29277 = distinct !DILexicalBlock(scope: !29278, file: !3254, line: 67, column: 17)
!29278 = distinct !DILexicalBlock(scope: !29279, file: !3254, line: 64, column: 17)
!29279 = distinct !DILexicalBlock(scope: !29281, file: !3254, line: 63, column: 17)
!29280 = distinct !DILexicalBlock(scope: !29281, file: !3254, line: 96, column: 21)
!29281 = distinct !DILexicalBlock(scope: !29282, file: !3254, line: 94, column: 17)
!29282 = distinct !DILexicalBlock(scope: !29283, file: !3254, line: 93, column: 17)
!29283 = distinct !DILexicalBlock(scope: !29842, file: !3254, line: 92, column: 17)
!29284 = distinct !DILexicalBlock(scope: !29285, file: !3969, line: 116, column: 33)
!29285 = distinct !DILexicalBlock(scope: !29287, file: !3969, line: 116, column: 33)
!29286 = distinct !DILexicalBlock(scope: !29287, file: !3254, line: 68, column: 17)
!29287 = distinct !DILexicalBlock(scope: !29288, file: !3254, line: 67, column: 17)
!29288 = distinct !DILexicalBlock(scope: !29289, file: !3254, line: 64, column: 17)
!29289 = distinct !DILexicalBlock(scope: !29291, file: !3254, line: 63, column: 17)
!29290 = distinct !DILexicalBlock(scope: !29291, file: !3254, line: 96, column: 21)
!29291 = distinct !DILexicalBlock(scope: !29292, file: !3254, line: 94, column: 17)
!29292 = distinct !DILexicalBlock(scope: !29293, file: !3254, line: 93, column: 17)
!29293 = distinct !DILexicalBlock(scope: !29842, file: !3254, line: 92, column: 17)
!29294 = distinct !DILexicalBlock(scope: !29295, file: !3254, line: 68, column: 17)
!29295 = distinct !DILexicalBlock(scope: !29296, file: !3254, line: 67, column: 17)
!29296 = distinct !DILexicalBlock(scope: !29297, file: !3254, line: 64, column: 17)
!29297 = distinct !DILexicalBlock(scope: !29302, file: !3254, line: 63, column: 17)
!29298 = distinct !DILexicalBlock(scope: !29299, file: !3254, line: 68, column: 17)
!29299 = distinct !DILexicalBlock(scope: !29300, file: !3254, line: 67, column: 17)
!29300 = distinct !DILexicalBlock(scope: !29301, file: !3254, line: 64, column: 17)
!29301 = distinct !DILexicalBlock(scope: !29302, file: !3254, line: 63, column: 17)
!29302 = distinct !DILexicalBlock(scope: !29303, file: !3254, line: 134, column: 25)
!29303 = distinct !DILexicalBlock(scope: !29305, file: !3254, line: 133, column: 21)
!29304 = distinct !DILexicalBlock(scope: !29305, file: !3254, line: 132, column: 21)
!29305 = distinct !DILexicalBlock(scope: !29318, file: !3254, line: 130, column: 17)
!29306 = distinct !DILexicalBlock(scope: !29307, file: !3969, line: 116, column: 33)
!29307 = distinct !DILexicalBlock(scope: !29309, file: !3969, line: 116, column: 33)
!29308 = distinct !DILexicalBlock(scope: !29309, file: !3254, line: 68, column: 17)
!29309 = distinct !DILexicalBlock(scope: !29310, file: !3254, line: 67, column: 17)
!29310 = distinct !DILexicalBlock(scope: !29311, file: !3254, line: 64, column: 17)
!29311 = distinct !DILexicalBlock(scope: !29318, file: !3254, line: 63, column: 17)
!29312 = distinct !DILexicalBlock(scope: !29313, file: !3969, line: 116, column: 33)
!29313 = distinct !DILexicalBlock(scope: !29315, file: !3969, line: 116, column: 33)
!29314 = distinct !DILexicalBlock(scope: !29315, file: !3254, line: 68, column: 17)
!29315 = distinct !DILexicalBlock(scope: !29316, file: !3254, line: 67, column: 17)
!29316 = distinct !DILexicalBlock(scope: !29317, file: !3254, line: 64, column: 17)
!29317 = distinct !DILexicalBlock(scope: !29318, file: !3254, line: 63, column: 17)
!29318 = distinct !DILexicalBlock(scope: !29319, file: !3254, line: 108, column: 17)
!29319 = distinct !DILexicalBlock(scope: !29842, file: !3254, line: 107, column: 17)
!29320 = distinct !DILexicalBlock(scope: !29321, file: !3254, line: 68, column: 17)
!29321 = distinct !DILexicalBlock(scope: !29322, file: !3254, line: 67, column: 17)
!29322 = distinct !DILexicalBlock(scope: !29323, file: !3254, line: 64, column: 17)
!29323 = distinct !DILexicalBlock(scope: !29328, file: !3254, line: 63, column: 17)
!29324 = distinct !DILexicalBlock(scope: !29325, file: !3254, line: 68, column: 17)
!29325 = distinct !DILexicalBlock(scope: !29326, file: !3254, line: 67, column: 17)
!29326 = distinct !DILexicalBlock(scope: !29327, file: !3254, line: 64, column: 17)
!29327 = distinct !DILexicalBlock(scope: !29328, file: !3254, line: 63, column: 17)
!29328 = distinct !DILexicalBlock(scope: !29329, file: !3254, line: 134, column: 25)
!29329 = distinct !DILexicalBlock(scope: !29331, file: !3254, line: 133, column: 21)
!29330 = distinct !DILexicalBlock(scope: !29331, file: !3254, line: 132, column: 21)
!29331 = distinct !DILexicalBlock(scope: !29344, file: !3254, line: 130, column: 17)
!29332 = distinct !DILexicalBlock(scope: !29333, file: !3969, line: 116, column: 33)
!29333 = distinct !DILexicalBlock(scope: !29335, file: !3969, line: 116, column: 33)
!29334 = distinct !DILexicalBlock(scope: !29335, file: !3254, line: 68, column: 17)
!29335 = distinct !DILexicalBlock(scope: !29336, file: !3254, line: 67, column: 17)
!29336 = distinct !DILexicalBlock(scope: !29337, file: !3254, line: 64, column: 17)
!29337 = distinct !DILexicalBlock(scope: !29344, file: !3254, line: 63, column: 17)
!29338 = distinct !DILexicalBlock(scope: !29339, file: !3969, line: 116, column: 33)
!29339 = distinct !DILexicalBlock(scope: !29341, file: !3969, line: 116, column: 33)
!29340 = distinct !DILexicalBlock(scope: !29341, file: !3254, line: 68, column: 17)
!29341 = distinct !DILexicalBlock(scope: !29342, file: !3254, line: 67, column: 17)
!29342 = distinct !DILexicalBlock(scope: !29343, file: !3254, line: 64, column: 17)
!29343 = distinct !DILexicalBlock(scope: !29344, file: !3254, line: 63, column: 17)
!29344 = distinct !DILexicalBlock(scope: !29345, file: !3254, line: 108, column: 17)
!29345 = distinct !DILexicalBlock(scope: !29842, file: !3254, line: 107, column: 17)
!29346 = distinct !DILexicalBlock(scope: !29347, file: !3969, line: 116, column: 33)
!29347 = distinct !DILexicalBlock(scope: !29349, file: !3969, line: 116, column: 33)
!29348 = distinct !DILexicalBlock(scope: !29349, file: !3254, line: 68, column: 17)
!29349 = distinct !DILexicalBlock(scope: !29350, file: !3254, line: 67, column: 17)
!29350 = distinct !DILexicalBlock(scope: !29351, file: !3254, line: 64, column: 17)
!29351 = distinct !DILexicalBlock(scope: !29358, file: !3254, line: 63, column: 17)
!29352 = distinct !DILexicalBlock(scope: !29353, file: !3254, line: 68, column: 17)
!29353 = distinct !DILexicalBlock(scope: !29354, file: !3254, line: 67, column: 17)
!29354 = distinct !DILexicalBlock(scope: !29355, file: !3254, line: 64, column: 17)
!29355 = distinct !DILexicalBlock(scope: !29356, file: !3254, line: 63, column: 17)
!29356 = distinct !DILexicalBlock(scope: !29358, file: !3254, line: 719, column: 29)
end_hunk_8
begin_hunk_9_@llvm.vector.reduce.add.v2i64
!37038 = distinct !DILocation(line: 0, scope: !1436, inlinedAt: !37033)
!37039 = distinct !DILocation(line: 190, column: 42, scope: !1437, inlinedAt: !37036)
!37040 = distinct !DILocation(line: 0, scope: !1439, inlinedAt: !37039)
!37041 = distinct !DILocation(line: 578, column: 15, scope: !7601, inlinedAt: !37039)
!37042 = distinct !DILocation(line: 0, scope: !1440, inlinedAt: !37041)
!37043 = distinct !DILocation(line: 189, column: 14, scope: !1436, inlinedAt: !37033)
!37044 = distinct !DILocation(line: 0, scope: !1441, inlinedAt: !37043)
!37045 = distinct !DILocation(line: 578, column: 15, scope: !1441, inlinedAt: !37043)
!37046 = distinct !DILocation(line: 0, scope: !1442, inlinedAt: !37045)
!37047 = distinct !DILocation(line: 0, scope: !1434, inlinedAt: !37034)
!37048 = distinct !DILocation(line: 190, column: 28, scope: !1437, inlinedAt: !37036)
!37049 = distinct !DILocation(line: 190, column: 36, scope: !1437, inlinedAt: !37036)
!37050 = distinct !DILocation(line: 3894, column: 14, scope: !1443, inlinedAt: !37049)
!37051 = distinct !DILocation(line: 3895, column: 14, scope: !7612, inlinedAt: !37049)
!37052 = distinct !DILocation(line: 1856, column: 27, scope: !1444, inlinedAt: !37051)
!37053 = distinct !DILocation(line: 1873, column: 76, scope: !7615, inlinedAt: !37051)
!37054 = distinct !DILocation(line: 1974, column: 25, scope: !1445, inlinedAt: !37053)
!37055 = distinct !DILocation(line: 825, column: 29, scope: !29219)
!37056 = distinct !DILocation(line: 813, column: 46, scope: !29217)
!37057 = distinct !DILocation(line: 190, column: 14, scope: !1436, inlinedAt: !37056)
!37058 = distinct !DILocation(line: 0, scope: !1435, inlinedAt: !37057)
!37059 = distinct !DILocation(line: 1544, column: 24, scope: !1434, inlinedAt: !37057)
!37060 = distinct !DILocation(line: 0, scope: !1438, inlinedAt: !37059)
!37061 = distinct !DILocation(line: 0, scope: !1436, inlinedAt: !37056)
!37062 = distinct !DILocation(line: 190, column: 42, scope: !1437, inlinedAt: !37059)
!37063 = distinct !DILocation(line: 0, scope: !1439, inlinedAt: !37062)
!37064 = distinct !DILocation(line: 578, column: 15, scope: !7601, inlinedAt: !37062)
!37065 = distinct !DILocation(line: 0, scope: !1440, inlinedAt: !37064)
!37066 = distinct !DILocation(line: 189, column: 14, scope: !1436, inlinedAt: !37056)
!37067 = distinct !DILocation(line: 0, scope: !1441, inlinedAt: !37066)
!37068 = distinct !DILocation(line: 578, column: 15, scope: !1441, inlinedAt: !37066)
!37069 = distinct !DILocation(line: 0, scope: !1442, inlinedAt: !37068)
!37070 = distinct !DILocation(line: 0, scope: !1434, inlinedAt: !37057)
!37071 = distinct !DILocation(line: 190, column: 28, scope: !1437, inlinedAt: !37059)
!37072 = distinct !DILocation(line: 190, column: 36, scope: !1437, inlinedAt: !37059)
!37073 = distinct !DILocation(line: 3894, column: 14, scope: !1443, inlinedAt: !37072)
!37074 = distinct !DILocation(line: 3895, column: 14, scope: !7612, inlinedAt: !37072)
!37075 = distinct !DILocation(line: 1856, column: 27, scope: !1444, inlinedAt: !37074)
!37076 = distinct !DILocation(line: 1873, column: 76, scope: !7615, inlinedAt: !37074)
!37077 = distinct !DILocation(line: 1974, column: 25, scope: !1445, inlinedAt: !37076)
!37078 = distinct !DILocation(line: 2061, column: 18, scope: !906, inlinedAt: !36878)
!37079 = distinct !DILocation(line: 305, column: 20, scope: !915, inlinedAt: !37078)
!37080 = distinct !DILocation(line: 622, column: 14, scope: !914, inlinedAt: !37079)
!37081 = distinct !DILocation(line: 0, scope: !903, inlinedAt: !36876)
!37082 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !37076)
!37083 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !37082)
!37084 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !37083)
!37085 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !37053)
!37086 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !37085)
!37087 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !37086)
!37088 = distinct !DILocation(line: 831, column: 17, scope: !29224)
!37089 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !37088)
!37090 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !36919)
!37091 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !37090)
!37092 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !37091)
!37093 = distinct !DILocation(line: 831, column: 17, scope: !29224)
!37094 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !37093)
!37095 = distinct !DILocation(line: 865, column: 17, scope: !29212)
!37096 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !37095)
!37097 = distinct !DILocation(line: 839, column: 29, scope: !29211)
!37098 = distinct !DILocation(line: 0, scope: !1120, inlinedAt: !37097)
!37099 = distinct !DILocation(line: 429, column: 23, scope: !1120, inlinedAt: !37097)
!37100 = distinct !DILocation(line: 0, scope: !1121, inlinedAt: !37099)
!37101 = distinct !DILocation(line: 841, column: 30, scope: !29211)
!37102 = distinct !DILocation(line: 190, column: 14, scope: !1436, inlinedAt: !37101)
!37103 = distinct !DILocation(line: 0, scope: !1435, inlinedAt: !37102)
!37104 = distinct !DILocation(line: 1544, column: 24, scope: !1434, inlinedAt: !37102)
!37105 = distinct !DILocation(line: 0, scope: !1438, inlinedAt: !37104)
!37106 = distinct !DILocation(line: 0, scope: !1436, inlinedAt: !37101)
!37107 = distinct !DILocation(line: 190, column: 42, scope: !1437, inlinedAt: !37104)
!37108 = distinct !DILocation(line: 0, scope: !1439, inlinedAt: !37107)
!37109 = distinct !DILocation(line: 578, column: 15, scope: !7601, inlinedAt: !37107)
!37110 = distinct !DILocation(line: 0, scope: !1440, inlinedAt: !37109)
!37111 = distinct !DILocation(line: 189, column: 14, scope: !1436, inlinedAt: !37101)
!37112 = distinct !DILocation(line: 0, scope: !1441, inlinedAt: !37111)
!37113 = distinct !DILocation(line: 578, column: 15, scope: !1441, inlinedAt: !37111)
!37114 = distinct !DILocation(line: 0, scope: !1442, inlinedAt: !37113)
!37115 = distinct !DILocation(line: 0, scope: !1434, inlinedAt: !37102)
!37116 = distinct !DILocation(line: 190, column: 28, scope: !1437, inlinedAt: !37104)
!37117 = distinct !DILocation(line: 190, column: 36, scope: !1437, inlinedAt: !37104)
!37118 = distinct !DILocation(line: 3894, column: 14, scope: !1443, inlinedAt: !37117)
!37119 = distinct !DILocation(line: 3895, column: 14, scope: !7612, inlinedAt: !37117)
!37120 = distinct !DILocation(line: 1856, column: 27, scope: !1444, inlinedAt: !37119)
!37121 = distinct !DILocation(line: 1873, column: 76, scope: !7615, inlinedAt: !37119)
!37122 = distinct !DILocation(line: 1974, column: 25, scope: !1445, inlinedAt: !37121)
!37123 = distinct !{!37123, i1 true, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_"}
!37124 = distinct !{!37124, !37123, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_: argument 2"}
!37125 = distinct !{!37125, !37123, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_: argument 3"}
!37126 = distinct !DILocation(line: 864, column: 26, scope: !29208)
!37127 = distinct !DILocation(line: 881, column: 48, scope: !32596, inlinedAt: !37126)
!37128 = distinct !DILocation(line: 678, column: 38, scope: !32576, inlinedAt: !37127)
!37129 = distinct !DILocation(line: 60, column: 34, scope: !32574, inlinedAt: !37128)
!37130 = distinct !DILocation(line: 0, scope: !32596, inlinedAt: !37126)
!37131 = distinct !DILocation(line: 881, column: 18, scope: !32596, inlinedAt: !37126)
!37132 = distinct !DILocation(line: 0, scope: !32602, inlinedAt: !37131)
!37133 = distinct !DILocation(line: 0, scope: !32575, inlinedAt: !37127)
!37134 = distinct !DILocation(line: 0, scope: !32574, inlinedAt: !37128)
!37135 = distinct !DILocation(line: 51, column: 14, scope: !32602, inlinedAt: !37131)
!37136 = distinct !DILocation(line: 0, scope: !32608, inlinedAt: !37135)
!37137 = distinct !{!37137, !37123, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_: argument 4"}
!37138 = distinct !{!37138, !37123, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_: argument 1"}
!37139 = distinct !{!37139, !37123, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_: argument 0"}
!37140 = distinct !DILocation(line: 882, column: 37, scope: !32595, inlinedAt: !37126)
!37141 = distinct !DILocation(line: 3903, column: 18, scope: !32614, inlinedAt: !37140)
!37142 = distinct !DILocation(line: 3904, column: 14, scope: !32614, inlinedAt: !37140)
!37143 = distinct !DILocation(line: 1892, column: 31, scope: !32617, inlinedAt: !37142)
!37144 = distinct !DILocation(line: 1912, column: 78, scope: !32617, inlinedAt: !37142)
!37145 = distinct !DILocation(line: 2058, column: 29, scope: !32620, inlinedAt: !37144)
!37146 = distinct !DILocation(line: 882, column: 59, scope: !32595, inlinedAt: !37126)
!37147 = distinct !DILocation(line: 0, scope: !32626, inlinedAt: !37146)
!37148 = distinct !DILocation(line: 678, column: 32, scope: !32576, inlinedAt: !37127)
!37149 = distinct !DILocation(line: 678, column: 40, scope: !32576, inlinedAt: !37127)
!37150 = distinct !DILocation(line: 144, column: 24, scope: !32632, inlinedAt: !37149)
!37151 = distinct !DILocation(line: 0, scope: !32590, inlinedAt: !37126)
!37152 = distinct !DILocation(line: 888, column: 37, scope: !32589, inlinedAt: !37126)
!37153 = distinct !DILocation(line: 3903, column: 18, scope: !32614, inlinedAt: !37152)
!37154 = distinct !DILocation(line: 3904, column: 14, scope: !41406, inlinedAt: !37152)
!37155 = distinct !DILocation(line: 1892, column: 31, scope: !32617, inlinedAt: !37154)
!37156 = distinct !DILocation(line: 1912, column: 78, scope: !41407, inlinedAt: !37154)
!37157 = distinct !DILocation(line: 2058, column: 29, scope: !32620, inlinedAt: !37156)
!37158 = distinct !DILocation(line: 888, column: 59, scope: !32589, inlinedAt: !37126)
!37159 = distinct !DILocation(line: 0, scope: !32626, inlinedAt: !37158)
!37160 = distinct !DILocation(line: 895, column: 33, scope: !32596, inlinedAt: !37126)
!37161 = distinct !DILocation(line: 3103, column: 18, scope: !32645, inlinedAt: !37160)
!37162 = distinct !DILocation(line: 0, scope: !32644, inlinedAt: !37160)
!37163 = distinct !DILocation(line: 896, column: 13, scope: !32596, inlinedAt: !37126)
!37164 = distinct !DILocation(line: 0, scope: !32663, inlinedAt: !37163)
!37165 = distinct !DILocation(line: 891, column: 17, scope: !32590, inlinedAt: !37126)
!37166 = distinct !DILocation(line: 0, scope: !32663, inlinedAt: !37165)
!37167 = distinct !DILocation(line: 2061, column: 18, scope: !41429, inlinedAt: !37156)
!37168 = distinct !DILocation(line: 305, column: 20, scope: !41428, inlinedAt: !37167)
!37169 = distinct !DILocation(line: 622, column: 14, scope: !41427, inlinedAt: !37168)
!37170 = distinct !DILocation(line: 0, scope: !32624, inlinedAt: !37158)
!37171 = distinct !DILocation(line: 0, scope: !32589, inlinedAt: !37126)
!37172 = distinct !DILocation(line: 889, column: 17, scope: !32589, inlinedAt: !37126)
!37173 = distinct !DILocation(line: 0, scope: !32663, inlinedAt: !37172)
!37174 = distinct !DILocation(line: 0, scope: !32586, inlinedAt: !37126)
!37175 = distinct !DILocation(line: 891, column: 17, scope: !41439, inlinedAt: !37126)
!37176 = distinct !DILocation(line: 0, scope: !32687, inlinedAt: !37175)
!37177 = distinct !DILocation(line: 0, scope: !32683, inlinedAt: !37175)
!37178 = distinct !DILocation(line: 0, scope: !32588, inlinedAt: !37126)
!37179 = distinct !DILocation(line: 889, column: 17, scope: !41443, inlinedAt: !37126)
!37180 = distinct !DILocation(line: 0, scope: !32687, inlinedAt: !37179)
!37181 = distinct !DILocation(line: 0, scope: !32684, inlinedAt: !37179)
!37182 = distinct !DILocation(line: 0, scope: !32584, inlinedAt: !37126)
!37183 = distinct !DILocation(line: 896, column: 13, scope: !41444, inlinedAt: !37126)
!37184 = distinct !DILocation(line: 0, scope: !32687, inlinedAt: !37183)
!37185 = distinct !DILocation(line: 0, scope: !32682, inlinedAt: !37183)
!37186 = distinct !DILocation(line: 899, column: 66, scope: !32596, inlinedAt: !37126)
!37187 = distinct !DILocation(line: 3894, column: 14, scope: !32699, inlinedAt: !37186)
!37188 = distinct !DILocation(line: 3895, column: 14, scope: !32699, inlinedAt: !37186)
!37189 = distinct !DILocation(line: 1856, column: 27, scope: !32702, inlinedAt: !37188)
!37190 = distinct !DILocation(line: 1873, column: 76, scope: !32702, inlinedAt: !37188)
!37191 = distinct !DILocation(line: 1974, column: 25, scope: !32705, inlinedAt: !37190)
!37192 = distinct !DILocation(line: 1977, column: 18, scope: !32705, inlinedAt: !37190)
!37193 = distinct !DILocation(line: 305, column: 20, scope: !41453, inlinedAt: !37192)
!37194 = distinct !DILocation(line: 622, column: 14, scope: !41452, inlinedAt: !37193)
!37195 = distinct !DILocation(line: 0, scope: !32582, inlinedAt: !37126)
!37196 = distinct !DILocation(line: 900, column: 37, scope: !32581, inlinedAt: !37126)
!37197 = distinct !DILocation(line: 3903, column: 18, scope: !32614, inlinedAt: !37196)
!37198 = distinct !DILocation(line: 3904, column: 14, scope: !41454, inlinedAt: !37196)
!37199 = distinct !DILocation(line: 1892, column: 31, scope: !32617, inlinedAt: !37198)
!37200 = distinct !DILocation(line: 1912, column: 78, scope: !41455, inlinedAt: !37198)
!37201 = distinct !DILocation(line: 2058, column: 29, scope: !32620, inlinedAt: !37200)
!37202 = distinct !DILocation(line: 900, column: 59, scope: !32581, inlinedAt: !37126)
!37203 = distinct !DILocation(line: 0, scope: !32626, inlinedAt: !37202)
!37204 = distinct !DILocation(line: 903, column: 17, scope: !32582, inlinedAt: !37126)
!37205 = distinct !DILocation(line: 0, scope: !32663, inlinedAt: !37204)
!37206 = distinct !DILocation(line: 2061, column: 18, scope: !41459, inlinedAt: !37200)
!37207 = distinct !DILocation(line: 305, column: 20, scope: !41458, inlinedAt: !37206)
!37208 = distinct !DILocation(line: 622, column: 14, scope: !41457, inlinedAt: !37207)
!37209 = distinct !DILocation(line: 0, scope: !32623, inlinedAt: !37202)
!37210 = distinct !DILocation(line: 0, scope: !32581, inlinedAt: !37126)
!37211 = distinct !DILocation(line: 901, column: 17, scope: !32581, inlinedAt: !37126)
!37212 = distinct !DILocation(line: 0, scope: !32663, inlinedAt: !37211)
!37213 = distinct !DILocation(line: 0, scope: !32578, inlinedAt: !37126)
!37214 = distinct !DILocation(line: 903, column: 17, scope: !41460, inlinedAt: !37126)
!37215 = distinct !DILocation(line: 0, scope: !32687, inlinedAt: !37214)
!37216 = distinct !DILocation(line: 0, scope: !32680, inlinedAt: !37214)
!37217 = distinct !DILocation(line: 0, scope: !32580, inlinedAt: !37126)
!37218 = distinct !DILocation(line: 901, column: 17, scope: !41462, inlinedAt: !37126)
!37219 = distinct !DILocation(line: 0, scope: !32687, inlinedAt: !37218)
!37220 = distinct !DILocation(line: 0, scope: !32681, inlinedAt: !37218)
!37221 = distinct !DILocation(line: 885, column: 17, scope: !32596, inlinedAt: !37126)
!37222 = distinct !DILocation(line: 0, scope: !32663, inlinedAt: !37221)
!37223 = distinct !DILocation(line: 2061, column: 18, scope: !32620, inlinedAt: !37144)
!37224 = distinct !DILocation(line: 305, column: 20, scope: !32671, inlinedAt: !37223)
!37225 = distinct !DILocation(line: 622, column: 14, scope: !32670, inlinedAt: !37224)
!37226 = distinct !DILocation(line: 0, scope: !32625, inlinedAt: !37146)
!37227 = distinct !DILocation(line: 0, scope: !32595, inlinedAt: !37126)
!37228 = distinct !DILocation(line: 883, column: 17, scope: !32595, inlinedAt: !37126)
!37229 = distinct !DILocation(line: 0, scope: !32663, inlinedAt: !37228)
!37230 = distinct !DILocation(line: 0, scope: !32592, inlinedAt: !37126)
!37231 = distinct !DILocation(line: 885, column: 17, scope: !41463, inlinedAt: !37126)
!37232 = distinct !DILocation(line: 0, scope: !32687, inlinedAt: !37231)
!37233 = distinct !DILocation(line: 0, scope: !32685, inlinedAt: !37231)
!37234 = distinct !DILocation(line: 0, scope: !32594, inlinedAt: !37126)
!37235 = distinct !DILocation(line: 883, column: 17, scope: !41464, inlinedAt: !37126)
!37236 = distinct !DILocation(line: 0, scope: !32687, inlinedAt: !37235)
!37237 = distinct !DILocation(line: 0, scope: !32686, inlinedAt: !37235)
!37238 = distinct !DILocation(line: 0, scope: !715, inlinedAt: !29915)
!37239 = distinct !DILocation(line: 0, scope: !714, inlinedAt: !29915)
!37240 = distinct !DILocation(line: 180, column: 28, scope: !714, inlinedAt: !29915)
!37241 = distinct !DILocation(line: 1662, column: 11, scope: !1446, inlinedAt: !37240)
!37242 = distinct !DILocation(line: 1662, column: 18, scope: !1446, inlinedAt: !37240)
!37243 = distinct !DILocation(line: 0, scope: !729, inlinedAt: !29914)
!37244 = distinct !DILocation(line: 0, scope: !722, inlinedAt: !29914)
!37245 = distinct !DILocation(line: 865, column: 17, scope: !29212)
!37246 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !37245)
!37247 = distinct !DILocation(line: 853, column: 42, scope: !29205)
!37248 = distinct !DILocation(line: 190, column: 14, scope: !1436, inlinedAt: !37247)
!37249 = distinct !DILocation(line: 0, scope: !1435, inlinedAt: !37248)
!37250 = distinct !DILocation(line: 1544, column: 24, scope: !1434, inlinedAt: !37248)
!37251 = distinct !DILocation(line: 0, scope: !1438, inlinedAt: !37250)
!37252 = distinct !DILocation(line: 0, scope: !1436, inlinedAt: !37247)
!37253 = distinct !DILocation(line: 190, column: 42, scope: !1437, inlinedAt: !37250)
!37254 = distinct !DILocation(line: 0, scope: !1439, inlinedAt: !37253)
!37255 = distinct !DILocation(line: 578, column: 15, scope: !7601, inlinedAt: !37253)
!37256 = distinct !DILocation(line: 0, scope: !1440, inlinedAt: !37255)
!37257 = distinct !DILocation(line: 189, column: 14, scope: !1436, inlinedAt: !37247)
!37258 = distinct !DILocation(line: 0, scope: !1441, inlinedAt: !37257)
!37259 = distinct !DILocation(line: 578, column: 15, scope: !1441, inlinedAt: !37257)
!37260 = distinct !DILocation(line: 0, scope: !1442, inlinedAt: !37259)
!37261 = distinct !DILocation(line: 0, scope: !1434, inlinedAt: !37248)
!37262 = distinct !DILocation(line: 190, column: 28, scope: !1437, inlinedAt: !37250)
!37263 = distinct !DILocation(line: 190, column: 36, scope: !1437, inlinedAt: !37250)
!37264 = distinct !DILocation(line: 3894, column: 14, scope: !1443, inlinedAt: !37263)
!37265 = distinct !DILocation(line: 3895, column: 14, scope: !7612, inlinedAt: !37263)
!37266 = distinct !DILocation(line: 1856, column: 27, scope: !1444, inlinedAt: !37265)
!37267 = distinct !DILocation(line: 1873, column: 76, scope: !7615, inlinedAt: !37265)
!37268 = distinct !DILocation(line: 1974, column: 25, scope: !1445, inlinedAt: !37267)
!37269 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !37267)
!37270 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !37269)
!37271 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !37270)
!37272 = distinct !DILocation(line: 865, column: 17, scope: !29212)
!37273 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !37272)
!37274 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !37121)
!37275 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !37274)
!37276 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !37275)
!37277 = !{!573, !3485, !3926, !3905}
!37278 = !DISubroutineType(types: !37277)
!37279 = !DISubprogram(name: "interpret<core::io::util::Sink>", linkageName: "_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_", scope: !491, file: !3254, line: 54, type: !37278, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3907)
!37280 = !DILocalVariable(name: "self", arg: 1, scope: !29845, file: !3254, line: 55, type: !3485)
!37281 = !DILocalVariable(name: "state", arg: 2, scope: !29845, file: !3254, line: 56, type: !3926)
!37282 = !DILocalVariable(name: "output", arg: 3, scope: !29845, file: !3254, line: 57, type: !3905)
!37283 = !DILocalVariable(name: "ip", scope: !29844, file: !3254, line: 59, type: !1832, align: 64)
!37284 = !DILocalVariable(name: "instr", scope: !29843, file: !3254, line: 213, type: !3927, align: 64)
!37285 = !DILocalVariable(name: "current_ip", scope: !29842, file: !3254, line: 215, type: !3659, align: 32)
!37286 = !DILocalVariable(name: "v", scope: !29841, file: !3254, line: 218, type: !3928, align: 64)
!37287 = !DILocalVariable(name: "n", scope: !29840, file: !3254, line: 221, type: !2900, align: 64)
!37288 = !DILocalVariable(name: "attr", scope: !29839, file: !3254, line: 222, type: !2900, align: 64)
!37289 = !DILocalVariable(name: "is_optional", scope: !29838, file: !3254, line: 223, type: !2023, align: 8)
!37290 = !DILocalVariable(name: "a", scope: !29837, file: !3254, line: 224, type: !139, align: 64)
!37291 = !DILocalVariable(name: "a_span", scope: !29837, file: !3254, line: 224, type: !537, align: 32)
!37292 = !DILocalVariable(name: "chunk", scope: !29836, file: !3254, line: 63, type: !3639, align: 64)
!37293 = !DILocalVariable(name: "span", scope: !29835, file: !3254, line: 64, type: !15, align: 64)
!37294 = !DILocalVariable(name: "name", scope: !29834, file: !3254, line: 67, type: !90, align: 64)
!37295 = !DILocalVariable(name: "source", scope: !29834, file: !3254, line: 67, type: !90, align: 64)
!37296 = !DILocalVariable(name: "err", scope: !29833, file: !3254, line: 68, type: !563, align: 64)
!37297 = !DILexicalBlockFile(scope: !29832, file: !3254, discriminator: 0)
!37298 = !DILocalVariable(name: "args", scope: !37297, file: !3254, line: 231, type: !680, align: 64)
!37299 = !DILexicalBlockFile(scope: !29831, file: !3254, discriminator: 0)
!37300 = !DILocalVariable(name: "args", scope: !37299, file: !3254, line: 231, type: !3931, align: 64)
!37301 = !DILocalVariable(name: "next", scope: !29830, file: !3254, line: 233, type: !139, align: 64)
!37302 = !DILocalVariable(name: "is_optional", scope: !29829, file: !3254, line: 238, type: !2023, align: 8)
!37303 = !DILocalVariable(name: "subscript", scope: !29828, file: !3254, line: 239, type: !139, align: 64)
!37304 = !DILocalVariable(name: "subscript_span", scope: !29828, file: !3254, line: 239, type: !537, align: 32)
!37305 = !DILocalVariable(name: "val", scope: !29827, file: !3254, line: 240, type: !139, align: 64)
!37306 = !DILocalVariable(name: "val_span", scope: !29827, file: !3254, line: 240, type: !537, align: 32)
!37307 = !DILocalVariable(name: "chunk", scope: !29826, file: !3254, line: 63, type: !3639, align: 64)
!37308 = !DILocalVariable(name: "span", scope: !29825, file: !3254, line: 64, type: !15, align: 64)
!37309 = !DILocalVariable(name: "name", scope: !29824, file: !3254, line: 67, type: !90, align: 64)
!37310 = !DILocalVariable(name: "source", scope: !29824, file: !3254, line: 67, type: !90, align: 64)
!37311 = !DILocalVariable(name: "err", scope: !29823, file: !3254, line: 68, type: !563, align: 64)
!37312 = !DILocalVariable(name: "chunk", scope: !29822, file: !3254, line: 63, type: !3639, align: 64)
!37313 = !DILocalVariable(name: "span", scope: !29821, file: !3254, line: 64, type: !15, align: 64)
!37314 = !DILocalVariable(name: "name", scope: !29820, file: !3254, line: 67, type: !90, align: 64)
!37315 = !DILocalVariable(name: "source", scope: !29820, file: !3254, line: 67, type: !90, align: 64)
!37316 = !DILocalVariable(name: "err", scope: !29819, file: !3254, line: 68, type: !563, align: 64)
!37317 = !DILocalVariable(name: "c_span", scope: !29818, file: !3254, line: 259, type: !537, align: 32)
!37318 = !DILocalVariable(name: "v", scope: !29817, file: !3254, line: 261, type: !139, align: 64)
!37319 = !DILocalVariable(name: "e", scope: !29816, file: !3254, line: 264, type: !569, align: 64)
!37320 = !DILocalVariable(name: "chunk", scope: !29815, file: !3254, line: 63, type: !3639, align: 64)
!37321 = !DILocalVariable(name: "span", scope: !29814, file: !3254, line: 64, type: !15, align: 64)
!37322 = !DILocalVariable(name: "name", scope: !29813, file: !3254, line: 67, type: !90, align: 64)
!37323 = !DILocalVariable(name: "source", scope: !29813, file: !3254, line: 67, type: !90, align: 64)
!37324 = !DILocalVariable(name: "err", scope: !29812, file: !3254, line: 68, type: !563, align: 64)
!37325 = !DILocalVariable(name: "is_optional", scope: !29811, file: !3254, line: 271, type: !2023, align: 8)
!37326 = !DILocalVariable(name: "step", scope: !29810, file: !3254, line: 272, type: !139, align: 64)
!37327 = !DILocalVariable(name: "step_span", scope: !29810, file: !3254, line: 272, type: !537, align: 32)
!37328 = !DILocalVariable(name: "end", scope: !29809, file: !3254, line: 273, type: !139, align: 64)
!37329 = !DILocalVariable(name: "end_span", scope: !29809, file: !3254, line: 273, type: !537, align: 32)
!37330 = !DILocalVariable(name: "start", scope: !29808, file: !3254, line: 274, type: !139, align: 64)
!37331 = !DILocalVariable(name: "start_span", scope: !29808, file: !3254, line: 274, type: !537, align: 32)
!37332 = !DILocalVariable(name: "val", scope: !29807, file: !3254, line: 275, type: !139, align: 64)
!37333 = !DILocalVariable(name: "val_span", scope: !29807, file: !3254, line: 275, type: !537, align: 32)
!37334 = !DILocalVariable(name: "chunk", scope: !29806, file: !3254, line: 63, type: !3639, align: 64)
!37335 = !DILocalVariable(name: "span", scope: !29805, file: !3254, line: 64, type: !15, align: 64)
!37336 = !DILocalVariable(name: "name", scope: !29804, file: !3254, line: 67, type: !90, align: 64)
!37337 = !DILocalVariable(name: "source", scope: !29804, file: !3254, line: 67, type: !90, align: 64)
!37338 = !DILocalVariable(name: "err", scope: !29803, file: !3254, line: 68, type: !563, align: 64)
!37339 = !DILocalVariable(name: "s", scope: !29802, file: !3254, line: 288, type: !665, align: 128)
!37340 = !DILocalVariable(name: "chunk", scope: !29801, file: !3254, line: 63, type: !3639, align: 64)
!37341 = !DILocalVariable(name: "span", scope: !29800, file: !3254, line: 64, type: !15, align: 64)
!37342 = !DILocalVariable(name: "name", scope: !29799, file: !3254, line: 67, type: !90, align: 64)
!37343 = !DILocalVariable(name: "source", scope: !29799, file: !3254, line: 67, type: !90, align: 64)
!37344 = !DILocalVariable(name: "err", scope: !29798, file: !3254, line: 68, type: !563, align: 64)
!37345 = !DILocalVariable(name: "n", scope: !29797, file: !3254, line: 294, type: !2203, align: 128)
!37346 = !DILocalVariable(name: "chunk", scope: !29796, file: !3254, line: 63, type: !3639, align: 64)
!37347 = !DILocalVariable(name: "span", scope: !29795, file: !3254, line: 64, type: !15, align: 64)
!37348 = !DILocalVariable(name: "name", scope: !29794, file: !3254, line: 67, type: !90, align: 64)
!37349 = !DILocalVariable(name: "source", scope: !29794, file: !3254, line: 67, type: !90, align: 64)
!37350 = !DILocalVariable(name: "err", scope: !29793, file: !3254, line: 68, type: !563, align: 64)
!37351 = !DILexicalBlockFile(scope: !29792, file: !3254, discriminator: 0)
!37352 = !DILocalVariable(name: "args", scope: !37351, file: !3254, line: 296, type: !661, align: 64)
!37353 = !DILexicalBlockFile(scope: !29791, file: !3254, discriminator: 0)
!37354 = !DILocalVariable(name: "args", scope: !37353, file: !3254, line: 296, type: !3931, align: 64)
!37355 = !DILocalVariable(name: "e", scope: !29790, file: !3254, line: 304, type: !665, align: 128)
!37356 = !DILocalVariable(name: "chunk", scope: !29789, file: !3254, line: 63, type: !3639, align: 64)
!37357 = !DILocalVariable(name: "span", scope: !29788, file: !3254, line: 64, type: !15, align: 64)
!37358 = !DILocalVariable(name: "name", scope: !29787, file: !3254, line: 67, type: !90, align: 64)
!37359 = !DILocalVariable(name: "source", scope: !29787, file: !3254, line: 67, type: !90, align: 64)
!37360 = !DILocalVariable(name: "err", scope: !29786, file: !3254, line: 68, type: !563, align: 64)
!37361 = !DILocalVariable(name: "n", scope: !29785, file: !3254, line: 310, type: !2203, align: 128)
!37362 = !DILocalVariable(name: "chunk", scope: !29784, file: !3254, line: 63, type: !3639, align: 64)
!37363 = !DILocalVariable(name: "span", scope: !29783, file: !3254, line: 64, type: !15, align: 64)
!37364 = !DILocalVariable(name: "name", scope: !29782, file: !3254, line: 67, type: !90, align: 64)
!37365 = !DILocalVariable(name: "source", scope: !29782, file: !3254, line: 67, type: !90, align: 64)
!37366 = !DILocalVariable(name: "err", scope: !29781, file: !3254, line: 68, type: !563, align: 64)
!37367 = !DILexicalBlockFile(scope: !29780, file: !3254, discriminator: 0)
!37368 = !DILocalVariable(name: "args", scope: !37367, file: !3254, line: 312, type: !661, align: 64)
!37369 = !DILexicalBlockFile(scope: !29779, file: !3254, discriminator: 0)
!37370 = !DILocalVariable(name: "args", scope: !37369, file: !3254, line: 312, type: !3931, align: 64)
!37371 = !DILocalVariable(name: "st", scope: !29778, file: !3254, line: 317, type: !665, align: 128)
!37372 = !DILocalVariable(name: "chunk", scope: !29777, file: !3254, line: 63, type: !3639, align: 64)
!37373 = !DILocalVariable(name: "span", scope: !29776, file: !3254, line: 64, type: !15, align: 64)
!37374 = !DILocalVariable(name: "name", scope: !29775, file: !3254, line: 67, type: !90, align: 64)
!37375 = !DILocalVariable(name: "source", scope: !29775, file: !3254, line: 67, type: !90, align: 64)
!37376 = !DILocalVariable(name: "err", scope: !29774, file: !3254, line: 68, type: !563, align: 64)
!37377 = !DILocalVariable(name: "n", scope: !29773, file: !3254, line: 323, type: !2203, align: 128)
!37378 = !DILocalVariable(name: "chunk", scope: !29772, file: !3254, line: 63, type: !3639, align: 64)
!37379 = !DILocalVariable(name: "span", scope: !29771, file: !3254, line: 64, type: !15, align: 64)
!37380 = !DILocalVariable(name: "name", scope: !29770, file: !3254, line: 67, type: !90, align: 64)
!37381 = !DILocalVariable(name: "source", scope: !29770, file: !3254, line: 67, type: !90, align: 64)
!37382 = !DILocalVariable(name: "err", scope: !29769, file: !3254, line: 68, type: !563, align: 64)
!37383 = !DILexicalBlockFile(scope: !29768, file: !3254, discriminator: 0)
!37384 = !DILocalVariable(name: "args", scope: !37383, file: !3254, line: 325, type: !661, align: 64)
!37385 = !DILexicalBlockFile(scope: !29767, file: !3254, discriminator: 0)
!37386 = !DILocalVariable(name: "args", scope: !37385, file: !3254, line: 325, type: !3931, align: 64)
!37387 = !DILocalVariable(name: "v", scope: !29766, file: !3254, line: 334, type: !139, align: 64)
!37388 = !DILocalVariable(name: "e", scope: !29765, file: !3254, line: 337, type: !569, align: 64)
!37389 = !DILocalVariable(name: "chunk", scope: !29764, file: !3254, line: 63, type: !3639, align: 64)
!37390 = !DILocalVariable(name: "span", scope: !29763, file: !3254, line: 64, type: !15, align: 64)
!37391 = !DILocalVariable(name: "name", scope: !29762, file: !3254, line: 67, type: !90, align: 64)
!37392 = !DILocalVariable(name: "source", scope: !29762, file: !3254, line: 67, type: !90, align: 64)
!37393 = !DILocalVariable(name: "err", scope: !29761, file: !3254, line: 68, type: !563, align: 64)
!37394 = !DILocalVariable(name: "t", scope: !29760, file: !3254, line: 343, type: !2900, align: 64)
!37395 = !DILocalVariable(name: "captured", scope: !29759, file: !3254, line: 344, type: !3230, align: 64)
!37396 = !DILocalVariable(name: "residual", scope: !29758, file: !3254, line: 345, type: !660, align: 64)
!37397 = !DILocalVariable(name: "val", scope: !29757, file: !3254, line: 345, type: !1829, align: 8)
!37398 = !DILocalVariable(name: "residual", scope: !29756, file: !3254, line: 347, type: !660, align: 64)
!37399 = !DILocalVariable(name: "val", scope: !29755, file: !3254, line: 347, type: !1829, align: 8)
!37400 = !DILocalVariable(name: "top", scope: !29754, file: !3254, line: 351, type: !139, align: 64)
!37401 = !DILocalVariable(name: "top_span", scope: !29754, file: !3254, line: 351, type: !537, align: 32)
!37402 = !DILocalVariable(name: "chunk", scope: !29753, file: !3254, line: 63, type: !3639, align: 64)
!37403 = !DILocalVariable(name: "span", scope: !29752, file: !3254, line: 64, type: !15, align: 64)
!37404 = !DILocalVariable(name: "name", scope: !29751, file: !3254, line: 67, type: !90, align: 64)
!37405 = !DILocalVariable(name: "source", scope: !29751, file: !3254, line: 67, type: !90, align: 64)
!37406 = !DILocalVariable(name: "err", scope: !29750, file: !3254, line: 68, type: !563, align: 64)
!37407 = !DILocalVariable(name: "residual", scope: !29749, file: !3254, line: 358, type: !577, align: 64)
!37408 = !DILocalVariable(name: "val", scope: !29748, file: !3254, line: 358, type: !1829, align: 8)
!37409 = !DILocalVariable(name: "name", scope: !29747, file: !3254, line: 360, type: !2900, align: 64)
!37410 = !DILocalVariable(name: "val", scope: !29746, file: !3254, line: 361, type: !139, align: 64)
!37411 = !DILocalVariable(name: "name", scope: !29745, file: !3254, line: 364, type: !2900, align: 64)
!37412 = !DILocalVariable(name: "val", scope: !29744, file: !3254, line: 365, type: !139, align: 64)
!37413 = !DILocalVariable(name: "name", scope: !29743, file: !3254, line: 368, type: !2900, align: 64)
!37414 = !DILocalVariable(name: "res", scope: !29742, file: !3254, line: 369, type: !573, align: 64)
!37415 = !DILocalVariable(name: "last", scope: !29741, file: !3254, line: 372, type: !1832, align: 64)
!37416 = !DILocalVariable(name: "buf", scope: !29740, file: !3254, line: 373, type: !7, align: 64)
!37417 = !DILocalVariable(name: "result", scope: !29739, file: !3254, line: 374, type: !573, align: 64)
!37418 = !DILocalVariable(name: "e", scope: !29738, file: !3254, line: 378, type: !569, align: 64)
!37419 = !DILocalVariable(name: "report", scope: !29737, file: !3254, line: 379, type: !3932, align: 64)
!37420 = !DILocalVariable(name: "chunk", scope: !29736, file: !3254, line: 380, type: !3639, align: 64)
!37421 = !DILocalVariable(name: "span", scope: !29735, file: !3254, line: 381, type: !3933, align: 64)
!37422 = !DILocalVariable(name: "name", scope: !29734, file: !3254, line: 382, type: !90, align: 64)
!37423 = !DILocalVariable(name: "source", scope: !29734, file: !3254, line: 382, type: !90, align: 64)
!37424 = !DILocalVariable(name: "num_elem", scope: !29733, file: !3254, line: 389, type: !3934, align: 64)
!37425 = !DILocalVariable(name: "elems", scope: !29732, file: !3254, line: 395, type: !656, align: 64)
!37426 = !DILocalVariable(name: "iter", scope: !29731, file: !3254, line: 396, type: !14, align: 64)
!37427 = !DILocalVariable(name: "val", scope: !29730, file: !3254, line: 397, type: !139, align: 64)
!37428 = !DILocalVariable(name: "key", scope: !29729, file: !3254, line: 398, type: !139, align: 64)
!37429 = !DILocalVariable(name: "residual", scope: !29728, file: !3254, line: 399, type: !577, align: 64)
!37430 = !DILocalVariable(name: "val", scope: !29727, file: !3254, line: 399, type: !104, align: 128)
!37431 = !DILocalVariable(name: "map", scope: !29726, file: !3254, line: 402, type: !110, align: 64)
!37432 = !DILocalVariable(name: "entry_types", scope: !29725, file: !3254, line: 406, type: !3935, align: 64)
!37433 = !DILocalVariable(name: "result_map", scope: !29724, file: !3254, line: 407, type: !110, align: 64)
!37434 = !DILocalVariable(name: "iter", scope: !29723, file: !3254, line: 411, type: !654, align: 64)
!37435 = !DILocalVariable(name: "is_spread", scope: !29722, file: !3254, line: 411, type: !3936, align: 64)
!37436 = !DILocalVariable(name: "val", scope: !29721, file: !3254, line: 413, type: !139, align: 64)
!37437 = !DILocalVariable(name: "span", scope: !29721, file: !3254, line: 413, type: !537, align: 32)
!37438 = !DILocalVariable(name: "chunk", scope: !29720, file: !3254, line: 63, type: !3639, align: 64)
!37439 = !DILocalVariable(name: "span", scope: !29719, file: !3254, line: 64, type: !15, align: 64)
!37440 = !DILocalVariable(name: "name", scope: !29718, file: !3254, line: 67, type: !90, align: 64)
!37441 = !DILocalVariable(name: "source", scope: !29718, file: !3254, line: 67, type: !90, align: 64)
!37442 = !DILocalVariable(name: "err", scope: !29717, file: !3254, line: 68, type: !563, align: 64)
end_hunk_9
begin_hunk_10_@llvm.vector.reduce.add.v2i64
!49315 = !DILocation(line: 4354, column: 24, scope: !868, inlinedAt: !36956)
!49316 = !DILocation(line: 2552, column: 12, scope: !871, inlinedAt: !36953)
!49317 = !DILocation(line: 454, column: 20, scope: !895, inlinedAt: !37003)
!49318 = !DILocation(line: 4354, column: 24, scope: !868, inlinedAt: !36951)
!49319 = !DILocation(line: 2552, column: 12, scope: !869, inlinedAt: !36948)
!49320 = !DILocation(line: 454, column: 20, scope: !897, inlinedAt: !37010)
!49321 = !DILocation(line: 4354, column: 24, scope: !868, inlinedAt: !36946)
!49322 = !DILocation(line: 2552, column: 12, scope: !866, inlinedAt: !36943)
!49323 = !DILocation(line: 454, column: 20, scope: !901, inlinedAt: !37019)
!49324 = !DILocation(line: 4354, column: 24, scope: !868, inlinedAt: !36962)
!49325 = !DILocation(line: 2552, column: 12, scope: !873, inlinedAt: !36959)
!49326 = !DILocation(line: 102, column: 10, scope: !875, inlinedAt: !36958)
!49327 = !DILocation(line: 60, column: 23, scope: !900, inlinedAt: !37023)
!49328 = !DILocation(line: 184, column: 17, scope: !857, inlinedAt: !36941)
!49329 = !DILocation(line: 2557, column: 38, scope: !873, inlinedAt: !36959)
!49330 = !DILocation(line: 60, column: 23, scope: !900, inlinedAt: !37017)
!49331 = !DILocation(line: 2553, column: 13, scope: !873, inlinedAt: !36959)
!49332 = !DILocation(line: 184, column: 17, scope: !856, inlinedAt: !36941)
!49333 = !DILocation(line: 2553, column: 13, scope: !871, inlinedAt: !36953)
!49334 = !DILocation(line: 184, column: 17, scope: !855, inlinedAt: !36941)
!49335 = !DILocation(line: 2553, column: 13, scope: !869, inlinedAt: !36948)
!49336 = !DILocation(line: 184, column: 17, scope: !854, inlinedAt: !36941)
!49337 = !DILocation(line: 2553, column: 13, scope: !866, inlinedAt: !36943)
!49338 = !DILocation(line: 203, column: 10, scope: !853, inlinedAt: !36937)
!49339 = !DILocation(line: 203, column: 15, scope: !853, inlinedAt: !36937)
!49340 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !37025)
!49341 = !DILocation(line: 82, column: 9, scope: !722, inlinedAt: !29918)
!49342 = !DILocation(line: 802, column: 36, scope: !29217)
!49343 = !DILocation(line: 410, column: 15, scope: !1121, inlinedAt: !37031)
!49344 = !DILocation(line: 410, column: 9, scope: !1121, inlinedAt: !37031)
!49345 = !DILocation(line: 802, column: 32, scope: !29217)
!49346 = !DILocation(line: 627, column: 9, scope: !30454, inlinedAt: !43672)
!49347 = !DILocation(line: 1873, column: 86, scope: !30455, inlinedAt: !43668)
!49348 = !DILocation(line: 808, column: 39, scope: !29217)
!49349 = !DILocation(line: 804, column: 38, scope: !29217)
!49350 = !DILocation(line: 189, column: 18, scope: !1436, inlinedAt: !37033)
!49351 = !DILocation(line: 184, column: 12, scope: !1442, inlinedAt: !37045)
!49352 = !DILocation(line: 186, column: 27, scope: !1442, inlinedAt: !37045)
!49353 = !DILocation(line: 1873, column: 86, scope: !1444, inlinedAt: !37051)
!49354 = !DILocation(line: 184, column: 12, scope: !1440, inlinedAt: !37041)
!49355 = !DILocation(line: 808, column: 35, scope: !29217)
!49356 = !DILocation(line: 808, column: 29, scope: !29217)
!49357 = !DILocation(line: 811, column: 40, scope: !29217)
!49358 = !DILocation(line: 406, column: 6, scope: !1447, inlinedAt: !37055)
!49359 = !DILocation(line: 813, column: 46, scope: !29217)
!49360 = !DILocation(line: 189, column: 18, scope: !1436, inlinedAt: !37056)
!49361 = !DILocation(line: 184, column: 12, scope: !1442, inlinedAt: !37068)
!49362 = !DILocation(line: 186, column: 27, scope: !1442, inlinedAt: !37068)
!49363 = !DILocation(line: 1873, column: 86, scope: !1444, inlinedAt: !37074)
!49364 = !DILocation(line: 184, column: 12, scope: !1440, inlinedAt: !37064)
!49365 = !DILocation(line: 824, column: 25, scope: !29219)
!49366 = !DILocation(line: 831, column: 17, scope: !29224)
!49367 = !DILocation(line: 828, column: 25, scope: !29219)
!49368 = !DILocation(line: 792, column: 21, scope: !29222)
!49369 = !DILocation(line: 627, column: 9, scope: !913, inlinedAt: !37080)
!49370 = !DILocation(line: 971, column: 18, scope: !909, inlinedAt: !36887)
!49371 = !DILocation(line: 1042, column: 29, scope: !903, inlinedAt: !36876)
!49372 = !DILocation(line: 1043, column: 13, scope: !903, inlinedAt: !36876)
!49373 = !DILocation(line: 26, column: 37, scope: !731, inlinedAt: !36870)
!49374 = !DILocation(line: 831, column: 17, scope: !29842)
!49375 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !37084)
!49376 = !DILocation(line: 186, column: 27, scope: !1440, inlinedAt: !37064)
!49377 = !DILocation(line: 816, column: 45, scope: !29214)
!49378 = !DILocation(line: 627, column: 9, scope: !30454, inlinedAt: !43683)
!49379 = !DILocation(line: 1873, column: 86, scope: !30455, inlinedAt: !43679)
!49380 = !DILocation(line: 816, column: 50, scope: !29214)
!49381 = !DILocation(line: 971, column: 21, scope: !30318, inlinedAt: !43592)
!49382 = !DILocation(line: 815, column: 48, scope: !29214)
!49383 = !DILocation(line: 817, column: 41, scope: !29214)
!49384 = !DILocation(line: 0, scope: !43684)
!49385 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !37087)
!49386 = !DILocation(line: 186, column: 27, scope: !1440, inlinedAt: !37041)
!49387 = !DILocation(line: 806, column: 44, scope: !29216)
!49388 = !DILocation(line: 627, column: 9, scope: !30454, inlinedAt: !43695)
!49389 = !DILocation(line: 1873, column: 86, scope: !30455, inlinedAt: !43691)
!49390 = !DILocation(line: 806, column: 49, scope: !29216)
!49391 = !DILocation(line: 806, column: 40, scope: !29216)
!49392 = !DILocation(line: 806, column: 94, scope: !29216)
!49393 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !37088)
!49394 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !37092)
!49395 = !DILocation(line: 797, column: 40, scope: !29221)
!49396 = !DILocation(line: 238, column: 10, scope: !30311, inlinedAt: !40316)
!49397 = !DILocation(line: 627, column: 9, scope: !36863, inlinedAt: !43702)
!49398 = !DILocation(line: 627, column: 9, scope: !30454, inlinedAt: !43717)
!49399 = !DILocation(line: 1873, column: 86, scope: !30455, inlinedAt: !43713)
!49400 = !DILocation(line: 797, column: 45, scope: !29221)
!49401 = !DILocation(line: 797, column: 36, scope: !29221)
!49402 = !DILocation(line: 797, column: 94, scope: !29221)
!49403 = !DILocation(line: 0, scope: !43718)
!49404 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !37093)
!49405 = !DILocation(line: 834, column: 25, scope: !29212)
!49406 = !DILocation(line: 3136, column: 19, scope: !36859, inlinedAt: !43720)
!49407 = !DILocation(line: 3141, column: 37, scope: !36859, inlinedAt: !43720)
!49408 = !DILocation(line: 3141, column: 18, scope: !36859, inlinedAt: !43720)
!49409 = !DILocation(line: 834, column: 35, scope: !29212)
!49410 = !DILocation(line: 627, column: 9, scope: !36863, inlinedAt: !43766)
!49411 = !DILocation(line: 1873, column: 86, scope: !30455, inlinedAt: !43771)
!49412 = !DILocation(line: 627, column: 9, scope: !36863, inlinedAt: !43777)
!49413 = !DILocation(line: 1873, column: 86, scope: !30455, inlinedAt: !43784)
!49414 = !DILocation(line: 2741, column: 43, scope: !30312, inlinedAt: !40350)
!49415 = !DILocation(line: 21, column: 12, scope: !30684, inlinedAt: !43790)
!49416 = !DILocation(line: 627, column: 9, scope: !30454, inlinedAt: !43806)
!49417 = !DILocation(line: 157, column: 13, scope: !30690, inlinedAt: !43796)
!49418 = !DILocation(line: 835, column: 31, scope: !29212)
!49419 = !DILocation(line: 834, column: 32, scope: !29212)
!49420 = !DILocation(line: 627, column: 9, scope: !30454, inlinedAt: !43816)
!49421 = !DILocation(line: 837, column: 31, scope: !29212)
!49422 = !DILocation(line: 238, column: 10, scope: !30311, inlinedAt: !40359)
!49423 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !37095)
!49424 = !DILocation(line: 839, column: 29, scope: !29211)
!49425 = !DILocation(line: 410, column: 15, scope: !1121, inlinedAt: !37099)
!49426 = !DILocation(line: 410, column: 9, scope: !1121, inlinedAt: !37099)
!49427 = !DILocation(line: 839, column: 24, scope: !29211)
!49428 = !DILocation(line: 3136, column: 19, scope: !36859, inlinedAt: !43749)
!49429 = !DILocation(line: 3141, column: 37, scope: !36859, inlinedAt: !43749)
!49430 = !DILocation(line: 3141, column: 18, scope: !36859, inlinedAt: !43749)
!49431 = !DILocation(line: 846, column: 42, scope: !29209)
!49432 = !DILocation(line: 841, column: 30, scope: !29211)
!49433 = !DILocation(line: 189, column: 18, scope: !1436, inlinedAt: !37101)
!49434 = !DILocation(line: 184, column: 12, scope: !1442, inlinedAt: !37113)
!49435 = !DILocation(line: 186, column: 27, scope: !1442, inlinedAt: !37113)
!49436 = !DILocation(line: 1873, column: 86, scope: !1444, inlinedAt: !37119)
!49437 = !DILocation(line: 184, column: 12, scope: !1440, inlinedAt: !37109)
!49438 = !DILocation(line: 864, column: 26, scope: !29208)
!49439 = !DILocation(line: 51, column: 24, scope: !32602, inlinedAt: !37131)
!49440 = !DILocation(line: 1042, column: 9, scope: !32608, inlinedAt: !37135)
!49441 = !DILocation(line: 881, column: 13, scope: !32596, inlinedAt: !37126)
!49442 = !DILocation(line: 1912, column: 92, scope: !32617, inlinedAt: !37142)
!49443 = !DILocation(line: 307, column: 16, scope: !32625, inlinedAt: !37146)
!49444 = !DILocation(line: 677, column: 15, scope: !32575, inlinedAt: !37127)
!49445 = !DILocation(line: 677, column: 9, scope: !32575, inlinedAt: !37127)
!49446 = !DILocation(line: 145, column: 15, scope: !32632, inlinedAt: !37149)
!49447 = !DILocation(line: 145, column: 9, scope: !32632, inlinedAt: !37149)
!49448 = !DILocation(line: 0, scope: !32632, inlinedAt: !37149)
!49449 = !DILocation(line: 60, column: 34, scope: !32574, inlinedAt: !37128)
!49450 = !DILocation(line: 881, column: 42, scope: !32596, inlinedAt: !37126)
!49451 = !DILocation(line: 887, column: 47, scope: !32590, inlinedAt: !37126)
!49452 = !DILocation(line: 887, column: 23, scope: !32590, inlinedAt: !37126)
!49453 = !DILocation(line: 1912, column: 92, scope: !32617, inlinedAt: !37154)
!49454 = !DILocation(line: 307, column: 16, scope: !32624, inlinedAt: !37158)
!49455 = !DILocation(line: 3117, column: 13, scope: !32644, inlinedAt: !37160)
!49456 = !DILocation(line: 896, column: 19, scope: !32596, inlinedAt: !37126)
!49457 = !DILocation(line: 2176, column: 15, scope: !32663, inlinedAt: !37163)
!49458 = !DILocation(line: 2176, column: 9, scope: !32663, inlinedAt: !37163)
!49459 = !DILocation(line: 891, column: 17, scope: !32590, inlinedAt: !37126)
!49460 = !DILocation(line: 891, column: 41, scope: !32590, inlinedAt: !37126)
!49461 = !DILocation(line: 2176, column: 15, scope: !32663, inlinedAt: !37165)
!49462 = !DILocation(line: 2176, column: 9, scope: !32663, inlinedAt: !37165)
!49463 = !DILocation(line: 627, column: 9, scope: !32669, inlinedAt: !37169)
!49464 = !DILocation(line: 889, column: 17, scope: !32589, inlinedAt: !37126)
!49465 = !DILocation(line: 889, column: 41, scope: !32589, inlinedAt: !37126)
!49466 = !DILocation(line: 307, column: 21, scope: !32624, inlinedAt: !37158)
!49467 = !DILocation(line: 2176, column: 15, scope: !32663, inlinedAt: !37172)
!49468 = !DILocation(line: 2176, column: 9, scope: !32663, inlinedAt: !37172)
!49469 = !DILocation(line: 2190, column: 27, scope: !32683, inlinedAt: !37175)
!49470 = !DILocation(line: 2190, column: 23, scope: !32683, inlinedAt: !37175)
!49471 = !DILocation(line: 2190, column: 40, scope: !32683, inlinedAt: !37175)
!49472 = !DILocation(line: 0, scope: !41442, inlinedAt: !37126)
!49473 = !DILocation(line: 2190, column: 27, scope: !32684, inlinedAt: !37179)
!49474 = !DILocation(line: 2190, column: 23, scope: !32684, inlinedAt: !37179)
!49475 = !DILocation(line: 2190, column: 40, scope: !32684, inlinedAt: !37179)
!49476 = !DILocation(line: 2190, column: 27, scope: !32682, inlinedAt: !37183)
!49477 = !DILocation(line: 2190, column: 23, scope: !32682, inlinedAt: !37183)
!49478 = !DILocation(line: 2190, column: 40, scope: !32682, inlinedAt: !37183)
!49479 = !DILocation(line: 0, scope: !41445, inlinedAt: !37126)
!49480 = !DILocation(line: 627, column: 9, scope: !32708, inlinedAt: !37194)
!49481 = !DILocation(line: 1873, column: 86, scope: !32702, inlinedAt: !37188)
!49482 = !DILocation(line: 1912, column: 92, scope: !32617, inlinedAt: !37198)
!49483 = !DILocation(line: 307, column: 16, scope: !32623, inlinedAt: !37202)
!49484 = !DILocation(line: 903, column: 17, scope: !32582, inlinedAt: !37126)
!49485 = !DILocation(line: 2176, column: 15, scope: !32663, inlinedAt: !37204)
!49486 = !DILocation(line: 2176, column: 9, scope: !32663, inlinedAt: !37204)
!49487 = !DILocation(line: 627, column: 9, scope: !32669, inlinedAt: !37208)
!49488 = !DILocation(line: 307, column: 21, scope: !32623, inlinedAt: !37202)
!49489 = !DILocation(line: 901, column: 17, scope: !32581, inlinedAt: !37126)
!49490 = !DILocation(line: 2176, column: 15, scope: !32663, inlinedAt: !37211)
!49491 = !DILocation(line: 2176, column: 9, scope: !32663, inlinedAt: !37211)
!49492 = !DILocation(line: 2190, column: 27, scope: !32680, inlinedAt: !37214)
!49493 = !DILocation(line: 2190, column: 23, scope: !32680, inlinedAt: !37214)
!49494 = !DILocation(line: 2190, column: 40, scope: !32680, inlinedAt: !37214)
!49495 = !DILocation(line: 0, scope: !41461, inlinedAt: !37126)
!49496 = !DILocation(line: 2190, column: 27, scope: !32681, inlinedAt: !37218)
!49497 = !DILocation(line: 2190, column: 23, scope: !32681, inlinedAt: !37218)
!49498 = !DILocation(line: 2190, column: 40, scope: !32681, inlinedAt: !37218)
!49499 = !DILocation(line: 885, column: 23, scope: !32596, inlinedAt: !37126)
!49500 = !DILocation(line: 2176, column: 15, scope: !32663, inlinedAt: !37221)
!49501 = !DILocation(line: 2176, column: 9, scope: !32663, inlinedAt: !37221)
!49502 = !DILocation(line: 627, column: 9, scope: !32669, inlinedAt: !37225)
!49503 = !DILocation(line: 307, column: 21, scope: !32625, inlinedAt: !37146)
!49504 = !DILocation(line: 883, column: 23, scope: !32595, inlinedAt: !37126)
!49505 = !DILocation(line: 2176, column: 15, scope: !32663, inlinedAt: !37228)
!49506 = !DILocation(line: 2176, column: 9, scope: !32663, inlinedAt: !37228)
!49507 = !DILocation(line: 2190, column: 27, scope: !32685, inlinedAt: !37231)
!49508 = !DILocation(line: 2190, column: 23, scope: !32685, inlinedAt: !37231)
!49509 = !DILocation(line: 2190, column: 40, scope: !32685, inlinedAt: !37231)
!49510 = !DILocation(line: 2190, column: 27, scope: !32686, inlinedAt: !37235)
!49511 = !DILocation(line: 2190, column: 23, scope: !32686, inlinedAt: !37235)
!49512 = !DILocation(line: 2190, column: 40, scope: !32686, inlinedAt: !37235)
!49513 = !DILocation(line: 627, column: 9, scope: !36863, inlinedAt: !43831)
!49514 = !DILocation(line: 971, column: 18, scope: !36929, inlinedAt: !43837)
!49515 = !DILocation(line: 848, scope: !29207)
!49516 = !DILocation(line: 180, column: 28, scope: !714, inlinedAt: !29915)
!49517 = !DILocation(line: 545, column: 13, scope: !30323, inlinedAt: !40377)
!49518 = !DILocation(line: 1663, column: 9, scope: !1446, inlinedAt: !37240)
!49519 = !DILocation(line: 627, column: 9, scope: !30454, inlinedAt: !43863)
!49520 = !DILocation(line: 1873, column: 86, scope: !30455, inlinedAt: !43859)
!49521 = !DILocation(line: 849, column: 39, scope: !29205)
!49522 = !DILocation(line: 0, scope: !32596, inlinedAt: !37126)
!49523 = !DILocation(line: 2176, column: 15, scope: !29860, inlinedAt: !38131)
!49524 = !DILocation(line: 2176, column: 9, scope: !29860, inlinedAt: !38131)
!49525 = !DILocation(line: 2190, column: 23, scope: !29852, inlinedAt: !38119)
!49526 = !DILocation(line: 2178, column: 17, scope: !29860, inlinedAt: !38131)
!49527 = !DILocation(line: 864, column: 57, scope: !29208)
!49528 = !DILocation(line: 0, scope: !43868)
!49529 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !37245)
!49530 = !DILocation(line: 865, column: 17, scope: !29212)
!49531 = !DILocation(line: 865, column: 17, scope: !29842)
!49532 = !DILocation(line: 82, column: 9, scope: !722, inlinedAt: !29914)
!49533 = !DILocation(line: 849, column: 35, scope: !29205)
!49534 = !DILocation(line: 849, column: 29, scope: !29205)
!49535 = !DILocation(line: 853, column: 42, scope: !29205)
!49536 = !DILocation(line: 189, column: 18, scope: !1436, inlinedAt: !37247)
!49537 = !DILocation(line: 184, column: 12, scope: !1442, inlinedAt: !37259)
!49538 = !DILocation(line: 186, column: 27, scope: !1442, inlinedAt: !37259)
!49539 = !DILocation(line: 1873, column: 86, scope: !1444, inlinedAt: !37265)
!49540 = !DILocation(line: 184, column: 12, scope: !1440, inlinedAt: !37255)
!49541 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !37271)
!49542 = !DILocation(line: 186, column: 27, scope: !1440, inlinedAt: !37255)
!49543 = !DILocation(line: 855, column: 48, scope: !29203)
!49544 = !DILocation(line: 627, column: 9, scope: !30454, inlinedAt: !43879)
!49545 = !DILocation(line: 1873, column: 86, scope: !30455, inlinedAt: !43875)
!49546 = !DILocation(line: 855, column: 53, scope: !29203)
!49547 = !DILocation(line: 855, column: 44, scope: !29203)
!49548 = !DILocation(line: 855, column: 98, scope: !29203)
!49549 = !DILocation(line: 0, scope: !43880)
!49550 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !37272)
!49551 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !37276)
!49552 = !DILocation(line: 843, column: 36, scope: !29210)
!49553 = !DILocation(line: 1873, column: 86, scope: !36861, inlinedAt: !43744)
!49554 = !DILocation(line: 238, column: 10, scope: !30311, inlinedAt: !40369)
!49555 = !DILocation(line: 971, column: 21, scope: !30318, inlinedAt: !43882)
!49556 = !DILocation(line: 627, column: 9, scope: !36863, inlinedAt: !43888)
!49557 = !DILocation(line: 627, column: 9, scope: !30454, inlinedAt: !43903)
!49558 = !DILocation(line: 1873, column: 86, scope: !30455, inlinedAt: !43899)
!49559 = !DILocation(line: 843, column: 41, scope: !29210)
!49560 = !DILocation(line: 843, column: 32, scope: !29210)
!49561 = !DILocation(line: 843, column: 90, scope: !29210)
!49562 = !DILocation(line: 0, scope: !43904)
!49563 = distinct !DILexicalBlock(scope: !49570, file: !3254, line: 864, column: 57)
!49564 = distinct !DILexicalBlock(scope: !49570, file: !3254, line: 864, column: 57)
!49565 = distinct !DILexicalBlock(scope: !49567, file: !3254, line: 852, column: 37)
!49566 = distinct !DILexicalBlock(scope: !49567, file: !3254, line: 850, column: 33)
!49567 = distinct !DILexicalBlock(scope: !49568, file: !3254, line: 848, column: 25)
!49568 = distinct !DILexicalBlock(scope: !49569, file: !3254, line: 848, column: 25)
!49569 = distinct !DILexicalBlock(scope: !49571, file: !3254, line: 847, column: 25)
!49570 = distinct !DILexicalBlock(scope: !49571, file: !3254, line: 846, column: 21)
!49571 = distinct !DILexicalBlock(scope: !49573, file: !3254, line: 845, column: 21)
!49572 = distinct !DILexicalBlock(scope: !49573, file: !3254, line: 840, column: 25)
!49573 = distinct !DILexicalBlock(scope: !49574, file: !3254, line: 834, column: 21)
!49574 = distinct !DILexicalBlock(scope: !49575, file: !3254, line: 833, column: 21)
!49575 = distinct !DILexicalBlock(scope: !50204, file: !3254, line: 832, column: 17)
!49576 = distinct !DILexicalBlock(scope: !49579, file: !3254, line: 812, column: 41)
!49577 = distinct !DILexicalBlock(scope: !49579, file: !3254, line: 809, column: 33)
!49578 = distinct !DILexicalBlock(scope: !49579, file: !3254, line: 803, column: 33)
!49579 = distinct !DILexicalBlock(scope: !49580, file: !3254, line: 801, column: 25)
!49580 = distinct !DILexicalBlock(scope: !49581, file: !3254, line: 801, column: 25)
!49581 = distinct !DILexicalBlock(scope: !49582, file: !3254, line: 800, column: 25)
!49582 = distinct !DILexicalBlock(scope: !49584, file: !3254, line: 799, column: 25)
!49583 = distinct !DILexicalBlock(scope: !49584, file: !3254, line: 794, column: 29)
!49584 = distinct !DILexicalBlock(scope: !49585, file: !3254, line: 791, column: 21)
!49585 = distinct !DILexicalBlock(scope: !49586, file: !3254, line: 786, column: 21)
!49586 = distinct !DILexicalBlock(scope: !49587, file: !3254, line: 785, column: 21)
!49587 = distinct !DILexicalBlock(scope: !50204, file: !3254, line: 784, column: 17)
!49588 = distinct !DILexicalBlock(scope: !49589, file: !3254, line: 68, column: 17)
!49589 = distinct !DILexicalBlock(scope: !49590, file: !3254, line: 67, column: 17)
!49590 = distinct !DILexicalBlock(scope: !49591, file: !3254, line: 64, column: 17)
!49591 = distinct !DILexicalBlock(scope: !49592, file: !3254, line: 63, column: 17)
!49592 = distinct !DILexicalBlock(scope: !49594, file: !3254, line: 778, column: 25)
!49593 = distinct !DILexicalBlock(scope: !49594, file: !3254, line: 775, column: 25)
!49594 = distinct !DILexicalBlock(scope: !50204, file: !3254, line: 773, column: 21)
!49595 = distinct !DILexicalBlock(scope: !50204, file: !3254, line: 769, column: 21)
!49596 = distinct !DILexicalBlock(scope: !49597, file: !3254, line: 68, column: 17)
!49597 = distinct !DILexicalBlock(scope: !49598, file: !3254, line: 67, column: 17)
!49598 = distinct !DILexicalBlock(scope: !49599, file: !3254, line: 64, column: 17)
!49599 = distinct !DILexicalBlock(scope: !49600, file: !3254, line: 63, column: 17)
!49600 = distinct !DILexicalBlock(scope: !49602, file: !3254, line: 763, column: 25)
!49601 = distinct !DILexicalBlock(scope: !49602, file: !3254, line: 760, column: 25)
!49602 = distinct !DILexicalBlock(scope: !49603, file: !3254, line: 758, column: 21)
!49603 = distinct !DILexicalBlock(scope: !50204, file: !3254, line: 757, column: 21)
!49604 = distinct !DILexicalBlock(scope: !49605, file: !3969, line: 116, column: 33)
!49605 = distinct !DILexicalBlock(scope: !49609, file: !3969, line: 116, column: 33)
!49606 = distinct !DILexicalBlock(scope: !49607, file: !3254, line: 747, column: 29)
!49607 = distinct !DILexicalBlock(scope: !49609, file: !3254, line: 746, column: 25)
!49608 = distinct !DILexicalBlock(scope: !49609, file: !3254, line: 745, column: 21)
!49609 = distinct !DILexicalBlock(scope: !49610, file: !3254, line: 743, column: 21)
!49610 = distinct !DILexicalBlock(scope: !49611, file: !3254, line: 742, column: 21)
!49611 = distinct !DILexicalBlock(scope: !50204, file: !3254, line: 741, column: 21)
!49612 = distinct !DILexicalBlock(scope: !49613, file: !3254, line: 84, column: 17)
!49613 = distinct !DILexicalBlock(scope: !50204, file: !3254, line: 83, column: 17)
!49614 = distinct !DILexicalBlock(scope: !49615, file: !3254, line: 84, column: 17)
!49615 = distinct !DILexicalBlock(scope: !50204, file: !3254, line: 83, column: 17)
!49616 = distinct !DILexicalBlock(scope: !49617, file: !3969, line: 116, column: 33)
!49617 = distinct !DILexicalBlock(scope: !49619, file: !3969, line: 116, column: 33)
!49618 = distinct !DILexicalBlock(scope: !49619, file: !3254, line: 68, column: 17)
!49619 = distinct !DILexicalBlock(scope: !49620, file: !3254, line: 67, column: 17)
!49620 = distinct !DILexicalBlock(scope: !49621, file: !3254, line: 64, column: 17)
!49621 = distinct !DILexicalBlock(scope: !49623, file: !3254, line: 63, column: 17)
!49622 = distinct !DILexicalBlock(scope: !49623, file: !3254, line: 96, column: 21)
!49623 = distinct !DILexicalBlock(scope: !49624, file: !3254, line: 94, column: 17)
!49624 = distinct !DILexicalBlock(scope: !49625, file: !3254, line: 93, column: 17)
!49625 = distinct !DILexicalBlock(scope: !50204, file: !3254, line: 92, column: 17)
!49626 = distinct !DILexicalBlock(scope: !49627, file: !3969, line: 116, column: 33)
!49627 = distinct !DILexicalBlock(scope: !49629, file: !3969, line: 116, column: 33)
!49628 = distinct !DILexicalBlock(scope: !49629, file: !3254, line: 68, column: 17)
!49629 = distinct !DILexicalBlock(scope: !49630, file: !3254, line: 67, column: 17)
!49630 = distinct !DILexicalBlock(scope: !49631, file: !3254, line: 64, column: 17)
!49631 = distinct !DILexicalBlock(scope: !49633, file: !3254, line: 63, column: 17)
!49632 = distinct !DILexicalBlock(scope: !49633, file: !3254, line: 96, column: 21)
!49633 = distinct !DILexicalBlock(scope: !49634, file: !3254, line: 94, column: 17)
!49634 = distinct !DILexicalBlock(scope: !49635, file: !3254, line: 93, column: 17)
!49635 = distinct !DILexicalBlock(scope: !50204, file: !3254, line: 92, column: 17)
!49636 = distinct !DILexicalBlock(scope: !49637, file: !3969, line: 116, column: 33)
!49637 = distinct !DILexicalBlock(scope: !49639, file: !3969, line: 116, column: 33)
!49638 = distinct !DILexicalBlock(scope: !49639, file: !3254, line: 68, column: 17)
!49639 = distinct !DILexicalBlock(scope: !49640, file: !3254, line: 67, column: 17)
!49640 = distinct !DILexicalBlock(scope: !49641, file: !3254, line: 64, column: 17)
!49641 = distinct !DILexicalBlock(scope: !49643, file: !3254, line: 63, column: 17)
!49642 = distinct !DILexicalBlock(scope: !49643, file: !3254, line: 96, column: 21)
!49643 = distinct !DILexicalBlock(scope: !49644, file: !3254, line: 94, column: 17)
!49644 = distinct !DILexicalBlock(scope: !49645, file: !3254, line: 93, column: 17)
!49645 = distinct !DILexicalBlock(scope: !50204, file: !3254, line: 92, column: 17)
!49646 = distinct !DILexicalBlock(scope: !49647, file: !3969, line: 116, column: 33)
!49647 = distinct !DILexicalBlock(scope: !49649, file: !3969, line: 116, column: 33)
!49648 = distinct !DILexicalBlock(scope: !49649, file: !3254, line: 68, column: 17)
!49649 = distinct !DILexicalBlock(scope: !49650, file: !3254, line: 67, column: 17)
!49650 = distinct !DILexicalBlock(scope: !49651, file: !3254, line: 64, column: 17)
!49651 = distinct !DILexicalBlock(scope: !49653, file: !3254, line: 63, column: 17)
!49652 = distinct !DILexicalBlock(scope: !49653, file: !3254, line: 96, column: 21)
!49653 = distinct !DILexicalBlock(scope: !49654, file: !3254, line: 94, column: 17)
!49654 = distinct !DILexicalBlock(scope: !49655, file: !3254, line: 93, column: 17)
!49655 = distinct !DILexicalBlock(scope: !50204, file: !3254, line: 92, column: 17)
!49656 = distinct !DILexicalBlock(scope: !49657, file: !3254, line: 68, column: 17)
!49657 = distinct !DILexicalBlock(scope: !49658, file: !3254, line: 67, column: 17)
!49658 = distinct !DILexicalBlock(scope: !49659, file: !3254, line: 64, column: 17)
!49659 = distinct !DILexicalBlock(scope: !49664, file: !3254, line: 63, column: 17)
!49660 = distinct !DILexicalBlock(scope: !49661, file: !3254, line: 68, column: 17)
!49661 = distinct !DILexicalBlock(scope: !49662, file: !3254, line: 67, column: 17)
!49662 = distinct !DILexicalBlock(scope: !49663, file: !3254, line: 64, column: 17)
!49663 = distinct !DILexicalBlock(scope: !49664, file: !3254, line: 63, column: 17)
!49664 = distinct !DILexicalBlock(scope: !49665, file: !3254, line: 134, column: 25)
!49665 = distinct !DILexicalBlock(scope: !49667, file: !3254, line: 133, column: 21)
!49666 = distinct !DILexicalBlock(scope: !49667, file: !3254, line: 132, column: 21)
!49667 = distinct !DILexicalBlock(scope: !49680, file: !3254, line: 130, column: 17)
!49668 = distinct !DILexicalBlock(scope: !49669, file: !3969, line: 116, column: 33)
!49669 = distinct !DILexicalBlock(scope: !49671, file: !3969, line: 116, column: 33)
!49670 = distinct !DILexicalBlock(scope: !49671, file: !3254, line: 68, column: 17)
!49671 = distinct !DILexicalBlock(scope: !49672, file: !3254, line: 67, column: 17)
!49672 = distinct !DILexicalBlock(scope: !49673, file: !3254, line: 64, column: 17)
!49673 = distinct !DILexicalBlock(scope: !49680, file: !3254, line: 63, column: 17)
!49674 = distinct !DILexicalBlock(scope: !49675, file: !3969, line: 116, column: 33)
!49675 = distinct !DILexicalBlock(scope: !49677, file: !3969, line: 116, column: 33)
!49676 = distinct !DILexicalBlock(scope: !49677, file: !3254, line: 68, column: 17)
!49677 = distinct !DILexicalBlock(scope: !49678, file: !3254, line: 67, column: 17)
!49678 = distinct !DILexicalBlock(scope: !49679, file: !3254, line: 64, column: 17)
!49679 = distinct !DILexicalBlock(scope: !49680, file: !3254, line: 63, column: 17)
!49680 = distinct !DILexicalBlock(scope: !49681, file: !3254, line: 108, column: 17)
!49681 = distinct !DILexicalBlock(scope: !50204, file: !3254, line: 107, column: 17)
!49682 = distinct !DILexicalBlock(scope: !49683, file: !3254, line: 68, column: 17)
!49683 = distinct !DILexicalBlock(scope: !49684, file: !3254, line: 67, column: 17)
!49684 = distinct !DILexicalBlock(scope: !49685, file: !3254, line: 64, column: 17)
!49685 = distinct !DILexicalBlock(scope: !49690, file: !3254, line: 63, column: 17)
!49686 = distinct !DILexicalBlock(scope: !49687, file: !3254, line: 68, column: 17)
!49687 = distinct !DILexicalBlock(scope: !49688, file: !3254, line: 67, column: 17)
!49688 = distinct !DILexicalBlock(scope: !49689, file: !3254, line: 64, column: 17)
!49689 = distinct !DILexicalBlock(scope: !49690, file: !3254, line: 63, column: 17)
!49690 = distinct !DILexicalBlock(scope: !49691, file: !3254, line: 134, column: 25)
!49691 = distinct !DILexicalBlock(scope: !49693, file: !3254, line: 133, column: 21)
!49692 = distinct !DILexicalBlock(scope: !49693, file: !3254, line: 132, column: 21)
!49693 = distinct !DILexicalBlock(scope: !49706, file: !3254, line: 130, column: 17)
!49694 = distinct !DILexicalBlock(scope: !49695, file: !3969, line: 116, column: 33)
!49695 = distinct !DILexicalBlock(scope: !49697, file: !3969, line: 116, column: 33)
!49696 = distinct !DILexicalBlock(scope: !49697, file: !3254, line: 68, column: 17)
!49697 = distinct !DILexicalBlock(scope: !49698, file: !3254, line: 67, column: 17)
!49698 = distinct !DILexicalBlock(scope: !49699, file: !3254, line: 64, column: 17)
!49699 = distinct !DILexicalBlock(scope: !49706, file: !3254, line: 63, column: 17)
!49700 = distinct !DILexicalBlock(scope: !49701, file: !3969, line: 116, column: 33)
!49701 = distinct !DILexicalBlock(scope: !49703, file: !3969, line: 116, column: 33)
!49702 = distinct !DILexicalBlock(scope: !49703, file: !3254, line: 68, column: 17)
!49703 = distinct !DILexicalBlock(scope: !49704, file: !3254, line: 67, column: 17)
!49704 = distinct !DILexicalBlock(scope: !49705, file: !3254, line: 64, column: 17)
!49705 = distinct !DILexicalBlock(scope: !49706, file: !3254, line: 63, column: 17)
!49706 = distinct !DILexicalBlock(scope: !49707, file: !3254, line: 108, column: 17)
!49707 = distinct !DILexicalBlock(scope: !50204, file: !3254, line: 107, column: 17)
!49708 = distinct !DILexicalBlock(scope: !49709, file: !3969, line: 116, column: 33)
!49709 = distinct !DILexicalBlock(scope: !49711, file: !3969, line: 116, column: 33)
!49710 = distinct !DILexicalBlock(scope: !49711, file: !3254, line: 68, column: 17)
!49711 = distinct !DILexicalBlock(scope: !49712, file: !3254, line: 67, column: 17)
!49712 = distinct !DILexicalBlock(scope: !49713, file: !3254, line: 64, column: 17)
!49713 = distinct !DILexicalBlock(scope: !49720, file: !3254, line: 63, column: 17)
!49714 = distinct !DILexicalBlock(scope: !49715, file: !3254, line: 68, column: 17)
!49715 = distinct !DILexicalBlock(scope: !49716, file: !3254, line: 67, column: 17)
!49716 = distinct !DILexicalBlock(scope: !49717, file: !3254, line: 64, column: 17)
!49717 = distinct !DILexicalBlock(scope: !49718, file: !3254, line: 63, column: 17)
!49718 = distinct !DILexicalBlock(scope: !49720, file: !3254, line: 719, column: 29)
end_hunk_10
begin_hunk_11_@llvm.vector.reduce.add.v2i64
!57406 = distinct !DILocation(line: 0, scope: !1436, inlinedAt: !57401)
!57407 = distinct !DILocation(line: 190, column: 42, scope: !1437, inlinedAt: !57404)
!57408 = distinct !DILocation(line: 0, scope: !1439, inlinedAt: !57407)
!57409 = distinct !DILocation(line: 578, column: 15, scope: !7601, inlinedAt: !57407)
!57410 = distinct !DILocation(line: 0, scope: !1440, inlinedAt: !57409)
!57411 = distinct !DILocation(line: 189, column: 14, scope: !1436, inlinedAt: !57401)
!57412 = distinct !DILocation(line: 0, scope: !1441, inlinedAt: !57411)
!57413 = distinct !DILocation(line: 578, column: 15, scope: !1441, inlinedAt: !57411)
!57414 = distinct !DILocation(line: 0, scope: !1442, inlinedAt: !57413)
!57415 = distinct !DILocation(line: 0, scope: !1434, inlinedAt: !57402)
!57416 = distinct !DILocation(line: 190, column: 28, scope: !1437, inlinedAt: !57404)
!57417 = distinct !DILocation(line: 190, column: 36, scope: !1437, inlinedAt: !57404)
!57418 = distinct !DILocation(line: 3894, column: 14, scope: !1443, inlinedAt: !57417)
!57419 = distinct !DILocation(line: 3895, column: 14, scope: !7612, inlinedAt: !57417)
!57420 = distinct !DILocation(line: 1856, column: 27, scope: !1444, inlinedAt: !57419)
!57421 = distinct !DILocation(line: 1873, column: 76, scope: !7615, inlinedAt: !57419)
!57422 = distinct !DILocation(line: 1974, column: 25, scope: !1445, inlinedAt: !57421)
!57423 = distinct !DILocation(line: 825, column: 29, scope: !49581)
!57424 = distinct !DILocation(line: 813, column: 46, scope: !49579)
!57425 = distinct !DILocation(line: 190, column: 14, scope: !1436, inlinedAt: !57424)
!57426 = distinct !DILocation(line: 0, scope: !1435, inlinedAt: !57425)
!57427 = distinct !DILocation(line: 1544, column: 24, scope: !1434, inlinedAt: !57425)
!57428 = distinct !DILocation(line: 0, scope: !1438, inlinedAt: !57427)
!57429 = distinct !DILocation(line: 0, scope: !1436, inlinedAt: !57424)
!57430 = distinct !DILocation(line: 190, column: 42, scope: !1437, inlinedAt: !57427)
!57431 = distinct !DILocation(line: 0, scope: !1439, inlinedAt: !57430)
!57432 = distinct !DILocation(line: 578, column: 15, scope: !7601, inlinedAt: !57430)
!57433 = distinct !DILocation(line: 0, scope: !1440, inlinedAt: !57432)
!57434 = distinct !DILocation(line: 189, column: 14, scope: !1436, inlinedAt: !57424)
!57435 = distinct !DILocation(line: 0, scope: !1441, inlinedAt: !57434)
!57436 = distinct !DILocation(line: 578, column: 15, scope: !1441, inlinedAt: !57434)
!57437 = distinct !DILocation(line: 0, scope: !1442, inlinedAt: !57436)
!57438 = distinct !DILocation(line: 0, scope: !1434, inlinedAt: !57425)
!57439 = distinct !DILocation(line: 190, column: 28, scope: !1437, inlinedAt: !57427)
!57440 = distinct !DILocation(line: 190, column: 36, scope: !1437, inlinedAt: !57427)
!57441 = distinct !DILocation(line: 3894, column: 14, scope: !1443, inlinedAt: !57440)
!57442 = distinct !DILocation(line: 3895, column: 14, scope: !7612, inlinedAt: !57440)
!57443 = distinct !DILocation(line: 1856, column: 27, scope: !1444, inlinedAt: !57442)
!57444 = distinct !DILocation(line: 1873, column: 76, scope: !7615, inlinedAt: !57442)
!57445 = distinct !DILocation(line: 1974, column: 25, scope: !1445, inlinedAt: !57444)
!57446 = distinct !DILocation(line: 2061, column: 18, scope: !906, inlinedAt: !57246)
!57447 = distinct !DILocation(line: 305, column: 20, scope: !915, inlinedAt: !57446)
!57448 = distinct !DILocation(line: 622, column: 14, scope: !914, inlinedAt: !57447)
!57449 = distinct !DILocation(line: 0, scope: !903, inlinedAt: !57244)
!57450 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !57444)
!57451 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !57450)
!57452 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !57451)
!57453 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !57421)
!57454 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !57453)
!57455 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !57454)
!57456 = distinct !DILocation(line: 831, column: 17, scope: !49586)
!57457 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !57456)
!57458 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !57287)
!57459 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !57458)
!57460 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !57459)
!57461 = distinct !DILocation(line: 831, column: 17, scope: !49586)
!57462 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !57461)
!57463 = distinct !DILocation(line: 865, column: 17, scope: !49574)
!57464 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !57463)
!57465 = distinct !DILocation(line: 839, column: 29, scope: !49573)
!57466 = distinct !DILocation(line: 0, scope: !1120, inlinedAt: !57465)
!57467 = distinct !DILocation(line: 429, column: 23, scope: !1120, inlinedAt: !57465)
!57468 = distinct !DILocation(line: 0, scope: !1121, inlinedAt: !57467)
!57469 = distinct !DILocation(line: 841, column: 30, scope: !49573)
!57470 = distinct !DILocation(line: 190, column: 14, scope: !1436, inlinedAt: !57469)
!57471 = distinct !DILocation(line: 0, scope: !1435, inlinedAt: !57470)
!57472 = distinct !DILocation(line: 1544, column: 24, scope: !1434, inlinedAt: !57470)
!57473 = distinct !DILocation(line: 0, scope: !1438, inlinedAt: !57472)
!57474 = distinct !DILocation(line: 0, scope: !1436, inlinedAt: !57469)
!57475 = distinct !DILocation(line: 190, column: 42, scope: !1437, inlinedAt: !57472)
!57476 = distinct !DILocation(line: 0, scope: !1439, inlinedAt: !57475)
!57477 = distinct !DILocation(line: 578, column: 15, scope: !7601, inlinedAt: !57475)
!57478 = distinct !DILocation(line: 0, scope: !1440, inlinedAt: !57477)
!57479 = distinct !DILocation(line: 189, column: 14, scope: !1436, inlinedAt: !57469)
!57480 = distinct !DILocation(line: 0, scope: !1441, inlinedAt: !57479)
!57481 = distinct !DILocation(line: 578, column: 15, scope: !1441, inlinedAt: !57479)
!57482 = distinct !DILocation(line: 0, scope: !1442, inlinedAt: !57481)
!57483 = distinct !DILocation(line: 0, scope: !1434, inlinedAt: !57470)
!57484 = distinct !DILocation(line: 190, column: 28, scope: !1437, inlinedAt: !57472)
!57485 = distinct !DILocation(line: 190, column: 36, scope: !1437, inlinedAt: !57472)
!57486 = distinct !DILocation(line: 3894, column: 14, scope: !1443, inlinedAt: !57485)
!57487 = distinct !DILocation(line: 3895, column: 14, scope: !7612, inlinedAt: !57485)
!57488 = distinct !DILocation(line: 1856, column: 27, scope: !1444, inlinedAt: !57487)
!57489 = distinct !DILocation(line: 1873, column: 76, scope: !7615, inlinedAt: !57487)
!57490 = distinct !DILocation(line: 1974, column: 25, scope: !1445, inlinedAt: !57489)
!57491 = distinct !{!57491, i1 true, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_"}
!57492 = distinct !{!57492, !57491, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_: argument 2"}
!57493 = distinct !{!57493, !57491, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_: argument 3"}
!57494 = distinct !DILocation(line: 864, column: 26, scope: !49570)
!57495 = distinct !DILocation(line: 881, column: 48, scope: !52964, inlinedAt: !57494)
!57496 = distinct !DILocation(line: 678, column: 38, scope: !52944, inlinedAt: !57495)
!57497 = distinct !DILocation(line: 60, column: 34, scope: !52942, inlinedAt: !57496)
!57498 = distinct !DILocation(line: 0, scope: !52964, inlinedAt: !57494)
!57499 = distinct !DILocation(line: 881, column: 18, scope: !52964, inlinedAt: !57494)
!57500 = distinct !DILocation(line: 0, scope: !52970, inlinedAt: !57499)
!57501 = distinct !DILocation(line: 0, scope: !52943, inlinedAt: !57495)
!57502 = distinct !DILocation(line: 0, scope: !52942, inlinedAt: !57496)
!57503 = distinct !DILocation(line: 51, column: 14, scope: !52970, inlinedAt: !57499)
!57504 = distinct !DILocation(line: 0, scope: !52976, inlinedAt: !57503)
!57505 = distinct !{!57505, !57491, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_: argument 4"}
!57506 = distinct !{!57506, !57491, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_: argument 1"}
!57507 = distinct !{!57507, !57491, !"_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine11write_valueQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_: argument 0"}
!57508 = distinct !DILocation(line: 882, column: 37, scope: !52963, inlinedAt: !57494)
!57509 = distinct !DILocation(line: 3903, column: 18, scope: !52982, inlinedAt: !57508)
!57510 = distinct !DILocation(line: 3904, column: 14, scope: !52982, inlinedAt: !57508)
!57511 = distinct !DILocation(line: 1892, column: 31, scope: !52985, inlinedAt: !57510)
!57512 = distinct !DILocation(line: 1912, column: 78, scope: !52985, inlinedAt: !57510)
!57513 = distinct !DILocation(line: 2058, column: 29, scope: !52988, inlinedAt: !57512)
!57514 = distinct !DILocation(line: 882, column: 59, scope: !52963, inlinedAt: !57494)
!57515 = distinct !DILocation(line: 0, scope: !52994, inlinedAt: !57514)
!57516 = distinct !DILocation(line: 678, column: 32, scope: !52944, inlinedAt: !57495)
!57517 = distinct !DILocation(line: 678, column: 40, scope: !52944, inlinedAt: !57495)
!57518 = distinct !DILocation(line: 144, column: 24, scope: !53000, inlinedAt: !57517)
!57519 = distinct !DILocation(line: 0, scope: !52958, inlinedAt: !57494)
!57520 = distinct !DILocation(line: 888, column: 37, scope: !52957, inlinedAt: !57494)
!57521 = distinct !DILocation(line: 3903, column: 18, scope: !52982, inlinedAt: !57520)
!57522 = distinct !DILocation(line: 3904, column: 14, scope: !61785, inlinedAt: !57520)
!57523 = distinct !DILocation(line: 1892, column: 31, scope: !52985, inlinedAt: !57522)
!57524 = distinct !DILocation(line: 1912, column: 78, scope: !61786, inlinedAt: !57522)
!57525 = distinct !DILocation(line: 2058, column: 29, scope: !52988, inlinedAt: !57524)
!57526 = distinct !DILocation(line: 888, column: 59, scope: !52957, inlinedAt: !57494)
!57527 = distinct !DILocation(line: 0, scope: !52994, inlinedAt: !57526)
!57528 = distinct !DILocation(line: 895, column: 33, scope: !52964, inlinedAt: !57494)
!57529 = distinct !DILocation(line: 3103, column: 18, scope: !53013, inlinedAt: !57528)
!57530 = distinct !DILocation(line: 0, scope: !53012, inlinedAt: !57528)
!57531 = distinct !DILocation(line: 896, column: 13, scope: !52964, inlinedAt: !57494)
!57532 = distinct !DILocation(line: 0, scope: !53031, inlinedAt: !57531)
!57533 = distinct !DILocation(line: 891, column: 17, scope: !52958, inlinedAt: !57494)
!57534 = distinct !DILocation(line: 0, scope: !53031, inlinedAt: !57533)
!57535 = distinct !DILocation(line: 2061, column: 18, scope: !61808, inlinedAt: !57524)
!57536 = distinct !DILocation(line: 305, column: 20, scope: !61807, inlinedAt: !57535)
!57537 = distinct !DILocation(line: 622, column: 14, scope: !61806, inlinedAt: !57536)
!57538 = distinct !DILocation(line: 0, scope: !52992, inlinedAt: !57526)
!57539 = distinct !DILocation(line: 0, scope: !52957, inlinedAt: !57494)
!57540 = distinct !DILocation(line: 889, column: 17, scope: !52957, inlinedAt: !57494)
!57541 = distinct !DILocation(line: 0, scope: !53031, inlinedAt: !57540)
!57542 = distinct !DILocation(line: 0, scope: !52954, inlinedAt: !57494)
!57543 = distinct !DILocation(line: 891, column: 17, scope: !61818, inlinedAt: !57494)
!57544 = distinct !DILocation(line: 0, scope: !53055, inlinedAt: !57543)
!57545 = distinct !DILocation(line: 0, scope: !53051, inlinedAt: !57543)
!57546 = distinct !DILocation(line: 0, scope: !52956, inlinedAt: !57494)
!57547 = distinct !DILocation(line: 889, column: 17, scope: !61822, inlinedAt: !57494)
!57548 = distinct !DILocation(line: 0, scope: !53055, inlinedAt: !57547)
!57549 = distinct !DILocation(line: 0, scope: !53052, inlinedAt: !57547)
!57550 = distinct !DILocation(line: 0, scope: !52952, inlinedAt: !57494)
!57551 = distinct !DILocation(line: 896, column: 13, scope: !61823, inlinedAt: !57494)
!57552 = distinct !DILocation(line: 0, scope: !53055, inlinedAt: !57551)
!57553 = distinct !DILocation(line: 0, scope: !53050, inlinedAt: !57551)
!57554 = distinct !DILocation(line: 899, column: 66, scope: !52964, inlinedAt: !57494)
!57555 = distinct !DILocation(line: 3894, column: 14, scope: !53067, inlinedAt: !57554)
!57556 = distinct !DILocation(line: 3895, column: 14, scope: !53067, inlinedAt: !57554)
!57557 = distinct !DILocation(line: 1856, column: 27, scope: !53070, inlinedAt: !57556)
!57558 = distinct !DILocation(line: 1873, column: 76, scope: !53070, inlinedAt: !57556)
!57559 = distinct !DILocation(line: 1974, column: 25, scope: !53073, inlinedAt: !57558)
!57560 = distinct !DILocation(line: 1977, column: 18, scope: !53073, inlinedAt: !57558)
!57561 = distinct !DILocation(line: 305, column: 20, scope: !61832, inlinedAt: !57560)
!57562 = distinct !DILocation(line: 622, column: 14, scope: !61831, inlinedAt: !57561)
!57563 = distinct !DILocation(line: 0, scope: !52950, inlinedAt: !57494)
!57564 = distinct !DILocation(line: 900, column: 37, scope: !52949, inlinedAt: !57494)
!57565 = distinct !DILocation(line: 3903, column: 18, scope: !52982, inlinedAt: !57564)
!57566 = distinct !DILocation(line: 3904, column: 14, scope: !61833, inlinedAt: !57564)
!57567 = distinct !DILocation(line: 1892, column: 31, scope: !52985, inlinedAt: !57566)
!57568 = distinct !DILocation(line: 1912, column: 78, scope: !61834, inlinedAt: !57566)
!57569 = distinct !DILocation(line: 2058, column: 29, scope: !52988, inlinedAt: !57568)
!57570 = distinct !DILocation(line: 900, column: 59, scope: !52949, inlinedAt: !57494)
!57571 = distinct !DILocation(line: 0, scope: !52994, inlinedAt: !57570)
!57572 = distinct !DILocation(line: 903, column: 17, scope: !52950, inlinedAt: !57494)
!57573 = distinct !DILocation(line: 0, scope: !53031, inlinedAt: !57572)
!57574 = distinct !DILocation(line: 2061, column: 18, scope: !61838, inlinedAt: !57568)
!57575 = distinct !DILocation(line: 305, column: 20, scope: !61837, inlinedAt: !57574)
!57576 = distinct !DILocation(line: 622, column: 14, scope: !61836, inlinedAt: !57575)
!57577 = distinct !DILocation(line: 0, scope: !52991, inlinedAt: !57570)
!57578 = distinct !DILocation(line: 0, scope: !52949, inlinedAt: !57494)
!57579 = distinct !DILocation(line: 901, column: 17, scope: !52949, inlinedAt: !57494)
!57580 = distinct !DILocation(line: 0, scope: !53031, inlinedAt: !57579)
!57581 = distinct !DILocation(line: 0, scope: !52946, inlinedAt: !57494)
!57582 = distinct !DILocation(line: 903, column: 17, scope: !61839, inlinedAt: !57494)
!57583 = distinct !DILocation(line: 0, scope: !53055, inlinedAt: !57582)
!57584 = distinct !DILocation(line: 0, scope: !53048, inlinedAt: !57582)
!57585 = distinct !DILocation(line: 0, scope: !52948, inlinedAt: !57494)
!57586 = distinct !DILocation(line: 901, column: 17, scope: !61841, inlinedAt: !57494)
!57587 = distinct !DILocation(line: 0, scope: !53055, inlinedAt: !57586)
!57588 = distinct !DILocation(line: 0, scope: !53049, inlinedAt: !57586)
!57589 = distinct !DILocation(line: 885, column: 17, scope: !52964, inlinedAt: !57494)
!57590 = distinct !DILocation(line: 0, scope: !53031, inlinedAt: !57589)
!57591 = distinct !DILocation(line: 2061, column: 18, scope: !52988, inlinedAt: !57512)
!57592 = distinct !DILocation(line: 305, column: 20, scope: !53039, inlinedAt: !57591)
!57593 = distinct !DILocation(line: 622, column: 14, scope: !53038, inlinedAt: !57592)
!57594 = distinct !DILocation(line: 0, scope: !52993, inlinedAt: !57514)
!57595 = distinct !DILocation(line: 0, scope: !52963, inlinedAt: !57494)
!57596 = distinct !DILocation(line: 883, column: 17, scope: !52963, inlinedAt: !57494)
!57597 = distinct !DILocation(line: 0, scope: !53031, inlinedAt: !57596)
!57598 = distinct !DILocation(line: 0, scope: !52960, inlinedAt: !57494)
!57599 = distinct !DILocation(line: 885, column: 17, scope: !61842, inlinedAt: !57494)
!57600 = distinct !DILocation(line: 0, scope: !53055, inlinedAt: !57599)
!57601 = distinct !DILocation(line: 0, scope: !53053, inlinedAt: !57599)
!57602 = distinct !DILocation(line: 0, scope: !52962, inlinedAt: !57494)
!57603 = distinct !DILocation(line: 883, column: 17, scope: !61843, inlinedAt: !57494)
!57604 = distinct !DILocation(line: 0, scope: !53055, inlinedAt: !57603)
!57605 = distinct !DILocation(line: 0, scope: !53054, inlinedAt: !57603)
!57606 = distinct !DILocation(line: 0, scope: !715, inlinedAt: !50277)
!57607 = distinct !DILocation(line: 0, scope: !714, inlinedAt: !50277)
!57608 = distinct !DILocation(line: 180, column: 28, scope: !714, inlinedAt: !50277)
!57609 = distinct !DILocation(line: 1662, column: 11, scope: !1446, inlinedAt: !57608)
!57610 = distinct !DILocation(line: 1662, column: 18, scope: !1446, inlinedAt: !57608)
!57611 = distinct !DILocation(line: 0, scope: !729, inlinedAt: !50276)
!57612 = distinct !DILocation(line: 0, scope: !722, inlinedAt: !50276)
!57613 = distinct !DILocation(line: 865, column: 17, scope: !49574)
!57614 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !57613)
!57615 = distinct !DILocation(line: 853, column: 42, scope: !49567)
!57616 = distinct !DILocation(line: 190, column: 14, scope: !1436, inlinedAt: !57615)
!57617 = distinct !DILocation(line: 0, scope: !1435, inlinedAt: !57616)
!57618 = distinct !DILocation(line: 1544, column: 24, scope: !1434, inlinedAt: !57616)
!57619 = distinct !DILocation(line: 0, scope: !1438, inlinedAt: !57618)
!57620 = distinct !DILocation(line: 0, scope: !1436, inlinedAt: !57615)
!57621 = distinct !DILocation(line: 190, column: 42, scope: !1437, inlinedAt: !57618)
!57622 = distinct !DILocation(line: 0, scope: !1439, inlinedAt: !57621)
!57623 = distinct !DILocation(line: 578, column: 15, scope: !7601, inlinedAt: !57621)
!57624 = distinct !DILocation(line: 0, scope: !1440, inlinedAt: !57623)
!57625 = distinct !DILocation(line: 189, column: 14, scope: !1436, inlinedAt: !57615)
!57626 = distinct !DILocation(line: 0, scope: !1441, inlinedAt: !57625)
!57627 = distinct !DILocation(line: 578, column: 15, scope: !1441, inlinedAt: !57625)
!57628 = distinct !DILocation(line: 0, scope: !1442, inlinedAt: !57627)
!57629 = distinct !DILocation(line: 0, scope: !1434, inlinedAt: !57616)
!57630 = distinct !DILocation(line: 190, column: 28, scope: !1437, inlinedAt: !57618)
!57631 = distinct !DILocation(line: 190, column: 36, scope: !1437, inlinedAt: !57618)
!57632 = distinct !DILocation(line: 3894, column: 14, scope: !1443, inlinedAt: !57631)
!57633 = distinct !DILocation(line: 3895, column: 14, scope: !7612, inlinedAt: !57631)
!57634 = distinct !DILocation(line: 1856, column: 27, scope: !1444, inlinedAt: !57633)
!57635 = distinct !DILocation(line: 1873, column: 76, scope: !7615, inlinedAt: !57633)
!57636 = distinct !DILocation(line: 1974, column: 25, scope: !1445, inlinedAt: !57635)
!57637 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !57635)
!57638 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !57637)
!57639 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !57638)
!57640 = distinct !DILocation(line: 865, column: 17, scope: !49574)
!57641 = distinct !DILocation(line: 0, scope: !911, inlinedAt: !57640)
!57642 = distinct !DILocation(line: 1977, column: 18, scope: !7633, inlinedAt: !57489)
!57643 = distinct !DILocation(line: 305, column: 20, scope: !7632, inlinedAt: !57642)
!57644 = distinct !DILocation(line: 622, column: 14, scope: !7631, inlinedAt: !57643)
!57645 = !{!573, !3485, !3926, !3908}
!57646 = !DISubroutineType(types: !57645)
!57647 = !DISubprogram(name: "interpret<&mut alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_", scope: !491, file: !3254, line: 54, type: !57646, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3910)
!57648 = !DILocalVariable(name: "self", arg: 1, scope: !50207, file: !3254, line: 55, type: !3485)
!57649 = !DILocalVariable(name: "state", arg: 2, scope: !50207, file: !3254, line: 56, type: !3926)
!57650 = !DILocalVariable(name: "output", arg: 3, scope: !50207, file: !3254, line: 57, type: !3908)
!57651 = !DILocalVariable(name: "ip", scope: !50206, file: !3254, line: 59, type: !1832, align: 64)
!57652 = !DILocalVariable(name: "instr", scope: !50205, file: !3254, line: 213, type: !3927, align: 64)
!57653 = !DILocalVariable(name: "current_ip", scope: !50204, file: !3254, line: 215, type: !3659, align: 32)
!57654 = !DILocalVariable(name: "v", scope: !50203, file: !3254, line: 218, type: !3928, align: 64)
!57655 = !DILocalVariable(name: "n", scope: !50202, file: !3254, line: 221, type: !2900, align: 64)
!57656 = !DILocalVariable(name: "attr", scope: !50201, file: !3254, line: 222, type: !2900, align: 64)
!57657 = !DILocalVariable(name: "is_optional", scope: !50200, file: !3254, line: 223, type: !2023, align: 8)
!57658 = !DILocalVariable(name: "a", scope: !50199, file: !3254, line: 224, type: !139, align: 64)
!57659 = !DILocalVariable(name: "a_span", scope: !50199, file: !3254, line: 224, type: !537, align: 32)
!57660 = !DILocalVariable(name: "chunk", scope: !50198, file: !3254, line: 63, type: !3639, align: 64)
!57661 = !DILocalVariable(name: "span", scope: !50197, file: !3254, line: 64, type: !15, align: 64)
!57662 = !DILocalVariable(name: "name", scope: !50196, file: !3254, line: 67, type: !90, align: 64)
!57663 = !DILocalVariable(name: "source", scope: !50196, file: !3254, line: 67, type: !90, align: 64)
!57664 = !DILocalVariable(name: "err", scope: !50195, file: !3254, line: 68, type: !563, align: 64)
!57665 = !DILexicalBlockFile(scope: !50194, file: !3254, discriminator: 0)
!57666 = !DILocalVariable(name: "args", scope: !57665, file: !3254, line: 231, type: !680, align: 64)
!57667 = !DILexicalBlockFile(scope: !50193, file: !3254, discriminator: 0)
!57668 = !DILocalVariable(name: "args", scope: !57667, file: !3254, line: 231, type: !3931, align: 64)
!57669 = !DILocalVariable(name: "next", scope: !50192, file: !3254, line: 233, type: !139, align: 64)
!57670 = !DILocalVariable(name: "is_optional", scope: !50191, file: !3254, line: 238, type: !2023, align: 8)
!57671 = !DILocalVariable(name: "subscript", scope: !50190, file: !3254, line: 239, type: !139, align: 64)
!57672 = !DILocalVariable(name: "subscript_span", scope: !50190, file: !3254, line: 239, type: !537, align: 32)
!57673 = !DILocalVariable(name: "val", scope: !50189, file: !3254, line: 240, type: !139, align: 64)
!57674 = !DILocalVariable(name: "val_span", scope: !50189, file: !3254, line: 240, type: !537, align: 32)
!57675 = !DILocalVariable(name: "chunk", scope: !50188, file: !3254, line: 63, type: !3639, align: 64)
!57676 = !DILocalVariable(name: "span", scope: !50187, file: !3254, line: 64, type: !15, align: 64)
!57677 = !DILocalVariable(name: "name", scope: !50186, file: !3254, line: 67, type: !90, align: 64)
!57678 = !DILocalVariable(name: "source", scope: !50186, file: !3254, line: 67, type: !90, align: 64)
!57679 = !DILocalVariable(name: "err", scope: !50185, file: !3254, line: 68, type: !563, align: 64)
!57680 = !DILocalVariable(name: "chunk", scope: !50184, file: !3254, line: 63, type: !3639, align: 64)
!57681 = !DILocalVariable(name: "span", scope: !50183, file: !3254, line: 64, type: !15, align: 64)
!57682 = !DILocalVariable(name: "name", scope: !50182, file: !3254, line: 67, type: !90, align: 64)
!57683 = !DILocalVariable(name: "source", scope: !50182, file: !3254, line: 67, type: !90, align: 64)
!57684 = !DILocalVariable(name: "err", scope: !50181, file: !3254, line: 68, type: !563, align: 64)
!57685 = !DILocalVariable(name: "c_span", scope: !50180, file: !3254, line: 259, type: !537, align: 32)
!57686 = !DILocalVariable(name: "v", scope: !50179, file: !3254, line: 261, type: !139, align: 64)
!57687 = !DILocalVariable(name: "e", scope: !50178, file: !3254, line: 264, type: !569, align: 64)
!57688 = !DILocalVariable(name: "chunk", scope: !50177, file: !3254, line: 63, type: !3639, align: 64)
!57689 = !DILocalVariable(name: "span", scope: !50176, file: !3254, line: 64, type: !15, align: 64)
!57690 = !DILocalVariable(name: "name", scope: !50175, file: !3254, line: 67, type: !90, align: 64)
!57691 = !DILocalVariable(name: "source", scope: !50175, file: !3254, line: 67, type: !90, align: 64)
!57692 = !DILocalVariable(name: "err", scope: !50174, file: !3254, line: 68, type: !563, align: 64)
!57693 = !DILocalVariable(name: "is_optional", scope: !50173, file: !3254, line: 271, type: !2023, align: 8)
!57694 = !DILocalVariable(name: "step", scope: !50172, file: !3254, line: 272, type: !139, align: 64)
!57695 = !DILocalVariable(name: "step_span", scope: !50172, file: !3254, line: 272, type: !537, align: 32)
!57696 = !DILocalVariable(name: "end", scope: !50171, file: !3254, line: 273, type: !139, align: 64)
!57697 = !DILocalVariable(name: "end_span", scope: !50171, file: !3254, line: 273, type: !537, align: 32)
!57698 = !DILocalVariable(name: "start", scope: !50170, file: !3254, line: 274, type: !139, align: 64)
!57699 = !DILocalVariable(name: "start_span", scope: !50170, file: !3254, line: 274, type: !537, align: 32)
!57700 = !DILocalVariable(name: "val", scope: !50169, file: !3254, line: 275, type: !139, align: 64)
!57701 = !DILocalVariable(name: "val_span", scope: !50169, file: !3254, line: 275, type: !537, align: 32)
!57702 = !DILocalVariable(name: "chunk", scope: !50168, file: !3254, line: 63, type: !3639, align: 64)
!57703 = !DILocalVariable(name: "span", scope: !50167, file: !3254, line: 64, type: !15, align: 64)
!57704 = !DILocalVariable(name: "name", scope: !50166, file: !3254, line: 67, type: !90, align: 64)
!57705 = !DILocalVariable(name: "source", scope: !50166, file: !3254, line: 67, type: !90, align: 64)
!57706 = !DILocalVariable(name: "err", scope: !50165, file: !3254, line: 68, type: !563, align: 64)
!57707 = !DILocalVariable(name: "s", scope: !50164, file: !3254, line: 288, type: !665, align: 128)
!57708 = !DILocalVariable(name: "chunk", scope: !50163, file: !3254, line: 63, type: !3639, align: 64)
!57709 = !DILocalVariable(name: "span", scope: !50162, file: !3254, line: 64, type: !15, align: 64)
!57710 = !DILocalVariable(name: "name", scope: !50161, file: !3254, line: 67, type: !90, align: 64)
!57711 = !DILocalVariable(name: "source", scope: !50161, file: !3254, line: 67, type: !90, align: 64)
!57712 = !DILocalVariable(name: "err", scope: !50160, file: !3254, line: 68, type: !563, align: 64)
!57713 = !DILocalVariable(name: "n", scope: !50159, file: !3254, line: 294, type: !2203, align: 128)
!57714 = !DILocalVariable(name: "chunk", scope: !50158, file: !3254, line: 63, type: !3639, align: 64)
!57715 = !DILocalVariable(name: "span", scope: !50157, file: !3254, line: 64, type: !15, align: 64)
!57716 = !DILocalVariable(name: "name", scope: !50156, file: !3254, line: 67, type: !90, align: 64)
!57717 = !DILocalVariable(name: "source", scope: !50156, file: !3254, line: 67, type: !90, align: 64)
!57718 = !DILocalVariable(name: "err", scope: !50155, file: !3254, line: 68, type: !563, align: 64)
!57719 = !DILexicalBlockFile(scope: !50154, file: !3254, discriminator: 0)
!57720 = !DILocalVariable(name: "args", scope: !57719, file: !3254, line: 296, type: !661, align: 64)
!57721 = !DILexicalBlockFile(scope: !50153, file: !3254, discriminator: 0)
!57722 = !DILocalVariable(name: "args", scope: !57721, file: !3254, line: 296, type: !3931, align: 64)
!57723 = !DILocalVariable(name: "e", scope: !50152, file: !3254, line: 304, type: !665, align: 128)
!57724 = !DILocalVariable(name: "chunk", scope: !50151, file: !3254, line: 63, type: !3639, align: 64)
!57725 = !DILocalVariable(name: "span", scope: !50150, file: !3254, line: 64, type: !15, align: 64)
!57726 = !DILocalVariable(name: "name", scope: !50149, file: !3254, line: 67, type: !90, align: 64)
!57727 = !DILocalVariable(name: "source", scope: !50149, file: !3254, line: 67, type: !90, align: 64)
!57728 = !DILocalVariable(name: "err", scope: !50148, file: !3254, line: 68, type: !563, align: 64)
!57729 = !DILocalVariable(name: "n", scope: !50147, file: !3254, line: 310, type: !2203, align: 128)
!57730 = !DILocalVariable(name: "chunk", scope: !50146, file: !3254, line: 63, type: !3639, align: 64)
!57731 = !DILocalVariable(name: "span", scope: !50145, file: !3254, line: 64, type: !15, align: 64)
!57732 = !DILocalVariable(name: "name", scope: !50144, file: !3254, line: 67, type: !90, align: 64)
!57733 = !DILocalVariable(name: "source", scope: !50144, file: !3254, line: 67, type: !90, align: 64)
!57734 = !DILocalVariable(name: "err", scope: !50143, file: !3254, line: 68, type: !563, align: 64)
!57735 = !DILexicalBlockFile(scope: !50142, file: !3254, discriminator: 0)
!57736 = !DILocalVariable(name: "args", scope: !57735, file: !3254, line: 312, type: !661, align: 64)
!57737 = !DILexicalBlockFile(scope: !50141, file: !3254, discriminator: 0)
!57738 = !DILocalVariable(name: "args", scope: !57737, file: !3254, line: 312, type: !3931, align: 64)
!57739 = !DILocalVariable(name: "st", scope: !50140, file: !3254, line: 317, type: !665, align: 128)
!57740 = !DILocalVariable(name: "chunk", scope: !50139, file: !3254, line: 63, type: !3639, align: 64)
!57741 = !DILocalVariable(name: "span", scope: !50138, file: !3254, line: 64, type: !15, align: 64)
!57742 = !DILocalVariable(name: "name", scope: !50137, file: !3254, line: 67, type: !90, align: 64)
!57743 = !DILocalVariable(name: "source", scope: !50137, file: !3254, line: 67, type: !90, align: 64)
!57744 = !DILocalVariable(name: "err", scope: !50136, file: !3254, line: 68, type: !563, align: 64)
!57745 = !DILocalVariable(name: "n", scope: !50135, file: !3254, line: 323, type: !2203, align: 128)
!57746 = !DILocalVariable(name: "chunk", scope: !50134, file: !3254, line: 63, type: !3639, align: 64)
!57747 = !DILocalVariable(name: "span", scope: !50133, file: !3254, line: 64, type: !15, align: 64)
!57748 = !DILocalVariable(name: "name", scope: !50132, file: !3254, line: 67, type: !90, align: 64)
!57749 = !DILocalVariable(name: "source", scope: !50132, file: !3254, line: 67, type: !90, align: 64)
!57750 = !DILocalVariable(name: "err", scope: !50131, file: !3254, line: 68, type: !563, align: 64)
!57751 = !DILexicalBlockFile(scope: !50130, file: !3254, discriminator: 0)
!57752 = !DILocalVariable(name: "args", scope: !57751, file: !3254, line: 325, type: !661, align: 64)
!57753 = !DILexicalBlockFile(scope: !50129, file: !3254, discriminator: 0)
!57754 = !DILocalVariable(name: "args", scope: !57753, file: !3254, line: 325, type: !3931, align: 64)
!57755 = !DILocalVariable(name: "v", scope: !50128, file: !3254, line: 334, type: !139, align: 64)
!57756 = !DILocalVariable(name: "e", scope: !50127, file: !3254, line: 337, type: !569, align: 64)
!57757 = !DILocalVariable(name: "chunk", scope: !50126, file: !3254, line: 63, type: !3639, align: 64)
!57758 = !DILocalVariable(name: "span", scope: !50125, file: !3254, line: 64, type: !15, align: 64)
!57759 = !DILocalVariable(name: "name", scope: !50124, file: !3254, line: 67, type: !90, align: 64)
!57760 = !DILocalVariable(name: "source", scope: !50124, file: !3254, line: 67, type: !90, align: 64)
!57761 = !DILocalVariable(name: "err", scope: !50123, file: !3254, line: 68, type: !563, align: 64)
!57762 = !DILocalVariable(name: "t", scope: !50122, file: !3254, line: 343, type: !2900, align: 64)
!57763 = !DILocalVariable(name: "captured", scope: !50121, file: !3254, line: 344, type: !3230, align: 64)
!57764 = !DILocalVariable(name: "residual", scope: !50120, file: !3254, line: 345, type: !660, align: 64)
!57765 = !DILocalVariable(name: "val", scope: !50119, file: !3254, line: 345, type: !1829, align: 8)
!57766 = !DILocalVariable(name: "residual", scope: !50118, file: !3254, line: 347, type: !660, align: 64)
!57767 = !DILocalVariable(name: "val", scope: !50117, file: !3254, line: 347, type: !1829, align: 8)
!57768 = !DILocalVariable(name: "top", scope: !50116, file: !3254, line: 351, type: !139, align: 64)
!57769 = !DILocalVariable(name: "top_span", scope: !50116, file: !3254, line: 351, type: !537, align: 32)
!57770 = !DILocalVariable(name: "chunk", scope: !50115, file: !3254, line: 63, type: !3639, align: 64)
!57771 = !DILocalVariable(name: "span", scope: !50114, file: !3254, line: 64, type: !15, align: 64)
!57772 = !DILocalVariable(name: "name", scope: !50113, file: !3254, line: 67, type: !90, align: 64)
!57773 = !DILocalVariable(name: "source", scope: !50113, file: !3254, line: 67, type: !90, align: 64)
!57774 = !DILocalVariable(name: "err", scope: !50112, file: !3254, line: 68, type: !563, align: 64)
!57775 = !DILocalVariable(name: "residual", scope: !50111, file: !3254, line: 358, type: !577, align: 64)
!57776 = !DILocalVariable(name: "val", scope: !50110, file: !3254, line: 358, type: !1829, align: 8)
!57777 = !DILocalVariable(name: "name", scope: !50109, file: !3254, line: 360, type: !2900, align: 64)
!57778 = !DILocalVariable(name: "val", scope: !50108, file: !3254, line: 361, type: !139, align: 64)
!57779 = !DILocalVariable(name: "name", scope: !50107, file: !3254, line: 364, type: !2900, align: 64)
!57780 = !DILocalVariable(name: "val", scope: !50106, file: !3254, line: 365, type: !139, align: 64)
!57781 = !DILocalVariable(name: "name", scope: !50105, file: !3254, line: 368, type: !2900, align: 64)
!57782 = !DILocalVariable(name: "res", scope: !50104, file: !3254, line: 369, type: !573, align: 64)
!57783 = !DILocalVariable(name: "last", scope: !50103, file: !3254, line: 372, type: !1832, align: 64)
!57784 = !DILocalVariable(name: "buf", scope: !50102, file: !3254, line: 373, type: !7, align: 64)
!57785 = !DILocalVariable(name: "result", scope: !50101, file: !3254, line: 374, type: !573, align: 64)
!57786 = !DILocalVariable(name: "e", scope: !50100, file: !3254, line: 378, type: !569, align: 64)
!57787 = !DILocalVariable(name: "report", scope: !50099, file: !3254, line: 379, type: !3932, align: 64)
!57788 = !DILocalVariable(name: "chunk", scope: !50098, file: !3254, line: 380, type: !3639, align: 64)
!57789 = !DILocalVariable(name: "span", scope: !50097, file: !3254, line: 381, type: !3933, align: 64)
!57790 = !DILocalVariable(name: "name", scope: !50096, file: !3254, line: 382, type: !90, align: 64)
!57791 = !DILocalVariable(name: "source", scope: !50096, file: !3254, line: 382, type: !90, align: 64)
!57792 = !DILocalVariable(name: "num_elem", scope: !50095, file: !3254, line: 389, type: !3934, align: 64)
!57793 = !DILocalVariable(name: "elems", scope: !50094, file: !3254, line: 395, type: !656, align: 64)
!57794 = !DILocalVariable(name: "iter", scope: !50093, file: !3254, line: 396, type: !14, align: 64)
!57795 = !DILocalVariable(name: "val", scope: !50092, file: !3254, line: 397, type: !139, align: 64)
!57796 = !DILocalVariable(name: "key", scope: !50091, file: !3254, line: 398, type: !139, align: 64)
!57797 = !DILocalVariable(name: "residual", scope: !50090, file: !3254, line: 399, type: !577, align: 64)
!57798 = !DILocalVariable(name: "val", scope: !50089, file: !3254, line: 399, type: !104, align: 128)
!57799 = !DILocalVariable(name: "map", scope: !50088, file: !3254, line: 402, type: !110, align: 64)
!57800 = !DILocalVariable(name: "entry_types", scope: !50087, file: !3254, line: 406, type: !3935, align: 64)
!57801 = !DILocalVariable(name: "result_map", scope: !50086, file: !3254, line: 407, type: !110, align: 64)
!57802 = !DILocalVariable(name: "iter", scope: !50085, file: !3254, line: 411, type: !654, align: 64)
!57803 = !DILocalVariable(name: "is_spread", scope: !50084, file: !3254, line: 411, type: !3936, align: 64)
!57804 = !DILocalVariable(name: "val", scope: !50083, file: !3254, line: 413, type: !139, align: 64)
!57805 = !DILocalVariable(name: "span", scope: !50083, file: !3254, line: 413, type: !537, align: 32)
!57806 = !DILocalVariable(name: "chunk", scope: !50082, file: !3254, line: 63, type: !3639, align: 64)
!57807 = !DILocalVariable(name: "span", scope: !50081, file: !3254, line: 64, type: !15, align: 64)
!57808 = !DILocalVariable(name: "name", scope: !50080, file: !3254, line: 67, type: !90, align: 64)
!57809 = !DILocalVariable(name: "source", scope: !50080, file: !3254, line: 67, type: !90, align: 64)
!57810 = !DILocalVariable(name: "err", scope: !50079, file: !3254, line: 68, type: !563, align: 64)
end_hunk_11
begin_hunk_12_@llvm.vector.reduce.add.v2i64
!69699 = !DILocation(line: 4354, column: 24, scope: !868, inlinedAt: !57324)
!69700 = !DILocation(line: 2552, column: 12, scope: !871, inlinedAt: !57321)
!69701 = !DILocation(line: 454, column: 20, scope: !895, inlinedAt: !57371)
!69702 = !DILocation(line: 4354, column: 24, scope: !868, inlinedAt: !57319)
!69703 = !DILocation(line: 2552, column: 12, scope: !869, inlinedAt: !57316)
!69704 = !DILocation(line: 454, column: 20, scope: !897, inlinedAt: !57378)
!69705 = !DILocation(line: 4354, column: 24, scope: !868, inlinedAt: !57314)
!69706 = !DILocation(line: 2552, column: 12, scope: !866, inlinedAt: !57311)
!69707 = !DILocation(line: 454, column: 20, scope: !901, inlinedAt: !57387)
!69708 = !DILocation(line: 4354, column: 24, scope: !868, inlinedAt: !57330)
!69709 = !DILocation(line: 2552, column: 12, scope: !873, inlinedAt: !57327)
!69710 = !DILocation(line: 102, column: 10, scope: !875, inlinedAt: !57326)
!69711 = !DILocation(line: 60, column: 23, scope: !900, inlinedAt: !57391)
!69712 = !DILocation(line: 184, column: 17, scope: !857, inlinedAt: !57309)
!69713 = !DILocation(line: 2557, column: 38, scope: !873, inlinedAt: !57327)
!69714 = !DILocation(line: 60, column: 23, scope: !900, inlinedAt: !57385)
!69715 = !DILocation(line: 2553, column: 13, scope: !873, inlinedAt: !57327)
!69716 = !DILocation(line: 184, column: 17, scope: !856, inlinedAt: !57309)
!69717 = !DILocation(line: 2553, column: 13, scope: !871, inlinedAt: !57321)
!69718 = !DILocation(line: 184, column: 17, scope: !855, inlinedAt: !57309)
!69719 = !DILocation(line: 2553, column: 13, scope: !869, inlinedAt: !57316)
!69720 = !DILocation(line: 184, column: 17, scope: !854, inlinedAt: !57309)
!69721 = !DILocation(line: 2553, column: 13, scope: !866, inlinedAt: !57311)
!69722 = !DILocation(line: 203, column: 10, scope: !853, inlinedAt: !57305)
!69723 = !DILocation(line: 203, column: 15, scope: !853, inlinedAt: !57305)
!69724 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !57393)
!69725 = !DILocation(line: 82, column: 9, scope: !722, inlinedAt: !50280)
!69726 = !DILocation(line: 802, column: 36, scope: !49579)
!69727 = !DILocation(line: 410, column: 15, scope: !1121, inlinedAt: !57399)
!69728 = !DILocation(line: 410, column: 9, scope: !1121, inlinedAt: !57399)
!69729 = !DILocation(line: 802, column: 32, scope: !49579)
!69730 = !DILocation(line: 627, column: 9, scope: !50816, inlinedAt: !64051)
!69731 = !DILocation(line: 1873, column: 86, scope: !50817, inlinedAt: !64047)
!69732 = !DILocation(line: 808, column: 39, scope: !49579)
!69733 = !DILocation(line: 804, column: 38, scope: !49579)
!69734 = !DILocation(line: 189, column: 18, scope: !1436, inlinedAt: !57401)
!69735 = !DILocation(line: 184, column: 12, scope: !1442, inlinedAt: !57413)
!69736 = !DILocation(line: 186, column: 27, scope: !1442, inlinedAt: !57413)
!69737 = !DILocation(line: 1873, column: 86, scope: !1444, inlinedAt: !57419)
!69738 = !DILocation(line: 184, column: 12, scope: !1440, inlinedAt: !57409)
!69739 = !DILocation(line: 808, column: 35, scope: !49579)
!69740 = !DILocation(line: 808, column: 29, scope: !49579)
!69741 = !DILocation(line: 811, column: 40, scope: !49579)
!69742 = !DILocation(line: 406, column: 6, scope: !1447, inlinedAt: !57423)
!69743 = !DILocation(line: 813, column: 46, scope: !49579)
!69744 = !DILocation(line: 189, column: 18, scope: !1436, inlinedAt: !57424)
!69745 = !DILocation(line: 184, column: 12, scope: !1442, inlinedAt: !57436)
!69746 = !DILocation(line: 186, column: 27, scope: !1442, inlinedAt: !57436)
!69747 = !DILocation(line: 1873, column: 86, scope: !1444, inlinedAt: !57442)
!69748 = !DILocation(line: 184, column: 12, scope: !1440, inlinedAt: !57432)
!69749 = !DILocation(line: 824, column: 25, scope: !49581)
!69750 = !DILocation(line: 831, column: 17, scope: !49586)
!69751 = !DILocation(line: 828, column: 25, scope: !49581)
!69752 = !DILocation(line: 792, column: 21, scope: !49584)
!69753 = !DILocation(line: 627, column: 9, scope: !913, inlinedAt: !57448)
!69754 = !DILocation(line: 971, column: 18, scope: !909, inlinedAt: !57255)
!69755 = !DILocation(line: 1042, column: 29, scope: !903, inlinedAt: !57244)
!69756 = !DILocation(line: 1043, column: 13, scope: !903, inlinedAt: !57244)
!69757 = !DILocation(line: 26, column: 37, scope: !731, inlinedAt: !57238)
!69758 = !DILocation(line: 831, column: 17, scope: !50204)
!69759 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !57452)
!69760 = !DILocation(line: 186, column: 27, scope: !1440, inlinedAt: !57432)
!69761 = !DILocation(line: 816, column: 45, scope: !49576)
!69762 = !DILocation(line: 627, column: 9, scope: !50816, inlinedAt: !64062)
!69763 = !DILocation(line: 1873, column: 86, scope: !50817, inlinedAt: !64058)
!69764 = !DILocation(line: 816, column: 50, scope: !49576)
!69765 = !DILocation(line: 971, column: 21, scope: !50680, inlinedAt: !63971)
!69766 = !DILocation(line: 815, column: 48, scope: !49576)
!69767 = !DILocation(line: 817, column: 41, scope: !49576)
!69768 = !DILocation(line: 0, scope: !64063)
!69769 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !57455)
!69770 = !DILocation(line: 186, column: 27, scope: !1440, inlinedAt: !57409)
!69771 = !DILocation(line: 806, column: 44, scope: !49578)
!69772 = !DILocation(line: 627, column: 9, scope: !50816, inlinedAt: !64074)
!69773 = !DILocation(line: 1873, column: 86, scope: !50817, inlinedAt: !64070)
!69774 = !DILocation(line: 806, column: 49, scope: !49578)
!69775 = !DILocation(line: 806, column: 40, scope: !49578)
!69776 = !DILocation(line: 806, column: 94, scope: !49578)
!69777 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !57456)
!69778 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !57460)
!69779 = !DILocation(line: 797, column: 40, scope: !49583)
!69780 = !DILocation(line: 238, column: 10, scope: !50673, inlinedAt: !60684)
!69781 = !DILocation(line: 627, column: 9, scope: !57231, inlinedAt: !64081)
!69782 = !DILocation(line: 627, column: 9, scope: !50816, inlinedAt: !64096)
!69783 = !DILocation(line: 1873, column: 86, scope: !50817, inlinedAt: !64092)
!69784 = !DILocation(line: 797, column: 45, scope: !49583)
!69785 = !DILocation(line: 797, column: 36, scope: !49583)
!69786 = !DILocation(line: 797, column: 94, scope: !49583)
!69787 = !DILocation(line: 0, scope: !64097)
!69788 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !57461)
!69789 = !DILocation(line: 834, column: 25, scope: !49574)
!69790 = !DILocation(line: 3136, column: 19, scope: !57227, inlinedAt: !64099)
!69791 = !DILocation(line: 3141, column: 37, scope: !57227, inlinedAt: !64099)
!69792 = !DILocation(line: 3141, column: 18, scope: !57227, inlinedAt: !64099)
!69793 = !DILocation(line: 834, column: 35, scope: !49574)
!69794 = !DILocation(line: 627, column: 9, scope: !57231, inlinedAt: !64145)
!69795 = !DILocation(line: 1873, column: 86, scope: !50817, inlinedAt: !64150)
!69796 = !DILocation(line: 627, column: 9, scope: !57231, inlinedAt: !64156)
!69797 = !DILocation(line: 1873, column: 86, scope: !50817, inlinedAt: !64163)
!69798 = !DILocation(line: 2741, column: 43, scope: !50674, inlinedAt: !60718)
!69799 = !DILocation(line: 21, column: 12, scope: !51046, inlinedAt: !64169)
!69800 = !DILocation(line: 627, column: 9, scope: !50816, inlinedAt: !64185)
!69801 = !DILocation(line: 157, column: 13, scope: !51052, inlinedAt: !64175)
!69802 = !DILocation(line: 835, column: 31, scope: !49574)
!69803 = !DILocation(line: 834, column: 32, scope: !49574)
!69804 = !DILocation(line: 627, column: 9, scope: !50816, inlinedAt: !64195)
!69805 = !DILocation(line: 837, column: 31, scope: !49574)
!69806 = !DILocation(line: 238, column: 10, scope: !50673, inlinedAt: !60727)
!69807 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !57463)
!69808 = !DILocation(line: 839, column: 29, scope: !49573)
!69809 = !DILocation(line: 410, column: 15, scope: !1121, inlinedAt: !57467)
!69810 = !DILocation(line: 410, column: 9, scope: !1121, inlinedAt: !57467)
!69811 = !DILocation(line: 839, column: 24, scope: !49573)
!69812 = !DILocation(line: 3136, column: 19, scope: !57227, inlinedAt: !64128)
!69813 = !DILocation(line: 3141, column: 37, scope: !57227, inlinedAt: !64128)
!69814 = !DILocation(line: 3141, column: 18, scope: !57227, inlinedAt: !64128)
!69815 = !DILocation(line: 846, column: 42, scope: !49571)
!69816 = !DILocation(line: 841, column: 30, scope: !49573)
!69817 = !DILocation(line: 189, column: 18, scope: !1436, inlinedAt: !57469)
!69818 = !DILocation(line: 184, column: 12, scope: !1442, inlinedAt: !57481)
!69819 = !DILocation(line: 186, column: 27, scope: !1442, inlinedAt: !57481)
!69820 = !DILocation(line: 1873, column: 86, scope: !1444, inlinedAt: !57487)
!69821 = !DILocation(line: 184, column: 12, scope: !1440, inlinedAt: !57477)
!69822 = !DILocation(line: 864, column: 26, scope: !49570)
!69823 = !DILocation(line: 51, column: 24, scope: !52970, inlinedAt: !57499)
!69824 = !DILocation(line: 1042, column: 9, scope: !52976, inlinedAt: !57503)
!69825 = !DILocation(line: 881, column: 13, scope: !52964, inlinedAt: !57494)
!69826 = !DILocation(line: 1912, column: 92, scope: !52985, inlinedAt: !57510)
!69827 = !DILocation(line: 307, column: 16, scope: !52993, inlinedAt: !57514)
!69828 = !DILocation(line: 677, column: 15, scope: !52943, inlinedAt: !57495)
!69829 = !DILocation(line: 677, column: 9, scope: !52943, inlinedAt: !57495)
!69830 = !DILocation(line: 145, column: 15, scope: !53000, inlinedAt: !57517)
!69831 = !DILocation(line: 145, column: 9, scope: !53000, inlinedAt: !57517)
!69832 = !DILocation(line: 0, scope: !53000, inlinedAt: !57517)
!69833 = !DILocation(line: 60, column: 34, scope: !52942, inlinedAt: !57496)
!69834 = !DILocation(line: 881, column: 42, scope: !52964, inlinedAt: !57494)
!69835 = !DILocation(line: 887, column: 47, scope: !52958, inlinedAt: !57494)
!69836 = !DILocation(line: 887, column: 23, scope: !52958, inlinedAt: !57494)
!69837 = !DILocation(line: 1912, column: 92, scope: !52985, inlinedAt: !57522)
!69838 = !DILocation(line: 307, column: 16, scope: !52992, inlinedAt: !57526)
!69839 = !DILocation(line: 3117, column: 13, scope: !53012, inlinedAt: !57528)
!69840 = !DILocation(line: 896, column: 19, scope: !52964, inlinedAt: !57494)
!69841 = !DILocation(line: 2176, column: 15, scope: !53031, inlinedAt: !57531)
!69842 = !DILocation(line: 2176, column: 9, scope: !53031, inlinedAt: !57531)
!69843 = !DILocation(line: 891, column: 17, scope: !52958, inlinedAt: !57494)
!69844 = !DILocation(line: 891, column: 41, scope: !52958, inlinedAt: !57494)
!69845 = !DILocation(line: 2176, column: 15, scope: !53031, inlinedAt: !57533)
!69846 = !DILocation(line: 2176, column: 9, scope: !53031, inlinedAt: !57533)
!69847 = !DILocation(line: 627, column: 9, scope: !53037, inlinedAt: !57537)
!69848 = !DILocation(line: 889, column: 17, scope: !52957, inlinedAt: !57494)
!69849 = !DILocation(line: 889, column: 41, scope: !52957, inlinedAt: !57494)
!69850 = !DILocation(line: 307, column: 21, scope: !52992, inlinedAt: !57526)
!69851 = !DILocation(line: 2176, column: 15, scope: !53031, inlinedAt: !57540)
!69852 = !DILocation(line: 2176, column: 9, scope: !53031, inlinedAt: !57540)
!69853 = !DILocation(line: 2190, column: 27, scope: !53051, inlinedAt: !57543)
!69854 = !DILocation(line: 2190, column: 23, scope: !53051, inlinedAt: !57543)
!69855 = !DILocation(line: 2190, column: 40, scope: !53051, inlinedAt: !57543)
!69856 = !DILocation(line: 0, scope: !61821, inlinedAt: !57494)
!69857 = !DILocation(line: 2190, column: 27, scope: !53052, inlinedAt: !57547)
!69858 = !DILocation(line: 2190, column: 23, scope: !53052, inlinedAt: !57547)
!69859 = !DILocation(line: 2190, column: 40, scope: !53052, inlinedAt: !57547)
!69860 = !DILocation(line: 2190, column: 27, scope: !53050, inlinedAt: !57551)
!69861 = !DILocation(line: 2190, column: 23, scope: !53050, inlinedAt: !57551)
!69862 = !DILocation(line: 2190, column: 40, scope: !53050, inlinedAt: !57551)
!69863 = !DILocation(line: 0, scope: !61824, inlinedAt: !57494)
!69864 = !DILocation(line: 627, column: 9, scope: !53076, inlinedAt: !57562)
!69865 = !DILocation(line: 1873, column: 86, scope: !53070, inlinedAt: !57556)
!69866 = !DILocation(line: 1912, column: 92, scope: !52985, inlinedAt: !57566)
!69867 = !DILocation(line: 307, column: 16, scope: !52991, inlinedAt: !57570)
!69868 = !DILocation(line: 903, column: 17, scope: !52950, inlinedAt: !57494)
!69869 = !DILocation(line: 2176, column: 15, scope: !53031, inlinedAt: !57572)
!69870 = !DILocation(line: 2176, column: 9, scope: !53031, inlinedAt: !57572)
!69871 = !DILocation(line: 627, column: 9, scope: !53037, inlinedAt: !57576)
!69872 = !DILocation(line: 307, column: 21, scope: !52991, inlinedAt: !57570)
!69873 = !DILocation(line: 901, column: 17, scope: !52949, inlinedAt: !57494)
!69874 = !DILocation(line: 2176, column: 15, scope: !53031, inlinedAt: !57579)
!69875 = !DILocation(line: 2176, column: 9, scope: !53031, inlinedAt: !57579)
!69876 = !DILocation(line: 2190, column: 27, scope: !53048, inlinedAt: !57582)
!69877 = !DILocation(line: 2190, column: 23, scope: !53048, inlinedAt: !57582)
!69878 = !DILocation(line: 2190, column: 40, scope: !53048, inlinedAt: !57582)
!69879 = !DILocation(line: 0, scope: !61840, inlinedAt: !57494)
!69880 = !DILocation(line: 2190, column: 27, scope: !53049, inlinedAt: !57586)
!69881 = !DILocation(line: 2190, column: 23, scope: !53049, inlinedAt: !57586)
!69882 = !DILocation(line: 2190, column: 40, scope: !53049, inlinedAt: !57586)
!69883 = !DILocation(line: 885, column: 23, scope: !52964, inlinedAt: !57494)
!69884 = !DILocation(line: 2176, column: 15, scope: !53031, inlinedAt: !57589)
!69885 = !DILocation(line: 2176, column: 9, scope: !53031, inlinedAt: !57589)
!69886 = !DILocation(line: 627, column: 9, scope: !53037, inlinedAt: !57593)
!69887 = !DILocation(line: 307, column: 21, scope: !52993, inlinedAt: !57514)
!69888 = !DILocation(line: 883, column: 23, scope: !52963, inlinedAt: !57494)
!69889 = !DILocation(line: 2176, column: 15, scope: !53031, inlinedAt: !57596)
!69890 = !DILocation(line: 2176, column: 9, scope: !53031, inlinedAt: !57596)
!69891 = !DILocation(line: 2190, column: 27, scope: !53053, inlinedAt: !57599)
!69892 = !DILocation(line: 2190, column: 23, scope: !53053, inlinedAt: !57599)
!69893 = !DILocation(line: 2190, column: 40, scope: !53053, inlinedAt: !57599)
!69894 = !DILocation(line: 2190, column: 27, scope: !53054, inlinedAt: !57603)
!69895 = !DILocation(line: 2190, column: 23, scope: !53054, inlinedAt: !57603)
!69896 = !DILocation(line: 2190, column: 40, scope: !53054, inlinedAt: !57603)
!69897 = !DILocation(line: 627, column: 9, scope: !57231, inlinedAt: !64210)
!69898 = !DILocation(line: 971, column: 18, scope: !57297, inlinedAt: !64216)
!69899 = !DILocation(line: 848, scope: !49569)
!69900 = !DILocation(line: 180, column: 28, scope: !714, inlinedAt: !50277)
!69901 = !DILocation(line: 545, column: 13, scope: !50685, inlinedAt: !60745)
!69902 = !DILocation(line: 1663, column: 9, scope: !1446, inlinedAt: !57608)
!69903 = !DILocation(line: 627, column: 9, scope: !50816, inlinedAt: !64242)
!69904 = !DILocation(line: 1873, column: 86, scope: !50817, inlinedAt: !64238)
!69905 = !DILocation(line: 849, column: 39, scope: !49567)
!69906 = !DILocation(line: 0, scope: !52964, inlinedAt: !57494)
!69907 = !DILocation(line: 2176, column: 15, scope: !50222, inlinedAt: !58499)
!69908 = !DILocation(line: 2176, column: 9, scope: !50222, inlinedAt: !58499)
!69909 = !DILocation(line: 2190, column: 23, scope: !50214, inlinedAt: !58487)
!69910 = !DILocation(line: 2178, column: 17, scope: !50222, inlinedAt: !58499)
!69911 = !DILocation(line: 864, column: 57, scope: !49570)
!69912 = !DILocation(line: 0, scope: !64247)
!69913 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !57613)
!69914 = !DILocation(line: 865, column: 17, scope: !49574)
!69915 = !DILocation(line: 865, column: 17, scope: !50204)
!69916 = !DILocation(line: 82, column: 9, scope: !722, inlinedAt: !50276)
!69917 = !DILocation(line: 849, column: 35, scope: !49567)
!69918 = !DILocation(line: 849, column: 29, scope: !49567)
!69919 = !DILocation(line: 853, column: 42, scope: !49567)
!69920 = !DILocation(line: 189, column: 18, scope: !1436, inlinedAt: !57615)
!69921 = !DILocation(line: 184, column: 12, scope: !1442, inlinedAt: !57627)
!69922 = !DILocation(line: 186, column: 27, scope: !1442, inlinedAt: !57627)
!69923 = !DILocation(line: 1873, column: 86, scope: !1444, inlinedAt: !57633)
!69924 = !DILocation(line: 184, column: 12, scope: !1440, inlinedAt: !57623)
!69925 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !57639)
!69926 = !DILocation(line: 186, column: 27, scope: !1440, inlinedAt: !57623)
!69927 = !DILocation(line: 855, column: 48, scope: !49565)
!69928 = !DILocation(line: 627, column: 9, scope: !50816, inlinedAt: !64258)
!69929 = !DILocation(line: 1873, column: 86, scope: !50817, inlinedAt: !64254)
!69930 = !DILocation(line: 855, column: 53, scope: !49565)
!69931 = !DILocation(line: 855, column: 44, scope: !49565)
!69932 = !DILocation(line: 855, column: 98, scope: !49565)
!69933 = !DILocation(line: 0, scope: !64259)
!69934 = !DILocation(line: 848, column: 1, scope: !911, inlinedAt: !57640)
!69935 = !DILocation(line: 627, column: 9, scope: !1448, inlinedAt: !57644)
!69936 = !DILocation(line: 843, column: 36, scope: !49572)
!69937 = !DILocation(line: 1873, column: 86, scope: !57229, inlinedAt: !64123)
!69938 = !DILocation(line: 238, column: 10, scope: !50673, inlinedAt: !60737)
!69939 = !DILocation(line: 971, column: 21, scope: !50680, inlinedAt: !64261)
!69940 = !DILocation(line: 627, column: 9, scope: !57231, inlinedAt: !64267)
!69941 = !DILocation(line: 627, column: 9, scope: !50816, inlinedAt: !64282)
!69942 = !DILocation(line: 1873, column: 86, scope: !50817, inlinedAt: !64278)
!69943 = !DILocation(line: 843, column: 41, scope: !49572)
!69944 = !DILocation(line: 843, column: 32, scope: !49572)
!69945 = !DILocation(line: 843, column: 90, scope: !49572)
!69946 = !DILocation(line: 0, scope: !64283)
!69947 = distinct !DILexicalBlock(scope: !69954, file: !3254, line: 1075, column: 52)
!69948 = distinct !DILexicalBlock(scope: !69954, file: !3254, line: 1075, column: 52)
!69949 = distinct !DILexicalBlock(scope: !69953, file: !3254, line: 1073, column: 50)
!69950 = distinct !DILexicalBlock(scope: !69953, file: !3254, line: 1073, column: 50)
!69951 = distinct !DILexicalBlock(scope: !69953, file: !3254, line: 1072, column: 56)
!69952 = distinct !DILexicalBlock(scope: !69953, file: !3254, line: 1072, column: 56)
!69953 = distinct !DILexicalBlock(scope: !69954, file: !3254, line: 1069, column: 41)
!69954 = distinct !DILexicalBlock(scope: !69959, file: !3254, line: 1066, column: 9)
!69955 = distinct !DILexicalBlock(scope: !69958, file: !3254, line: 1061, column: 65)
!69956 = distinct !DILexicalBlock(scope: !69958, file: !3254, line: 1061, column: 65)
!69957 = distinct !DILexicalBlock(scope: !69958, file: !3254, line: 1061, column: 13)
!69958 = distinct !DILexicalBlock(scope: !69960, file: !3254, line: 1060, column: 80)
!69959 = distinct !DILexicalBlock(scope: !69960, file: !3254, line: 1060, column: 9)
!69960 = distinct !DISubprogram(name: "render_to<&mut alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9render_toQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_", scope: !491, file: !3254, line: 1052, type: !70015, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !3910, declaration: !70016, retainedNodes: !70035)
!69961 = distinct !DILexicalBlock(scope: !69963, file: !3774, line: 2190, column: 13)
!69962 = distinct !DILexicalBlock(scope: !69963, file: !3774, line: 2190, column: 13)
!69963 = distinct !DISubprogram(name: "from_residual<(), tera::errors::Error, tera::errors::Error>", linkageName: "_RNvXsq_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultuNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBP_", scope: !3775, file: !3774, line: 2188, type: !3778, scopeLine: 2188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !3792, retainedNodes: !70040)
!69964 = distinct !DILexicalBlock(scope: !69963, file: !3774, line: 2190, column: 13)
!69965 = distinct !DILexicalBlock(scope: !69966, file: !3774, line: 2177, column: 13)
!69966 = distinct !DISubprogram(name: "branch<&tera::template::Template, tera::errors::Error>", linkageName: "_RNvXsp_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultRNtNtCs5yXxDE1DkoT_4tera8template8TemplateNtNtBP_6errors5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_", scope: !3794, file: !3774, line: 2175, type: !3796, scopeLine: 2175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !3804, retainedNodes: !70047)
!69967 = distinct !DILexicalBlock(scope: !69966, file: !3774, line: 2178, column: 13)
!69968 = distinct !DILexicalBlock(scope: !69972, file: !3774, line: 2178, column: 13)
!69969 = distinct !DILexicalBlock(scope: !69972, file: !3774, line: 2177, column: 13)
!69970 = distinct !DILexicalBlock(scope: !69972, file: !3774, line: 2178, column: 13)
!69971 = distinct !DILexicalBlock(scope: !69972, file: !3774, line: 2177, column: 13)
!69972 = distinct !DISubprogram(name: "branch<(), tera::errors::Error>", linkageName: "_RNvXsp_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultuNtNtCs5yXxDE1DkoT_4tera6errors5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_", scope: !3794, file: !3774, line: 2175, type: !3824, scopeLine: 2175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !3756, retainedNodes: !70060)
!69973 = distinct !DISubprogram(name: "deref<alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCs5yXxDE1DkoT_4tera", scope: !5413, file: !4232, line: 3894, type: !7548, scopeLine: 3894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2016, retainedNodes: !70079)
!69974 = distinct !DISubprogram(name: "as_slice<alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE8as_sliceCs5yXxDE1DkoT_4tera", scope: !21, file: !4232, line: 1856, type: !7548, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2016, declaration: !7549, retainedNodes: !70083)
!69975 = distinct !DISubprogram(name: "as_ptr<alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE6as_ptrCs5yXxDE1DkoT_4tera", scope: !21, file: !4232, line: 1974, type: !7551, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2016, declaration: !7552, retainedNodes: !70087)
!69976 = distinct !DILexicalBlock(scope: !69977, file: !4987, line: 158, column: 35)
!69977 = distinct !DISubprogram(name: "first<alloc::string::String>", linkageName: "_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String5firstCs5yXxDE1DkoT_4tera", scope: !4989, file: !4987, line: 157, type: !70092, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2015, retainedNodes: !70094)
!69978 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::string::String>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtB8_6string6StringECs5yXxDE1DkoT_4tera", scope: !5, file: !4227, line: 626, type: !7554, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !7555, declaration: !7556)
!69979 = distinct !DISubprogram(name: "ptr<alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE3ptrCs5yXxDE1DkoT_4tera", scope: !20, file: !4227, line: 304, type: !7560, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2016, declaration: !7561)
!69980 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::string::String>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtB8_6string6StringECs5yXxDE1DkoT_4tera", scope: !5, file: !4227, line: 621, type: !7563, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !7555, declaration: !7564)
!69981 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXsx_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5deref", scope: !5293, file: !4758, line: 2896, type: !5295, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, retainedNodes: !70103)
!69982 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String6as_str", scope: !8, file: !4758, line: 1073, type: !5295, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, declaration: !5296, retainedNodes: !70107)
!69983 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECs5yXxDE1DkoT_4tera", scope: !5, file: !4227, line: 626, type: !5298, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !5299, declaration: !5300)
!69984 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE8as_sliceCs5yXxDE1DkoT_4tera", scope: !7, file: !4232, line: 1856, type: !5302, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1874, declaration: !5303, retainedNodes: !70120)
!69985 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE6as_ptrCs5yXxDE1DkoT_4tera", scope: !7, file: !4232, line: 1974, type: !5305, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1874, declaration: !5306, retainedNodes: !70122)
!69986 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE3ptrCs5yXxDE1DkoT_4tera", scope: !6, file: !4227, line: 304, type: !5308, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1874, declaration: !5309)
!69987 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner3ptrhECs5yXxDE1DkoT_4tera", scope: !5, file: !4227, line: 621, type: !5311, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !5299, declaration: !5312)
!69988 = distinct !DILocation(line: 1061, column: 33, scope: !69958)
!69989 = distinct !DILocation(line: 0, scope: !594, inlinedAt: !69988)
!69990 = distinct !{!69990, i1 true, !"_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17must_get_template"}
!69991 = distinct !{!69991, !69990, !"_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17must_get_template: argument 0"}
!69992 = distinct !DILocation(line: 1040, column: 14, scope: !594, inlinedAt: !69988)
!69993 = distinct !DILocation(line: 0, scope: !601, inlinedAt: !69992)
!69994 = distinct !DILocation(line: 1361, column: 41, scope: !601, inlinedAt: !69992)
!69995 = distinct !DILocation(line: 1367, column: 25, scope: !601, inlinedAt: !69992)
!69996 = distinct !DILocation(line: 1038, column: 44, scope: !602, inlinedAt: !69995)
!69997 = distinct !DILocation(line: 1066, column: 79, scope: !69959)
!69998 = distinct !DILocation(line: 0, scope: !603, inlinedAt: !69997)
!69999 = distinct !DILocation(line: 51, column: 14, scope: !603, inlinedAt: !69997)
!70000 = distinct !DILocation(line: 0, scope: !605, inlinedAt: !69999)
!70001 = distinct !{!70001, i1 true, !"_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State14new_with_chunk"}
!70002 = distinct !{!70002, !70001, !"_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State14new_with_chunk: argument 0"}
!70003 = distinct !{!70003, !70001, !"_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State14new_with_chunk: argument 1"}
!70004 = distinct !DILocation(line: 1066, column: 25, scope: !69959)
!70005 = distinct !DILocation(line: 64, column: 13, scope: !607, inlinedAt: !70004)
!70006 = distinct !DILocation(line: 0, scope: !606, inlinedAt: !70004)
!70007 = distinct !DILocation(line: 64, column: 21, scope: !606, inlinedAt: !70004)
!70008 = distinct !DILocation(line: 0, scope: !608, inlinedAt: !70007)
!70009 = distinct !DISubprogram(name: "deref<u8, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCs5yXxDE1DkoT_4tera", scope: !5413, file: !4232, line: 3894, type: !5302, scopeLine: 3894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1874, retainedNodes: !70135)
!70010 = distinct !DILocation(line: 1073, column: 20, scope: !69953)
!70011 = distinct !DILocation(line: 0, scope: !1459, inlinedAt: !70010)
!70012 = distinct !DILocation(line: 45, column: 18, scope: !1459, inlinedAt: !70010)
!70013 = distinct !DILocation(line: 0, scope: !1146, inlinedAt: !70012)
!70014 = !{!573, !7654, !503, !3492, !3492, !3230}
!70015 = !DISubroutineType(types: !70014)
!70016 = !DISubprogram(name: "render_to<&mut alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9render_toQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_", scope: !491, file: !3254, line: 1052, type: !70015, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3910)
!70017 = !DILocalVariable(name: "self", arg: 1, scope: !69960, file: !3254, line: 1053, type: !7654)
!70018 = !DILocalVariable(name: "block_name", arg: 2, scope: !69960, file: !3254, line: 1054, type: !503)
!70019 = !DILocalVariable(name: "context", arg: 3, scope: !69960, file: !3254, line: 1055, type: !3492)
!70020 = !DILocalVariable(name: "global_context", arg: 4, scope: !69960, file: !3254, line: 1056, type: !3492)
!70021 = !DILocalVariable(name: "output", arg: 5, scope: !69960, file: !3254, line: 1057, type: !3230)
!70022 = !DILocalVariable(name: "chunk", scope: !69959, file: !3254, line: 1060, type: !3639, align: 64)
!70023 = !DILocalVariable(name: "base_tpl_name", scope: !69958, file: !3254, line: 1060, type: !2900, align: 64)
!70024 = !DILocalVariable(name: "tpl", scope: !69957, file: !3254, line: 1061, type: !3259, align: 64)
!70025 = !DILocalVariable(name: "residual", scope: !69956, file: !3254, line: 1061, type: !577, align: 64)
!70026 = !DILocalVariable(name: "val", scope: !69955, file: !3254, line: 1061, type: !3259, align: 64)
!70027 = !DILocalVariable(name: "state", scope: !69954, file: !3254, line: 1066, type: !543, align: 64)
!70028 = !DILocalVariable(name: "block", scope: !69953, file: !3254, line: 1069, type: !90, align: 64)
!70029 = !DILocalVariable(name: "residual", scope: !69952, file: !3254, line: 1072, type: !577, align: 64)
!70030 = !DILocalVariable(name: "val", scope: !69951, file: !3254, line: 1072, type: !1829, align: 8)
!70031 = !DILocalVariable(name: "residual", scope: !69950, file: !3254, line: 1073, type: !660, align: 64)
!70032 = !DILocalVariable(name: "val", scope: !69949, file: !3254, line: 1073, type: !1829, align: 8)
!70033 = !DILocalVariable(name: "residual", scope: !69948, file: !3254, line: 1075, type: !577, align: 64)
!70034 = !DILocalVariable(name: "val", scope: !69947, file: !3254, line: 1075, type: !1829, align: 8)
!70035 = !{!70017, !70018, !70019, !70020, !70021, !70022, !70023, !70024, !70025, !70026, !70027, !70028, !70029, !70030, !70031, !70032, !70033, !70034}
!70036 = !DILocalVariable(name: "e", scope: !69964, file: !3774, line: 2190, type: !569, align: 64)
!70037 = !DILocalVariable(name: "residual", arg: 1, scope: !69963, file: !3774, line: 2188, type: !577)
!70038 = !DILocalVariable(name: "e", scope: !69962, file: !3774, line: 2190, type: !569, align: 64)
!70039 = !DILocalVariable(name: "e", scope: !69961, file: !3774, line: 2190, type: !569, align: 64)
!70040 = !{!70037, !70036, !70038, !70039}
!70041 = !DILexicalBlockFile(scope: !69956, file: !3254, discriminator: 2)
!70042 = !DILocation(line: 1061, column: 23, scope: !70041)
!70043 = !DILocation(line: 2190, column: 17, scope: !69964, inlinedAt: !70042)
!70044 = !DILocalVariable(name: "e", scope: !69967, file: !3774, line: 2178, type: !569, align: 64)
!70045 = !DILocalVariable(name: "self", arg: 1, scope: !69966, file: !3774, line: 2175, type: !585)
!70046 = !DILocalVariable(name: "v", scope: !69965, file: !3774, line: 2177, type: !3259, align: 64)
!70047 = !{!70045, !70046, !70044}
!70048 = !DILocation(line: 1061, column: 23, scope: !69958)
!70049 = !DILocation(line: 2178, column: 17, scope: !69967, inlinedAt: !70048)
!70050 = !DILocation(line: 2188, column: 22, scope: !69963, inlinedAt: !70042)
!70051 = !DILocation(line: 1061, column: 65, scope: !69956)
!70052 = !DILocation(line: 0, scope: !69960)
!70053 = !DILocation(line: 2175, column: 15, scope: !69966, inlinedAt: !70048)
!70054 = !DILocation(line: 1066, column: 13, scope: !69954)
!70055 = !DILocalVariable(name: "self", arg: 1, scope: !69972, file: !3774, line: 2175, type: !573)
!70056 = !DILocalVariable(name: "v", scope: !69971, file: !3774, line: 2177, type: !1829, align: 8)
!70057 = !DILocalVariable(name: "e", scope: !69970, file: !3774, line: 2178, type: !569, align: 64)
!70058 = !DILocalVariable(name: "v", scope: !69969, file: !3774, line: 2177, type: !1829, align: 8)
!70059 = !DILocalVariable(name: "e", scope: !69968, file: !3774, line: 2178, type: !569, align: 64)
!70060 = !{!70055, !70056, !70057, !70058, !70059}
!70061 = !DILocation(line: 1072, column: 13, scope: !69953)
!70062 = !DILocation(line: 2175, column: 15, scope: !69972, inlinedAt: !70061)
!70063 = !DILocation(line: 1072, column: 56, scope: !69952)
!70064 = !DILexicalBlockFile(scope: !69952, file: !3254, discriminator: 2)
!70065 = !DILocation(line: 1072, column: 13, scope: !70064)
!70066 = !DILocation(line: 2188, column: 22, scope: !69963, inlinedAt: !70065)
!70067 = !DILocation(line: 1075, column: 13, scope: !69954)
!70068 = !DILocation(line: 2175, column: 15, scope: !69972, inlinedAt: !70067)
!70069 = !DILocation(line: 1075, column: 52, scope: !69948)
!70070 = !DILexicalBlockFile(scope: !69948, file: !3254, discriminator: 2)
!70071 = !DILocation(line: 1075, column: 13, scope: !70070)
!70072 = !DILocation(line: 2188, column: 22, scope: !69963, inlinedAt: !70071)
!70073 = !DILocation(line: 2178, column: 17, scope: !69970, inlinedAt: !70061)
!70074 = !DILocation(line: 2190, column: 17, scope: !69962, inlinedAt: !70065)
!70075 = !DILocation(line: 2178, column: 17, scope: !69968, inlinedAt: !70067)
!70076 = !DILocation(line: 2190, column: 17, scope: !69961, inlinedAt: !70071)
!70078 = !DILocalVariable(name: "self", arg: 1, scope: !69973, file: !4232, line: 3894, type: !3949)
!70079 = !{!70078}
!70080 = !DILocation(line: 1060, column: 50, scope: !69958)
!70081 = !DILocation(line: 3894, column: 14, scope: !69973, inlinedAt: !70080)
!70082 = !DILocalVariable(name: "self", arg: 1, scope: !69974, file: !4232, line: 1856, type: !3949)
!70083 = !{!70082}
!70084 = !DILocation(line: 3895, column: 14, scope: !69973, inlinedAt: !70080)
!70085 = !DILocation(line: 1856, column: 27, scope: !69974, inlinedAt: !70084)
!70086 = !DILocalVariable(name: "self", arg: 1, scope: !69975, file: !4232, line: 1974, type: !3949)
!70087 = !{!70086}
!70088 = !DILocation(line: 1873, column: 76, scope: !69974, inlinedAt: !70084)
!70089 = !DILocation(line: 1974, column: 25, scope: !69975, inlinedAt: !70088)
!70090 = !DILocalVariable(name: "self", arg: 1, scope: !69977, file: !4987, line: 157, type: !838)
!70091 = !{!712, !837}
!70092 = !DISubroutineType(types: !70091)
!70093 = !DILocalVariable(name: "first", scope: !69976, file: !4987, line: 158, type: !2900, align: 64)
!70094 = !{!70090, !70093}
!70095 = !DILocation(line: 1060, column: 72, scope: !69958)
!70096 = !DILocation(line: 0, scope: !69977, inlinedAt: !70095)
!70097 = !DILocation(line: 1977, column: 18, scope: !69975, inlinedAt: !70088)
!70098 = !DILocation(line: 305, column: 20, scope: !69979, inlinedAt: !70097)
!70099 = !DILocation(line: 622, column: 14, scope: !69980, inlinedAt: !70098)
!70100 = !DILocation(line: 0, scope: !69976, inlinedAt: !70095)
!70101 = !DILocation(line: 0, scope: !69958)
!70102 = !DILocalVariable(name: "self", arg: 1, scope: !69981, file: !4758, line: 2896, type: !2900)
!70103 = !{!70102}
end_hunk_12
