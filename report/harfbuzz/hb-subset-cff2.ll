Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN31cff2_private_dict_blend_opset_t10process_opEjRN3CFF27cff2_priv_dict_interp_env_tER34cff2_private_blend_encoder_param_t:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %5, ptr %6, align 8, !tbaa !119
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !502 ; 2 uses
  %.not51 = icmp eq i32 %i.cf, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.cg = load i64, ptr @_hb_NullPool, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %wide.trip.count = zext i32 %i.cf to i64
  br label %bb.ae

._crit_edge:                                      ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit, %bb.r
  %i.ci = icmp ugt i32 %0, 255
  br i1 %i.ci, label %bb.s, label %bb.x

bb.s:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 12, ptr %i.c, align 1, !tbaa !148
  %i.cj = load ptr, ptr %6, align 8, !tbaa !150, !nonnull !122, !align !151 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !132 ; 3 uses
  %i.cm = load i32, ptr %i.cj, align 8, !tbaa !131
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %bb.t, label %bb.u, !prof !97

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !133
  %i.cq = add nsw i32 %i.cl, 1
  store i32 %i.cq, ptr %i.ck, align 4, !tbaa !132
  %i.cr = zext i32 %i.cl to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cr
  store i8 12, ptr %i.cs, align 1, !tbaa !148
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit.i

bb.u:                                             ; preds = %bb.s
  %i.ct = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 1 dereferenceable(1) %i.c) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit.i

_ZN3CFF13str_encoder_t11encode_byteEh.exit.i:     ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cu = trunc i32 %0 to i8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.cu, ptr %i.b, align 1, !tbaa !148
  %i.cv = load ptr, ptr %6, align 8, !tbaa !150, !nonnull !122, !align !151 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !132 ; 3 uses
  %i.cy = load i32, ptr %i.cv, align 8, !tbaa !131
  %i.cz = icmp slt i32 %i.cx, %i.cy
  br i1 %i.cz, label %bb.v, label %bb.w, !prof !97

bb.v:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !133
  %i.dc = add nsw i32 %i.cx, 1
  store i32 %i.dc, ptr %i.cw, align 4, !tbaa !132
  %i.dd = zext i32 %i.cx to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dd
  store i8 %i.cu, ptr %i.de, align 1, !tbaa !148
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit3.i

bb.w:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit.i
  %i.df = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit3.i

_ZN3CFF13str_encoder_t11encode_byteEh.exit3.i:    ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN3CFF13str_encoder_t9encode_opEj.exit32

bb.x:                                             ; preds = %._crit_edge
  %i.dg = trunc nuw i32 %0 to i8                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.dg, ptr %i.a, align 1, !tbaa !148
  %i.dh = load ptr, ptr %6, align 8, !tbaa !150, !nonnull !122, !align !151 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !132 ; 3 uses
  %i.dk = load i32, ptr %i.dh, align 8, !tbaa !131
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.y, label %bb.z, !prof !97

bb.y:                                             ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !133
  %i.do = add nsw i32 %i.dj, 1
  store i32 %i.do, ptr %i.di, align 4, !tbaa !132
  %i.dp = zext i32 %i.dj to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dp
  store i8 %i.dg, ptr %i.dq, align 1, !tbaa !148
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit4.i

bb.z:                                             ; preds = %bb.x
  %i.dr = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit4.i

_ZN3CFF13str_encoder_t11encode_byteEh.exit4.i:    ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN3CFF13str_encoder_t9encode_opEj.exit32

_ZN3CFF13str_encoder_t9encode_opEj.exit32:        ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit3.i, %_ZN3CFF13str_encoder_t11encode_byteEh.exit4.i
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !133
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !132 ; 3 uses
  %i.dw = zext i32 %i.dv to i64                   ; 3 uses
  %i.dx = load ptr, ptr %2, align 8, !tbaa !220   ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 44 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !169
  %.not.i.i35 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i35, label %bb.aa, label %_ZN22hb_serialize_context_t5embedEPKcj.exit41, !prof !97

bb.aa:                                            ; preds = %_ZN3CFF13str_encoder_t9encode_opEj.exit32
  %i.ea = icmp slt i32 %i.dv, 0
  br i1 %i.ea, label %.critedge.i.i40, label %bb.ab, !prof !99

