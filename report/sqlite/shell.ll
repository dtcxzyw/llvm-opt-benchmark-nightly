Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sha3UpdateFromValue:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !131 ; 3 uses
  %i.ec = and i32 %i.eb, 7
  %i.ed = icmp eq i32 %i.ec, 0
  %i.ee = ptrtoint ptr %i.dy to i64
  %i.ef = and i64 %i.ee, 7
  %i.eg = icmp eq i64 %i.ef, 0
  %or.cond.i52 = and i1 %i.eg, %i.ed
  %i.eh = icmp ugt i32 %i.dx, 7
  %or.cond33.i = and i1 %i.eh, %or.cond.i52
  br i1 %or.cond33.i, label %.lr.ph.i60, label %.loopexit29.i53

.lr.ph.i60:                                       ; preds = %bb.n
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i60
  %i.ej = phi i32 [ %i.eb, %.lr.ph.i60 ], [ %i.ev, %bb.q ]
  %.030.i61 = phi i32 [ 0, %.lr.ph.i60 ], [ %i.ew, %bb.q ] ; 2 uses
  %i.ek = zext i32 %.030.i61 to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !130
  %i.en = lshr i32 %i.ej, 3
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eo ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !52
  %i.er = xor i64 %i.eq, %i.em
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !52
  %i.es = load i32, ptr %i.ea, align 4, !tbaa !131
  %i.et = add i32 %i.es, 8                        ; 3 uses
  store i32 %i.et, ptr %i.ea, align 4, !tbaa !131
  %i.eu = load i32, ptr %i.ei, align 8, !tbaa !129
  %.not.i62 = icmp ult i32 %i.et, %i.eu
  br i1 %.not.i62, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.ea, align 4, !tbaa !131
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ev = phi i32 [ %i.et, %bb.o ], [ 0, %bb.p ]  ; 2 uses
  %i.ew = add i32 %.030.i61, 8                    ; 3 uses
  %i.ex = or disjoint i32 %i.ew, 7
  %i.ey = icmp ult i32 %i.ex, %i.dx
  br i1 %i.ey, label %bb.o, label %.loopexit29.i53, !llvm.loop !8

.loopexit29.i53:                                  ; preds = %bb.q, %bb.n
  %i.ez = phi i32 [ %i.eb, %bb.n ], [ %i.ev, %bb.q ]
  %.1.i54 = phi i32 [ 0, %bb.n ], [ %i.ew, %bb.q ] ; 2 uses
  %i.fa = icmp ult i32 %.1.i54, %i.dx
  br i1 %i.fa, label %.lr.ph32.i55, label %SHA3Update.exit

