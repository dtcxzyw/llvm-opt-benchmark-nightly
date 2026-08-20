inline.NumInlined: 127
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@usage_with_options_internal:bb.a
  %i.fa = icmp ult i64 %.5, 26
  br i1 %i.fa, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph240.preheader
  %i.fb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.114, i32 noundef 26, ptr noundef nonnull @.str.71) #20 ; 0 uses
  br label %usage_padding.exit193.peel

bb.bl:                                            ; preds = %.lr.ph240.preheader
  %i.fc = trunc nuw nsw i64 %.5 to i32
  %i.fd = sub nuw nsw i32 26, %i.fc
  %i.fe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.113, i32 noundef %i.fd, ptr noundef nonnull @.str.71) #20 ; 0 uses
  br label %usage_padding.exit193.peel

usage_padding.exit193.peel:                       ; preds = %bb.bl, %bb.bk
  %i.ff = ptrtoint ptr %spec.select161.peel to i64
  %i.fg = ptrtoint ptr %i.ex to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = call i64 @fwrite(ptr noundef nonnull %i.ex, i64 noundef 1, i64 noundef %i.fh, ptr noundef %i.c) ; 0 uses
  %i.fj = load i8, ptr %spec.select161.peel, align 1, !tbaa !34
  %.not149.peel = icmp eq i8 %i.fj, 0
  br i1 %.not149.peel, label %._crit_edge241, label %usage_padding.exit193

usage_padding.exit193:                            ; preds = %usage_padding.exit193.peel, %usage_padding.exit193
  %.0110239 = phi ptr [ %spec.select161, %usage_padding.exit193 ], [ %spec.select161.peel, %usage_padding.exit193.peel ] ; 3 uses
  %i.fk = call ptr @strchrnul(ptr noundef nonnull %.0110239, i32 noundef 10) #21 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !34
  %.not152 = icmp ne i8 %i.fl, 0
  %spec.select161.idx = zext i1 %.not152 to i64
  %spec.select161 = getelementptr inbounds nuw i8, ptr %i.fk, i64 %spec.select161.idx ; 3 uses
  %i.fm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.113, i32 noundef 26, ptr noundef nonnull @.str.71) #20 ; 0 uses
  %i.fn = ptrtoint ptr %spec.select161 to i64
  %i.fo = ptrtoint ptr %.0110239 to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = call i64 @fwrite(ptr noundef nonnull %.0110239, i64 noundef 1, i64 noundef %i.fp, ptr noundef %i.c) ; 0 uses
  %i.fr = load i8, ptr %spec.select161, align 1, !tbaa !34
  %.not149 = icmp eq i8 %i.fr, 0
  br i1 %.not149, label %._crit_edge241, label %usage_padding.exit193, !llvm.loop !86

._crit_edge241:                                   ; preds = %usage_padding.exit193, %usage_padding.exit193.peel, %_.exit192
  %i.fs = call i32 @fputc(i32 noundef 10, ptr noundef %i.c) ; 0 uses
  %.not150 = icmp eq ptr %.2206, null
  br i1 %.not150, label %find_option_by_long_name.exit, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge241
  %i.ft = load i32, ptr %2, align 8, !tbaa !25
  %.not11.i = icmp eq i32 %i.ft, 0
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %bb.bm, %bb.bo
  %.0712.i = phi ptr [ %i.fx, %bb.bo ], [ %2, %bb.bm ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0712.i, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !32 ; 2 uses
  %.not9.i195 = icmp eq ptr %i.fv, null
  br i1 %.not9.i195, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i194
  %i.fw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fv, ptr noundef nonnull readonly dereferenceable(1) %.2206) #21
  %.not10.i = icmp eq i32 %i.fw, 0
  br i1 %.not10.i, label %find_option_by_long_name.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.lr.ph.i194
  %i.fx = getelementptr inbounds nuw i8, ptr %.0712.i, i64 96 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !25
  %.not.i196 = icmp eq i32 %i.fy, 0
  br i1 %.not.i196, label %.loopexit, label %.lr.ph.i194, !llvm.loop !87

