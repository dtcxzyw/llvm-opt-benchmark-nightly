Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/sst_dump_tool?download=true
inline.NumInlined: 5471
inline.NumDeleted: 2149
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7rocksdb11SSTDumpTool3RunEiPKPKcNS_7OptionsE:bb.a

bb.gf:                                            ; preds = %bb.gd
  %i.yb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.xu, ptr noundef nonnull dereferenceable(10) @.str.95) #35
  %i.yc = icmp eq i32 %i.yb, 0
  br i1 %i.yc, label %bb.gg, label %sub_0

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull @.str.97, ptr noundef nonnull align 1 dereferenceable(1) %85)
          to label %bb.gh unwind label %bb.gj

bb.gh:                                            ; preds = %bb.gg
  invoke void @_ZN7rocksdb25GetRocksBuildInfoAsStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %83, ptr noundef nonnull align 8 dereferenceable(32) %84, i1 noundef zeroext false)
          to label %bb.gi unwind label %bb.gk

bb.gi:                                            ; preds = %bb.gh
  %i.yd = load ptr, ptr %83, align 8, !tbaa !68
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.yd) ; 0 uses
  %i.ye = load ptr, ptr %83, align 8, !tbaa !68   ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 2 uses
  %i.yg = icmp eq ptr %i.ye, %i.yf
  br i1 %i.yg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit853, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i851

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i851: ; preds = %bb.gi
  %i.yh = load i64, ptr %i.yf, align 8, !tbaa !69
  %i.yi = add i64 %i.yh, 1
  call void @_ZdlPvm(ptr noundef %i.ye, i64 noundef %i.yi) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit853

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit853: ; preds = %bb.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i851
  %i.yj = load ptr, ptr %84, align 8, !tbaa !68   ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 2 uses
  %i.yl = icmp eq ptr %i.yj, %i.yk
  br i1 %i.yl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit856, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i854

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i854: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit853
  %i.ym = load i64, ptr %i.yk, align 8, !tbaa !69
  %i.yn = add i64 %i.ym, 1
  call void @_ZdlPvm(ptr noundef %i.yj, i64 noundef %i.yn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit856

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit856: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit853, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i854
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #32
  br label %.thread1479

bb.gj:                                            ; preds = %bb.gg
  %i.yo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859

bb.gk:                                            ; preds = %bb.gh
  %i.yp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yq = load ptr, ptr %84, align 8, !tbaa !68   ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 2 uses
  %i.ys = icmp eq ptr %i.yq, %i.yr
  br i1 %i.ys, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857: ; preds = %bb.gk
  %i.yt = load i64, ptr %i.yr, align 8, !tbaa !69
  %i.yu = add i64 %i.yt, 1
  call void @_ZdlPvm(ptr noundef %i.yq, i64 noundef %i.yu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857, %bb.gj
  %.pn504 = phi { ptr, i32 } [ %i.yo, %bb.gj ], [ %i.yp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857 ], [ %i.yp, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697

sub_0:                                            ; preds = %bb.gf
  %i.yv = load i8, ptr %i.xu, align 1
  %.not3800 = icmp eq i8 %i.yv, 45
  br i1 %.not3800, label %sub_1, label %bb.gm

sub_1:                                            ; preds = %sub_0
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xu, i64 1
  %i.yx = load i8, ptr %i.yw, align 1
  %.not3801 = icmp eq i8 %i.yx, 45
  br i1 %.not3801, label %.tail, label %.thread4369

.tail:                                            ; preds = %sub_1
  %i.yy = getelementptr inbounds nuw i8, ptr %i.xu, i64 2
  %i.yz = load i8, ptr %i.yy, align 1
  %i.za = icmp eq i8 %i.yz, 0
  br i1 %i.za, label %.preheader1587.preheader, label %.thread4369

.preheader1587.preheader:                         ; preds = %.tail
  %indvars.iv.next8473 = add nsw i64 %i.em, 1     ; 3 uses
  %i.zb = icmp slt i64 %indvars.iv.next8473, %i.ek
  br i1 %i.zb, label %.lr.ph8475, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit

.preheader1587:                                   ; preds = %.lr.ph8475
  %indvars.iv.next = add nsw i64 %indvars.iv.next8474, 1 ; 3 uses
  %i.zc = icmp slt i64 %indvars.iv.next, %i.ek
  br i1 %i.zc, label %.lr.ph8475, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit

.lr.ph8475:                                       ; preds = %.preheader1587.preheader, %.preheader1587
  %indvars.iv.next8474 = phi i64 [ %indvars.iv.next, %.preheader1587 ], [ %indvars.iv.next8473, %.preheader1587.preheader ] ; 2 uses
  %i.zd = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next8474
  invoke fastcc void @_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE12emplace_backIJRS5_S8_EEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.zd, i32 0)
          to label %.preheader1587 unwind label %bb.gl

bb.gl:                                            ; preds = %.lr.ph8475
  %i.ze = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697

.thread4369:                                      ; preds = %.tail, %sub_1
  %i.zf = load ptr, ptr @stderr, align 8, !tbaa !117
  %i.zg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zf, ptr noundef nonnull @.str.99, ptr noundef nonnull %i.xu) #36 ; 0 uses
  br label %.invoke

bb.gm:                                            ; preds = %sub_0
  invoke fastcc void @_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE12emplace_backIJRS5_S8_EEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.en, i32 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit: ; preds = %.preheader1587, %.preheader1587.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next8473, %.preheader1587.preheader ], [ %indvars.iv.next, %.preheader1587 ]
  %i.zi = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.ad, %bb.ac, %bb.t, %bb.q, %bb.p, %bb.o, %bb.n, %.invoke8476, %bb.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit, %bb.ab, %bb.z, %bb.x, %bb.j, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, %bb.gc, %bb.gb, %bb.fw, %bb.cy, %bb.cx, %bb.cx, %bb.cu, %bb.ct, %bb.ct, %bb.au, %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735, %bb.cw, %bb.ek, %bb.fh, %bb.fr, %bb.ex, %bb.ec, %bb.cs, %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722, %bb.ai, %bb.s
  %.1464 = phi i64 [ %.04633710.ph, %bb.gc ], [ %.04633710.ph, %.invoke8476 ], [ %.04633710.ph, %bb.cy ], [ %.04633710.ph, %bb.ab ], [ %.04633710.ph, %bb.gb ], [ %.04633710.ph, %bb.gm ], [ %.04633710.ph, %bb.ct ], [ %i.gk, %bb.s ], [ %.04633710.ph, %bb.ct ], [ %.04633710.ph, %bb.j ], [ %.04633710.ph, %bb.cx ], [ %.04633710.ph, %bb.fw ], [ %.04633710.ph, %bb.x ], [ %.04633710.ph, %bb.z ], [ %.04633710.ph, %bb.cx ], [ %.04633710.ph, %bb.ai ], [ %.04633710.ph, %bb.au ], [ %.04633710.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04633710.ph, %bb.bt ], [ %.04633710.ph, %bb.bx ], [ %.04633710.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04633710.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04633710.ph, %bb.cs ], [ %.04633710.ph, %bb.cu ], [ %.04633710.ph, %bb.cw ], [ %.04633710.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04633710.ph, %bb.ec ], [ %.04633710.ph, %bb.ek ], [ %.04633710.ph, %bb.ex ], [ %.04633710.ph, %bb.fh ], [ %.04633710.ph, %bb.fr ], [ %.04633710.ph, %bb.n ], [ %.04633710.ph, %bb.o ], [ %.04633710.ph, %bb.p ], [ %.04633710.ph, %bb.q ], [ %.04633710.ph, %bb.t ], [ %.04633710.ph, %bb.ac ], [ %.04633710.ph, %bb.ad ] ; 2 uses
  %.1459 = phi i1 [ %.04583711.ph, %bb.gc ], [ %.04583711.ph, %.invoke8476 ], [ %.04583711.ph, %bb.cy ], [ %.04583711.ph, %bb.ab ], [ %.04583711.ph, %bb.gb ], [ %.04583711.ph, %bb.gm ], [ %.04583711.ph, %bb.ct ], [ %.04583711.ph, %bb.s ], [ %.04583711.ph, %bb.ct ], [ %.04583711.ph, %bb.j ], [ %.04583711.ph, %bb.cx ], [ %.04583711.ph, %bb.fw ], [ %.04583711.ph, %bb.x ], [ %.04583711.ph, %bb.z ], [ %.04583711.ph, %bb.cx ], [ %.04583711.ph, %bb.ai ], [ %.04583711.ph, %bb.au ], [ %.04583711.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04583711.ph, %bb.bt ], [ %.04583711.ph, %bb.bx ], [ %.04583711.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04583711.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04583711.ph, %bb.cs ], [ %.04583711.ph, %bb.cu ], [ %.04583711.ph, %bb.cw ], [ %.04583711.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04583711.ph, %bb.ec ], [ %.04583711.ph, %bb.ek ], [ %.04583711.ph, %bb.ex ], [ %.04583711.ph, %bb.fh ], [ %.04583711.ph, %bb.fr ], [ %.04583711.ph, %bb.ad ], [ %.04583711.ph, %bb.ac ], [ true, %bb.t ], [ %.04583711.ph, %bb.q ], [ %.04583711.ph, %bb.p ], [ %.04583711.ph, %bb.o ], [ %.04583711.ph, %bb.n ] ; 2 uses
  %.1457 = phi i1 [ %.04563712.ph, %bb.gc ], [ %.04563712.ph, %.invoke8476 ], [ %.04563712.ph, %bb.cy ], [ %.04563712.ph, %bb.ab ], [ %.04563712.ph, %bb.gb ], [ %.04563712.ph, %bb.gm ], [ %.04563712.ph, %bb.ct ], [ %.04563712.ph, %bb.s ], [ %.04563712.ph, %bb.ct ], [ %.04563712.ph, %bb.j ], [ %.04563712.ph, %bb.cx ], [ %.04563712.ph, %bb.fw ], [ %.04563712.ph, %bb.x ], [ %.04563712.ph, %bb.z ], [ %.04563712.ph, %bb.cx ], [ %.04563712.ph, %bb.ai ], [ %.04563712.ph, %bb.au ], [ %.04563712.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04563712.ph, %bb.bt ], [ %.04563712.ph, %bb.bx ], [ %.04563712.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04563712.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04563712.ph, %bb.cs ], [ %.04563712.ph, %bb.cu ], [ %.04563712.ph, %bb.cw ], [ %.04563712.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04563712.ph, %bb.ec ], [ %.04563712.ph, %bb.ek ], [ %.04563712.ph, %bb.ex ], [ %.04563712.ph, %bb.fh ], [ %.04563712.ph, %bb.fr ], [ %.04563712.ph, %bb.ad ], [ %.04563712.ph, %bb.ac ], [ %.04563712.ph, %bb.t ], [ %.04563712.ph, %bb.q ], [ %.04563712.ph, %bb.p ], [ %.04563712.ph, %bb.o ], [ true, %bb.n ] ; 2 uses
  %.1455 = phi i1 [ %.04543713.ph, %bb.gc ], [ %.04543713.ph, %.invoke8476 ], [ %.04543713.ph, %bb.cy ], [ %.04543713.ph, %bb.ab ], [ %.04543713.ph, %bb.gb ], [ %.04543713.ph, %bb.gm ], [ %.04543713.ph, %bb.ct ], [ %.04543713.ph, %bb.s ], [ %.04543713.ph, %bb.ct ], [ %.04543713.ph, %bb.j ], [ %.04543713.ph, %bb.cx ], [ %.04543713.ph, %bb.fw ], [ %.04543713.ph, %bb.x ], [ %.04543713.ph, %bb.z ], [ %.04543713.ph, %bb.cx ], [ %.04543713.ph, %bb.ai ], [ %.04543713.ph, %bb.au ], [ %.04543713.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04543713.ph, %bb.bt ], [ %.04543713.ph, %bb.bx ], [ %.04543713.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04543713.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04543713.ph, %bb.cs ], [ %.04543713.ph, %bb.cu ], [ %.04543713.ph, %bb.cw ], [ %.04543713.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04543713.ph, %bb.ec ], [ %.04543713.ph, %bb.ek ], [ %.04543713.ph, %bb.ex ], [ %.04543713.ph, %bb.fh ], [ %.04543713.ph, %bb.fr ], [ %.04543713.ph, %bb.ad ], [ %.04543713.ph, %bb.ac ], [ %.04543713.ph, %bb.t ], [ %.04543713.ph, %bb.q ], [ %.04543713.ph, %bb.p ], [ true, %bb.o ], [ %.04543713.ph, %bb.n ] ; 2 uses
  %.1453 = phi i1 [ %.04523714.ph, %bb.gc ], [ %.04523714.ph, %.invoke8476 ], [ %.04523714.ph, %bb.cy ], [ %.04523714.ph, %bb.ab ], [ %.04523714.ph, %bb.gb ], [ %.04523714.ph, %bb.gm ], [ %.04523714.ph, %bb.ct ], [ %.04523714.ph, %bb.s ], [ %.04523714.ph, %bb.ct ], [ %.04523714.ph, %bb.j ], [ %.04523714.ph, %bb.cx ], [ %.04523714.ph, %bb.fw ], [ %.04523714.ph, %bb.x ], [ %.04523714.ph, %bb.z ], [ %.04523714.ph, %bb.cx ], [ %.04523714.ph, %bb.ai ], [ %.04523714.ph, %bb.au ], [ %.04523714.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04523714.ph, %bb.bt ], [ %.04523714.ph, %bb.bx ], [ %.04523714.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04523714.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04523714.ph, %bb.cs ], [ %.04523714.ph, %bb.cu ], [ %.04523714.ph, %bb.cw ], [ %.04523714.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04523714.ph, %bb.ec ], [ %.04523714.ph, %bb.ek ], [ %.04523714.ph, %bb.ex ], [ %.04523714.ph, %bb.fh ], [ %.04523714.ph, %bb.fr ], [ %.04523714.ph, %bb.ad ], [ %.04523714.ph, %bb.ac ], [ %.04523714.ph, %bb.t ], [ %.04523714.ph, %bb.q ], [ true, %bb.p ], [ %.04523714.ph, %bb.o ], [ %.04523714.ph, %bb.n ] ; 2 uses
  %.1451 = phi i1 [ %.04503715.ph, %bb.gc ], [ %.04503715.ph, %.invoke8476 ], [ %.04503715.ph, %bb.cy ], [ %.04503715.ph, %bb.ab ], [ %.04503715.ph, %bb.gb ], [ %.04503715.ph, %bb.gm ], [ %.04503715.ph, %bb.ct ], [ %.04503715.ph, %bb.s ], [ %.04503715.ph, %bb.ct ], [ %.04503715.ph, %bb.j ], [ %.04503715.ph, %bb.cx ], [ %.04503715.ph, %bb.fw ], [ %.04503715.ph, %bb.x ], [ %.04503715.ph, %bb.z ], [ %.04503715.ph, %bb.cx ], [ %.04503715.ph, %bb.ai ], [ %.04503715.ph, %bb.au ], [ %.04503715.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04503715.ph, %bb.bt ], [ %.04503715.ph, %bb.bx ], [ %.04503715.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04503715.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04503715.ph, %bb.cs ], [ %.04503715.ph, %bb.cu ], [ %.04503715.ph, %bb.cw ], [ %.04503715.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04503715.ph, %bb.ec ], [ %.04503715.ph, %bb.ek ], [ %.04503715.ph, %bb.ex ], [ %.04503715.ph, %bb.fh ], [ %.04503715.ph, %bb.fr ], [ %.04503715.ph, %bb.ad ], [ %.04503715.ph, %bb.ac ], [ %.04503715.ph, %bb.t ], [ true, %bb.q ], [ %.04503715.ph, %bb.p ], [ %.04503715.ph, %bb.o ], [ %.04503715.ph, %bb.n ] ; 2 uses
  %.1449 = phi i8 [ %.04483716.ph, %bb.gc ], [ %.04483716.ph, %.invoke8476 ], [ %.04483716.ph, %bb.cy ], [ %.04483716.ph, %bb.ab ], [ %.04483716.ph, %bb.gb ], [ %.04483716.ph, %bb.gm ], [ %.04483716.ph, %bb.ct ], [ %.04483716.ph, %bb.s ], [ %.04483716.ph, %bb.ct ], [ %.04483716.ph, %bb.j ], [ %.04483716.ph, %bb.cx ], [ %.04483716.ph, %bb.fw ], [ 1, %bb.x ], [ %.04483716.ph, %bb.z ], [ %.04483716.ph, %bb.cx ], [ %.04483716.ph, %bb.ai ], [ %.04483716.ph, %bb.au ], [ %.04483716.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04483716.ph, %bb.bt ], [ %.04483716.ph, %bb.bx ], [ %.04483716.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04483716.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04483716.ph, %bb.cs ], [ %.04483716.ph, %bb.cu ], [ %.04483716.ph, %bb.cw ], [ %.04483716.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04483716.ph, %bb.ec ], [ %.04483716.ph, %bb.ek ], [ %.04483716.ph, %bb.ex ], [ %.04483716.ph, %bb.fh ], [ %.04483716.ph, %bb.fr ], [ %.04483716.ph, %bb.n ], [ %.04483716.ph, %bb.o ], [ %.04483716.ph, %bb.p ], [ %.04483716.ph, %bb.q ], [ %.04483716.ph, %bb.t ], [ %.04483716.ph, %bb.ac ], [ %.04483716.ph, %bb.ad ] ; 2 uses
  %.1447 = phi i8 [ %.04463717.ph, %bb.gc ], [ %.04463717.ph, %.invoke8476 ], [ %.04463717.ph, %bb.cy ], [ %.04463717.ph, %bb.ab ], [ %.04463717.ph, %bb.gb ], [ %.04463717.ph, %bb.gm ], [ %.04463717.ph, %bb.ct ], [ %.04463717.ph, %bb.s ], [ %.04463717.ph, %bb.ct ], [ %.04463717.ph, %bb.j ], [ %.04463717.ph, %bb.cx ], [ %.04463717.ph, %bb.fw ], [ %.04463717.ph, %bb.x ], [ 1, %bb.z ], [ %.04463717.ph, %bb.cx ], [ %.04463717.ph, %bb.ai ], [ %.04463717.ph, %bb.au ], [ %.04463717.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04463717.ph, %bb.bt ], [ %.04463717.ph, %bb.bx ], [ %.04463717.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04463717.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04463717.ph, %bb.cs ], [ %.04463717.ph, %bb.cu ], [ %.04463717.ph, %bb.cw ], [ %.04463717.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04463717.ph, %bb.ec ], [ %.04463717.ph, %bb.ek ], [ %.04463717.ph, %bb.ex ], [ %.04463717.ph, %bb.fh ], [ %.04463717.ph, %bb.fr ], [ %.04463717.ph, %bb.n ], [ %.04463717.ph, %bb.o ], [ %.04463717.ph, %bb.p ], [ %.04463717.ph, %bb.q ], [ %.04463717.ph, %bb.t ], [ %.04463717.ph, %bb.ac ], [ %.04463717.ph, %bb.ad ] ; 2 uses
  %.1445 = phi i8 [ %.04443718.ph, %bb.gc ], [ %.04443718.ph, %.invoke8476 ], [ %.04443718.ph, %bb.cy ], [ 1, %bb.ab ], [ %.04443718.ph, %bb.gb ], [ %.04443718.ph, %bb.gm ], [ %.04443718.ph, %bb.ct ], [ %.04443718.ph, %bb.s ], [ %.04443718.ph, %bb.ct ], [ %.04443718.ph, %bb.j ], [ %.04443718.ph, %bb.cx ], [ %.04443718.ph, %bb.fw ], [ %.04443718.ph, %bb.x ], [ %.04443718.ph, %bb.z ], [ %.04443718.ph, %bb.cx ], [ %.04443718.ph, %bb.ai ], [ %.04443718.ph, %bb.au ], [ %.04443718.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04443718.ph, %bb.bt ], [ %.04443718.ph, %bb.bx ], [ %.04443718.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04443718.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04443718.ph, %bb.cs ], [ %.04443718.ph, %bb.cu ], [ %.04443718.ph, %bb.cw ], [ %.04443718.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04443718.ph, %bb.ec ], [ %.04443718.ph, %bb.ek ], [ %.04443718.ph, %bb.ex ], [ %.04443718.ph, %bb.fh ], [ %.04443718.ph, %bb.fr ], [ %.04443718.ph, %bb.n ], [ %.04443718.ph, %bb.o ], [ %.04443718.ph, %bb.p ], [ %.04443718.ph, %bb.q ], [ %.04443718.ph, %bb.t ], [ %.04443718.ph, %bb.ac ], [ %.04443718.ph, %bb.ad ] ; 2 uses
  %.1443 = phi i1 [ %.04423719.ph, %bb.gc ], [ %.04423719.ph, %.invoke8476 ], [ %.04423719.ph, %bb.cy ], [ %.04423719.ph, %bb.ab ], [ %.04423719.ph, %bb.gb ], [ %.04423719.ph, %bb.gm ], [ %.04423719.ph, %bb.ct ], [ %.04423719.ph, %bb.s ], [ %.04423719.ph, %bb.ct ], [ %.04423719.ph, %bb.j ], [ %.04423719.ph, %bb.cx ], [ %.04423719.ph, %bb.fw ], [ %.04423719.ph, %bb.x ], [ %.04423719.ph, %bb.z ], [ %.04423719.ph, %bb.cx ], [ %.04423719.ph, %bb.ai ], [ %.04423719.ph, %bb.au ], [ %.04423719.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04423719.ph, %bb.bt ], [ %.04423719.ph, %bb.bx ], [ %.04423719.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04423719.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04423719.ph, %bb.cs ], [ %.04423719.ph, %bb.cu ], [ %.04423719.ph, %bb.cw ], [ %.04423719.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04423719.ph, %bb.ec ], [ %.04423719.ph, %bb.ek ], [ %.04423719.ph, %bb.ex ], [ %.04423719.ph, %bb.fh ], [ %.04423719.ph, %bb.fr ], [ %.04423719.ph, %bb.ad ], [ true, %bb.ac ], [ %.04423719.ph, %bb.t ], [ %.04423719.ph, %bb.q ], [ %.04423719.ph, %bb.p ], [ %.04423719.ph, %bb.o ], [ %.04423719.ph, %bb.n ] ; 2 uses
  %.1441 = phi i8 [ %.04403720.ph, %bb.gc ], [ %.04403720.ph, %.invoke8476 ], [ %.04403720.ph, %bb.cy ], [ %.04403720.ph, %bb.ab ], [ %.04403720.ph, %bb.gb ], [ %.04403720.ph, %bb.gm ], [ %.04403720.ph, %bb.ct ], [ %.04403720.ph, %bb.s ], [ %.04403720.ph, %bb.ct ], [ %.04403720.ph, %bb.j ], [ %.04403720.ph, %bb.cx ], [ %.04403720.ph, %bb.fw ], [ %.04403720.ph, %bb.x ], [ %.04403720.ph, %bb.z ], [ %.04403720.ph, %bb.cx ], [ %.04403720.ph, %bb.ai ], [ %.04403720.ph, %bb.au ], [ %.04403720.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04403720.ph, %bb.bt ], [ %.04403720.ph, %bb.bx ], [ %.04403720.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04403720.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04403720.ph, %bb.cs ], [ %.04403720.ph, %bb.cu ], [ %.04403720.ph, %bb.cw ], [ %.04403720.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04403720.ph, %bb.ec ], [ %.04403720.ph, %bb.ek ], [ %.04403720.ph, %bb.ex ], [ %.04403720.ph, %bb.fh ], [ %.04403720.ph, %bb.fr ], [ 1, %bb.ad ], [ %.04403720.ph, %bb.ac ], [ %.04403720.ph, %bb.t ], [ %.04403720.ph, %bb.q ], [ %.04403720.ph, %bb.p ], [ %.04403720.ph, %bb.o ], [ %.04403720.ph, %bb.n ] ; 2 uses
  %.1439 = phi i1 [ true, %bb.gc ], [ %.04383721.ph, %.invoke8476 ], [ %.04383721.ph, %bb.cy ], [ %.04383721.ph, %bb.ab ], [ %.04383721.ph, %bb.gb ], [ %.04383721.ph, %bb.gm ], [ %.04383721.ph, %bb.ct ], [ %.04383721.ph, %bb.s ], [ %.04383721.ph, %bb.ct ], [ %.04383721.ph, %bb.j ], [ %.04383721.ph, %bb.cx ], [ %.04383721.ph, %bb.fw ], [ %.04383721.ph, %bb.x ], [ %.04383721.ph, %bb.z ], [ %.04383721.ph, %bb.cx ], [ %.04383721.ph, %bb.ai ], [ %.04383721.ph, %bb.au ], [ %.04383721.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04383721.ph, %bb.bt ], [ %.04383721.ph, %bb.bx ], [ %.04383721.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04383721.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04383721.ph, %bb.cs ], [ %.04383721.ph, %bb.cu ], [ %.04383721.ph, %bb.cw ], [ %.04383721.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04383721.ph, %bb.ec ], [ %.04383721.ph, %bb.ek ], [ %.04383721.ph, %bb.ex ], [ %.04383721.ph, %bb.fh ], [ %.04383721.ph, %bb.fr ], [ %.04383721.ph, %bb.n ], [ %.04383721.ph, %bb.o ], [ %.04383721.ph, %bb.p ], [ %.04383721.ph, %bb.q ], [ %.04383721.ph, %bb.t ], [ %.04383721.ph, %bb.ac ], [ %.04383721.ph, %bb.ad ] ; 2 uses
  %.1437 = phi i8 [ %.04363722, %bb.gc ], [ %.04363722, %.invoke8476 ], [ %.04363722, %bb.cy ], [ %.04363722, %bb.ab ], [ %.04363722, %bb.gb ], [ %.04363722, %bb.gm ], [ %.04363722, %bb.ct ], [ %.04363722, %bb.s ], [ %.04363722, %bb.ct ], [ %.04363722, %bb.j ], [ %.04363722, %bb.cx ], [ %.04363722, %bb.fw ], [ %.04363722, %bb.x ], [ %.04363722, %bb.z ], [ %.04363722, %bb.cx ], [ %.04363722, %bb.ai ], [ %.04363722, %bb.au ], [ %.04363722, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04363722, %bb.bt ], [ %.04363722, %bb.bx ], [ %.04363722, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04363722, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04363722, %bb.cs ], [ %.04363722, %bb.cu ], [ %.04363722, %bb.cw ], [ %.04363722, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ 1, %bb.ec ], [ %.04363722, %bb.ek ], [ %.04363722, %bb.ex ], [ %.04363722, %bb.fh ], [ %.04363722, %bb.fr ], [ %.04363722, %bb.n ], [ %.04363722, %bb.o ], [ %.04363722, %bb.p ], [ %.04363722, %bb.q ], [ %.04363722, %bb.t ], [ %.04363722, %bb.ac ], [ %.04363722, %bb.ad ] ; 2 uses
  %.1435 = phi i8 [ %.04343723, %bb.gc ], [ %.04343723, %.invoke8476 ], [ %.04343723, %bb.cy ], [ %.04343723, %bb.ab ], [ %.04343723, %bb.gb ], [ %.04343723, %bb.gm ], [ %.04343723, %bb.ct ], [ %.04343723, %bb.s ], [ %.04343723, %bb.ct ], [ %.04343723, %bb.j ], [ %.04343723, %bb.cx ], [ %.04343723, %bb.fw ], [ %.04343723, %bb.x ], [ %.04343723, %bb.z ], [ %.04343723, %bb.cx ], [ %.04343723, %bb.ai ], [ %.04343723, %bb.au ], [ %.04343723, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04343723, %bb.bt ], [ %.04343723, %bb.bx ], [ %.04343723, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04343723, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04343723, %bb.cs ], [ %.04343723, %bb.cu ], [ %.04343723, %bb.cw ], [ %.04343723, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04343723, %bb.ec ], [ 1, %bb.ek ], [ %.04343723, %bb.ex ], [ %.04343723, %bb.fh ], [ %.04343723, %bb.fr ], [ %.04343723, %bb.n ], [ %.04343723, %bb.o ], [ %.04343723, %bb.p ], [ %.04343723, %bb.q ], [ %.04343723, %bb.t ], [ %.04343723, %bb.ac ], [ %.04343723, %bb.ad ] ; 2 uses
  %.1433 = phi i64 [ %.04323724.ph, %bb.gc ], [ %.04323724.ph, %.invoke8476 ], [ %.04323724.ph, %bb.cy ], [ %.04323724.ph, %bb.ab ], [ %.04323724.ph, %bb.gb ], [ %.04323724.ph, %bb.gm ], [ %.04323724.ph, %bb.ct ], [ %.04323724.ph, %bb.s ], [ %.04323724.ph, %bb.ct ], [ %.04323724.ph, %bb.j ], [ %.04323724.ph, %bb.cx ], [ %.04323724.ph, %bb.fw ], [ %.04323724.ph, %bb.x ], [ %.04323724.ph, %bb.z ], [ %.04323724.ph, %bb.cx ], [ %i.im, %bb.ai ], [ %.04323724.ph, %bb.au ], [ %.04323724.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04323724.ph, %bb.bt ], [ %.04323724.ph, %bb.bx ], [ %.04323724.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04323724.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04323724.ph, %bb.cs ], [ %.04323724.ph, %bb.cu ], [ %.04323724.ph, %bb.cw ], [ %.04323724.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04323724.ph, %bb.ec ], [ %.04323724.ph, %bb.ek ], [ %.04323724.ph, %bb.ex ], [ %.04323724.ph, %bb.fh ], [ %.04323724.ph, %bb.fr ], [ %.04323724.ph, %bb.n ], [ %.04323724.ph, %bb.o ], [ %.04323724.ph, %bb.p ], [ %.04323724.ph, %bb.q ], [ %.04323724.ph, %bb.t ], [ %.04323724.ph, %bb.ac ], [ %.04323724.ph, %bb.ad ] ; 2 uses
  %.1431 = phi i64 [ %.04303725.ph, %bb.gc ], [ %.04303725.ph, %.invoke8476 ], [ %.04303725.ph, %bb.cy ], [ %.04303725.ph, %bb.ab ], [ %.04303725.ph, %bb.gb ], [ %.04303725.ph, %bb.gm ], [ %.04303725.ph, %bb.ct ], [ %.04303725.ph, %bb.s ], [ %.04303725.ph, %bb.ct ], [ %.04303725.ph, %bb.j ], [ %.04303725.ph, %bb.cx ], [ %.04303725.ph, %bb.fw ], [ %.04303725.ph, %bb.x ], [ %.04303725.ph, %bb.z ], [ %.04303725.ph, %bb.cx ], [ %.04303725.ph, %bb.ai ], [ %i.jt, %bb.au ], [ %.04303725.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04303725.ph, %bb.bt ], [ %.04303725.ph, %bb.bx ], [ %.04303725.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04303725.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04303725.ph, %bb.cs ], [ %.04303725.ph, %bb.cu ], [ %.04303725.ph, %bb.cw ], [ %.04303725.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04303725.ph, %bb.ec ], [ %.04303725.ph, %bb.ek ], [ %.04303725.ph, %bb.ex ], [ %.04303725.ph, %bb.fh ], [ %.04303725.ph, %bb.fr ], [ %.04303725.ph, %bb.n ], [ %.04303725.ph, %bb.o ], [ %.04303725.ph, %bb.p ], [ %.04303725.ph, %bb.q ], [ %.04303725.ph, %bb.t ], [ %.04303725.ph, %bb.ac ], [ %.04303725.ph, %bb.ad ] ; 2 uses
  %.1429 = phi i8 [ %.04283726.ph, %bb.gc ], [ %.04283726.ph, %.invoke8476 ], [ %.04283726.ph, %bb.cy ], [ %.04283726.ph, %bb.ab ], [ %.04283726.ph, %bb.gb ], [ %.04283726.ph, %bb.gm ], [ 1, %bb.ct ], [ %.04283726.ph, %bb.s ], [ 1, %bb.ct ], [ %.04283726.ph, %bb.j ], [ %.04283726.ph, %bb.cx ], [ %.04283726.ph, %bb.fw ], [ %.04283726.ph, %bb.x ], [ %.04283726.ph, %bb.z ], [ %.04283726.ph, %bb.cx ], [ %.04283726.ph, %bb.ai ], [ %.04283726.ph, %bb.au ], [ %.04283726.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04283726.ph, %bb.bt ], [ %.04283726.ph, %bb.bx ], [ %.04283726.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04283726.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04283726.ph, %bb.cs ], [ %i.op, %bb.cu ], [ %.04283726.ph, %bb.cw ], [ %.04283726.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04283726.ph, %bb.ec ], [ %.04283726.ph, %bb.ek ], [ %.04283726.ph, %bb.ex ], [ %.04283726.ph, %bb.fh ], [ %.04283726.ph, %bb.fr ], [ %.04283726.ph, %bb.n ], [ %.04283726.ph, %bb.o ], [ %.04283726.ph, %bb.p ], [ %.04283726.ph, %bb.q ], [ %.04283726.ph, %bb.t ], [ %.04283726.ph, %bb.ac ], [ %.04283726.ph, %bb.ad ] ; 2 uses
  %.1427 = phi i8 [ %.04263727.ph, %bb.gc ], [ %.04263727.ph, %.invoke8476 ], [ %i.ox, %bb.cy ], [ %.04263727.ph, %bb.ab ], [ %.04263727.ph, %bb.gb ], [ %.04263727.ph, %bb.gm ], [ %.04263727.ph, %bb.ct ], [ %.04263727.ph, %bb.s ], [ %.04263727.ph, %bb.ct ], [ %.04263727.ph, %bb.j ], [ 1, %bb.cx ], [ %.04263727.ph, %bb.fw ], [ %.04263727.ph, %bb.x ], [ %.04263727.ph, %bb.z ], [ 1, %bb.cx ], [ %.04263727.ph, %bb.ai ], [ %.04263727.ph, %bb.au ], [ %.04263727.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.04263727.ph, %bb.bt ], [ %.04263727.ph, %bb.bx ], [ %.04263727.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.04263727.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.04263727.ph, %bb.cs ], [ %.04263727.ph, %bb.cu ], [ %.04263727.ph, %bb.cw ], [ %.04263727.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.04263727.ph, %bb.ec ], [ %.04263727.ph, %bb.ek ], [ %.04263727.ph, %bb.ex ], [ %.04263727.ph, %bb.fh ], [ %.04263727.ph, %bb.fr ], [ %.04263727.ph, %bb.n ], [ %.04263727.ph, %bb.o ], [ %.04263727.ph, %bb.p ], [ %.04263727.ph, %bb.q ], [ %.04263727.ph, %bb.t ], [ %.04263727.ph, %bb.ac ], [ %.04263727.ph, %bb.ad ] ; 2 uses
  %.1390 = phi i32 [ %.03893728, %bb.gc ], [ %.03893728, %.invoke8476 ], [ %.03893728, %bb.cy ], [ %.03893728, %bb.ab ], [ %.03893728, %bb.gb ], [ %.03893728, %bb.gm ], [ %.03893728, %bb.ct ], [ %.03893728, %bb.s ], [ %.03893728, %bb.ct ], [ %.03893728, %bb.j ], [ %.03893728, %bb.cx ], [ %.03893728, %bb.fw ], [ %.03893728, %bb.x ], [ %.03893728, %bb.z ], [ %.03893728, %bb.cx ], [ %.03893728, %bb.ai ], [ %.03893728, %bb.au ], [ %.03893728, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.03893728, %bb.bt ], [ %.03893728, %bb.bx ], [ %.03893728, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.03893728, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.03893728, %bb.cs ], [ %.03893728, %bb.cu ], [ %.03893728, %bb.cw ], [ %.03893728, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %i.sl, %bb.ec ], [ %.03893728, %bb.ek ], [ %.03893728, %bb.ex ], [ %.03893728, %bb.fh ], [ %.03893728, %bb.fr ], [ %.03893728, %bb.n ], [ %.03893728, %bb.o ], [ %.03893728, %bb.p ], [ %.03893728, %bb.q ], [ %.03893728, %bb.t ], [ %.03893728, %bb.ac ], [ %.03893728, %bb.ad ] ; 2 uses
  %.1388 = phi i32 [ %.03873729, %bb.gc ], [ %.03873729, %.invoke8476 ], [ %.03873729, %bb.cy ], [ %.03873729, %bb.ab ], [ %.03873729, %bb.gb ], [ %.03873729, %bb.gm ], [ %.03873729, %bb.ct ], [ %.03873729, %bb.s ], [ %.03873729, %bb.ct ], [ %.03873729, %bb.j ], [ %.03873729, %bb.cx ], [ %.03873729, %bb.fw ], [ %.03873729, %bb.x ], [ %.03873729, %bb.z ], [ %.03873729, %bb.cx ], [ %.03873729, %bb.ai ], [ %.03873729, %bb.au ], [ %.03873729, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.03873729, %bb.bt ], [ %.03873729, %bb.bx ], [ %.03873729, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.03873729, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.03873729, %bb.cs ], [ %.03873729, %bb.cu ], [ %.03873729, %bb.cw ], [ %.03873729, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.03873729, %bb.ec ], [ %i.ti, %bb.ek ], [ %.03873729, %bb.ex ], [ %.03873729, %bb.fh ], [ %.03873729, %bb.fr ], [ %.03873729, %bb.n ], [ %.03873729, %bb.o ], [ %.03873729, %bb.p ], [ %.03873729, %bb.q ], [ %.03873729, %bb.t ], [ %.03873729, %bb.ac ], [ %.03873729, %bb.ad ] ; 2 uses
  %.1386 = phi i32 [ %.03853730.ph, %bb.gc ], [ %.03853730.ph, %.invoke8476 ], [ %.03853730.ph, %bb.cy ], [ %.03853730.ph, %bb.ab ], [ %.03853730.ph, %bb.gb ], [ %.03853730.ph, %bb.gm ], [ %.03853730.ph, %bb.ct ], [ %.03853730.ph, %bb.s ], [ %.03853730.ph, %bb.ct ], [ %.03853730.ph, %bb.j ], [ %.03853730.ph, %bb.cx ], [ %.03853730.ph, %bb.fw ], [ %.03853730.ph, %bb.x ], [ %.03853730.ph, %bb.z ], [ %.03853730.ph, %bb.cx ], [ %.03853730.ph, %bb.ai ], [ %.03853730.ph, %bb.au ], [ %.03853730.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.03853730.ph, %bb.bt ], [ %.03853730.ph, %bb.bx ], [ %.03853730.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.03853730.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.03853730.ph, %bb.cs ], [ %.03853730.ph, %bb.cu ], [ %.03853730.ph, %bb.cw ], [ %.03853730.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.03853730.ph, %bb.ec ], [ %.03853730.ph, %bb.ek ], [ %i.ut, %bb.ex ], [ %.03853730.ph, %bb.fh ], [ %.03853730.ph, %bb.fr ], [ %.03853730.ph, %bb.n ], [ %.03853730.ph, %bb.o ], [ %.03853730.ph, %bb.p ], [ %.03853730.ph, %bb.q ], [ %.03853730.ph, %bb.t ], [ %.03853730.ph, %bb.ac ], [ %.03853730.ph, %bb.ad ] ; 2 uses
  %.1384 = phi i32 [ %.03833731.ph, %bb.gc ], [ %.03833731.ph, %.invoke8476 ], [ %.03833731.ph, %bb.cy ], [ %.03833731.ph, %bb.ab ], [ %.03833731.ph, %bb.gb ], [ %.03833731.ph, %bb.gm ], [ %.03833731.ph, %bb.ct ], [ %.03833731.ph, %bb.s ], [ %.03833731.ph, %bb.ct ], [ %.03833731.ph, %bb.j ], [ %.03833731.ph, %bb.cx ], [ %.03833731.ph, %bb.fw ], [ %.03833731.ph, %bb.x ], [ %.03833731.ph, %bb.z ], [ %.03833731.ph, %bb.cx ], [ %.03833731.ph, %bb.ai ], [ %.03833731.ph, %bb.au ], [ %.03833731.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.03833731.ph, %bb.bt ], [ %.03833731.ph, %bb.bx ], [ %.03833731.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.03833731.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.03833731.ph, %bb.cs ], [ %.03833731.ph, %bb.cu ], [ %.03833731.ph, %bb.cw ], [ %.03833731.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.03833731.ph, %bb.ec ], [ %.03833731.ph, %bb.ek ], [ %.03833731.ph, %bb.ex ], [ %.03833731.ph, %bb.fh ], [ %i.wt, %bb.fr ], [ %.03833731.ph, %bb.n ], [ %.03833731.ph, %bb.o ], [ %.03833731.ph, %bb.p ], [ %.03833731.ph, %bb.q ], [ %.03833731.ph, %bb.t ], [ %.03833731.ph, %bb.ac ], [ %.03833731.ph, %bb.ad ] ; 2 uses
  %.1382 = phi i64 [ %.03813732.ph, %bb.gc ], [ %.03813732.ph, %.invoke8476 ], [ %.03813732.ph, %bb.cy ], [ %.03813732.ph, %bb.ab ], [ %.03813732.ph, %bb.gb ], [ %.03813732.ph, %bb.gm ], [ %.03813732.ph, %bb.ct ], [ %.03813732.ph, %bb.s ], [ %.03813732.ph, %bb.ct ], [ %.03813732.ph, %bb.j ], [ %.03813732.ph, %bb.cx ], [ %i.xe, %bb.fw ], [ %.03813732.ph, %bb.x ], [ %.03813732.ph, %bb.z ], [ %.03813732.ph, %bb.cx ], [ %.03813732.ph, %bb.ai ], [ %.03813732.ph, %bb.au ], [ %.03813732.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.03813732.ph, %bb.bt ], [ %.03813732.ph, %bb.bx ], [ %.03813732.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.03813732.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.03813732.ph, %bb.cs ], [ %.03813732.ph, %bb.cu ], [ %.03813732.ph, %bb.cw ], [ %.03813732.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.03813732.ph, %bb.ec ], [ %.03813732.ph, %bb.ek ], [ %.03813732.ph, %bb.ex ], [ %.03813732.ph, %bb.fh ], [ %.03813732.ph, %bb.fr ], [ %.03813732.ph, %bb.n ], [ %.03813732.ph, %bb.o ], [ %.03813732.ph, %bb.p ], [ %.03813732.ph, %bb.q ], [ %.03813732.ph, %bb.t ], [ %.03813732.ph, %bb.ac ], [ %.03813732.ph, %bb.ad ] ; 2 uses
  %.1380 = phi i8 [ %.03793733.ph, %bb.gc ], [ %.03793733.ph, %.invoke8476 ], [ %.03793733.ph, %bb.cy ], [ %.03793733.ph, %bb.ab ], [ 1, %bb.gb ], [ %.03793733.ph, %bb.gm ], [ %.03793733.ph, %bb.ct ], [ %.03793733.ph, %bb.s ], [ %.03793733.ph, %bb.ct ], [ %.03793733.ph, %bb.j ], [ %.03793733.ph, %bb.cx ], [ %.03793733.ph, %bb.fw ], [ %.03793733.ph, %bb.x ], [ %.03793733.ph, %bb.z ], [ %.03793733.ph, %bb.cx ], [ %.03793733.ph, %bb.ai ], [ %.03793733.ph, %bb.au ], [ %.03793733.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.03793733.ph, %bb.bt ], [ %.03793733.ph, %bb.bx ], [ %.03793733.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.03793733.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.03793733.ph, %bb.cs ], [ %.03793733.ph, %bb.cu ], [ %.03793733.ph, %bb.cw ], [ %.03793733.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.03793733.ph, %bb.ec ], [ %.03793733.ph, %bb.ek ], [ %.03793733.ph, %bb.ex ], [ %.03793733.ph, %bb.fh ], [ %.03793733.ph, %bb.fr ], [ %.03793733.ph, %bb.n ], [ %.03793733.ph, %bb.o ], [ %.03793733.ph, %bb.p ], [ %.03793733.ph, %bb.q ], [ %.03793733.ph, %bb.t ], [ %.03793733.ph, %bb.ac ], [ %.03793733.ph, %bb.ad ] ; 2 uses
  %.1378 = phi i32 [ %.03773734.ph, %bb.gc ], [ %.03773734.ph, %.invoke8476 ], [ %.03773734.ph, %bb.cy ], [ %.03773734.ph, %bb.ab ], [ %.03773734.ph, %bb.gb ], [ %.03773734.ph, %bb.gm ], [ %.03773734.ph, %bb.ct ], [ %.03773734.ph, %bb.s ], [ %.03773734.ph, %bb.ct ], [ %.03773734.ph, %bb.j ], [ %.03773734.ph, %bb.cx ], [ %.03773734.ph, %bb.fw ], [ %.03773734.ph, %bb.x ], [ %.03773734.ph, %bb.z ], [ %.03773734.ph, %bb.cx ], [ %.03773734.ph, %bb.ai ], [ %.03773734.ph, %bb.au ], [ %.03773734.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.03773734.ph, %bb.bt ], [ %.03773734.ph, %bb.bx ], [ %.03773734.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.03773734.ph, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.03773734.ph, %bb.cs ], [ %.03773734.ph, %bb.cu ], [ %.03773734.ph, %bb.cw ], [ %.03773734.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.03773734.ph, %bb.ec ], [ %.03773734.ph, %bb.ek ], [ %.03773734.ph, %bb.ex ], [ %i.vt, %bb.fh ], [ %.03773734.ph, %bb.fr ], [ %.03773734.ph, %bb.n ], [ %.03773734.ph, %bb.o ], [ %.03773734.ph, %bb.p ], [ %.03773734.ph, %bb.q ], [ %.03773734.ph, %bb.t ], [ %.03773734.ph, %bb.ac ], [ %.03773734.ph, %bb.ad ] ; 2 uses
  %.2292 = phi i32 [ %.02903735, %bb.gc ], [ %.02903735, %.invoke8476 ], [ %.02903735, %bb.cy ], [ %.02903735, %bb.ab ], [ %.02903735, %bb.gb ], [ %.02903735, %bb.gm ], [ %.02903735, %bb.ct ], [ %.02903735, %bb.s ], [ %.02903735, %bb.ct ], [ %.02903735, %bb.j ], [ %.02903735, %bb.cx ], [ %.02903735, %bb.fw ], [ %.02903735, %bb.x ], [ %.02903735, %bb.z ], [ %.02903735, %bb.cx ], [ %.02903735, %bb.ai ], [ %.02903735, %bb.au ], [ %.02903735, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.02903735, %bb.bt ], [ %.02903735, %bb.bx ], [ %.02903735, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.02903735, %_ZNSt6vectorISt4pairIPKcZN7rocksdb11SSTDumpTool3RunEiPKS2_NS3_7OptionsEE9DirVsFileESaIS9_EE17_M_realloc_insertIJS2_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ], [ %.02903735, %bb.cs ], [ %.02903735, %bb.cu ], [ %.02903735, %bb.cw ], [ %i.zi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.loopexit ], [ %.02903735, %bb.ec ], [ %.02903735, %bb.ek ], [ %.02903735, %bb.ex ], [ %.02903735, %bb.fh ], [ %.02903735, %bb.fr ], [ %.02903735, %bb.n ], [ %.02903735, %bb.o ], [ %.02903735, %bb.p ], [ %.02903735, %bb.q ], [ %.02903735, %bb.t ], [ %.02903735, %bb.ac ], [ %.02903735, %bb.ad ]
  %i.zj = add nsw i32 %.2292, 1                   ; 2 uses
  %.not = icmp slt i32 %i.zj, %1
  br i1 %.not, label %.outer, label %._crit_edge, !llvm.loop !532

