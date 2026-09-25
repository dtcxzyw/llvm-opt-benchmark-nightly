Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMUnwindOpAsm?download=true
inline.NumInlined: 193
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm21UnwindOpcodeAssembler11EmitRegSaveEj:bb.a
bb.z:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i
  store i32 %i.dd, ptr %i.da, align 4
  %i.dg = load i32, ptr %i.cx, align 8, !tbaa !17
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr %i.cx, align 8, !tbaa !17
  br label %_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit

_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit: ; preds = %bb.z, %bb.y, %bb.s
  %i.di = and i32 %.1, 15                         ; 2 uses
  %.not23 = icmp eq i32 %i.di, 0
  br i1 %.not23, label %_ZN4llvm21UnwindOpcodeAssembler8EmitInt8Ej.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !11 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !12
  %.not.i.i34 = icmp ult i64 %i.dk, %i.dm
  br i1 %.not.i.i34, label %bb.ac, label %bb.ab, !prof !13

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIhLb1EE15growAndPushBackEh(ptr noundef nonnull align 8 dereferenceable(105) %0, i8 noundef zeroext -79)
  %.pre.i35 = load i64, ptr %i.dj, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i36

bb.ac:                                            ; preds = %bb.aa
  %i.dn = load ptr, ptr %0, align 8, !tbaa !14
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dk
  store i8 -79, ptr %i.do, align 1
  %i.dp = load i64, ptr %i.dj, align 8, !tbaa !11
  %i.dq = add i64 %i.dp, 1                        ; 2 uses
  store i64 %i.dq, ptr %i.dj, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i36

_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i36: ; preds = %bb.ac, %bb.ab
  %i.dr = phi i64 [ %.pre.i35, %bb.ab ], [ %i.dq, %bb.ac ] ; 2 uses
  %i.ds = trunc nuw nsw i32 %i.di to i8           ; 2 uses
  %i.dt = load i64, ptr %i.dl, align 8, !tbaa !12
  %.not.i2.i37 = icmp ult i64 %i.dr, %i.dt
  br i1 %.not.i2.i37, label %bb.ae, label %bb.ad, !prof !13

bb.ad:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i36
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIhLb1EE15growAndPushBackEh(ptr noundef nonnull align 8 dereferenceable(105) %0, i8 noundef zeroext %i.ds)
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i38

bb.ae:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i36
  %i.du = load ptr, ptr %0, align 8, !tbaa !14
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dr
  store i8 %i.ds, ptr %i.dv, align 1
  %i.dw = load i64, ptr %i.dj, align 8, !tbaa !11
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dj, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i38

_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i38: ; preds = %bb.ae, %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !17 ; 2 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !18
  %i.eg = add i32 %i.ef, 2                        ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !19
  %.not.i4.i39 = icmp ult i32 %i.eb, %i.ei
  br i1 %.not.i4.i39, label %bb.ag, label %bb.af, !prof !13

bb.af:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i38
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i32 noundef %i.eg)
  br label %_ZN4llvm21UnwindOpcodeAssembler8EmitInt8Ej.exit

bb.ag:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i38
  store i32 %i.eg, ptr %i.ed, align 4
  %i.ej = load i32, ptr %i.ea, align 8, !tbaa !17
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ea, align 8, !tbaa !17
  br label %_ZN4llvm21UnwindOpcodeAssembler8EmitInt8Ej.exit

_ZN4llvm21UnwindOpcodeAssembler8EmitInt8Ej.exit:  ; preds = %bb.ag, %bb.af, %bb.f, %bb.e, %_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm21UnwindOpcodeAssembler14EmitVFPRegSaveEj(ptr noundef nonnull align 8 dereferenceable(105) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i32 %1, -65536                       ; 2 uses
  %i.b = and i32 %1, 65535                        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.not2123 = icmp eq i32 %i.a, 0
  br i1 %.not2123, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit
  %.02024 = phi i32 [ %i.av, %_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.h = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.02024, i1 true) ; 2 uses
  %i.i = shl i32 %.02024, %i.h
  %i.j = xor i32 %i.i, -1
  %i.k = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.j, i1 false) ; 2 uses
  %i.l = add nuw nsw i32 %i.k, %i.h               ; 2 uses
  %i.m = sub nsw i32 32, %i.l                     ; 2 uses
  %i.n = icmp samesign ult i32 %i.l, 17
  %i.o = select i1 %i.n, i32 51200, i32 51456
  %.lhs.trunc = trunc nsw i32 %i.m to i8
  %i.p = srem i8 %.lhs.trunc, 16
  %.sext = sext i8 %i.p to i32
  %i.q = shl nsw i32 %.sext, 4
  %i.r = add nsw i32 %i.k, -1
  %i.s = or i32 %i.o, %i.r
  %i.t = or i32 %i.s, %i.q                        ; 2 uses
  %i.u = lshr i32 %i.t, 8
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.x = load i64, ptr %i.d, align 8, !tbaa !12
  %.not.i.i = icmp ult i64 %i.w, %i.x
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIhLb1EE15growAndPushBackEh(ptr noundef nonnull align 8 dereferenceable(105) %0, i8 noundef zeroext %i.v)
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i