.lr.ph32.i55:                                     ; preds = %.loopexit29.i53
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.fc = zext i32 %.1.i54 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph32.i55
  %i.fd = phi i32 [ %i.ez, %.lr.ph32.i55 ], [ %i.fo, %bb.t ]
  %indvars.iv.i56 = phi i64 [ %i.fc, %.lr.ph32.i55 ], [ %indvars.iv.next.i57, %bb.t ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.i56
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !52
  %i.fg = zext i32 %i.fd to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 %i.fg ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !52
  %i.fj = xor i8 %i.fi, %i.ff
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !52
  %i.fk = load i32, ptr %i.ea, align 4, !tbaa !131
  %i.fl = add i32 %i.fk, 1                        ; 3 uses
  store i32 %i.fl, ptr %i.ea, align 4, !tbaa !131
  %i.fm = load i32, ptr %i.fb, align 8, !tbaa !129
  %i.fn = icmp eq i32 %i.fl, %i.fm
  br i1 %i.fn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.ea, align 4, !tbaa !131
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fo = phi i32 [ %i.fl, %bb.r ], [ 0, %bb.s ]
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %lftr.wideiv103 = trunc i64 %indvars.iv.next.i57 to i32
  %exitcond104 = icmp eq i32 %i.dx, %lftr.wideiv103
  br i1 %exitcond104, label %SHA3Update.exit, label %bb.r, !llvm.loop !9

bb.u:                                             ; preds = %bb.a
  %i.fp = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45 ; 5 uses
  %i.fq = tail call ptr @sqlite3_value_blob(ptr noundef %1) #45 ; 4 uses
  tail call void (ptr, ptr, ...) @sha3_step_vformat(ptr noundef %0, ptr noundef nonnull @.str.295, i32 noundef %i.fp)
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %SHA3Update.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !131 ; 3 uses
  %i.fu = and i32 %i.ft, 7
  %i.fv = icmp eq i32 %i.fu, 0
  %i.fw = ptrtoint ptr %i.fq to i64
  %i.fx = and i64 %i.fw, 7
  %i.fy = icmp eq i64 %i.fx, 0
  %or.cond.i64 = and i1 %i.fy, %i.fv
  %i.fz = icmp ugt i32 %i.fp, 7
  %or.cond33.i65 = and i1 %i.fz, %or.cond.i64
  br i1 %or.cond33.i65, label %.lr.ph.i73, label %.loopexit29.i66

.lr.ph.i73:                                       ; preds = %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.lr.ph.i73
  %i.gb = phi i32 [ %i.ft, %.lr.ph.i73 ], [ %i.gn, %bb.y ]
  %.030.i74 = phi i32 [ 0, %.lr.ph.i73 ], [ %i.go, %bb.y ] ; 2 uses
  %i.gc = zext i32 %.030.i74 to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !130
  %i.gf = lshr i32 %i.gb, 3
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gg ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !52
  %i.gj = xor i64 %i.gi, %i.ge
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !52
  %i.gk = load i32, ptr %i.fs, align 4, !tbaa !131
  %i.gl = add i32 %i.gk, 8                        ; 3 uses
  store i32 %i.gl, ptr %i.fs, align 4, !tbaa !131
  %i.gm = load i32, ptr %i.ga, align 8, !tbaa !129
  %.not.i75 = icmp ult i32 %i.gl, %i.gm
  br i1 %.not.i75, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.fs, align 4, !tbaa !131
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gn = phi i32 [ %i.gl, %bb.w ], [ 0, %bb.x ]  ; 2 uses
  %i.go = add i32 %.030.i74, 8                    ; 3 uses
  %i.gp = or disjoint i32 %i.go, 7
  %i.gq = icmp ult i32 %i.gp, %i.fp
  br i1 %i.gq, label %bb.w, label %.loopexit29.i66, !llvm.loop !8

.loopexit29.i66:                                  ; preds = %bb.y, %bb.v
  %i.gr = phi i32 [ %i.ft, %bb.v ], [ %i.gn, %bb.y ]
  %.1.i67 = phi i32 [ 0, %bb.v ], [ %i.go, %bb.y ] ; 2 uses
  %i.gs = icmp ult i32 %.1.i67, %i.fp
  br i1 %i.gs, label %.lr.ph32.i68, label %SHA3Update.exit

.lr.ph32.i68:                                     ; preds = %.loopexit29.i66
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.gu = zext i32 %.1.i67 to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph32.i68
  %i.gv = phi i32 [ %i.gr, %.lr.ph32.i68 ], [ %i.hg, %bb.ab ]
  %indvars.iv.i69 = phi i64 [ %i.gu, %.lr.ph32.i68 ], [ %indvars.iv.next.i70, %bb.ab ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv.i69
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !52
  %i.gy = zext i32 %i.gv to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 %i.gy ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !52
  %i.hb = xor i8 %i.ha, %i.gx
  store i8 %i.hb, ptr %i.gz, align 1, !tbaa !52
  %i.hc = load i32, ptr %i.fs, align 4, !tbaa !131
  %i.hd = add i32 %i.hc, 1                        ; 3 uses
  store i32 %i.hd, ptr %i.fs, align 4, !tbaa !131
  %i.he = load i32, ptr %i.gt, align 8, !tbaa !129
  %i.hf = icmp eq i32 %i.hd, %i.he
  br i1 %i.hf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.fs, align 4, !tbaa !131
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.hg = phi i32 [ %i.hd, %bb.z ], [ 0, %bb.aa ]
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i70 to i32
  %exitcond = icmp eq i32 %i.fp, %lftr.wideiv
  br i1 %exitcond, label %SHA3Update.exit, label %bb.z, !llvm.loop !9

SHA3Update.exit:                                  ; preds = %bb.ab, %bb.t, %.lr.ph32.i, %bb.b, %.loopexit29.i66, %bb.u, %.loopexit29.i53, %bb.m, %SHA3Update.exit51, %SHA3Update.exit39, %bb.a
  ret void
}

declare i64 @sqlite3_value_int64(ptr noundef) local_unnamed_addr #5

declare double @sqlite3_value_double(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @sha3_step_vformat(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = call ptr @sqlite3_vsnprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %2) #45 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #46 ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !131  ; 3 uses
  %i.g = and i32 %i.f, 7
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp ugt i32 %i.d, 7
  %or.cond33.i = and i1 %i.i, %i.h
  br i1 %or.cond33.i, label %.lr.ph.i, label %.loopexit29.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %3 = and i64 %i.c, 4294967295
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %.030.i = phi i32 [ %i.u, %bb.d ], [ %i.f, %.lr.ph.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8, !tbaa !130
  %i.m = lshr i32 %.030.i, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !52
  %i.q = xor i64 %i.p, %i.l
  store i64 %i.q, ptr %i.o, align 8, !tbaa !52
  %i.r = load i32, ptr %i.e, align 4, !tbaa !131
  %i.s = add i32 %i.r, 8                          ; 3 uses
  store i32 %i.s, ptr %i.e, align 4, !tbaa !131
  %i.t = load i32, ptr %i.j, align 8, !tbaa !129
  %.not.i = icmp ult i32 %i.s, %i.t
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.e, align 4, !tbaa !131
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi i32 [ %i.s, %bb.b ], [ 0, %bb.c ]    ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 8   ; 3 uses
  %4 = or disjoint i64 %indvars.iv.next, 7
  %i.v = icmp ult i64 %4, %3
  br i1 %i.v, label %bb.b, label %.loopexit29.i.loopexit, !llvm.loop !8

.loopexit29.i.loopexit:                           ; preds = %bb.d
  %5 = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit29.i

.loopexit29.i:                                    ; preds = %.loopexit29.i.loopexit, %bb.a
  %i.w = phi i32 [ %i.f, %bb.a ], [ %i.u, %.loopexit29.i.loopexit ]
  %.1.i = phi i32 [ 0, %bb.a ], [ %5, %.loopexit29.i.loopexit ] ; 2 uses
  %i.x = icmp ult i32 %.1.i, %i.d
  br i1 %i.x, label %.lr.ph32.i, label %SHA3Update.exit

.lr.ph32.i:                                       ; preds = %.loopexit29.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.z = zext i32 %.1.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph32.i
  %i.aa = phi i32 [ %i.w, %.lr.ph32.i ], [ %i.al, %bb.g ]
  %indvars.iv.i = phi i64 [ %i.z, %.lr.ph32.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !52
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !52
  %i.ag = xor i8 %i.af, %i.ac
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !52
  %i.ah = load i32, ptr %i.e, align 4, !tbaa !131
  %i.ai = add i32 %i.ah, 1                        ; 3 uses
  store i32 %i.ai, ptr %i.e, align 4, !tbaa !131
  %i.aj = load i32, ptr %i.y, align 8, !tbaa !129
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.e, align 4, !tbaa !131
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = phi i32 [ %i.ai, %bb.e ], [ 0, %bb.f ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond, label %SHA3Update.exit, label %bb.e, !llvm.loop !9

SHA3Update.exit:                                  ; preds = %bb.g, %.loopexit29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void
}

declare ptr @sqlite3_vsnprintf(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_context_db_handle(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_stmt_readonly(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_user_data(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @hash_finish(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 4, !tbaa !53   ; 5 uses
  %i.d = lshr i32 %i.c, 24
  %.sroa.043.0.insert.ext = zext nneg i32 %i.d to i64
  %i.e = load i32, ptr %i.a, align 4, !tbaa !53   ; 4 uses
  %i.f = add i32 %i.e, 8                          ; 2 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !53
  %i.g = icmp ugt i32 %i.e, -9
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = add i32 %i.c, 1
  store i32 %i.i, ptr %i.h, align 4, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = lshr i32 %i.e, 3
  %i.k = and i32 %i.j, 63                         ; 2 uses
  %i.l = icmp eq i32 %i.k, 63
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 -128, ptr %i.n, align 1
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.m)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !53
  br label %hash_step.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %i.k to i64
  br label %hash_step.exit

hash_step.exit:                                   ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ %i.f, %bb.e ], [ %.pre, %bb.d ] ; 3 uses
  %.1.i = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]      ; 2 uses
  %.0.i = phi i64 [ %i.o, %bb.e ], [ 0, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.i
  %i.s = zext nneg i32 %.1.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr @.str.300, i64 %i.s
  %i.u = xor i32 %.1.i, 1
  %i.v = zext nneg i32 %i.u to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.t, i64 %i.v, i1 false)
  %i.w = and i32 %i.p, 504
  %.not35 = icmp eq i32 %i.w, 448
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hash_step.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 91
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %hash_step.exit30
  %i.z = phi i32 [ %i.p, %.lr.ph ], [ %i.ai, %hash_step.exit30 ] ; 3 uses
  %i.aa = add i32 %i.z, 8                         ; 2 uses
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !53
  %i.ab = icmp ugt i32 %i.z, -9
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !53
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.x, align 4, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = lshr i32 %i.z, 3
  %i.af = and i32 %i.ae, 63                       ; 2 uses
  %i.ag = icmp eq i32 %i.af, 63
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.y, align 1
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %.pre47 = load i32, ptr %i.a, align 4, !tbaa !53
  br label %hash_step.exit30

bb.j:                                             ; preds = %bb.h
  %i.ah = zext nneg i32 %i.af to i64
  br label %hash_step.exit30

hash_step.exit30:                                 ; preds = %bb.j, %bb.i
  %i.ai = phi i32 [ %i.aa, %bb.j ], [ %.pre47, %bb.i ] ; 3 uses
  %.1.i28 = phi i64 [ 1, %bb.j ], [ 0, %bb.i ]
  %.0.i29 = phi i64 [ %i.ah, %bb.j ], [ 0, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.i29
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 0, i64 %.1.i28, i1 false)
  %i.ak = and i32 %i.ai, 504
  %.not = icmp eq i32 %i.ak, 448
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !1072

._crit_edge:                                      ; preds = %hash_step.exit30, %hash_step.exit
  %.lcssa = phi i32 [ %i.p, %hash_step.exit ], [ %i.ai, %hash_step.exit30 ] ; 2 uses
  %i.al = add i32 %.lcssa, 64
  store i32 %i.al, ptr %i.a, align 4, !tbaa !53
  %i.am = icmp ugt i32 %.lcssa, -65
  br i1 %i.am, label %bb.k, label %hash_step.exit33

bb.k:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !53
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !53
  br label %hash_step.exit33

hash_step.exit33:                                 ; preds = %._crit_edge, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %trunc = zext i32 %i.e to i64
  %rev = tail call i64 @llvm.bswap.i64(i64 %trunc)
  %i.ar = shl i32 %i.c, 24
  %.sroa.6.0.insert.shift = zext i32 %i.ar to i64
  %.sroa.6.0.insert.insert = or disjoint i64 %rev, %.sroa.6.0.insert.shift
  %i.as = shl i32 %i.c, 8
  %i.at = and i32 %i.as, 16711680
  %.sroa.544.0.insert.shift = zext nneg i32 %i.at to i64
  %.sroa.544.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.544.0.insert.shift
  %i.au = lshr i32 %i.c, 8
  %i.av = and i32 %i.au, 65280
  %.sroa.4.0.insert.shift = zext nneg i32 %i.av to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.544.0.insert.insert, %.sroa.4.0.insert.shift
  %.sroa.043.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.043.0.insert.ext
  store i64 %.sroa.043.0.insert.insert, ptr %i.aq, align 4
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %i.aw = load i32, ptr %0, align 4, !tbaa !53    ; 4 uses
  %i.ax = lshr i32 %i.aw, 24
  %i.ay = trunc nuw i32 %i.ax to i8               ; 3 uses
  %i.az = lshr i32 %i.aw, 16
  %i.ba = trunc i32 %i.az to i8                   ; 3 uses
  %i.bb = lshr i32 %i.aw, 8
  %i.bc = trunc i32 %i.bb to i8                   ; 3 uses
  %i.bd = trunc i32 %i.aw to i8                   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !53 ; 4 uses
  %i.bg = lshr i32 %i.bf, 24
  %i.bh = trunc nuw i32 %i.bg to i8               ; 3 uses
  %i.bi = lshr i32 %i.bf, 16
  %i.bj = trunc i32 %i.bi to i8                   ; 3 uses
  %i.bk = lshr i32 %i.bf, 8
  %i.bl = trunc i32 %i.bk to i8                   ; 3 uses
  %i.bm = trunc i32 %i.bf to i8                   ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !53 ; 4 uses
  %i.bp = lshr i32 %i.bo, 24
  %i.bq = trunc nuw i32 %i.bp to i8               ; 3 uses
  %i.br = lshr i32 %i.bo, 16
  %i.bs = trunc i32 %i.br to i8                   ; 3 uses
  %i.bt = lshr i32 %i.bo, 8
  %i.bu = trunc i32 %i.bt to i8                   ; 3 uses
  %i.bv = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !53 ; 4 uses
  %i.by = lshr i32 %i.bx, 24
  %i.bz = trunc nuw i32 %i.by to i8               ; 3 uses
  %i.ca = lshr i32 %i.bx, 16
  %i.cb = trunc i32 %i.ca to i8                   ; 3 uses
  %i.cc = lshr i32 %i.bx, 8
  %i.cd = trunc i32 %i.cc to i8                   ; 3 uses
  %i.ce = trunc i32 %i.bx to i8                   ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !53 ; 4 uses
  %i.ch = lshr i32 %i.cg, 24
  %i.ci = trunc nuw i32 %i.ch to i8               ; 3 uses
  %i.cj = lshr i32 %i.cg, 16
  %i.ck = trunc i32 %i.cj to i8                   ; 3 uses
  %i.cl = lshr i32 %i.cg, 8
  %i.cm = trunc i32 %i.cl to i8                   ; 3 uses
  %i.cn = trunc i32 %i.cg to i8                   ; 3 uses
  %.not27 = icmp eq i32 %2, 0
  br i1 %.not27, label %.preheader.preheader, label %bb.l

.preheader.preheader:                             ; preds = %hash_step.exit33
  %i.co = lshr i8 %i.ay, 4
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !52
  store i8 %i.cr, ptr %1, align 1, !tbaa !52
  %i.cs = and i8 %i.ay, 15
  %i.ct = zext nneg i8 %i.cs to i64
end_hunk_0