.loopexit:                                        ; preds = %bb.bo, %bb.bm
  %i.fz = call noundef i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.104) #20
  %i.ga = sext i32 %i.fz to i64
  %i.gb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.98, ptr noundef nonnull %.2206) #20
  %i.gc = sext i32 %i.gb to i64
  %i.gd = add nsw i64 %i.gc, %i.ga                ; 2 uses
  %i.ge = icmp ult i64 %i.gd, 26
  br i1 %i.ge, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.loopexit
  %i.gf = trunc nuw nsw i64 %i.gd to i32
  %i.gg = sub nuw nsw i32 26, %i.gf
  %i.gh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.113, i32 noundef %i.gg, ptr noundef nonnull @.str.71) #20 ; 0 uses
  br label %usage_padding.exit199

bb.bq:                                            ; preds = %.loopexit
  %i.gi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.114, i32 noundef 26, ptr noundef nonnull @.str.71) #20 ; 0 uses
  br label %usage_padding.exit199

usage_padding.exit199:                            ; preds = %bb.bp, %bb.bq
  %i.gj = load i32, ptr @git_gettext_enabled, align 4, !tbaa !43
  %.not4.i200 = icmp eq i32 %i.gj, 0
  br i1 %.not4.i200, label %_.exit202, label %bb.br

bb.br:                                            ; preds = %usage_padding.exit199
  %i.gk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.101, i32 noundef 5) #20
  br label %_.exit202

_.exit202:                                        ; preds = %usage_padding.exit199, %bb.br
  %.0.i201 = phi ptr [ %i.gk, %bb.br ], [ @.str.101, %usage_padding.exit199 ]
  %i.gl = call i32 (ptr, ptr, ...) @fprintf_ln(ptr noundef %i.c, ptr noundef %.0.i201, ptr noundef nonnull %.2206) #20 ; 0 uses
  br label %find_option_by_long_name.exit

find_option_by_long_name.exit:                    ; preds = %bb.bn, %bb.y, %._crit_edge241, %_.exit202, %bb.ad, %bb.z, %_.exit178, %_.exit188
  %.2118 = phi i32 [ 0, %bb.z ], [ %.0116, %bb.y ], [ 0, %_.exit188 ], [ %.0116, %bb.ad ], [ 0, %._crit_edge241 ], [ 0, %_.exit178 ], [ 0, %_.exit202 ], [ 0, %bb.bn ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.0121, i64 96
  br label %bb.y, !llvm.loop !88

bb.bs:                                            ; preds = %bb.y
  %i.gn = call i32 @fputc(i32 noundef 10, ptr noundef %i.c) ; 0 uses
  br i1 %or.cond, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !24
  %i.gq = and i32 %i.gp, 64
  %.not136 = icmp eq i32 %i.gq, 0
  br i1 %.not136, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gr = call i64 @fwrite(ptr nonnull @.str.102, i64 4, i64 1, ptr %i.b) ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bs, %bb.bt, %bb.bu, %parse_options_check_harder.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @parse_options_end(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = and i32 %i.b, 32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12
  %i.h = sub nsw i32 %i.e, %i.g
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %0, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !12   ; 3 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %move_array.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %mul.ov.i.i = icmp slt i32 %i.q, 0
  br i1 %mul.ov.i.i, label %bb.e, label %st_mult.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.84, i64 noundef 8, i64 noundef range(i64 -2147483648, 2147483648) %i.r) #19
  unreachable

st_mult.exit.i:                                   ; preds = %bb.d
  %i.s = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.n, ptr readonly align 1 %i.o, i64 %i.s, i1 false)
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !21
  %.pre12 = load i32, ptr %i.k, align 4, !tbaa !23
  %.pre13 = load i32, ptr %i.p, align 8, !tbaa !12
  br label %move_array.exit

