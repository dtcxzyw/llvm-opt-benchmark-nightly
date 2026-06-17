inline.NumInlined: 3640
inline.NumDeleted: 1030
begin_hunk_0_@_ZN6hermes2vm23typedArrayPrototypeFillEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.bi = fcmp ogt double %.mask.i59.pre-phi, %i.i
  %i.bj = select i1 %i.bi, double %i.i, double %.mask.i59.pre-phi
  br label %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit60

_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit60: ; preds = %bb.n, %bb.o
  %i.bk = phi double [ %i.bh, %bb.n ], [ %i.bj, %bb.o ]
  %i.bl = fptosi double %i.bk to i64              ; 12 uses
  %.sroa.0.0.copyload.i.i61 = load i64, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  %i.bm = and i64 %.sroa.0.0.copyload.i.i61, 281474976710655
  %i.bn = inttoptr i64 %i.bm to ptr               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !100 ; 2 uses
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit60
  %i.bq = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.br = zext i32 %i.bp to i64
  %i.bs = add i64 %i.br, %i.bq
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 37
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !101, !range !102, !noundef !103
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.p, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit60, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.bx, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 33, ptr %i.by, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.bz, align 8, !tbaa !12
  store ptr @.str.7, ptr %3, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.ca, align 8, !tbaa !14
  %i.cb = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.z

bb.p:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %.not = icmp slt i64 %i.bd, %i.bl
  br i1 %.not, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.cc = trunc i64 %i.bd to i32
  %i.cd = load i32, ptr %i.bn, align 4
  %i.ce = lshr i32 %i.cd, 24
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !382
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !396
  %i.ck = tail call i32 %i.cj(ptr nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.cc, ptr %.0.i.i.i.i.i.i) #10, !inline_history !397
  %.mask = and i32 %i.ck, 255
  %i.cl = icmp eq i32 %.mask, 0
  br i1 %i.cl, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i62 = load i64, ptr %i.d, align 8, !tbaa !21
  %i.cm = and i64 %.sroa.0.0.copyload.i.i62, 281474976710655
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = tail call noundef zeroext i8 @_ZNK6hermes2vm16JSTypedArrayBase12getByteWidthEv(ptr noundef nonnull align 4 dereferenceable(32) %i.cn) #10
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !117, !range !102, !noundef !103
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.20) #11
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.r
  %.sroa.0.0.copyload.i.i63 = load i64, ptr %i.d, align 8, !tbaa !21
  %i.cs = and i64 %.sroa.0.0.copyload.i.i63, 281474976710655
  %i.ct = inttoptr i64 %i.cs to ptr               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %.sroa.0.0.copyload.i.i.i64 = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cv = zext i32 %.sroa.0.0.copyload.i.i.i64 to i64
  %i.cw = add i64 %i.cv, %i.bq
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !350
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.db = load i64, ptr %i.da, align 8, !tbaa !21
  %i.dc = xor i64 %i.db, %i.cz
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  %i.df = load i32, ptr %i.de, align 4, !tbaa !110
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dg ; 7 uses
  %i.di = tail call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %i.co, i1 true)
  switch i8 %i.di, label %bb.y [
    i8 0, label %bb.t
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.x
  ]

bb.t:                                             ; preds = %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit
  %.not.i.i.i = icmp eq i64 %i.bl, %i.bd
  br i1 %.not.i.i.i, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 %i.bd ; 2 uses
  %gepdiff = sub nsw i64 %i.bl, %i.bd
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dj, i8 %i.dk, i64 %gepdiff, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.v:                                             ; preds = %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit
  %i.dl = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.bd ; 6 uses
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.bl
  %i.dn = load i16, ptr %i.dl, align 2, !tbaa !351 ; 3 uses
  %.not5.i.i.i = icmp eq i64 %i.bd, %i.bl
  br i1 %.not5.i.i.i, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %iter.check