bb.ab:                                            ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !170
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !171 ; 4 uses
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = icmp slt i64 %i.eh, %i.dw
  br i1 %i.ei, label %.critedge.i.i40, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i37, !prof !99

.critedge.i.i40:                                  ; preds = %bb.ab, %bb.aa
  store i32 4, ptr %i.dy, align 4, !tbaa !169
  br label %_ZN22hb_serialize_context_t5embedEPKcj.exit41

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i37: ; preds = %bb.ab
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dw
  store ptr %i.ej, ptr %i.ed, align 8, !tbaa !171
  %.not.i38 = icmp eq ptr %i.ee, null
  %.not.i7.i39 = icmp eq i32 %i.dv, 0
  %or.cond49 = select i1 %.not.i38, i1 true, i1 %.not.i7.i39, !prof !634
  br i1 %or.cond49, label %_ZN22hb_serialize_context_t5embedEPKcj.exit41, label %bb.ac, !prof !634

bb.ac:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i37
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr readonly align 1 %i.dt, i64 %i.dw, i1 false), !alias.scope !1531
  br label %_ZN22hb_serialize_context_t5embedEPKcj.exit41

_ZN22hb_serialize_context_t5embedEPKcj.exit41:    ; preds = %_ZN3CFF13str_encoder_t9encode_opEj.exit32, %.critedge.i.i40, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i37, %bb.ac
  store i32 0, ptr %i.ce, align 4, !tbaa !502
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.el = load i32, ptr %5, align 8, !tbaa !131
  %i.em = add i32 %i.el, -1
  %spec.select.i.i.i42 = icmp ult i32 %i.em, -2
  br i1 %spec.select.i.i.i42, label %bb.ad, label %_ZN11hb_vector_tIhLb0EED2Ev.exit43

bb.ad:                                            ; preds = %_ZN22hb_serialize_context_t5embedEPKcj.exit41
  store i32 0, ptr %i.du, align 4, !tbaa !132
  %i.en = load ptr, ptr %i.ds, align 8, !tbaa !133
  call void @hb_free(ptr noundef %i.en) #16
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit43

_ZN11hb_vector_tIhLb0EED2Ev.exit43:               ; preds = %_ZN22hb_serialize_context_t5embedEPKcj.exit41, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ah

bb.ae:                                            ; preds = %.lr.ph, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit ] ; 3 uses
  %i.eo = load i32, ptr %i.ce, align 4, !tbaa !502
  %i.ep = zext i32 %i.eo to i64
  %.not.i44 = icmp samesign ult i64 %indvars.iv, %i.ep
  br i1 %.not.i44, label %bb.ag, label %bb.af, !prof !97

bb.af:                                            ; preds = %bb.ae
  store i8 1, ptr %i.ca, align 8, !tbaa !503
  store i64 %i.cg, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit

bb.ag:                                            ; preds = %bb.ae
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit: ; preds = %bb.af, %bb.ag
  %.0.i45 = phi ptr [ @_hb_CrapPool, %bb.af ], [ %i.eq, %bb.ag ]
  call void @_ZN3CFF13str_encoder_t13encode_num_tpERKNS_8number_tE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %.0.i45)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ae, !llvm.loop !1529