move_array.exit:                                  ; preds = %bb.c, %st_mult.exit.i
  %i.t = phi i32 [ 0, %bb.c ], [ %.pre13, %st_mult.exit.i ]
  %i.u = phi i32 [ %i.l, %bb.c ], [ %.pre12, %st_mult.exit.i ]
  %i.v = phi ptr [ %i.j, %bb.c ], [ %.pre, %st_mult.exit.i ]
  %i.w = add nsw i32 %i.t, %i.u                   ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.x
  store ptr null, ptr %i.y, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %move_array.exit, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.w, %move_array.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.strbuf, align 8             ; 5 uses
  %7 = alloca %struct.parse_opt_ctx_t, align 8    ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.a = tail call i32 @git_env_bool(ptr noundef nonnull @.str.11, i32 noundef 0) #20
  store i32 %i.a, ptr @disallow_abbreviated_options, align 4, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv109.i = phi i32 [ %indvars.iv.next110.i, %bb.d ], [ -1, %bb.a ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %bb.a ] ; 6 uses
  %.070.i = phi i32 [ %.1.i, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %3, i64 %indvars.iv.i
  %i.c = load i32, ptr %i.b, align 8, !tbaa !25
  switch i32 %i.c, label %bb.d [
    i32 0, label %bb.e
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %.070.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i32 [ %i.d, %bb.c ], [ %.070.i, %bb.b ]
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1
  %indvars.iv.next110.i = add nsw i32 %indvars.iv109.i, 1
  br label %bb.b, !llvm.loop !89

bb.e:                                             ; preds = %bb.b
  %indvars56.le = trunc i64 %indvars.iv.i to i32
  %.not78.i = icmp eq i32 %.070.i, 0
  br i1 %.not78.i, label %preprocess_options.exit, label %st_mult.exit.i

st_mult.exit.i:                                   ; preds = %bb.e
  %i.e = add nuw i64 %indvars.iv.i, 1
  %i.f = and i64 %i.e, 4294967295
  %i.g = mul nuw nsw i64 %i.f, 96                 ; 2 uses
  %i.h = tail call ptr @xmalloc(i64 noundef %i.g) #20 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(1) %3, i64 %i.g, i1 false)
  %i.i = mul i32 %.070.i, 3
  %i.j = add i32 %i.i, 3
  %i.k = sext i32 %i.j to i64
  %i.l = tail call ptr @xcalloc(i64 noundef %i.k, i64 noundef 8) #20
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !63
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %preprocess_options.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %st_mult.exit.i
  %8 = add i32 %indvars.iv109.i, 1
  %wide.trip.count118.i = and i64 %indvars.iv.i, 4294967295 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i
  %indvars.iv114.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next115.i, %bb.r ] ; 2 uses
  %.07196.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.172.i, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.preprocess_options.help, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %i.h, i64 %indvars.iv114.i ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !25
  %.not79.i = icmp eq i32 %i.o, 3
  br i1 %.not79.i, label %bb.f, label %bb.r

bb.f:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39   ; 3 uses
  %.not80.i = icmp eq ptr %i.s, null
  br i1 %.not80.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.1, i32 noundef 938, ptr noundef nonnull @.str.85) #19
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = load i32, ptr @git_gettext_enabled, align 4, !tbaa !43
  %.not4.i.i = icmp eq i32 %i.v, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #20
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.w, %bb.i ], [ @.str.86, %bb.h ]
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %6, ptr noundef %.0.i.i, ptr noundef %i.u) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %_.exit.i
  %indvars.iv107.i = phi i64 [ 0, %_.exit.i ], [ %indvars.iv.next108.i, %bb.o ] ; 3 uses
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %3, i64 %indvars.iv107.i ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32   ; 2 uses
  %.not81.i = icmp eq ptr %i.z, null
  br i1 %.not81.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(1) %i.u) #21
  %.not82.i = icmp eq i32 %i.aa, 0
  br i1 %.not82.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ab = load i32, ptr %i.x, align 8, !tbaa !25
  %i.ac = icmp eq i32 %i.ab, 3
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.1, i32 noundef 948, ptr noundef nonnull @.str.87) #19
  unreachable

bb.n:                                             ; preds = %bb.l
  %9 = trunc nuw nsw i64 %indvars.iv107.i to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.x, i64 96, i1 false)
  store i32 %i.q, ptr %i.p, align 4, !tbaa !33
  store ptr %i.s, ptr %i.r, align 8, !tbaa !32
  %i.ad = call ptr @strbuf_detach(ptr noundef nonnull %6, ptr noundef null) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !85
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !31
  %i.ah = or i32 %i.ag, 128
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !31
  br label %.loopexit.i

bb.o:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next108.i, %wide.trip.count118.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.j, !llvm.loop !90

