Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/binary_annotator?download=true
inline.NumInlined: 3604
inline.NumDeleted: 1081
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN11flatbuffers15BinaryAnnotator17FixMissingRegionsEv:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 11 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 12 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 11 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 11 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 112
  br label %bb.c

._crit_edge161:                                   ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE5clearEv.exit
  %.pre193 = load ptr, ptr %1, align 8, !tbaa !104 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.pre193, %i.oc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge161, %_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.co, %_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i ], [ %.pre193, %._crit_edge161 ] ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 120
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !95 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !86
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !95 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !86
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !95 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !86
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #33
  br label %_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.co, %i.oc
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !104
  br label %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge161
  %i.cp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %.pre193, %._crit_edge161 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !106
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #33
  br label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.c:                                             ; preds = %.lr.ph160, %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE5clearEv.exit
  %i.cv = phi ptr [ null, %.lr.ph160 ], [ %i.oc, %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE5clearEv.exit ] ; 2 uses
  %.sroa.0133.0158 = phi ptr [ %i.b, %.lr.ph160 ], [ %i.od, %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE5clearEv.exit ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0133.0158, i64 80 ; 4 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !115 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0133.0158, i64 88 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !115 ; 4 uses
  %i.da = icmp eq ptr %i.cx, %i.cz
  br i1 %i.da, label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.cx to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 2 uses
  %i.de = sdiv exact i64 %i.dd, 160
  %i.df = icmp ugt i64 %i.de, 1
  br i1 %i.df, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !93
  %i.di = load i64, ptr %i.cx, align 8, !tbaa !92
  %i.dj = add i64 %i.dh, %i.di
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.bc
  %.pre192 = load ptr, ptr %i.at, align 8, !tbaa !115
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.dk = phi ptr [ %i.cv, %bb.d ], [ %.pre192, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa148 = phi ptr [ %i.cx, %bb.d ], [ %i.mv, %._crit_edge.loopexit ]
  %.lcssa142 = phi i64 [ %i.dd, %bb.d ], [ %i.na, %._crit_edge.loopexit ]
  %i.dl = load ptr, ptr %1, align 8, !tbaa !115   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.dk
  br i1 %i.dm, label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE5clearEv.exit, label %bb.bd

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bc
  %.pre191197 = phi ptr [ %.pre191198, %bb.bc ], [ %i.cx, %.lr.ph.preheader ] ; 2 uses
  %.pre190194 = phi ptr [ %.pre190195, %bb.bc ], [ %i.cz, %.lr.ph.preheader ] ; 2 uses
  %i.dn = phi ptr [ %i.mv, %bb.bc ], [ %i.cx, %.lr.ph.preheader ] ; 2 uses
  %i.do = phi ptr [ %i.mw, %bb.bc ], [ %i.cz, %.lr.ph.preheader ]
  %.038155 = phi i64 [ %.1, %bb.bc ], [ %i.dj, %.lr.ph.preheader ] ; 6 uses
  %.046154 = phi i64 [ %i.mx, %bb.bc ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [160 x i8], ptr %i.dn, i64 %.046154 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !92 ; 5 uses
  %i.dr = load i64, ptr %i.d, align 8, !tbaa !71
  %i.ds = icmp ult i64 %i.dq, %i.dr
  br i1 %i.ds, label %bb.e, label %bb.bc

bb.e:                                             ; preds = %.lr.ph
  %i.dt = icmp ult i64 %.038155, %i.dq
  br i1 %i.dt, label %bb.f, label %bb.bb

bb.f:                                             ; preds = %bb.e
  %i.du = sub nuw i64 %i.dq, %.038155             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store i32 0, ptr %2, align 8, !tbaa !83
  store ptr %i.f, ptr %i.e, align 8, !tbaa !84
  store i64 0, ptr %i.g, align 8, !tbaa !85
  store i8 0, ptr %i.f, align 8, !tbaa !86
  store ptr %i.j, ptr %i.i, align 8, !tbaa !84
  store i64 0, ptr %i.k, align 8, !tbaa !85
  store i8 0, ptr %i.j, align 8, !tbaa !86
  store ptr %i.m, ptr %i.l, align 8, !tbaa !84
  store i64 0, ptr %i.n, align 8, !tbaa !85
  store i8 0, ptr %i.m, align 8, !tbaa !86
  store i64 0, ptr %i.o, align 8, !tbaa !87
  store i32 4, ptr %i.h, align 8, !tbaa !88
  %i.dv = load ptr, ptr %i.p, align 8, !tbaa !89
  br label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.dw = add nuw i64 %.0811.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dw, %i.dq
  br i1 %exitcond.not.i, label %_ZN11flatbuffers12_GLOBAL__N_115IsNonZeroRegionEmmPKh.exit, label %.lr.ph.i, !llvm.loop !7

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.0811.i = phi i64 [ %i.dw, %bb.g ], [ %.038155, %bb.f ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.0811.i
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !86
  %.not.not.i = icmp eq i8 %i.dy, 0
  br i1 %.not.not.i, label %bb.g, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i
  store ptr %i.q, ptr %3, align 8, !tbaa !84
  store i64 0, ptr %i.r, align 8, !tbaa !85
  store i8 0, ptr %i.q, align 8, !tbaa !86
  store i32 101, ptr %2, align 8, !tbaa !83
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.aa

_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i
  %i.dz = load ptr, ptr %3, align 8, !tbaa !95    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.q
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.eb = load i64, ptr %i.q, align 8, !tbaa !86
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN11flatbuffers19BinaryRegionCommentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 unwind label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.u, ptr %i.t, align 8, !tbaa !84, !alias.scope !352
  store i64 0, ptr %i.w, align 8, !tbaa !85, !alias.scope !352
  store i8 0, ptr %i.u, align 8, !tbaa !86, !alias.scope !352
  store i32 0, ptr %i.x, align 8, !tbaa !88, !alias.scope !352
  store ptr %i.z, ptr %i.y, align 8, !tbaa !84, !alias.scope !352
  store i64 0, ptr %i.aa, align 8, !tbaa !85, !alias.scope !352
  store i8 0, ptr %i.z, align 8, !tbaa !86, !alias.scope !352
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !84, !alias.scope !352
  store i64 0, ptr %i.ad, align 8, !tbaa !85, !alias.scope !352
  store i8 0, ptr %i.ac, align 8, !tbaa !86, !alias.scope !352
  store i64 0, ptr %i.ae, align 8, !tbaa !87, !alias.scope !352
  store i64 %.038155, ptr %4, align 8, !tbaa !92, !alias.scope !352
  store i64 %i.du, ptr %i.af, align 8, !tbaa !93, !alias.scope !352
  store i32 0, ptr %i.ag, align 8, !tbaa !94, !alias.scope !352
  store i64 %i.du, ptr %i.s, align 8, !tbaa !100, !alias.scope !352
  store i64 0, ptr %i.ah, align 8, !tbaa !101, !alias.scope !352
  %i.ed = load i32, ptr %5, align 8, !tbaa !83
  store i32 %i.ed, ptr %i.v, align 8, !tbaa !83
  %i.ee = load ptr, ptr %i.ai, align 8, !tbaa !95 ; 5 uses
  %i.ef = icmp eq ptr %i.ee, %i.aj
  br i1 %i.ef, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  %i.eg = load i64, ptr %i.ak, align 8, !tbaa !85 ; 5 uses
  %i.eh = icmp ult i64 %i.eg, 16
  call void @llvm.assume(i1 %i.eh)
  switch i64 %i.eg, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ei = load i8, ptr %i.ee, align 1, !tbaa !86
  store i8 %i.ei, ptr %i.u, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 1 %i.ee, i64 %i.eg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h
  store i64 %i.eg, ptr %i.w, align 8, !tbaa !85
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.eg
  store i8 0, ptr %i.ej, align 1, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  store ptr %i.ee, ptr %i.t, align 8, !tbaa !95
  %i.ek = load <2 x i64>, ptr %i.ak, align 8, !tbaa !86
  store <2 x i64> %i.ek, ptr %i.w, align 8, !tbaa !86
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.el = phi ptr [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.aj, %bb.k ]
  store i64 0, ptr %i.ak, align 8, !tbaa !85
  store i8 0, ptr %i.el, align 1, !tbaa !86
  %i.em = load i32, ptr %i.al, align 8, !tbaa !88
  store i32 %i.em, ptr %i.x, align 8, !tbaa !88
  %i.en = load ptr, ptr %i.y, align 8, !tbaa !95  ; 6 uses
  %i.eo = icmp eq ptr %i.en, %i.z
  %i.ep = load ptr, ptr %i.am, align 8, !tbaa !95 ; 5 uses
  %i.eq = icmp eq ptr %i.ep, %i.an                ; 2 uses
  br i1 %i.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  br i1 %i.eq, label %bb.l, label %.thread.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  br i1 %i.eq, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i7.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i
  %i.er = load i64, ptr %i.ao, align 8, !tbaa !85 ; 3 uses
  %i.es = icmp ult i64 %i.er, 16
  call void @llvm.assume(i1 %i.es)
  switch i64 %i.er, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.et = load i8, ptr %i.ep, align 1, !tbaa !86
  store i8 %i.et, ptr %i.en, align 1, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.en, ptr align 1 %i.ep, i64 %i.er, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.eu = load i64, ptr %i.ao, align 8, !tbaa !85 ; 2 uses
  store i64 %i.eu, ptr %i.aa, align 8, !tbaa !85
  %i.ev = load ptr, ptr %i.y, align 8, !tbaa !95
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eu
  store i8 0, ptr %i.ew, align 1, !tbaa !86
  %.pre.i12.i = load ptr, ptr %i.am, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15.i

.thread.i14.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i
  store ptr %i.ep, ptr %i.y, align 8, !tbaa !95
  %i.ex = load <2 x i64>, ptr %i.ao, align 8, !tbaa !86
  store <2 x i64> %i.ex, ptr %i.aa, align 8, !tbaa !86
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i7.i
  %i.ey = load i64, ptr %i.z, align 8, !tbaa !86
  store ptr %i.ep, ptr %i.y, align 8, !tbaa !95
  %i.ez = load <2 x i64>, ptr %i.ao, align 8, !tbaa !86
  store <2 x i64> %i.ez, ptr %i.aa, align 8, !tbaa !86
  %.not.i9.i = icmp eq ptr %i.en, null
  br i1 %.not.i9.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8.i
  store ptr %i.en, ptr %i.am, align 8, !tbaa !95
  store i64 %i.ey, ptr %i.an, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8.i, %.thread.i14.i
  store ptr %i.an, ptr %i.am, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15.i: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11.i
  %i.fa = phi ptr [ %.pre.i12.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11.i ], [ %i.en, %bb.o ], [ %i.an, %bb.p ]
  store i64 0, ptr %i.ao, align 8, !tbaa !85
  store i8 0, ptr %i.fa, align 1, !tbaa !86
  %i.fb = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 6 uses
  %i.fc = icmp eq ptr %i.fb, %i.ac
  %i.fd = load ptr, ptr %i.ap, align 8, !tbaa !95 ; 5 uses
  %i.fe = icmp eq ptr %i.fd, %i.aq                ; 2 uses
  br i1 %i.fc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i22.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i22.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15.i
  br i1 %i.fe, label %bb.q, label %.thread.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i16.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15.i
  br i1 %i.fe, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i17.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i16.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i22.i
  %i.ff = load i64, ptr %i.ar, align 8, !tbaa !85 ; 3 uses
  %i.fg = icmp ult i64 %i.ff, 16
  call void @llvm.assume(i1 %i.fg)
  switch i64 %i.ff, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i20.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.fh = load i8, ptr %i.fd, align 1, !tbaa !86
  store i8 %i.fh, ptr %i.fb, align 1, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i20.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fb, ptr align 1 %i.fd, i64 %i.ff, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i20.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i20.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.fi = load i64, ptr %i.ar, align 8, !tbaa !85 ; 2 uses
  store i64 %i.fi, ptr %i.ad, align 8, !tbaa !85
  %i.fj = load ptr, ptr %i.ab, align 8, !tbaa !95
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fi
  store i8 0, ptr %i.fk, align 1, !tbaa !86
  %.pre.i21.i = load ptr, ptr %i.ap, align 8, !tbaa !95
  br label %_ZN11flatbuffers19BinaryRegionCommentaSEOS0_.exit

.thread.i23.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i22.i
end_hunk_0
begin_hunk_1_@_ZN11flatbuffers15BinaryAnnotator14GetElementSizeEPKN10reflection5FieldE:_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !63
  %i.be = shl i32 %i.bd, 2
  %i.bf = zext i32 %i.be to i64
  br label %_ZNK10reflection4Type5indexEv.exit

_ZNK10reflection4Type5indexEv.exit:               ; preds = %_ZNK10reflection6Schema7objectsEv.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i24, %bb.c
  %i.bg = phi i64 [ %i.bf, %bb.c ], [ 4294967292, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i24 ], [ 4294967292, %_ZNK10reflection6Schema7objectsEv.exit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !63
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !63
  %i.bn = sext i32 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo ; 3 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !97 ; 2 uses
  %i.br = icmp ugt i16 %i.bq, 8
  br i1 %i.br, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i26, label %_ZNK10reflection4Type7elementEv.exit18.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i26: ; preds = %_ZNK10reflection4Type5indexEv.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !97 ; 2 uses
  %.not.i.i27 = icmp eq i16 %i.bt, 0
  br i1 %.not.i.i27, label %_ZNK10reflection4Type7elementEv.exit18.thread, label %_ZNK10reflection6Object9is_structEv.exit

_ZNK10reflection6Object9is_structEv.exit:         ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i26
  %i.bu = zext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !86
  %.not = icmp eq i8 %i.bw, 0
  br i1 %.not, label %_ZNK10reflection4Type7elementEv.exit18.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK10reflection6Object9is_structEv.exit
  %i.bx = icmp ugt i16 %i.bq, 12
  br i1 %i.bx, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i28, label %_ZNK10reflection4Type7elementEv.exit18.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i28: ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !97 ; 2 uses
  %.not.i.i29 = icmp eq i16 %i.bz, 0
  br i1 %.not.i.i29, label %_ZNK10reflection4Type7elementEv.exit18.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i28
  %i.ca = zext i16 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !63
  %i.cd = sext i32 %i.cc to i64
  br label %_ZNK10reflection4Type7elementEv.exit18.thread

_ZNK10reflection4Type7elementEv.exit18.thread:    ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %bb.e, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i28, %bb.d, %_ZNK10reflection4Type5indexEv.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i26, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i16, %_ZNK10reflection4Type7elementEv.exit18, %_ZNK10reflection6Object9is_structEv.exit, %_ZNK10reflection4Type7elementEv.exit12
  %.0 = phi i64 [ %i.ac, %_ZNK10reflection4Type7elementEv.exit12 ], [ 4, %_ZNK10reflection6Object9is_structEv.exit ], [ 4, %_ZNK10reflection4Type5indexEv.exit ], [ 4, %_ZNK10reflection4Type7elementEv.exit18 ], [ 0, %bb.d ], [ 4, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i16 ], [ 4, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i26 ], [ %i.cd, %bb.e ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i28 ], [ 4, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11NumToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !84, !alias.scope !522
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !85, !alias.scope !522
  store i8 0, ptr %i.c, align 8, !tbaa !86, !alias.scope !522
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !137, !noalias !522 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !522 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEm.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !138, !noalias !522 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !95, !alias.scope !522 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !86, !alias.scope !522
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #33
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !132
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !132
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !132
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !132
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !95 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !86
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !132
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #30
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !132
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !132
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !140
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN11flatbuffers12_GLOBAL__N_116BinaryRegionSortERKNS_12BinaryRegionES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1) #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !92
  %i.b = load i64, ptr %1, align 8, !tbaa !92
  %i.c = icmp ult i64 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11flatbuffers12_GLOBAL__N_122GenerateMissingSectionEmmPKh(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::vector", align 16      ; 17 uses
  %5 = alloca %"struct.flatbuffers::BinaryRegionComment", align 8 ; 18 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"struct.flatbuffers::BinaryRegion", align 8 ; 22 uses
  %9 = alloca %"struct.flatbuffers::BinaryRegionComment", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::vector", align 16     ; 7 uses
  %12 = alloca %"struct.flatbuffers::BinaryRegionComment", align 8 ; 18 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"struct.flatbuffers::BinaryRegion", align 8 ; 22 uses
  %15 = alloca %"struct.flatbuffers::BinaryRegionComment", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::vector", align 16     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %.lr.ph.i, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = add nuw i64 %.0811.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.d, %i.b
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !7

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.0811.i = phi i64 [ %i.d, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.0811.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !86
  %.not.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.not.i, label %bb.b, label %_ZN11flatbuffers12_GLOBAL__N_115IsNonZeroRegionEmmPKh.exit

_ZN11flatbuffers12_GLOBAL__N_115IsNonZeroRegionEmmPKh.exit: ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.i, align 8, !tbaa !85
  store i8 0, ptr %i.h, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.m, align 8, !tbaa !85
  store i8 0, ptr %i.l, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 4 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 0, ptr %i.p, align 8, !tbaa !85
  store i8 0, ptr %i.o, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 0, ptr %i.q, align 8, !tbaa !87
  store i32 0, ptr %i.j, align 8, !tbaa !88
  %i.r = icmp ugt i64 %2, 7
  br i1 %i.r, label %._crit_edge.i.i, label %._crit_edge.i.i42

._crit_edge.i.i:                                  ; preds = %_ZN11flatbuffers12_GLOBAL__N_115IsNonZeroRegionEmmPKh.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.s, ptr %6, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !85
  store i8 0, ptr %i.s, align 8, !tbaa !86
  store i32 101, ptr %5, align 8, !tbaa !83
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i
  %i.u = load ptr, ptr %6, align 8, !tbaa !95     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.w = load i64, ptr %i.s, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %6, align 8, !tbaa !95     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.s
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.c
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !86
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

._crit_edge.i.i42:                                ; preds = %_ZN11flatbuffers12_GLOBAL__N_115IsNonZeroRegionEmmPKh.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ac, ptr %7, align 8, !tbaa !84
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !85
  store i8 0, ptr %i.ac, align 8, !tbaa !86
  store i32 102, ptr %5, align 8, !tbaa !83
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47 unwind label %bb.d

_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47: ; preds = %._crit_edge.i.i42
  %i.ae = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ac
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

bb.d:                                             ; preds = %._crit_edge.i.i42
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ac
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.d
  %i.ak = load i64, ptr %i.ac, align 8, !tbaa !86
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %.sink260 = phi i64 [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %.sink = phi ptr [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.am = add i64 %.sink260, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.am) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split, %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47, %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZN11flatbuffers19BinaryRegionCommentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef nonnull align 8 dereferenceable(120) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store i32 0, ptr %i.aq, align 8, !alias.scope !531
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !84, !alias.scope !531
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 0, ptr %i.ar, align 8, !tbaa !85, !alias.scope !531
  store i8 0, ptr %i.ap, align 8, !tbaa !86, !alias.scope !531
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i32 0, ptr %i.as, align 8, !tbaa !88, !alias.scope !531
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 4 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !84, !alias.scope !531
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 0, ptr %i.av, align 8, !tbaa !85, !alias.scope !531
  store i8 0, ptr %i.au, align 8, !tbaa !86, !alias.scope !531
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 120 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 4 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !84, !alias.scope !531
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i64 0, ptr %i.ay, align 8, !tbaa !85, !alias.scope !531
  store i8 0, ptr %i.ax, align 8, !tbaa !86, !alias.scope !531
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 152
  store i64 0, ptr %i.az, align 8, !tbaa !87, !alias.scope !531
  store i64 %1, ptr %8, align 8, !tbaa !92, !alias.scope !531
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %2, ptr %i.ba, align 8, !tbaa !93, !alias.scope !531
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.bb, align 8, !tbaa !94, !alias.scope !531
  store i64 %2, ptr %i.an, align 8, !tbaa !100, !alias.scope !531
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 0, ptr %i.bc, align 8, !tbaa !101, !alias.scope !531
  %i.bd = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.aq, ptr noundef nonnull align 8 dereferenceable(120) %9) #30 ; 0 uses
  %i.be = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(160) %8)
          to label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit unwind label %bb.i ; 0 uses

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.e
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !95 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ax
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit
  %i.bh = load i64, ptr %i.ax, align 8, !tbaa !86
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !95 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.au
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.bl = load i64, ptr %i.au, align 8, !tbaa !86
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.bn = load ptr, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ap
  br i1 %i.bo, label %_ZN11flatbuffers12BinaryRegionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.bp = load i64, ptr %i.ap, align 8, !tbaa !86
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #33
  br label %_ZN11flatbuffers12BinaryRegionD2Ev.exit

_ZN11flatbuffers12BinaryRegionD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !95 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !86
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !95 ; 2 uses
end_hunk_1