bb.c:                                             ; preds = %.lr.ph
  %i.y = load ptr, ptr %0, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.v, ptr %i.z, align 1
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i

_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i: ; preds = %bb.c, %bb.b
  %i.ac = phi i64 [ %.pre.i, %bb.b ], [ %i.ab, %bb.c ] ; 2 uses
  %i.ad = trunc i32 %i.t to i8                    ; 2 uses
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !12
  %.not.i2.i = icmp ult i64 %i.ac, %i.ae
  br i1 %.not.i2.i, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIhLb1EE15growAndPushBackEh(ptr noundef nonnull align 8 dereferenceable(105) %0, i8 noundef zeroext %i.ad)
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i
  %i.af = load ptr, ptr %0, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  store i8 %i.ad, ptr %i.ag, align 1
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i

_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i: ; preds = %bb.e, %bb.d
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.ak = load i32, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18
  %i.ap = add i32 %i.ao, 2                        ; 2 uses
  %i.aq = load i32, ptr %i.g, align 4, !tbaa !19
  %.not.i4.i = icmp ult i32 %i.ak, %i.aq
  br i1 %.not.i4.i, label %bb.g, label %bb.f, !prof !13

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.ap)
  br label %_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i
  store i32 %i.ap, ptr %i.am, align 4
  %i.ar = load i32, ptr %i.f, align 8, !tbaa !17
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.f, align 8, !tbaa !17
  br label %_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit

_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit: ; preds = %bb.f, %bb.g
  %i.at = shl nsw i32 -1, %i.m
  %i.au = xor i32 %i.at, -1
  %i.av = and i32 %.02024, %i.au                  ; 2 uses
  %.not21 = icmp eq i32 %i.av, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit, %bb.a
  %.not2123.1 = icmp eq i32 %i.b, 0
  br i1 %.not2123.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit.1
  %.02024.1 = phi i32 [ %i.ck, %_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit.1 ], [ %i.b, %._crit_edge ] ; 3 uses
  %i.aw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.02024.1, i1 true) ; 2 uses
  %i.ax = shl i32 %.02024.1, %i.aw
  %i.ay = xor i32 %i.ax, -1
  %i.az = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ay, i1 false) ; 2 uses
  %i.ba = add nuw nsw i32 %i.az, %i.aw            ; 2 uses
  %i.bb = sub nsw i32 32, %i.ba                   ; 2 uses
  %i.bc = icmp samesign ult i32 %i.ba, 17
  %i.bd = select i1 %i.bc, i32 51200, i32 51456
  %.lhs.trunc.1 = trunc nsw i32 %i.bb to i8
  %i.be = srem i8 %.lhs.trunc.1, 16
  %.sext.1 = sext i8 %i.be to i32
  %i.bf = shl nsw i32 %.sext.1, 4
  %i.bg = add nsw i32 %i.az, -1
  %i.bh = or i32 %i.bd, %i.bg
  %i.bi = or i32 %i.bh, %i.bf                     ; 2 uses
  %i.bj = lshr i32 %i.bi, 8
  %i.bk = trunc i32 %i.bj to i8                   ; 2 uses
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.bm = load i64, ptr %i.d, align 8, !tbaa !12
  %.not.i.i.1 = icmp ult i64 %i.bl, %i.bm
  br i1 %.not.i.i.1, label %bb.i, label %bb.h, !prof !13

bb.h:                                             ; preds = %.lr.ph.1
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIhLb1EE15growAndPushBackEh(ptr noundef nonnull align 8 dereferenceable(105) %0, i8 noundef zeroext %i.bk)
  %.pre.i.1 = load i64, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i.1

bb.i:                                             ; preds = %.lr.ph.1
  %i.bn = load ptr, ptr %0, align 8, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 %i.bk, ptr %i.bo, align 1
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !11
  %i.bq = add i64 %i.bp, 1                        ; 2 uses
  store i64 %i.bq, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i.1