bb.ah:                                            ; preds = %bb.q, %bb.p, %_ZN11hb_vector_tIhLb0EED2Ev.exit43, %bb.o, %_ZNK3CFF22cff2_instancing_plan_t9remap_ivsEj.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN31cff2_private_dict_blend_opset_t13process_blendERN3CFF27cff2_priv_dict_interp_env_tER34cff2_private_blend_encoder_param_t(ptr noundef nonnull align 8 dereferenceable(4133) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN34cff2_private_blend_encoder_param_t13process_blendEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !223  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !502  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = add i32 %i.e, -1                         ; 3 uses
  store i32 %i.g, ptr %i.d, align 4, !tbaa !502
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %.pre.i.i = load double, ptr %i.i, align 8, !tbaa !145
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !tbaa !503
  %i.j = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.j, ptr @_hb_CrapPool, align 16
  %i.k = bitcast i64 %i.j to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.g, %bb.b ], [ 0, %bb.c ]    ; 7 uses
  %i.m = phi double [ %.pre.i.i, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  %i.n = fcmp ult double %i.m, f0xC1E0000000000000
  %i.o = fcmp ugt double %i.m, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.not9.i = or i1 %i.n, %i.o
  %i.p = fptosi double %i.m to i32                ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  %or.cond.i = select i1 %spec.select.not.i.i.not9.i, i1 true, i1 %i.q, !prof !504
  br i1 %or.cond.i, label %.sink.split.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit, !prof !504

.sink.split.i:                                    ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i
  store i8 1, ptr %i.c, align 8, !tbaa !503
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit

_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i, %.sink.split.i
  %.0.i = phi i32 [ %i.p, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i ], [ 0, %.sink.split.i ] ; 7 uses
  %.neg = xor i32 %i.b, -1
  %.neg38 = mul i32 %.0.i, %.neg
  %i.r = add i32 %.neg38, %i.l                    ; 5 uses
  %i.s = icmp ugt i32 %i.r, %i.l
  br i1 %i.s, label %bb.d, label %bb.e, !prof !99

bb.d:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !368
  %i.v = add i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.v, ptr %i.w, align 4, !tbaa !367
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit

bb.e:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !633
  %i.z = icmp ne ptr %i.y, null
  %i.aa = icmp ne i32 %i.b, 0
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ab = add i32 %i.r, %.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ad = load i64, ptr @_hb_NullPool, align 16   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !635
  %.fr42 = freeze i32 %i.af                       ; 2 uses
  %.not43 = icmp eq i32 %.fr42, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.trip.count49 = zext nneg i32 %.0.i to i64 ; 2 uses
  %i.ah = bitcast i64 %i.ad to double             ; 2 uses
  br i1 %.not43, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ai = mul i32 %.0.i, %i.b
  %i.aj = sub i32 %i.l, %i.ai
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.us
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.ak = trunc nuw i64 %indvars.iv46 to i32
  %i.al = add i32 %i.r, %i.ak                     ; 2 uses
  %.not.i39.us = icmp ult i32 %i.al, %i.l
  br i1 %.not.i39.us, label %bb.g, label %bb.f, !prof !97

bb.f:                                             ; preds = %.lr.ph.split.us
  store i8 1, ptr %i.c, align 8, !tbaa !503
  store i64 %i.ad, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.us

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.am ; 2 uses
  %.pre51 = load double, ptr %i.an, align 8, !tbaa !145
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.us

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.us: ; preds = %bb.g, %bb.f
  %i.ao = phi double [ %i.ah, %bb.f ], [ %.pre51, %bb.g ]
  %.0.i40.us = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.an, %bb.g ]
  %i.ap = fadd double %i.ao, 0.000000e+00
  %i.aq = tail call double @llvm.round.f64(double %i.ap)
  %i.ar = fptosi double %i.aq to i32
  %i.as = sitofp i32 %i.ar to double
  store double %i.as, ptr %.0.i40.us, align 8, !tbaa !145
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1532

bb.h:                                             ; preds = %bb.e
  tail call void @_ZN31cff2_private_dict_blend_opset_t14rewrite_blendsERN3CFF27cff2_priv_dict_interp_env_tER34cff2_private_blend_encoder_param_tjjj(ptr noundef nonnull align 8 dereferenceable(4133) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %i.r, i32 noundef %.0.i, i32 noundef %i.b)
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit

._crit_edge:                                      ; preds = %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.us, %.preheader
  %i.at = mul i32 %.0.i, %i.b                     ; 2 uses
  %.not.i = icmp ult i32 %i.l, %i.at
  br i1 %.not.i, label %bb.j, label %bb.i, !prof !99

bb.i:                                             ; preds = %._crit_edge
  %i.au = sub nuw i32 %i.l, %i.at
  store i32 %i.au, ptr %i.d, align 4, !tbaa !502
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit

bb.j:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.c, align 8, !tbaa !503
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %i.av = trunc i64 %indvars.iv to i32
  %i.aw = mul i32 %i.b, %i.av
  %i.ax = add i32 %i.aw, %i.aj
  %i.ay = tail call i32 @llvm.usub.sat.i32(i32 513, i32 %i.ax)
  %i.az = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.ay)
  %i.ba = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bb = mul i32 %i.b, %i.ba
  %i.bc = add i32 %i.ab, %i.bb                    ; 2 uses
  %storemerge.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 513, i32 %i.bc)
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i, i32 %i.b) ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bd ; 5 uses
  %.sroa.3.8.insert.ext.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 2 uses
  %i.bf = add i32 %i.r, %i.ba                     ; 2 uses
  %.not.i39 = icmp ult i32 %i.bf, %i.l
  br i1 %.not.i39, label %bb.l, label %bb.k, !prof !97

