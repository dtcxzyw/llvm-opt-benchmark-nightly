Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_drat?download=true
inline.NumInlined: 741
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK3sat4drat7displayERSo:bb.a
  %i.do = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread

bb.m:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv135
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !70
  %i.dr = load ptr, ptr %i.ba, align 8, !tbaa !75
  %i.ds = zext i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !120
  %i.dv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(20) %i.du)
  %i.dw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %i.dx = load ptr, ptr %i.cw, align 8, !tbaa !71 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %.critedge112, label %_ZNK6vectorIjLb0EjE4sizeEv.exit, !llvm.loop !265

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread:          ; preds = %bb.k, %.critedge112, %_ZNK6vectorIjLb0EjE5emptyEv.exit
  %i.dz = load ptr, ptr %i.cz, align 8, !tbaa !71 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %_ZNK6vectorIjLb0EjE5emptyEv.exit101.thread, label %_ZNK6vectorIjLb0EjE5emptyEv.exit101

_ZNK6vectorIjLb0EjE5emptyEv.exit101:              ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !70
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %_ZNK6vectorIjLb0EjE5emptyEv.exit101.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit101
  %i.ee = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.ef = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %indvars.iv141)
  %i.eg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull @.str.13, i64 noundef 5) ; 0 uses
  %i.eh = load ptr, ptr %i.cz, align 8, !tbaa !71 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %.critedge113, label %_ZNK6vectorIjLb0EjE4sizeEv.exit103

_ZNK6vectorIjLb0EjE4sizeEv.exit103:               ; preds = %bb.n, %bb.o
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.o ], [ 0, %bb.n ] ; 3 uses
  %i.ej = phi ptr [ %i.ex, %bb.o ], [ %i.eh, %bb.n ] ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !70
  %i.em = zext i32 %i.el to i64
  %i.en = icmp samesign ult i64 %indvars.iv138, %i.em
  br i1 %i.en, label %bb.o, label %.critedge113

.critedge113:                                     ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit103, %bb.o, %bb.n
  %i.eo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %_ZNK6vectorIjLb0EjE5emptyEv.exit101.thread

bb.o:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit103
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv138
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !70
  %i.er = load ptr, ptr %i.ba, align 8, !tbaa !75
  %i.es = zext i32 %i.eq to i64
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !120
  %i.ev = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(20) %i.eu)
  %i.ew = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  %i.ex = load ptr, ptr %i.cz, align 8, !tbaa !71 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %.critedge113, label %_ZNK6vectorIjLb0EjE4sizeEv.exit103, !llvm.loop !266

