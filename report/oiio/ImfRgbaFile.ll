inline.NumInlined: 405
inline.NumDeleted: 157
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10readPixelsEii:bb.a
bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !177
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart11frameBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !76, !noalias !229
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !73, !noalias !229 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !70, !alias.scope !232
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.z, align 8, !tbaa !73, !alias.scope !232
  store i8 0, ptr %i.y, align 8, !tbaa !75, !alias.scope !232
  %i.aa = add i64 %i.x, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aa)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !73, !alias.scope !232
  %i.ac = sub i64 4611686018427387903, %i.ab
  %i.ad = icmp ult i64 %i.ac, %i.x
  br i1 %i.ad, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.v, i64 noundef %i.x)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.af = load i64, ptr %i.z, align 8, !tbaa !73, !alias.scope !232
  %i.ag = icmp eq i64 %i.af, 4611686018427387903
  br i1 %i.ag, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #27
          to label %.cont.i.i unwind label %bb.h

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !76, !alias.scope !232 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.y
  br i1 %i.ak, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.y, align 8, !tbaa !75, !alias.scope !232
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.phi, %bb.d ], [ %i.ai, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.an = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer9findSliceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.j       ; 3 uses

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ao = load ptr, ptr %3, align 8, !tbaa !76    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.y
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.aq = load i64, ptr %i.y, align 8, !tbaa !75
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !177
  %i.at = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
  %i.au = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.at) ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !235 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !235 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !236
  %i.ba = ptrtoint ptr %i.az to i64
  %.not2740 = icmp sgt i32 %1, %2
  br i1 %.not2740, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !240
  %.not2838 = icmp sgt i32 %i.av, %i.ax
  br i1 %.not2838, label %.loopexit, label %.lr.ph42.split

.lr.ph42.split:                                   ; preds = %.lr.ph42
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !241 ; 5 uses
  %i.bf = sext i32 %i.av to i64                   ; 2 uses
  %i.bg = add i32 %i.ax, 1                        ; 2 uses
  %i.bh = sext i32 %1 to i64
  %i.bi = add i32 %2, 1
  %i.bj = sub i32 %i.bg, %i.av
  %i.bk = sub i32 %i.ax, %i.av
  %xtraiter = and i32 %i.bj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.bl = icmp ult i32 %i.bk, 3
  br label %.lr.ph

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %3, align 8, !tbaa !76    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.y
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.j
  %i.bp = load i64, ptr %i.y, align 8, !tbaa !75
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

.lr.ph:                                           ; preds = %.lr.ph42.split, %._crit_edge
  %indvars.iv45 = phi i64 [ %i.bh, %.lr.ph42.split ], [ %indvars.iv.next46, %._crit_edge ] ; 2 uses
  %i.br = mul i64 %i.bc, %indvars.iv45
  %i.bs = add i64 %i.br, %i.ba                    ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.bf, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.bt = mul i64 %i.be, %indvars.iv.prol
  %i.bu = add i64 %i.bs, %i.bt
  %i.bv = inttoptr i64 %i.bu to ptr               ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = load i16, ptr %i.bv, align 2, !tbaa !161 ; 2 uses
  store i16 %i.bx, ptr %i.bw, align 2, !tbaa !161
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !161
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !242

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.bf, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  br i1 %i.bl, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, 1 ; 2 uses
  %lftr.wideiv48 = trunc i64 %indvars.iv.next46 to i32
  %exitcond49.not = icmp eq i32 %i.bi, %lftr.wideiv48
  br i1 %exitcond49.not, label %.loopexit, label %.lr.ph, !llvm.loop !243

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.bz = mul i64 %i.be, %indvars.iv
  %i.ca = add i64 %i.bs, %i.bz
  %i.cb = inttoptr i64 %i.ca to ptr               ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cd = load i16, ptr %i.cb, align 2, !tbaa !161 ; 2 uses
  store i16 %i.cd, ptr %i.cc, align 2, !tbaa !161
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !161
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cf = mul i64 %i.be, %indvars.iv.next
  %i.cg = add i64 %i.bs, %i.cf
  %i.ch = inttoptr i64 %i.cg to ptr               ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cj = load i16, ptr %i.ch, align 2, !tbaa !161 ; 2 uses
  store i16 %i.cj, ptr %i.ci, align 2, !tbaa !161
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !161
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %i.cl = mul i64 %i.be, %indvars.iv.next.1
  %i.cm = add i64 %i.bs, %i.cl
  %i.cn = inttoptr i64 %i.cm to ptr               ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.cp = load i16, ptr %i.cn, align 2, !tbaa !161 ; 2 uses
  store i16 %i.cp, ptr %i.co, align 2, !tbaa !161
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !161
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %i.cr = mul i64 %i.be, %indvars.iv.next.2
  %i.cs = add i64 %i.bs, %i.cr
  %i.ct = inttoptr i64 %i.cs to ptr               ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cv = load i16, ptr %i.ct, align 2, !tbaa !161 ; 2 uses
  store i16 %i.cv, ptr %i.cu, align 2, !tbaa !161
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !161
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.bg, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.new, !llvm.loop !244

.loopexit:                                        ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph42, %bb.e, %_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEii.exit
  ret void
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputPart10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart11frameBufferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer9findSliceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10readPixelsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10isCompleteEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.c = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile5partsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = add nuw nsw i32 %.057, 1                 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.g = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile5partsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  %.not = icmp slt i32 %i.e, %i.g
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !245

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.057 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.i = tail call noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile12partCompleteEi(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %.057) ; 3 uses
  br i1 %i.i, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %.lr.ph ], [ %i.i, %bb.b ]
  ret i1 %.lcssa
}

declare noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile5partsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile12partCompleteEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile6headerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile5partsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.c = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile5partsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile8fileNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart8fileNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile11frameBufferEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart11frameBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile13displayWindowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header13displayWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10dataWindowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile16pixelAspectRatioEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header16pixelAspectRatioEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load float, ptr %i.d, align 4, !tbaa !32
  ret float %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile18screenWindowCenterEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_1::Vec2.8") align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18screenWindowCenterEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !32
  store <2 x float> %i.e, ptr %0, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile17screenWindowWidthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header17screenWindowWidthEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load float, ptr %i.d, align 4, !tbaa !32
  ret float %i.e
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile9lineOrderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile11compressionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !68
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7versionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart7versionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret i32 %i.c
}

declare noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart7versionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514ChromaticitiesC1ERKN9Imath_3_14Vec2IfEES5_S5_S5_(ptr noundef nonnull align 4 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #2

declare noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_517hasChromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #2

declare noundef nonnull align 4 dereferenceable(32) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514chromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #2

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca9computeYwERKNS_14ChromaticitiesE(ptr dead_on_unwind writable sret(%"class.Imath_3_1::Vec3") align 4, ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246
  tail call void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !247  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 344) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !248

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
end_hunk_0