.outer:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %.lr.ph
  %.02903735.ph = phi i32 [ %i.zj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 1, %.lr.ph ]
  %.03773734.ph = phi i32 [ %.1378, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 1, %.lr.ph ] ; 38 uses
  %.03793733.ph = phi i8 [ %.1380, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %.lr.ph ] ; 38 uses
  %.03813732.ph = phi i64 [ %.1382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %.lr.ph ] ; 38 uses
  %.03833731.ph = phi i32 [ %.1384, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %.lr.ph ] ; 38 uses
  %.03853730.ph = phi i32 [ %.1386, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %.lr.ph ] ; 38 uses
  %.03873729.ph = phi i32 [ %.1388, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 32767, %.lr.ph ]
  %.03893728.ph = phi i32 [ %.1390, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 32767, %.lr.ph ]
  %.04263727.ph = phi i8 [ %.1427, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %.lr.ph ] ; 36 uses
  %.04283726.ph = phi i8 [ %.1429, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 1, %.lr.ph ] ; 36 uses
  %.04303725.ph = phi i64 [ %.1431, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 2097152, %.lr.ph ] ; 38 uses
  %.04323724.ph = phi i64 [ %.1433, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 16384, %.lr.ph ] ; 38 uses
  %.04343723.ph = phi i8 [ %.1435, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %.lr.ph ]
  %.04363722.ph = phi i8 [ %.1437, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %.lr.ph ]
  %.04383721.ph = phi i1 [ %.1439, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ false, %.lr.ph ] ; 38 uses
  %.04403720.ph = phi i8 [ %.1441, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %.lr.ph ] ; 38 uses
  %.04423719.ph = phi i1 [ %.1443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ false, %.lr.ph ] ; 38 uses
  %.04443718.ph = phi i8 [ %.1445, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %.lr.ph ] ; 38 uses
  %.04463717.ph = phi i8 [ %.1447, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %.lr.ph ] ; 38 uses
  %.04483716.ph = phi i8 [ %.1449, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %.lr.ph ] ; 38 uses
  %.04503715.ph = phi i1 [ %.1451, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ false, %.lr.ph ] ; 38 uses
  %.04523714.ph = phi i1 [ %.1453, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ false, %.lr.ph ] ; 38 uses
  %.04543713.ph = phi i1 [ %.1455, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ false, %.lr.ph ] ; 38 uses
  %.04563712.ph = phi i1 [ %.1457, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ false, %.lr.ph ] ; 38 uses
  %.04583711.ph = phi i1 [ %.1459, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ false, %.lr.ph ] ; 38 uses
  %.04633710.ph = phi i64 [ %.1464, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ -1, %.lr.ph ] ; 38 uses
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772
  %i.zk = load i64, ptr %i.c, align 8, !tbaa !104
  %i.zl = trunc i64 %i.zk to i32                  ; 4 uses
  %i.zm = add nsw i32 %.02903735, 1               ; 2 uses
  %.not4540 = icmp slt i32 %i.zm, %1
  br i1 %.not4540, label %bb.d, label %._crit_edge.thread4566, !llvm.loop !532

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.zn = icmp eq i8 %.1437, %.1435
  br i1 %i.zn, label %._crit_edge.thread4566, label %bb.go