bb.k:                                             ; preds = %.lr.ph.split
  store i8 1, ptr %i.c, align 8, !tbaa !503
  store i64 %i.ad, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit

bb.l:                                             ; preds = %.lr.ph.split
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bg ; 2 uses
  %.pre = load double, ptr %i.bh, align 8, !tbaa !145
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit: ; preds = %bb.k, %bb.l
  %i.bi = phi double [ %i.ah, %bb.k ], [ %.pre, %bb.l ]
  %.0.i40 = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.bh, %bb.l ]
  %i.bj = icmp eq i32 %.fr42, %.sroa.speculated.i.i.i
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit, !prof !438

.lr.ph.i.i:                                       ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !636 ; 5 uses
  %xtraiter = and i64 %.sroa.3.8.insert.ext.i.i.i, 3 ; 3 uses
  %i.bl = add nsw i32 %i.az, -1
  %i.bm = icmp ult i32 %i.bl, 3
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.3.8.insert.ext.i.i.i, 1020
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.m ] ; 6 uses
  %.079.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.new ], [ %i.ck, %bb.m ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.m ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i.i
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !463
  %i.bp = fpext float %i.bo to double
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i.i
  %i.br = load double, ptr %i.bq, align 8, !tbaa !145
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.br, double %.079.i.i)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !463
  %i.bv = fpext float %i.bu to double
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i.i
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !145
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bx, double %i.bs)
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.1
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !463
  %i.cb = fpext float %i.ca to double
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i.i.1
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !145
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cd, double %i.by)
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.2
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !463
  %i.ch = fpext float %i.cg to double
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i.i.2
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !145
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cj, double %i.ce) ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !42

_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit.loopexit.unr-lcssa ]
  %.079.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i ], [ %i.ck, %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit.loopexit.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.n ] ; 3 uses
  %.079.i.i.epil = phi double [ %.079.i.i.epil.init, %.epil.preheader ], [ %i.cq, %bb.n ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i.i.epil
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !463
  %i.cn = fpext float %i.cm to double
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i.i.epil
  %i.cp = load double, ptr %i.co, align 8, !tbaa !145
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cp, double %.079.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit, label %bb.n, !llvm.loop !1533

_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit: ; preds = %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit.loopexit.unr-lcssa, %bb.n, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit
  %.1.i.i = phi double [ 0.000000e+00, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit ], [ %i.ck, %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit.loopexit.unr-lcssa ], [ %i.cq, %bb.n ]
  %i.cr = fadd double %i.bi, %.1.i.i
  %i.cs = tail call double @llvm.round.f64(double %i.cr)
  %i.ct = fptosi double %i.cs to i32
  %i.cu = sitofp i32 %i.ct to double
  store double %i.cu, ptr %.0.i40, align 8, !tbaa !145
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count49
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1532

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF13str_encoder_t13encode_num_tpERKNS_8number_tE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 19 uses
  %i.d = load double, ptr %1, align 8, !tbaa !145 ; 6 uses
  %i.e = fcmp oge double %i.d, -3.276800e+04
  %i.f = fcmp ole double %i.d, 3.276700e+04
  %or.cond.not.i = and i1 %i.e, %i.f
  %i.g = fptosi double %i.d to i16
  %i.h = sitofp i16 %i.g to double
  %i.i = fcmp oeq double %i.d, %i.h
  %i.j = select i1 %or.cond.not.i, i1 %i.i, i1 false
  br i1 %i.j, label %_ZNK3CFF8number_t6to_intEv.exit, label %bb.b

_ZNK3CFF8number_t6to_intEv.exit:                  ; preds = %bb.a
  %i.k = fptosi double %i.d to i32
  tail call void @_ZN3CFF13str_encoder_t10encode_intEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.k)
  br label %bb.ca

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 30, ptr %i.b, align 1, !tbaa !148
  %i.l = load ptr, ptr %0, align 8, !tbaa !150, !nonnull !122, !align !151 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
end_hunk_0