_ZNK6vectorIjLb0EjE5emptyEv.exit101.thread:       ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread, %.critedge113, %_ZNK6vectorIjLb0EjE5emptyEv.exit101
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %i.ez = load ptr, ptr %i.k, align 8, !tbaa !68  ; 2 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %.critedge, label %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit99, !llvm.loop !267
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSo5lbool(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(20)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat4drat6assignENS_7literalEPNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = trunc i32 %1 to i1                       ; 2 uses
  %i.b = select i1 %i.a, i32 -1, i32 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.d = lshr i32 %1, 1                           ; 5 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !68   ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %thread-pre-split.i.i.preheader, label %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i:         ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70   ; 2 uses
  %.not.i.i = icmp ult i32 %i.d, %i.h
  br i1 %.not.i.i, label %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i, label %thread-pre-split.i.i.preheader

_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i:       ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i
  %i.i = zext nneg i32 %i.d to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.i
  %.0.i.sroa.speculate.load..i = load i32, ptr %i.j, align 4, !tbaa !108 ; 3 uses
  %i.k = icmp eq i32 %.0.i.sroa.speculate.load..i, 0
  br i1 %i.k, label %_ZN6vectorI5lboolLb0EjE4setxEjRKS0_S3_.exit, label %_ZNK3sat4drat5valueENS_7literalE.exit

_ZNK3sat4drat5valueENS_7literalE.exit:            ; preds = %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i
  %i.l = sub nsw i32 0, %.0.i.sroa.speculate.load..i
  %spec.select = select i1 %i.a, i32 %i.l, i32 %.0.i.sroa.speculate.load..i
  switch i32 %spec.select, label %bb.f [
    i32 -1, label %bb.b
    i32 0, label %_ZN6vectorI5lboolLb0EjE4setxEjRKS0_S3_.exit
  ]

bb.b:                                             ; preds = %_ZNK3sat4drat5valueENS_7literalE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i8 1, ptr %i.m, align 8, !tbaa !106
  br label %bb.f

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i, %bb.a
  %.ph = phi ptr [ null, %bb.a ], [ %i.e, %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i ]
  %.0.i17.i.i.ph = phi i32 [ 0, %bb.a ], [ %i.h, %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  %.ph16 = add nuw i32 %i.d, 1                    ; 3 uses
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.preheader, %_ZNK6vectorI5lboolLb0EjE8capacityEv.exit.thread.i.i
  %i.n = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorI5lboolLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %thread-pre-split.i.i.preheader ] ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNK6vectorI5lboolLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorI5lboolLb0EjE8capacityEv.exit.i.i

_ZNK6vectorI5lboolLb0EjE8capacityEv.exit.i.i:     ; preds = %thread-pre-split.i.i
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !70
  %.not = icmp ult i32 %i.d, %i.q
  br i1 %.not, label %bb.c, label %_ZNK6vectorI5lboolLb0EjE8capacityEv.exit.thread.i.i

_ZNK6vectorI5lboolLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorI5lboolLb0EjE8capacityEv.exit.i.i, %thread-pre-split.i.i
  tail call void @_ZN6vectorI5lboolLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pr.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !68
  br label %thread-pre-split.i.i, !llvm.loop !268

bb.c:                                             ; preds = %_ZNK6vectorI5lboolLb0EjE8capacityEv.exit.i.i
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -4
  store i32 %.ph16, ptr %i.r, align 4, !tbaa !70
  %.not1319.i.i = icmp eq i32 %.0.i17.i.i.ph, %.ph16
  br i1 %.not1319.i.i, label %_ZN6vectorI5lboolLb0EjE4setxEjRKS0_S3_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.s = zext i32 %.ph16 to i64
  %i.t = zext nneg i32 %.0.i17.i.i.ph to i64      ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %i.n, i64 %i.t
  %i.v = sub nsw i64 %i.s, %i.t
  %i.w = shl nsw i64 %i.v, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.w, i1 false), !tbaa !108
  br label %_ZN6vectorI5lboolLb0EjE4setxEjRKS0_S3_.exit

_ZN6vectorI5lboolLb0EjE4setxEjRKS0_S3_.exit:      ; preds = %_ZNK3sat4drat5valueENS_7literalE.exit, %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i, %.lr.ph.preheader.i.i, %bb.c
  %i.x = phi ptr [ %i.n, %.lr.ph.preheader.i.i ], [ %i.n, %bb.c ], [ %i.e, %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i ], [ %i.e, %_ZNK3sat4drat5valueENS_7literalE.exit ]
  %i.y = zext nneg i32 %i.d to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  store i32 %i.b, ptr %i.z, align 4, !tbaa !108
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorI5lboolLb0EjE4setxEjRKS0_S3_.exit
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !70 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !70
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE9push_backEOS5_.exit

bb.e:                                             ; preds = %bb.d, %_ZN6vectorI5lboolLb0EjE4setxEjRKS0_S3_.exit
  tail call void @_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !73 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !70
  br label %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE9push_backEOS5_.exit