.loopexit.i:                                      ; preds = %bb.o, %bb.n
  %.087.i = phi i32 [ %9, %bb.n ], [ %8, %bb.o ]  ; 2 uses
  %i.ai = icmp eq i32 %.087.i, %indvars56.le
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !32  ; 2 uses
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit.i
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.1, i32 noundef 960, ptr noundef nonnull @.str.88, ptr noundef %i.u, ptr noundef %i.aj) #19
  unreachable

bb.q:                                             ; preds = %.loopexit.i
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.al = mul nsw i32 %.07196.i, 3
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am ; 3 uses
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !57
  %10 = zext nneg i32 %.087.i to i64
  %i.ao = getelementptr inbounds nuw [96 x i8], ptr %3, i64 %10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !32
  %i.ar = getelementptr i8, ptr %i.an, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !57
  %i.as = getelementptr i8, ptr %i.an, i64 16
  store ptr null, ptr %i.as, align 8, !tbaa !57
  %i.at = add nsw i32 %.07196.i, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i
  %.172.i = phi i32 [ %i.at, %bb.q ], [ %.07196.i, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %indvars.iv.next115.i = add nuw nsw i64 %indvars.iv114.i, 1 ; 2 uses
  %exitcond119.not.i = icmp eq i64 %indvars.iv.next115.i, %wide.trip.count118.i
  br i1 %exitcond119.not.i, label %preprocess_options.exit, label %.lr.ph.i, !llvm.loop !91

preprocess_options.exit:                          ; preds = %bb.r, %bb.e, %st_mult.exit.i
  %.068.i = phi ptr [ null, %bb.e ], [ %i.h, %st_mult.exit.i ], [ %i.h, %bb.r ] ; 6 uses
  %.not = icmp eq ptr %.068.i, null               ; 2 uses
  %spec.select = select i1 %.not, ptr %3, ptr %.068.i ; 4 uses
  call fastcc void @parse_options_start_1(ptr noundef nonnull %7, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %spec.select, i32 noundef %5)
  %i.au = call i32 @parse_options_step(ptr noundef nonnull %7, ptr noundef %spec.select, ptr noundef %4)
  switch i32 %i.au, label %bb.af [
    i32 -2, label %bb.s
    i32 -1, label %bb.s
    i32 -3, label %bb.t
    i32 3, label %bb.w
    i32 0, label %bb.u
  ]

bb.s:                                             ; preds = %preprocess_options.exit, %preprocess_options.exit
  %i.av = call i32 @common_exit(ptr noundef nonnull @.str.1, i32 noundef 1201, i32 noundef 129) #20
  call void @exit(i32 noundef %i.av) #19
  unreachable

bb.t:                                             ; preds = %preprocess_options.exit
  %i.aw = call i32 @common_exit(ptr noundef nonnull @.str.1, i32 noundef 1203, i32 noundef 0) #20
  call void @exit(i32 noundef %i.aw) #19
  unreachable

bb.u:                                             ; preds = %preprocess_options.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !30
  %.not23 = icmp ne i32 %i.ay, 0
  %i.az = and i32 %5, 128
  %.not24 = icmp eq i32 %i.az, 0
  %or.cond = and i1 %.not24, %.not23
  br i1 %or.cond, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.ba = call fastcc ptr @_(ptr noundef nonnull @.str.12)
  %i.bb = call i32 (ptr, ...) @error(ptr noundef %i.ba) #20 ; 0 uses
  call void @usage_with_options(ptr noundef %4, ptr noundef %spec.select) #22
  unreachable

bb.w:                                             ; preds = %preprocess_options.exit
  %i.bc = load ptr, ptr %7, align 8, !tbaa !19
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !57 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !34
  %i.bg = icmp eq i8 %i.bf, 45
  br i1 %i.bg, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bh = load i32, ptr @git_gettext_enabled, align 4, !tbaa !43
  %.not4.i = icmp eq i32 %i.bh, 0
  br i1 %.not4.i, label %_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #20
  %.pre60 = load ptr, ptr %7, align 8, !tbaa !19
  %.pre61 = load ptr, ptr %.pre60, align 8, !tbaa !57
  br label %_.exit

_.exit:                                           ; preds = %bb.x, %bb.y
  %i.bj = phi ptr [ %.pre61, %bb.y ], [ %i.bd, %bb.x ]
  %.0.i = phi ptr [ %i.bi, %bb.y ], [ @.str.13, %bb.x ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = call i32 (ptr, ...) @error(ptr noundef %.0.i, ptr noundef nonnull %i.bk) #20 ; 0 uses
  br label %bb.ae

bb.z:                                             ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !56
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !34  ; 2 uses
  %i.bp = icmp sgt i8 %i.bo, -1
  %i.bq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !43
  %.not4.i26 = icmp eq i32 %i.bq, 0               ; 2 uses
  br i1 %i.bp, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  br i1 %.not4.i26, label %_.exit28, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #20
  %.pre58 = load ptr, ptr %i.bm, align 8, !tbaa !56
  %.pre59 = load i8, ptr %.pre58, align 1, !tbaa !34
  br label %_.exit28

_.exit28:                                         ; preds = %bb.aa, %bb.ab
  %i.bs = phi i8 [ %.pre59, %bb.ab ], [ %i.bo, %bb.aa ]
  %.0.i27 = phi ptr [ %i.br, %bb.ab ], [ @.str.14, %bb.aa ]
  %i.bt = sext i8 %i.bs to i32
  %i.bu = call i32 (ptr, ...) @error(ptr noundef %.0.i27, i32 noundef %i.bt) #20 ; 0 uses
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  br i1 %.not4.i26, label %_.exit31, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #20
  %.pre = load ptr, ptr %7, align 8, !tbaa !19
  %.pre57 = load ptr, ptr %.pre, align 8, !tbaa !57
  br label %_.exit31

_.exit31:                                         ; preds = %bb.ac, %bb.ad
  %i.bw = phi ptr [ %.pre57, %bb.ad ], [ %i.bd, %bb.ac ]
  %.0.i30 = phi ptr [ %i.bv, %bb.ad ], [ @.str.15, %bb.ac ]
  %i.bx = call i32 (ptr, ...) @error(ptr noundef %.0.i30, ptr noundef %i.bw) #20 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_.exit28, %_.exit31, %_.exit
  call void @usage_with_options(ptr noundef %4, ptr noundef %spec.select) #22
  unreachable

bb.af:                                            ; preds = %bb.u, %preprocess_options.exit
  br i1 %.not, label %free_preprocessed_options.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.af
  %i.by = load i32, ptr %.068.i, align 8, !tbaa !25
  %.not911.i = icmp eq i32 %i.by, 0
  br i1 %.not911.i, label %._crit_edge.i, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.preheader.i, %bb.ah
  %indvars.iv.i34 = phi i64 [ %indvars.iv.next.i35, %bb.ah ], [ 0, %.preheader.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [96 x i8], ptr %.068.i, i64 %indvars.iv.i34 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !31
  %i.cc = and i32 %i.cb, 128
  %.not10.i = icmp eq i32 %i.cc, 0
  br i1 %.not10.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i33
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !85
  call void @free(ptr noundef %i.ce) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i33
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i34, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [96 x i8], ptr %.068.i, i64 %indvars.iv.next.i35
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !25
  %.not9.i = icmp eq i32 %i.cg, 0
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i33, !llvm.loop !92

._crit_edge.i:                                    ; preds = %bb.ah, %.preheader.i
  call void @free(ptr noundef nonnull %.068.i) #20
  br label %free_preprocessed_options.exit

free_preprocessed_options.exit:                   ; preds = %bb.af, %._crit_edge.i
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !63
  call void @free(ptr noundef %i.ci) #20
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !44 ; 2 uses
  %.not2546 = icmp eq ptr %i.ck, null
  br i1 %.not2546, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %free_preprocessed_options.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !24
  %i.cn = and i32 %i.cm, 32
  %.not.i36 = icmp eq i32 %i.cn, 0
  br i1 %.not.i36, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !12
  %i.cs = sub nsw i32 %i.cp, %i.cr
  br label %parse_options_end.exit

bb.aj:                                            ; preds = %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !21 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !23 ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cx
  %i.cz = load ptr, ptr %7, align 8, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !12 ; 3 uses
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.db, 0
  br i1 %.not.i.i, label %move_array.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %mul.ov.i.i.i = icmp slt i32 %i.db, 0
  br i1 %mul.ov.i.i.i, label %bb.al, label %st_mult.exit.i.i
end_hunk_0