iter.check:                                       ; preds = %bb.v
  %i.do = shl i64 %i.bl, 1
  %i.dp = add i64 %i.do, -2
  %i.dq = shl i64 %i.bd, 1
  %i.dr = sub i64 %i.dp, %i.dq                    ; 3 uses
  %i.ds = lshr exact i64 %i.dr, 1
  %i.dt = add nuw i64 %i.ds, 1                    ; 5 uses
  %min.iters.check137 = icmp ult i64 %i.dr, 6
  br i1 %min.iters.check137, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check138 = icmp ult i64 %i.dr, 30
  br i1 %min.iters.check138, label %vec.epilog.ph, label %vector.ph139

vector.ph139:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf140 = and i64 %i.dt, 12
  %n.vec141 = and i64 %i.dt, -16                  ; 4 uses
  %i.du = shl i64 %n.vec141, 1
  %i.dv = getelementptr i8, ptr %i.dl, i64 %i.du
  %broadcast.splatinsert142 = insertelement <8 x i16> poison, i16 %i.dn, i64 0
  %broadcast.splat143 = shufflevector <8 x i16> %broadcast.splatinsert142, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph139
  %index145 = phi i64 [ 0, %vector.ph139 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.dw = shl i64 %index145, 1
  %next.gep146 = getelementptr i8, ptr %i.dl, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep146, i64 16
  store <8 x i16> %broadcast.splat143, ptr %next.gep146, align 2, !tbaa !351
  store <8 x i16> %broadcast.splat143, ptr %i.dx, align 2, !tbaa !351
  %index.next147 = add nuw i64 %index145, 16      ; 2 uses
  %i.dy = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.dy, label %middle.block148, label %vector.body144, !llvm.loop !398

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.dt, %n.vec141
  br i1 %cmp.n149, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block148
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf140, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !401

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec141, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec152 = and i64 %i.dt, -4                   ; 3 uses
  %i.dz = shl i64 %n.vec152, 1
  %i.ea = getelementptr i8, ptr %i.dl, i64 %i.dz
  %broadcast.splatinsert153 = insertelement <4 x i16> poison, i16 %i.dn, i64 0
  %broadcast.splat154 = shufflevector <4 x i16> %broadcast.splatinsert153, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index155 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next157, %vec.epilog.vector.body ] ; 2 uses
  %i.eb = shl i64 %index155, 1
  %next.gep156 = getelementptr i8, ptr %i.dl, i64 %i.eb
  store <4 x i16> %broadcast.splat154, ptr %next.gep156, align 2, !tbaa !351
  %index.next157 = add nuw i64 %index155, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next157, %n.vec152
  br i1 %i.ec, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !402

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n158 = icmp eq i64 %i.dt, %n.vec152
  br i1 %cmp.n158, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.ph = phi ptr [ %i.dl, %iter.check ], [ %i.dv, %vec.epilog.iter.check ], [ %i.ea, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i16 %i.dn, ptr %.06.i.i.i, align 2, !tbaa !351
  %i.ed = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.ed, %i.dm
  br i1 %.not.i.i.i65, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !403

bb.w:                                             ; preds = %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.bd ; 4 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.bl
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !3  ; 2 uses
  %.not5.i.i.i66 = icmp eq i64 %i.bd, %i.bl
  br i1 %.not5.i.i.i66, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i67.preheader

.lr.ph.i.i.i67.preheader:                         ; preds = %bb.w
  %4 = sub i64 %i.bl, %i.bd
  %i.eh = add i64 %4, 4611686018427387903
  %5 = and i64 %i.eh, 4611686018427387903         ; 2 uses
  %i.ei = add nuw nsw i64 %5, 1                   ; 2 uses
  %min.iters.check123 = icmp samesign ult i64 %5, 7
  br i1 %min.iters.check123, label %.lr.ph.i.i.i67.preheader160, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph.i.i.i67.preheader
  %n.vec126 = and i64 %i.ei, 9223372036854775800  ; 3 uses
  %i.ej = shl i64 %n.vec126, 2
  %i.ek = getelementptr i8, ptr %i.ee, i64 %i.ej
  %broadcast.splatinsert127 = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat128 = shufflevector <4 x i32> %broadcast.splatinsert127, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph124
  %index130 = phi i64 [ 0, %vector.ph124 ], [ %index.next132, %vector.body129 ] ; 2 uses
  %i.el = shl i64 %index130, 2
  %next.gep131 = getelementptr i8, ptr %i.ee, i64 %i.el ; 2 uses
  %i.em = getelementptr i8, ptr %next.gep131, i64 16
  store <4 x i32> %broadcast.splat128, ptr %next.gep131, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat128, ptr %i.em, align 4, !tbaa !3
  %index.next132 = add nuw i64 %index130, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next132, %n.vec126
  br i1 %i.en, label %middle.block133, label %vector.body129, !llvm.loop !404

middle.block133:                                  ; preds = %vector.body129
  %cmp.n134 = icmp eq i64 %i.ei, %n.vec126
  br i1 %cmp.n134, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i67.preheader160

.lr.ph.i.i.i67.preheader160:                      ; preds = %.lr.ph.i.i.i67.preheader, %middle.block133
  %.06.i.i.i68.ph = phi ptr [ %i.ee, %.lr.ph.i.i.i67.preheader ], [ %i.ek, %middle.block133 ]
  br label %.lr.ph.i.i.i67

.lr.ph.i.i.i67:                                   ; preds = %.lr.ph.i.i.i67.preheader160, %.lr.ph.i.i.i67
  %.06.i.i.i68 = phi ptr [ %i.eo, %.lr.ph.i.i.i67 ], [ %.06.i.i.i68.ph, %.lr.ph.i.i.i67.preheader160 ] ; 2 uses
  store i32 %i.eg, ptr %.06.i.i.i68, align 4, !tbaa !3
  %i.eo = getelementptr inbounds nuw i8, ptr %.06.i.i.i68, i64 4 ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.eo, %i.ef
  br i1 %.not.i.i.i69, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i67, !llvm.loop !405

bb.x:                                             ; preds = %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.bd ; 4 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.bl
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !21 ; 2 uses
  %.not5.i.i.i70 = icmp eq i64 %i.bd, %i.bl
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %bb.x
  %6 = sub i64 %i.bl, %i.bd
  %i.es = add i64 %6, 2305843009213693951
  %7 = and i64 %i.es, 2305843009213693951         ; 2 uses
  %i.et = add nuw nsw i64 %7, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i64 %7, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i71.preheader162, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec = and i64 %i.et, 4611686018427387900     ; 3 uses
  %i.eu = shl i64 %n.vec, 3
  %i.ev = getelementptr i8, ptr %i.ep, i64 %i.eu
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.er, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ew = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ep, i64 %i.ew ; 2 uses
  %i.ex = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !21
  store <2 x i64> %broadcast.splat, ptr %i.ex, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !406

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader162

.lr.ph.i.i.i71.preheader162:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block
  %.06.i.i.i72.ph = phi ptr [ %i.ep, %.lr.ph.i.i.i71.preheader ], [ %i.ev, %middle.block ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader162, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.ez, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader162 ] ; 2 uses
  store i64 %i.er, ptr %.06.i.i.i72, align 8, !tbaa !21
  %i.ez = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ez, %i.eq
  br i1 %.not.i.i.i73, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !407

bb.y:                                             ; preds = %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit
  unreachable

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i67, %.lr.ph.i.i.i, %middle.block, %middle.block133, %middle.block148, %vec.epilog.middle.block, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.sroa.0.0.copyload.i74 = load i64, ptr %i.d, align 8, !tbaa !21
  br label %bb.z

bb.z:                                             ; preds = %bb.e, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.q, %bb.p, %bb.j, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, %_ZSt4fillIPhhEvT_S1_RKT0_.exit, %bb.a
  %.sroa.0102.2 = phi i32 [ 0, %bb.a ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ 0, %bb.e ], [ 1, %bb.p ], [ 1, %_ZSt4fillIPhhEvT_S1_RKT0_.exit ], [ 0, %bb.j ], [ %i.cb, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 0, %bb.q ]
  %.sroa.9.2 = phi i64 [ undef, %bb.a ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ undef, %bb.e ], [ %.sroa.0.0.copyload.i.i61, %bb.p ], [ %.sroa.0.0.copyload.i74, %_ZSt4fillIPhhEvT_S1_RKT0_.exit ], [ undef, %bb.j ], [ undef, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ undef, %bb.q ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0102.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.9.2, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1

declare { i32, i64 } @_ZN6hermes2vm12toBigInt_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1

declare noundef zeroext i8 @_ZNK6hermes2vm16JSTypedArrayBase12getByteWidthEv(ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23typedArrayPrototypeFindEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::NativeArgs", align 8 ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15
  store ptr %i.a, ptr %3, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.d = call fastcc { i32, i64 } @_ZN6hermes2vmL15typedFindHelperEPvbRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef dead_on_return %3)
  ret { i32, i64 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i32, i64 } @_ZN6hermes2vmL15typedFindHelperEPvbRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(address_is_null) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr nofree noundef nonnull readonly captures(none) dead_on_return %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !15, !noalias !408
  %i.b = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr %i.a, i1 noundef zeroext true) #10
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !15, !noalias !411 ; 7 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !21
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %.not57 = icmp eq i32 %i.j, 0
  br i1 %.not57, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !21 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.l, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.c
  %i.m = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add i32 %i.o, -1140850688
  %i.q = icmp ult i32 %i.p, 150994944
  %spec.select.i = select i1 %i.q, ptr %i.k, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit: ; preds = %bb.b, %bb.c, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.c ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 3 uses
  %i.r = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !19 ; 2 uses
  %i.s = icmp ugt i64 %i.r, -844424930131969
  %i.t = and i64 %i.r, 281474976710655
  %i.u = icmp ne i64 %i.t, 0
  %i.v = and i1 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.w, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 29, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.y, align 8, !tbaa !12
  store ptr @.str.6, ptr %4, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.z, align 8, !tbaa !14
  %i.aa = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.l

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  %i.ab = icmp ugt i32 %i.j, 1
  %i.ac = getelementptr inbounds i8, ptr %i.d, i64 -16
  %.sroa.02.0.i = select i1 %i.ab, ptr %i.ac, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 192 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !50
  %i.aj = icmp ult ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !51

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !41
  store i64 -1688849860263936, ptr %i.ag, align 8, !tbaa !21
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.f:                                             ; preds = %bb.d
  %i.al = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ae, i64 -1688849860263936) #10
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !38
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.e, %bb.f
  %i.am = phi ptr [ %i.ae, %bb.e ], [ %.pre, %bb.f ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.al, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr %2, ptr %5, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 156
  store i32 4, ptr %i.as, align 4, !tbaa !55
  store ptr %i.ap, ptr %i.aq, align 8
  store i32 1, ptr %i.ar, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 3 uses
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !57
  store ptr %5, ptr %i.ad, align 8, !tbaa !38
  %.not3959.not = icmp eq i32 %i.h, 0
  br i1 %.not3959.not, label %.critedge41, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.03760.us = phi i32 [ %i.bs, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %i.aw = xor i32 %.03760.us, -1
  %i.ax = add i32 %i.h, %i.aw                     ; 2 uses
  %.sroa.0.0.copyload.i.i42.us = load i64, ptr %i.d, align 8, !tbaa !21
  %i.ay = and i64 %.sroa.0.0.copyload.i.i42.us, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = lshr i32 %i.ba, 24
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !382
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !384
  %i.bh = call i64 %i.bg(ptr nonnull %i.az, ptr noundef nonnull align 8 dereferenceable(9816) %2, i32 noundef %i.ax) #10, !inline_history !388 ; 2 uses
end_hunk_0