_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE9push_backEOS5_.exit: ; preds = %bb.d, %bb.e
  %i.ai = phi i32 [ %.pre2.i, %bb.e ], [ %i.ae, %bb.d ]
  %i.aj = phi ptr [ %.pre.i, %bb.e ], [ %i.ab, %bb.d ]
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  store i32 %1, ptr %i.al, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %2, ptr %.sroa.43.0..sroa_idx, align 8
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !70
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE9push_backEOS5_.exit, %bb.b, %_ZNK3sat4drat5valueENS_7literalE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat4drat9propagateENS_7literalE(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71   ; 8 uses
  %2 = ptrtoaddr ptr %i.e to i64
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6vectorIjLb0EjE7set_endEPj.exit, label %_ZN6vectorIjLb0EjE3endEv.exit

_ZN6vectorIjLb0EjE3endEv.exit:                    ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j ; 3 uses
  %.not93 = icmp eq i32 %i.h, 0
  br i1 %.not93, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIjLb0EjE3endEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %.095 = phi ptr [ %i.e, %.lr.ph ], [ %i.ck, %.thread ] ; 5 uses
  %.04894 = phi ptr [ %i.e, %.lr.ph ], [ %.382, %.thread ] ; 6 uses
  %i.n = load i32, ptr %.095, align 4, !tbaa !70  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !120  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !104  ; 3 uses
  %i.u = xor i32 %i.t, %1
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !70   ; 2 uses
  store i32 %i.x, ptr %i.s, align 8, !tbaa !70
  store i32 %i.t, ptr %i.w, align 4, !tbaa !70
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.0.copyload = phi i32 [ %i.x, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.y = lshr i32 %.sroa.010.0.copyload, 1        ; 2 uses
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !68   ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.preheader, label %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i:         ; preds = %bb.d
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !70
  %.not.i.i = icmp ult i32 %i.y, %i.ac
  br i1 %.not.i.i, label %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i, label %.preheader

_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i:       ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ad
  %.0.i.sroa.speculate.load..i = load i32, ptr %i.ae, align 4, !tbaa !108 ; 3 uses
  %i.af = icmp eq i32 %.0.i.sroa.speculate.load..i, 0
  br i1 %i.af, label %.preheader, label %_ZNK3sat4drat5valueENS_7literalE.exit

_ZNK3sat4drat5valueENS_7literalE.exit:            ; preds = %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i
  %i.ag = trunc i32 %.sroa.010.0.copyload to i1
  %i.ah = sub nsw i32 0, %.0.i.sroa.speculate.load..i
  %spec.select.i = select i1 %i.ag, i32 %i.ah, i32 %.0.i.sroa.speculate.load..i
  %i.ai = icmp eq i32 %spec.select.i, 1
  br i1 %i.ai, label %bb.e, label %.preheader

bb.e:                                             ; preds = %_ZNK3sat4drat5valueENS_7literalE.exit
  %i.aj = load i32, ptr %.095, align 4, !tbaa !70
  store i32 %i.aj, ptr %.04894, align 4, !tbaa !70
  %i.ak = getelementptr inbounds nuw i8, ptr %.04894, i64 4
  br label %.thread

.preheader:                                       ; preds = %bb.d, %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i, %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i, %_ZNK3sat4drat5valueENS_7literalE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !102 ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %.not145 = icmp eq i32 %i.ao, 0
  br i1 %.not145, label %.critedge, label %.lr.ph139.preheader

.lr.ph139.preheader:                              ; preds = %.preheader
  %i.aq = load i32, ptr %i.s, align 8, !tbaa !104
  br label %.lr.ph139

.lr.ph139:                                        ; preds = %.lr.ph139.preheader, %bb.j
  %indvars.iv138 = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph139.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv138
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !70 ; 6 uses
  %.not85 = icmp eq i32 %i.as, %i.aq
  br i1 %.not85, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph139
  %i.at = load i32, ptr %i.an, align 4, !tbaa !104
  %.not86 = icmp eq i32 %i.as, %i.at
  br i1 %.not86, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = lshr i32 %i.as, 1                       ; 2 uses
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !68  ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZNK3sat4drat5valueENS_7literalE.exit61.thread, label %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i56

_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i56:       ; preds = %bb.g
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !70
  %.not.i.i57 = icmp ult i32 %i.au, %i.ay
  br i1 %.not.i.i57, label %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i58, label %_ZNK3sat4drat5valueENS_7literalE.exit61.thread

_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i58:     ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i56
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.az
  %.0.i.sroa.speculate.load..i59 = load i32, ptr %i.ba, align 4, !tbaa !108 ; 3 uses
  %i.bb = icmp eq i32 %.0.i.sroa.speculate.load..i59, 0
  br i1 %i.bb, label %_ZNK3sat4drat5valueENS_7literalE.exit61.thread, label %_ZNK3sat4drat5valueENS_7literalE.exit61

_ZNK3sat4drat5valueENS_7literalE.exit61:          ; preds = %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i58
  %i.bc = trunc i32 %i.as to i1
  %i.bd = sub nsw i32 0, %.0.i.sroa.speculate.load..i59
  %spec.select.i60 = select i1 %i.bc, i32 %i.bd, i32 %.0.i.sroa.speculate.load..i59
  %.not53 = icmp eq i32 %spec.select.i60, -1
  br i1 %.not53, label %bb.j, label %_ZNK3sat4drat5valueENS_7literalE.exit61.thread

_ZNK3sat4drat5valueENS_7literalE.exit61.thread:   ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i56, %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i58, %bb.g, %_ZNK3sat4drat5valueENS_7literalE.exit61
  store i32 %i.as, ptr %i.an, align 4, !tbaa !70
  %i.be = xor i32 %i.as, 1
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.bg = zext i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !71 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK3sat4drat5valueENS_7literalE.exit61.thread
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !70 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !70
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %bb.i, label %.thread.loopexit

bb.i:                                             ; preds = %bb.h, %_ZNK3sat4drat5valueENS_7literalE.exit61.thread
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
  %.pre.i = load ptr, ptr %i.bh, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !70
  br label %.thread.loopexit

bb.j:                                             ; preds = %_ZNK3sat4drat5valueENS_7literalE.exit61, %bb.f, %.lr.ph139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.bp = icmp samesign ult i64 %indvars.iv.next, %i.ap
  br i1 %i.bp, label %.lr.ph139, label %.critedge, !llvm.loop !269

.critedge:                                        ; preds = %bb.j, %.preheader
  %.sroa.01.0.copyload = load i32, ptr %i.s, align 8, !tbaa !70 ; 2 uses
  %i.bq = lshr i32 %.sroa.01.0.copyload, 1        ; 2 uses
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !68  ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZNK3sat4drat5valueENS_7literalE.exit67.thread, label %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i62

_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i62:       ; preds = %.critedge
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !70
  %.not.i.i63 = icmp ult i32 %i.bq, %i.bu
  br i1 %.not.i.i63, label %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i64, label %_ZNK3sat4drat5valueENS_7literalE.exit67.thread

_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i64:     ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i62
  %i.bv = zext nneg i32 %i.bq to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bv
  %.0.i.sroa.speculate.load..i65 = load i32, ptr %i.bw, align 4, !tbaa !108 ; 3 uses
  %i.bx = icmp eq i32 %.0.i.sroa.speculate.load..i65, 0
  br i1 %i.bx, label %_ZNK3sat4drat5valueENS_7literalE.exit67.thread, label %_ZNK3sat4drat5valueENS_7literalE.exit67

_ZNK3sat4drat5valueENS_7literalE.exit67:          ; preds = %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i64
  %i.by = trunc i32 %.sroa.01.0.copyload to i1
  %i.bz = sub nsw i32 0, %.0.i.sroa.speculate.load..i65
  %spec.select.i66 = select i1 %i.by, i32 %i.bz, i32 %.0.i.sroa.speculate.load..i65
  %i.ca = icmp eq i32 %spec.select.i66, -1
  br i1 %i.ca, label %.thread83, label %_ZNK3sat4drat5valueENS_7literalE.exit67.thread

.thread83:                                        ; preds = %_ZNK3sat4drat5valueENS_7literalE.exit67
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i8 1, ptr %i.cb, align 8, !tbaa !106
  br label %.loopexit

_ZNK3sat4drat5valueENS_7literalE.exit67.thread:   ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i62, %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i64, %.critedge, %_ZNK3sat4drat5valueENS_7literalE.exit67
  %i.cc = load i32, ptr %.095, align 4, !tbaa !70
  store i32 %i.cc, ptr %.04894, align 4, !tbaa !70
  %i.cd = getelementptr inbounds nuw i8, ptr %.04894, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.s, align 8, !tbaa !70
  tail call void @_ZN3sat4drat6assignENS_7literalEPNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 %.sroa.0.0.copyload, ptr noundef nonnull %i.r)
  br label %.thread

.thread.loopexit:                                 ; preds = %bb.i, %bb.h
  %i.ce = phi i32 [ %.pre2.i, %bb.i ], [ %i.bl, %bb.h ] ; 2 uses
  %i.cf = phi ptr [ %.pre.i, %bb.i ], [ %i.bi, %bb.h ] ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4
  %i.ch = zext i32 %i.ce to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ch
  store i32 %i.n, ptr %i.ci, align 4, !tbaa !70
  %i.cj = add i32 %i.ce, 1
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !70
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %_ZNK3sat4drat5valueENS_7literalE.exit67.thread, %bb.e
  %.382 = phi ptr [ %i.ak, %bb.e ], [ %i.cd, %_ZNK3sat4drat5valueENS_7literalE.exit67.thread ], [ %.04894, %.thread.loopexit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.095, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ck, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !270

.loopexit:                                        ; preds = %_ZN6vectorIjLb0EjE3endEv.exit, %.thread83
  %.04891 = phi ptr [ %.04894, %.thread83 ], [ %i.e, %_ZN6vectorIjLb0EjE3endEv.exit ] ; 5 uses
  %.089 = phi ptr [ %.095, %.thread83 ], [ %i.e, %_ZN6vectorIjLb0EjE3endEv.exit ] ; 5 uses
  %.not5498 = icmp eq ptr %.089, %i.k
  br i1 %.not5498, label %._crit_edge, label %.lr.ph101.preheader

.lr.ph101.preheader:                              ; preds = %.loopexit
  %.04891140 = ptrtoaddr ptr %.04891 to i64
  %i.cl = ptrtoaddr ptr %.089 to i64              ; 2 uses
  %i.cm = add i64 %i.j, %2
  %i.cn = add i64 %i.cm, -4
  %i.co = sub i64 %i.cn, %i.cl                    ; 2 uses
  %i.cp = lshr i64 %i.co, 2
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.co, 44
  %i.cr = sub i64 %i.cl, %.04891140
  %diff.check = icmp ugt i64 %i.cr, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph101.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph101.preheader
  %n.vec = and i64 %i.cq, 9223372036854775800     ; 3 uses
  %i.cs = shl i64 %n.vec, 2                       ; 2 uses
  %i.ct = getelementptr i8, ptr %.089, i64 %i.cs
  %i.cu = getelementptr i8, ptr %.04891, i64 %i.cs ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.089, i64 %i.cv ; 2 uses
  %next.gep142 = getelementptr i8, ptr %.04891, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !70
  %wide.load143 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !70
  %i.cx = getelementptr i8, ptr %next.gep142, i64 16
  store <4 x i32> %wide.load, ptr %next.gep142, align 4, !tbaa !70
  store <4 x i32> %wide.load143, ptr %i.cx, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !271

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph101.preheader146

.lr.ph101.preheader146:                           ; preds = %.lr.ph101.preheader, %middle.block
  %.1100.ph = phi ptr [ %.089, %.lr.ph101.preheader ], [ %i.ct, %middle.block ]
  %.599.ph = phi ptr [ %.04891, %.lr.ph101.preheader ], [ %i.cu, %middle.block ]
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.preheader146, %.lr.ph101
  %.1100 = phi ptr [ %i.da, %.lr.ph101 ], [ %.1100.ph, %.lr.ph101.preheader146 ] ; 2 uses
  %.599 = phi ptr [ %i.db, %.lr.ph101 ], [ %.599.ph, %.lr.ph101.preheader146 ] ; 2 uses
  %i.cz = load i32, ptr %.1100, align 4, !tbaa !70
  store i32 %i.cz, ptr %.599, align 4, !tbaa !70
  %i.da = getelementptr inbounds nuw i8, ptr %.1100, i64 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.599, i64 4 ; 2 uses
  %.not54 = icmp eq ptr %i.da, %i.k
  br i1 %.not54, label %._crit_edge, label %.lr.ph101, !llvm.loop !272

._crit_edge:                                      ; preds = %.thread, %.lr.ph101, %middle.block, %.loopexit
  %.5.lcssa.ph = phi ptr [ %i.db, %.lr.ph101 ], [ %.04891, %.loopexit ], [ %i.cu, %middle.block ], [ %.382, %.thread ]
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !71   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE7set_endEPj.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.dc = ptrtoint ptr %.5.lcssa.ph to i64
  %i.dd = ptrtoint ptr %.pr to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = lshr exact i64 %i.de, 2
  %i.dg = trunc i64 %i.df to i32
  %i.dh = getelementptr inbounds i8, ptr %.pr, i64 -4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !70
  br label %_ZN6vectorIjLb0EjE7set_endEPj.exit

_ZN6vectorIjLb0EjE7set_endEPj.exit:               ; preds = %bb.a, %._crit_edge, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK3sat4drat10get_statusEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.sat::status") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(664) %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 {
bb.a:
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86, !nonnull !34, !align !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3169
  %i.d = load i8, ptr %i.c, align 1, !tbaa !222, !range !33, !noundef !34
  %i.e = trunc nuw i8 %i.d to i1
  %spec.select = select i1 %i.e, i32 2, i32 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ 2, %bb.a ], [ %spec.select, %bb.b ]
  store i32 %.sink, ptr %0, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.f, align 4, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat4drat3addEv(ptr noundef nonnull align 8 dereferenceable(664) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [10000 x i8], align 16            ; 5 uses
  %1 = alloca %"class.sat::status", align 8       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !95
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76   ; 2 uses
  %.not2 = icmp eq ptr %i.i, null
  br i1 %.not2, label %bb.d, label %_ZN3sat4drat5bdumpEjPKNS_7literalENS_6statusE.exit

_ZN3sat4drat5bdumpEjPKNS_7literalENS_6statusE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 97, ptr %i.a, align 16, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.j, align 1, !tbaa !35
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.a, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.d

bb.d:                                             ; preds = %_ZN3sat4drat5bdumpEjPKNS_7literalENS_6statusE.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 641
  %i.m = load i8, ptr %i.l, align 1, !tbaa !88, !range !33, !noundef !34
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN3sat4drat6verifyEjPKNS_7literalE(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 noundef 0, ptr noundef null)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load ptr, ptr %0, align 8, !tbaa !223    ; 3 uses
  %.not3 = icmp eq ptr %i.o, null
  br i1 %.not3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %1, align 8, !tbaa !92, !alias.scope !275
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 -1, ptr %i.p, align 4, !tbaa !99, !alias.scope !275
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !105, !alias.scope !275
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 8 dead_on_return %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat4drat3addENS_7literalEb(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [10000 x i8], align 16            ; 7 uses
  %3 = alloca %"class.sat::literal", align 4      ; 3 uses
  %4 = alloca %"class.sat::status", align 8       ; 4 uses
  %5 = alloca %"class.sat::status", align 8       ; 4 uses
  %6 = alloca %"class.sat::status", align 8       ; 4 uses
  store i32 %1, ptr %3, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !95
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !95
  br i1 %2, label %_ZNK3sat4drat10get_statusEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86, !noalias !278, !nonnull !34, !align !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3169
  %i.h = load i8, ptr %i.g, align 1, !tbaa !222, !range !33, !noalias !278, !noundef !34
  %i.i = trunc nuw i8 %i.h to i1
  %spec.select.i = select i1 %i.i, i32 2, i32 1
  br label %_ZNK3sat4drat10get_statusEb.exit

_ZNK3sat4drat10get_statusEb.exit:                 ; preds = %bb.a, %bb.b
  %.sink.i = phi i32 [ 2, %bb.a ], [ %spec.select.i, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK3sat4drat10get_statusEb.exit
  store i32 %.sink.i, ptr %4, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.l, align 4, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !105
  call void @_ZN3sat4drat4dumpEjPKNS_7literalENS_6statusE(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull align 8 dead_on_return %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK3sat4drat10get_statusEb.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76
  %.not1 = icmp ne ptr %i.o, null
  %cond = icmp eq i32 %.sink.i, 2
  %or.cond = select i1 %.not1, i1 %cond, i1 false
  br i1 %or.cond, label %bb.e, label %_ZN3sat4drat5bdumpEjPKNS_7literalENS_6statusE.exit
end_hunk_0