_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i.1: ; preds = %bb.i, %bb.h
  %i.br = phi i64 [ %.pre.i.1, %bb.h ], [ %i.bq, %bb.i ] ; 2 uses
  %i.bs = trunc i32 %i.bi to i8                   ; 2 uses
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !12
  %.not.i2.i.1 = icmp ult i64 %i.br, %i.bt
  br i1 %.not.i2.i.1, label %bb.k, label %bb.j, !prof !13

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i.1
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIhLb1EE15growAndPushBackEh(ptr noundef nonnull align 8 dereferenceable(105) %0, i8 noundef zeroext %i.bs)
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i.1

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i.1
  %i.bu = load ptr, ptr %0, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.br
  store i8 %i.bs, ptr %i.bv, align 1
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !11
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i.1

_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i.1: ; preds = %bb.k, %bb.j
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.bz = load i32, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !18
  %i.ce = add i32 %i.cd, 2                        ; 2 uses
  %i.cf = load i32, ptr %i.g, align 4, !tbaa !19
  %.not.i4.i.1 = icmp ult i32 %i.bz, %i.cf
  br i1 %.not.i4.i.1, label %bb.m, label %bb.l, !prof !13

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i.1
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.ce)
  br label %_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit.1

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit3.i.1
  store i32 %i.ce, ptr %i.cb, align 4
  %i.cg = load i32, ptr %i.f, align 8, !tbaa !17
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.f, align 8, !tbaa !17
  br label %_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit.1

_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit.1: ; preds = %bb.m, %bb.l
  %i.ci = shl nsw i32 -1, %i.bb
  %i.cj = xor i32 %i.ci, -1
  %i.ck = and i32 %.02024.1, %i.cj                ; 2 uses
  %.not21.1 = icmp eq i32 %i.ck, 0
  br i1 %.not21.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !22

._crit_edge.1:                                    ; preds = %_ZN4llvm21UnwindOpcodeAssembler9EmitInt16Ej.exit.1, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm21UnwindOpcodeAssembler9EmitSetSPEt(ptr noundef nonnull align 8 dereferenceable(105) %0, i16 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = trunc i16 %1 to i8
  %i.b = or i8 %i.a, -112                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !12
  %.not.i.i = icmp ult i64 %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIhLb1EE15growAndPushBackEh(ptr noundef nonnull align 8 dereferenceable(105) %0, i8 noundef zeroext %i.b)
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  store i8 %i.b, ptr %i.h, align 1
  %i.i = load i64, ptr %i.c, align 8, !tbaa !11
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i

_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i: ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  %i.s = add i32 %i.r, 1                          ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19
  %.not.i1.i = icmp ult i32 %i.n, %i.u
  br i1 %.not.i1.i, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i32 noundef %i.s)
  br label %_ZN4llvm21UnwindOpcodeAssembler8EmitInt8Ej.exit

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i
  store i32 %i.s, ptr %i.p, align 4
  %i.v = load i32, ptr %i.m, align 8, !tbaa !17
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.m, align 8, !tbaa !17
  br label %_ZN4llvm21UnwindOpcodeAssembler8EmitInt8Ej.exit

_ZN4llvm21UnwindOpcodeAssembler8EmitInt8Ej.exit:  ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm21UnwindOpcodeAssembler12EmitSPOffsetEl(ptr noundef nonnull align 8 dereferenceable(105) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = icmp sgt i64 %1, 512
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i8 -78, ptr %i.a, align 16, !tbaa !21
  %i.c = add nsw i64 %1, -516
  %i.d = ashr i64 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.021.i = phi ptr [ %i.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.020.i = phi i64 [ %i.f, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.f = lshr i64 %.020.i, 7                      ; 2 uses
  %.not.i.not = icmp eq i64 %i.f, 0               ; 2 uses
  %i.g = trunc i64 %.020.i to i8                  ; 2 uses
  %i.h = or i8 %i.g, -128
  %.0.i = select i1 %.not.i.not, i8 %i.g, i8 %i.h
  %i.i = getelementptr i8, ptr %.021.i, i64 1     ; 2 uses
  store i8 %.0.i, ptr %.021.i, align 1, !tbaa !21
  br i1 %.not.i.not, label %_ZN4llvm13encodeULEB128EmPhj.exit, label %bb.c, !llvm.loop !23

_ZN4llvm13encodeULEB128EmPhj.exit:                ; preds = %bb.c
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = and i64 %i.l, 4294967295
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  %i.t = call noundef ptr @_ZN4llvm15SmallVectorImplIhE6insertIPKhvEEPhS5_T_S6_(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.s) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !17   ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !18
  %i.ac = trunc i64 %i.n to i32
  %i.ad = add i32 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19
  %.not.i.i = icmp ult i32 %i.x, %i.af
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %_ZN4llvm13encodeULEB128EmPhj.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i32 noundef %i.ad)
  br label %_ZN4llvm21UnwindOpcodeAssembler9emitBytesEPKhm.exit

bb.e:                                             ; preds = %_ZN4llvm13encodeULEB128EmPhj.exit
end_hunk_0