bb.go:                                            ; preds = %._crit_edge
  %i.zo = load ptr, ptr @stderr, align 8, !tbaa !117
  %fwrite586 = call i64 @fwrite(ptr nonnull @.str.100, i64 67, i64 1, ptr %i.zo) #38 ; 0 uses
  call void @exit(i32 noundef 1) #37
  unreachable

._crit_edge.thread4566:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread, %._crit_edge
  %.0377.lcssa4513 = phi i32 [ %.1378, %._crit_edge ], [ %.03773734.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0379.lcssa4507.in = phi i8 [ %.1380, %._crit_edge ], [ %.03793733.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ]
  %.0381.lcssa4501 = phi i64 [ %.1382, %._crit_edge ], [ %.03813732.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0383.lcssa4495 = phi i32 [ %.1384, %._crit_edge ], [ %.03833731.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0385.lcssa4489 = phi i32 [ %.1386, %._crit_edge ], [ %.03853730.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0387.lcssa4483 = phi i32 [ %.1388, %._crit_edge ], [ %i.zl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0389.lcssa4477 = phi i32 [ %.1390, %._crit_edge ], [ %i.zl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0426.lcssa4471 = phi i8 [ %.1427, %._crit_edge ], [ %.04263727.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0428.lcssa4465 = phi i8 [ %.1429, %._crit_edge ], [ %.04283726.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0430.lcssa4459 = phi i64 [ %.1431, %._crit_edge ], [ %.04303725.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0432.lcssa4453 = phi i64 [ %.1433, %._crit_edge ], [ %.04323724.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0438.lcssa4447 = phi i1 [ %.1439, %._crit_edge ], [ %.04383721.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0440.lcssa4434.in = phi i8 [ %.1441, %._crit_edge ], [ %.04403720.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ]
  %.0442.lcssa4428 = phi i1 [ %.1443, %._crit_edge ], [ %.04423719.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0444.lcssa4427 = phi i8 [ %.1445, %._crit_edge ], [ %.04443718.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 5 uses
  %.0446.lcssa4426.in = phi i8 [ %.1447, %._crit_edge ], [ %.04463717.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ]
  %.0448.lcssa4420 = phi i8 [ %.1449, %._crit_edge ], [ %.04483716.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 5 uses
  %.0450.lcssa4419 = phi i1 [ %.1451, %._crit_edge ], [ %.04503715.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ]
  %.0452.lcssa4418 = phi i1 [ %.1453, %._crit_edge ], [ %.04523714.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0454.lcssa4412 = phi i1 [ %.1455, %._crit_edge ], [ %.04543713.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0456.lcssa4406 = phi i1 [ %.1457, %._crit_edge ], [ %.04563712.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0458.lcssa4400 = phi i1 [ %.1459, %._crit_edge ], [ %.04583711.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0463.lcssa4399 = phi i64 [ %.1464, %._crit_edge ], [ %.04633710.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread ] ; 3 uses
  %.0446.lcssa4426 = trunc i8 %.0446.lcssa4426.in to i1 ; 2 uses
  %.0440.lcssa4434 = trunc i8 %.0440.lcssa4434.in to i1 ; 3 uses
  %.0379.lcssa4507 = xor i8 %.0379.lcssa4507.in, 1 ; 3 uses
  %i.zp = trunc nuw i8 %.0444.lcssa4427 to i1     ; 4 uses
  %i.zq = trunc nuw i8 %.0448.lcssa4420 to i1
  %or.cond7 = select i1 %i.zp, i1 %i.zq, i1 false
  br i1 %or.cond7, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %._crit_edge.thread4566
  %i.zr = load ptr, ptr @stderr, align 8, !tbaa !117
  %fwrite585 = call i64 @fwrite(ptr nonnull @.str.101, i64 36, i64 1, ptr %i.zr) #38 ; 0 uses
  call void @exit(i32 noundef 1) #37
  unreachable

bb.gq:                                            ; preds = %._crit_edge.thread4566
  br i1 %.0450.lcssa4419, label %bb.gr, label %.thread4640

bb.gr:                                            ; preds = %bb.gq
  %i.zs = or i8 %.0444.lcssa4427, %.0448.lcssa4420
  %or.cond9.not = icmp eq i8 %i.zs, 0
  br i1 %or.cond9.not, label %bb.ha, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #32
  invoke void @_ZN7rocksdb10LDBCommand11HexToStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %86, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.gt unwind label %bb.gz

bb.gt:                                            ; preds = %bb.gs
  %i.zt = load ptr, ptr %15, align 8, !tbaa !68   ; 6 uses
  %i.zu = icmp eq ptr %i.zt, %i.m
  %i.zv = load ptr, ptr %86, align 8, !tbaa !68   ; 5 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 4 uses
  %i.zx = icmp eq ptr %i.zv, %i.zw                ; 2 uses
  br i1 %i.zu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.gt
  br i1 %i.zx, label %bb.gu, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.gt
  br i1 %i.zx, label %bb.gu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.gu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.zy = getelementptr inbounds nuw i8, ptr %86, i64 8 ; 2 uses
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !70 ; 3 uses
  %i.aaa = icmp ult i64 %i.zz, 16
  call void @llvm.assume(i1 %i.aaa)
  switch i64 %i.zz, label %bb.gw [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.gv
  ]

bb.gv:                                            ; preds = %bb.gu
  %i.aab = load i8, ptr %i.zv, align 1, !tbaa !69
  store i8 %i.aab, ptr %i.zt, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.gw:                                            ; preds = %bb.gu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zt, ptr align 1 %i.zv, i64 %i.zz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.gw, %bb.gv, %bb.gu
  %i.aac = load i64, ptr %i.zy, align 8, !tbaa !70 ; 2 uses
  store i64 %i.aac, ptr %i.n, align 8, !tbaa !70
  %i.aad = load ptr, ptr %15, align 8, !tbaa !68
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 %i.aac
  store i8 0, ptr %i.aae, align 1, !tbaa !69
  %.pre.i = load ptr, ptr %86, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.zv, ptr %15, align 8, !tbaa !68
  %i.aaf = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.aag = load <2 x i64>, ptr %i.aaf, align 8, !tbaa !69
  store <2 x i64> %i.aag, ptr %i.n, align 8, !tbaa !69
  br label %bb.gy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aah = load i64, ptr %i.m, align 8, !tbaa !69
  store ptr %i.zv, ptr %15, align 8, !tbaa !68
  %i.aai = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.aaj = load <2 x i64>, ptr %i.aai, align 8, !tbaa !69
  store <2 x i64> %i.aaj, ptr %i.n, align 8, !tbaa !69
  %.not.i860 = icmp eq ptr %i.zt, null
  br i1 %.not.i860, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.zt, ptr %86, align 8, !tbaa !68
  store i64 %i.aah, ptr %i.zw, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.gy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.zw, ptr %86, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.gx, %bb.gy
  %i.aak = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.zt, %bb.gx ], [ %i.zw, %bb.gy ]
  %i.aal = getelementptr inbounds nuw i8, ptr %86, i64 8
  store i64 0, ptr %i.aal, align 8, !tbaa !70
  store i8 0, ptr %i.aak, align 1, !tbaa !69
  %i.aam = load ptr, ptr %86, align 8, !tbaa !68  ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.aao = icmp eq ptr %i.aam, %i.aan
  br i1 %i.aao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aap = load i64, ptr %i.aan, align 8, !tbaa !69
  %i.aaq = add i64 %i.aap, 1
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aaq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #32
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gs
  %i.aar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697

bb.ha:                                            ; preds = %bb.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863
  br i1 %.0446.lcssa4426, label %bb.hb, label %.thread4640

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #32
  invoke void @_ZN7rocksdb10LDBCommand11HexToStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %87, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.hc unwind label %bb.hi

bb.hc:                                            ; preds = %bb.hb
  %i.aas = load ptr, ptr %16, align 8, !tbaa !68  ; 6 uses
  %i.aat = icmp eq ptr %i.aas, %i.o
  %i.aau = load ptr, ptr %87, align 8, !tbaa !68  ; 5 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 4 uses
  %i.aaw = icmp eq ptr %i.aau, %i.aav             ; 2 uses
  br i1 %i.aat, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i869, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i864

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i869: ; preds = %bb.hc
  br i1 %i.aaw, label %bb.hd, label %.thread.i870

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i864: ; preds = %bb.hc
  br i1 %i.aaw, label %bb.hd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i865

bb.hd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i864, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i869
  %i.aax = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 2 uses
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !70 ; 3 uses
  %i.aaz = icmp ult i64 %i.aay, 16
  call void @llvm.assume(i1 %i.aaz)
  switch i64 %i.aay, label %bb.hf [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i867
    i64 1, label %bb.he
  ]

bb.he:                                            ; preds = %bb.hd
  %i.aba = load i8, ptr %i.aau, align 1, !tbaa !69
  store i8 %i.aba, ptr %i.aas, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i867

bb.hf:                                            ; preds = %bb.hd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aas, ptr align 1 %i.aau, i64 %i.aay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i867

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i867: ; preds = %bb.hf, %bb.he, %bb.hd
  %i.abb = load i64, ptr %i.aax, align 8, !tbaa !70 ; 2 uses
  store i64 %i.abb, ptr %i.p, align 8, !tbaa !70
  %i.abc = load ptr, ptr %16, align 8, !tbaa !68
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.abb
  store i8 0, ptr %i.abd, align 1, !tbaa !69
  %.pre.i868 = load ptr, ptr %87, align 8, !tbaa !68
end_hunk_0
