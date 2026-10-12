Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/external_table?download=true
inline.NumInlined: 1938
inline.NumDeleted: 1028
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_127ExternalTableBuilderAdapter3AddERKNS_5SliceES4_:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.br = phi i64 [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.bm, %i.br
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.bs, ptr noundef nonnull align 1 dereferenceable(13) @.str.63, i64 13, i1 false), !noalias !691
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bk, i64 noundef 0, ptr noundef nonnull @.str.63, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.i, %bb.h
  store i64 %i.bm, ptr %i.bj, align 8, !tbaa !49, !noalias !691
  %i.bt = load ptr, ptr %8, align 8, !tbaa !28, !noalias !691
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bm
  store i8 0, ptr %i.bu, align 1, !tbaa !29, !noalias !691
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.bv, ptr %7, align 8, !tbaa !48, !alias.scope !691
  %i.bw = load ptr, ptr %8, align 8, !tbaa !28, !noalias !691 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, %i.ay
  br i1 %i.bx, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.by = load i64, ptr %i.bj, align 8, !tbaa !49, !noalias !691 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.ca, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bw, ptr %7, align 8, !tbaa !28, !alias.scope !691
  %i.cb = load i64, ptr %i.ay, align 8, !tbaa !29, !noalias !691
  store i64 %i.cb, ptr %i.bv, align 8, !tbaa !29, !alias.scope !691
  %.pre.i13 = load i64, ptr %i.bj, align 8, !tbaa !49, !noalias !691
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.j
  %i.cc = phi ptr [ %i.bv, %bb.j ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ]
  %i.cd = phi i64 [ %i.by, %bb.j ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !49, !alias.scope !691
  store ptr %i.ay, ptr %8, align 8, !tbaa !28, !noalias !691
  store i64 0, ptr %i.bj, align 8, !tbaa !49, !noalias !691
  store i8 0, ptr %i.ay, align 8, !tbaa !29, !noalias !691
  store ptr %i.cc, ptr %6, align 8, !tbaa !77
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr @.str, ptr %10, align 8, !tbaa !77
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.cg, align 8, !tbaa !78
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %10, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit unwind label %bb.n

_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit: ; preds = %bb.k
  %i.ch = load <4 x i8>, ptr %5, align 8, !tbaa !29
  store <4 x i8> %i.ch, ptr %i.d, align 8, !tbaa !29
  store <4 x i8> zeroinitializer, ptr %5, align 8, !tbaa !29
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !70, !range !280, !noundef !79
  store i8 %i.cj, ptr %i.h, align 4, !tbaa !215
  store i8 0, ptr %i.ci, align 4, !tbaa !215
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !29
  store i8 %i.cl, ptr %i.k, align 1, !tbaa !216
  store i8 0, ptr %i.ck, align 1, !tbaa !216
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !217
  store ptr null, ptr %i.cm, align 8, !tbaa !217
  %i.co = load ptr, ptr %i.m, align 8, !tbaa !217 ; 2 uses
  store ptr %i.cn, ptr %i.m, align 8, !tbaa !217
  %.not.i.i.i.i.i17 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i17, label %_ZN7rocksdb6StatusD2Ev.exit22, label %_ZN7rocksdb6StatusaSEOS0_.exit19

_ZN7rocksdb6StatusaSEOS0_.exit19:                 ; preds = %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.co) #28
  %.pr40 = load ptr, ptr %i.cm, align 8, !tbaa !217 ; 2 uses
  %.not.i.i20 = icmp eq ptr %.pr40, null
  br i1 %.not.i.i20, label %_ZN7rocksdb6StatusD2Ev.exit22, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit19
  call void @_ZdaPv(ptr noundef nonnull %.pr40) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit22

_ZN7rocksdb6StatusD2Ev.exit22:                    ; preds = %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit, %_ZN7rocksdb6StatusaSEOS0_.exit19, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.cp = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bv
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN7rocksdb6StatusD2Ev.exit22
  %i.cr = load i64, ptr %i.bv, align 8, !tbaa !29
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.ct = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.ay
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cv = load i64, ptr %i.ay, align 8, !tbaa !29
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.cx = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.w
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.cz = load i64, ptr %i.w, align 8, !tbaa !29
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.p

bb.l:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.m:                                             ; preds = %bb.i, %bb.g
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.n:                                             ; preds = %bb.k
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.de = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bv
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.n
  %i.dg = load i64, ptr %i.bv, align 8, !tbaa !29
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.m
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.m ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.dd, %bb.n ] ; 2 uses
  %i.di = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ay
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.dk = load i64, ptr %i.ay, align 8, !tbaa !29
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.db, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  %i.dm = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.w
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.do = load i64, ptr %i.w, align 8, !tbaa !29
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn

bb.o:                                             ; preds = %bb.b
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !231 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !353
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !353
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !78
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !78
  %i.eb = load <2 x i64>, ptr %i.dy, align 8, !tbaa !132
  %13 = insertelement <2 x i64> poison, i64 %12, i64 0
  %i.ec = insertelement <2 x i64> %13, i64 %i.ea, i64 1
  %i.ed = add <2 x i64> %i.eb, %i.ec
  store <2 x i64> %i.ed, ptr %i.dy, align 8, !tbaa !132
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !354, !nonnull !79, !align !80
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 592
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !269
  %i.ej = call noundef zeroext i1 @_ZN7rocksdb33NotifyCollectTableCollectorsOnAddERKNS_5SliceES2_mRKSt6vectorISt10unique_ptrINS_19InternalTblPropCollESt14default_deleteIS5_EESaIS8_EEPNS_6LoggerE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noundef %i.ei) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.o, %_ZN7rocksdb6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK7rocksdb12_GLOBAL__N_127ExternalTableBuilderAdapter6statusEv(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(856) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.13", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !213   ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !231  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 %i.b, ptr %0, align 8, !tbaa !213
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.k = load <4 x i8>, ptr %i.j, align 1, !tbaa !29
  store <4 x i8> %i.k, ptr %i.i, align 1, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.n = load i8, ptr %i.m, align 1, !tbaa !216
  store i8 %i.n, ptr %i.l, align 1, !tbaa !216
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !217  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.13") align 8 %2, ptr noundef nonnull %i.q)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !217
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

_ZN7rocksdb6StatusC2ERKS0_.exit:                  ; preds = %bb.c, %bb.d
  %storemerge = phi ptr [ %.pre.i, %bb.d ], [ null, %bb.c ]
  store ptr %storemerge, ptr %i.o, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb6StatusC2ERKS0_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK7rocksdb12_GLOBAL__N_127ExternalTableBuilderAdapter9io_statusEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::IOStatus") align 8 captures(address) initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(856) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::Status", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(856) %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !694)
  store i8 0, ptr %0, align 8, !tbaa !213, !alias.scope !694
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !304, !alias.scope !694
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !214, !alias.scope !694
  store i32 0, ptr %i.e, align 2, !alias.scope !694
  %.not.i.i = icmp eq ptr %0, %2
  br i1 %.not.i.i, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread: ; preds = %bb.a
  %i.g = load <4 x i8>, ptr %2, align 8, !tbaa !29, !noalias !694
  store <4 x i8> %i.g, ptr %0, align 8, !tbaa !29, !alias.scope !694
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i8, ptr %i.h, align 4, !tbaa !70, !range !280, !noalias !694, !noundef !79
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.i, ptr %i.j, align 4, !tbaa !215, !alias.scope !694
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !29, !noalias !694
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.l, ptr %i.m, align 1, !tbaa !216, !alias.scope !694
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !217, !noalias !694
  store ptr %i.o, ptr %i.f, align 8, !tbaa !217, !alias.scope !694
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !217 ; 2 uses
  %.not.i.i2 = icmp eq ptr %.pre, null
  br i1 %.not.i.i2, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread, %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_127ExternalTableBuilderAdapter6FinishEv(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(856) initializes((56, 64)) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::PropertyBlockBuilder", align 8 ; 12 uses
  %3 = alloca %"class.std::map", align 8          ; 11 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !695
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.e = load i64, ptr %i.d, align 8, !tbaa !696
  %i.f = add i64 %i.e, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.f, ptr %i.g, align 8, !tbaa !697
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN7rocksdb20PropertyBlockBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %2)
  invoke void @_ZN7rocksdb20PropertyBlockBuilder16AddTablePropertyERKNS_15TablePropertiesE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(784) %i.a)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !245
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !246
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !247
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.h, ptr %i.k, align 8, !tbaa !248
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !249
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !354, !nonnull !79, !align !80
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 592
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !269
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.s = invoke noundef zeroext i1 @_ZN7rocksdb36NotifyCollectTableCollectorsOnFinishERKSt6vectorISt10unique_ptrINS_19InternalTblPropCollESt14default_deleteIS2_EESaIS5_EEPNS_6LoggerEPNS_20PropertyBlockBuilderERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_St4lessISK_ESaISt4pairIKSK_SK_EEESS_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef %i.q, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %bb.c unwind label %bb.k       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !247
  invoke void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE6insertISt17_Rb_tree_iteratorISA_EEEvT_SG_(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr %i.u, ptr nonnull %i.h)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.v = invoke { ptr, i64 } @_ZN7rocksdb20PropertyBlockBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  store ptr %i.w, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = extractvalue { ptr, i64 } %i.v, 1
  store i64 %i.y, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !231 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ae = load i8, ptr %0, align 8, !tbaa !213
  switch i8 %i.ae, label %bb.n [
    i8 0, label %bb.g
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !231 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
end_hunk_0
