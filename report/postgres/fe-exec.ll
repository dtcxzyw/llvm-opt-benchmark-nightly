Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/fe-exec?download=true
inline.NumInlined: 92
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@PQescapeStringInternal:bb.a
  %diff.check = icmp ugt i64 %i.eo, -32
  %or.cond213 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond213, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check120 = icmp ult i32 %i.eh, 32
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ep = and i64 %i.en, 28
  %n.vec = and i64 %i.en, 2147483616              ; 6 uses
  %i.eq = trunc nuw nsw i64 %n.vec to i32
  %i.er = getelementptr i8, ptr %.05578, i64 %n.vec ; 2 uses
  %i.es = getelementptr i8, ptr %.05977, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.05578, i64 %index ; 2 uses
  %next.gep121 = getelementptr i8, ptr %.05977, i64 %index ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep121, align 1
  %wide.load122 = load <16 x i8>, ptr %i.et, align 1
  %i.eu = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load122, ptr %i.eu, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.en
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ep, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec125 = and i64 %i.en, 2147483644           ; 5 uses
  %i.ew = trunc nuw nsw i64 %n.vec125 to i32
  %i.ex = getelementptr i8, ptr %.05578, i64 %n.vec125 ; 2 uses
  %i.ey = getelementptr i8, ptr %.05977, i64 %n.vec125 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index126 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next130, %vec.epilog.vector.body ] ; 3 uses
  %next.gep127 = getelementptr i8, ptr %.05578, i64 %index126
  %next.gep128 = getelementptr i8, ptr %.05977, i64 %index126
  %wide.load129 = load <4 x i8>, ptr %next.gep128, align 1
  store <4 x i8> %wide.load129, ptr %next.gep127, align 1
  %index.next130 = add nuw i64 %index126, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next130, %n.vec125
  br i1 %i.ez, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n131 = icmp eq i64 %n.vec125, %i.en
  br i1 %cmp.n131, label %.loopexit.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.073.ph = phi i32 [ 0, %iter.check ], [ %i.eq, %vec.epilog.iter.check ], [ %i.ew, %vec.epilog.middle.block ] ; 4 uses
  %.25771.ph = phi ptr [ %.05578, %iter.check ], [ %i.er, %vec.epilog.iter.check ], [ %i.ex, %vec.epilog.middle.block ] ; 2 uses
  %.16070.ph = phi ptr [ %.05977, %iter.check ], [ %i.es, %vec.epilog.iter.check ], [ %i.ey, %vec.epilog.middle.block ] ; 2 uses
  %i.fa = sub i32 %i.eh, %.073.ph
  %xtraiter = and i32 %i.fa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.073.prol = phi i32 [ %i.fe, %.lr.ph.prol ], [ %.073.ph, %.lr.ph.preheader ]
  %.25771.prol = phi ptr [ %i.fd, %.lr.ph.prol ], [ %.25771.ph, %.lr.ph.preheader ] ; 2 uses
  %.16070.prol = phi ptr [ %i.fb, %.lr.ph.prol ], [ %.16070.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.16070.prol, i64 1 ; 3 uses
  %i.fc = load i8, ptr %.16070.prol, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %.25771.prol, i64 1 ; 3 uses
  store i8 %i.fc, ptr %.25771.prol, align 1
  %i.fe = add nuw nsw i32 %.073.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !49

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa221.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.fb, %.lr.ph.prol ]
  %.lcssa220.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.fd, %.lr.ph.prol ]
  %.073.unr = phi i32 [ %.073.ph, %.lr.ph.preheader ], [ %i.fe, %.lr.ph.prol ]
  %.25771.unr = phi ptr [ %.25771.ph, %.lr.ph.preheader ], [ %i.fd, %.lr.ph.prol ]
  %.16070.unr = phi ptr [ %.16070.ph, %.lr.ph.preheader ], [ %i.fb, %.lr.ph.prol ]
  %i.ff = sub i32 %.073.ph, %i.eh
  %i.fg = icmp ugt i32 %i.ff, -8
  br i1 %i.fg, label %.loopexit.loopexit, label %.lr.ph

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 1, ptr %4, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %.05080, label %bb.x, label %.sink.split

.sink.split:                                      ; preds = %bb.w
  %.str.69..str.70 = select i1 %i.ej, ptr @.str.69, ptr @.str.70
  tail call void (ptr, ptr, ...) @libpq_append_conn_error(ptr noundef nonnull %0, ptr noundef nonnull %.str.69..str.70) #25
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.w
  tail call void @pg_encoding_set_invalid(i32 noundef %5, ptr noundef %.05578) #25
  %i.fh = getelementptr inbounds nuw i8, ptr %.05578, i64 2
  %i.fi = getelementptr inbounds nuw i8, ptr %.05977, i64 1
  %i.fj = add i64 %.05179, -1
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.073 = phi i32 [ %i.gi, %.lr.ph ], [ %.073.unr, %.lr.ph.prol.loopexit ]
  %.25771 = phi ptr [ %i.gh, %.lr.ph ], [ %.25771.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.16070 = phi ptr [ %i.gf, %.lr.ph ], [ %.16070.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.16070, i64 1
  %i.fl = load i8, ptr %.16070, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %.25771, i64 1
  store i8 %i.fl, ptr %.25771, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %.16070, i64 2
  %i.fo = load i8, ptr %i.fk, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.25771, i64 2
  store i8 %i.fo, ptr %i.fm, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %.16070, i64 3
  %i.fr = load i8, ptr %i.fn, align 1
  %i.fs = getelementptr inbounds nuw i8, ptr %.25771, i64 3
  store i8 %i.fr, ptr %i.fp, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %.16070, i64 4
  %i.fu = load i8, ptr %i.fq, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %.25771, i64 4
  store i8 %i.fu, ptr %i.fs, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %.16070, i64 5
  %i.fx = load i8, ptr %i.ft, align 1
  %i.fy = getelementptr inbounds nuw i8, ptr %.25771, i64 5
  store i8 %i.fx, ptr %i.fv, align 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.16070, i64 6
  %i.ga = load i8, ptr %i.fw, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %.25771, i64 6
  store i8 %i.ga, ptr %i.fy, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %.16070, i64 7
  %i.gd = load i8, ptr %i.fz, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.25771, i64 7
  store i8 %i.gd, ptr %i.gb, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.16070, i64 8 ; 2 uses
  %i.gg = load i8, ptr %i.gc, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.25771, i64 8 ; 2 uses
  store i8 %i.gg, ptr %i.ge, align 1
  %i.gi = add nuw nsw i32 %.073, 8                ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.gi, %i.eh
  br i1 %exitcond.not.7, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !50

.loopexit.loopexit:                               ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa117 = phi ptr [ %i.ey, %vec.epilog.middle.block ], [ %i.es, %middle.block ], [ %.lcssa221.unr, %.lr.ph.prol.loopexit ], [ %i.gf, %.lr.ph ]
  %.lcssa116 = phi ptr [ %i.ex, %vec.epilog.middle.block ], [ %i.er, %middle.block ], [ %.lcssa220.unr, %.lr.ph.prol.loopexit ], [ %i.gh, %.lr.ph ]
  %i.gj = sub nsw i32 0, %i.eh
  %i.gk = sext i32 %i.gj to i64
  %i.gl = add i64 %.05179, %i.gk
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.x, %bb.r
  %.362 = phi ptr [ %i.ef, %bb.r ], [ %i.fi, %bb.x ], [ %.05977, %.preheader ], [ %.lcssa117, %.loopexit.loopexit ]
  %.4 = phi ptr [ %i.ee, %bb.r ], [ %i.fh, %bb.x ], [ %.05578, %.preheader ], [ %.lcssa116, %.loopexit.loopexit ] ; 2 uses
  %.354 = phi i64 [ %i.eg, %bb.r ], [ %i.fj, %bb.x ], [ %.05179, %.preheader ], [ %i.gl, %.loopexit.loopexit ] ; 2 uses
  %.3 = phi i1 [ %.05080, %bb.r ], [ true, %bb.x ], [ %.05080, %.preheader ], [ %.05080, %.loopexit.loopexit ]
  %.not67 = icmp eq i64 %.354, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph81.split

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.us, %.loopexit.us.us, %bb.c
  %.055.lcssa = phi ptr [ %1, %bb.c ], [ %.4.us, %.loopexit.us ], [ %.4.us.us, %.loopexit.us.us ], [ %.4, %.loopexit ] ; 2 uses
  store i8 0, ptr %.055.lcssa, align 1
  %i.gm = ptrtoint ptr %.055.lcssa to i64
  %i.gn = ptrtoint ptr %1 to i64
  %i.go = sub i64 %i.gm, %i.gn
  ret i64 %i.go
}

; Function Attrs: nounwind uwtable
define noundef i64 @PQescapeString(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @static_client_encoding, align 4
  %i.b = load i8, ptr @static_std_strings, align 1, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call fastcc i64 @PQescapeStringInternal(ptr noundef null, ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef null, i32 noundef %i.a, i1 noundef zeroext %i.c)
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define noundef ptr @PQescapeLiteral(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @PQescapeInternal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @PQescapeInternal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strnlen(ptr noundef %1, i64 noundef %2) #26 ; 6 uses
  %i.b = select i1 %3, i8 34, i8 39               ; 4 uses
  %.not124 = icmp eq ptr %0, null
  br i1 %.not124, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1248
  tail call void @resetPQExpBuffer(ptr noundef nonnull %i.f) #25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i32 0, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not125146 = icmp eq i64 %i.a, 0               ; 2 uses
  br i1 %.not125146, label %.critedge130, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.p
  %.093151 = phi i64 [ %i.a, %.lr.ph ], [ %i.z, %bb.p ] ; 8 uses
  %.098150 = phi i1 [ false, %.lr.ph ], [ %.3, %bb.p ] ; 4 uses
  %.0101149 = phi i64 [ 0, %.lr.ph ], [ %.1102, %bb.p ] ; 4 uses
  %.0103148 = phi i64 [ 0, %.lr.ph ], [ %.1104, %bb.p ] ; 4 uses
  %.0109147 = phi ptr [ %1, %.lr.ph ], [ %i.aa, %bb.p ] ; 7 uses
  %i.i = load i8, ptr %.0109147, align 1          ; 3 uses
  %i.j = icmp eq i8 %i.i, %i.b
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = add i64 %.0103148, 1
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.l = icmp eq i8 %i.i, 92
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = add i64 %.0101149, 1
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %.not126 = icmp sgt i8 %i.i, -1
  br i1 %.not126, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = load i32, ptr %i.h, align 8
  %i.o = tail call i32 @pg_encoding_mblen_or_incomplete(i32 noundef %i.n, ptr noundef nonnull %.0109147, i64 noundef %.093151) #25 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp ult i64 %.093151, %i.p
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @libpq_append_conn_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.69) #25
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  br i1 %.098150, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = load i32, ptr %i.h, align 8
  %i.s = trunc i64 %.093151 to i32
  %i.t = tail call i32 @pg_encoding_verifymbstr(i32 noundef %i.r, ptr noundef nonnull %.0109147, i32 noundef %i.s) #25
  %i.u = sext i32 %i.t to i64
  %.not127 = icmp eq i64 %.093151, %i.u
  br i1 %.not127, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, ...) @libpq_append_conn_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #25
  br label %.critedge

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.v = add i32 %i.o, -1
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.0109147, i64 %i.w
  %i.y = sub i64 %.093151, %i.w
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f, %bb.i, %bb.h
  %.2111 = phi ptr [ %.0109147, %bb.f ], [ %.0109147, %bb.h ], [ %i.x, %bb.o ], [ %.0109147, %bb.i ]
  %.1104 = phi i64 [ %i.k, %bb.f ], [ %.0103148, %bb.h ], [ %.0103148, %bb.o ], [ %.0103148, %bb.i ] ; 2 uses
  %.1102 = phi i64 [ %.0101149, %bb.f ], [ %i.m, %bb.h ], [ %.0101149, %bb.o ], [ %.0101149, %bb.i ] ; 2 uses
  %.3 = phi i1 [ %.098150, %bb.f ], [ %.098150, %bb.h ], [ true, %bb.o ], [ %.098150, %bb.i ]
  %.295 = phi i64 [ %.093151, %bb.f ], [ %.093151, %bb.h ], [ %i.y, %bb.o ], [ %.093151, %bb.i ]
  %i.z = add i64 %.295, -1                        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.2111, i64 1
  %.not125 = icmp eq i64 %i.z, 0
  br i1 %.not125, label %.critedge130, label %bb.e, !llvm.loop !51

.critedge130:                                     ; preds = %bb.p, %bb.d
  %.0103.lcssa = phi i64 [ 0, %bb.d ], [ %.1104, %bb.p ] ; 2 uses
  %.0101.lcssa = phi i64 [ 0, %bb.d ], [ %.1102, %bb.p ] ; 2 uses
  %i.ab = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.a, i64 %.0103.lcssa) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %.critedge130
  %4 = extractvalue { i64, i1 } %i.ab, 0
  %5 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 3) ; 2 uses
  %6 = extractvalue { i64, i1 } %5, 1
  %7 = extractvalue { i64, i1 } %5, 0             ; 2 uses
  br i1 %6, label %bb.ae, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = icmp eq i64 %.0101.lcssa, 0             ; 2 uses
  %or.cond.not = select i1 %3, i1 true, i1 %i.ad
  br i1 %or.cond.not, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %.0101.lcssa) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %bb.ae, label %bb.t

bb.t:                                             ; preds = %bb.s
  %8 = extractvalue { i64, i1 } %i.ae, 0
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 2) ; 2 uses
  %10 = extractvalue { i64, i1 } %9, 1
  br i1 %10, label %bb.ae, label %.thread

bb.u:                                             ; preds = %bb.r
  %i.ag = tail call noalias ptr @malloc(i64 noundef %7) #24 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.v, label %bb.x

.thread:                                          ; preds = %bb.t
  %11 = extractvalue { i64, i1 } %9, 0
  %i.ai = tail call noalias ptr @malloc(i64 noundef %11) #24 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread, %bb.u
  tail call void (ptr, ptr, ...) @libpq_append_conn_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #25
  br label %.critedge

bb.w:                                             ; preds = %.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store i8 32, ptr %i.ai, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store i8 69, ptr %i.ak, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w
  %i.am = phi ptr [ %i.ai, %bb.w ], [ %i.ag, %bb.u ]
  %.0105 = phi ptr [ %i.al, %bb.w ], [ %i.ag, %bb.u ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0105, i64 1 ; 4 uses
  store i8 %i.b, ptr %.0105, align 1
  %i.ao = icmp eq i64 %.0103.lcssa, 0
  %or.cond7 = or i1 %3, %i.ad
  %or.cond = select i1 %i.ao, i1 %or.cond7, i1 false
  br i1 %or.cond, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.x
  br i1 %.not125146, label %.loopexit141, label %.lr.ph163

.lr.ph163:                                        ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1080
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %1, i64 %i.a, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.a
  br label %.loopexit141

bb.z:                                             ; preds = %.lr.ph163, %.loopexit
  %.092162 = phi i64 [ %i.a, %.lr.ph163 ], [ %i.dj, %.loopexit ] ; 4 uses
  %.1106161 = phi ptr [ %i.an, %.lr.ph163 ], [ %.3108, %.loopexit ] ; 8 uses
  %.3112160 = phi ptr [ %1, %.lr.ph163 ], [ %i.dk, %.loopexit ] ; 13 uses
  %.1106161177 = ptrtoaddr ptr %.1106161 to i64
  %.3112160178 = ptrtoaddr ptr %.3112160 to i64
  %i.ar = load i8, ptr %.3112160, align 1         ; 5 uses
  %i.as = icmp ne i8 %i.ar, %i.b
  %i.at = icmp ne i8 %i.ar, 92
  %or.cond132.not = or i1 %3, %i.at
  %or.cond140 = and i1 %i.as, %or.cond132.not
  br i1 %or.cond140, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.au = getelementptr inbounds nuw i8, ptr %.1106161, i64 1
  store i8 %i.ar, ptr %.1106161, align 1
  %i.av = load i8, ptr %.3112160, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.1106161, i64 2
  store i8 %i.av, ptr %i.au, align 1
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %.not129 = icmp sgt i8 %i.ar, -1
  br i1 %.not129, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ax = getelementptr inbounds nuw i8, ptr %.1106161, i64 1
  store i8 %i.ar, ptr %.1106161, align 1
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.ay = load i32, ptr %i.ap, align 8
  %i.az = tail call i32 @pg_encoding_mblen(i32 noundef %i.ay, ptr noundef nonnull %.3112160) #25 ; 2 uses
  %i.ba = load i8, ptr %.3112160, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.1106161, i64 1 ; 6 uses
  store i8 %i.ba, ptr %.1106161, align 1
  %i.bc = add i32 %i.az, -1                       ; 7 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.ad
  %i.be = zext i32 %i.bc to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.bc, 4
  %i.bf = sub i64 %.3112160178, %.1106161177
  %diff.check = icmp ugt i64 %i.bf, -32
  %or.cond194 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond194, label %.lr.ph155.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check179 = icmp ult i32 %i.bc, 32
  br i1 %min.iters.check179, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bg = and i64 %i.be, 28
  %n.vec = and i64 %i.be, 4294967264              ; 6 uses
  %i.bh = trunc nuw i64 %n.vec to i32
  %i.bi = sub i32 %i.bc, %i.bh
  %i.bj = getelementptr i8, ptr %i.bb, i64 %n.vec ; 2 uses
  %i.bk = getelementptr i8, ptr %.3112160, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %index ; 2 uses
  %next.gep180 = getelementptr i8, ptr %.3112160, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %next.gep180, i64 1
  %i.bm = getelementptr inbounds nuw i8, ptr %next.gep180, i64 17
  %wide.load = load <16 x i8>, ptr %i.bl, align 1
  %wide.load181 = load <16 x i8>, ptr %i.bm, align 1
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load181, ptr %i.bn, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.be
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph155.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec184 = and i64 %i.be, 4294967292           ; 5 uses
  %i.bp = trunc nuw i64 %n.vec184 to i32
  %i.bq = sub i32 %i.bc, %i.bp
  %i.br = getelementptr i8, ptr %i.bb, i64 %n.vec184 ; 2 uses
  %i.bs = getelementptr i8, ptr %.3112160, i64 %n.vec184 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index185 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next189, %vec.epilog.vector.body ] ; 3 uses
  %next.gep186 = getelementptr i8, ptr %i.bb, i64 %index185
  %next.gep187 = getelementptr i8, ptr %.3112160, i64 %index185
  %i.bt = getelementptr inbounds nuw i8, ptr %next.gep187, i64 1
  %wide.load188 = load <4 x i8>, ptr %i.bt, align 1
  store <4 x i8> %wide.load188, ptr %next.gep186, align 1
  %index.next189 = add nuw i64 %index185, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !53

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n190 = icmp eq i64 %n.vec184, %i.be
  br i1 %cmp.n190, label %.loopexit.loopexit, label %.lr.ph155.preheader

.lr.ph155.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i32 [ %i.bc, %iter.check ], [ %i.bi, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ] ; 4 uses
  %.ph195 = phi ptr [ %i.bb, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ] ; 2 uses
  %.4113153.ph = phi ptr [ %.3112160, %iter.check ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ] ; 2 uses
  %i.bv = add i32 %.ph, -1
  %xtraiter = and i32 %.ph, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph155.prol.loopexit, label %.lr.ph155.prol

.lr.ph155.prol:                                   ; preds = %.lr.ph155.preheader, %.lr.ph155.prol
  %i.bw = phi i32 [ %i.cb, %.lr.ph155.prol ], [ %.ph, %.lr.ph155.preheader ]
  %i.bx = phi ptr [ %i.ca, %.lr.ph155.prol ], [ %.ph195, %.lr.ph155.preheader ] ; 2 uses
  %.4113153.prol = phi ptr [ %i.by, %.lr.ph155.prol ], [ %.4113153.ph, %.lr.ph155.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph155.prol ], [ 0, %.lr.ph155.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %.4113153.prol, i64 1 ; 4 uses
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 3 uses
  store i8 %i.bz, ptr %i.bx, align 1
  %i.cb = add i32 %i.bw, -1                       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph155.prol.loopexit, label %.lr.ph155.prol, !llvm.loop !54

.lr.ph155.prol.loopexit:                          ; preds = %.lr.ph155.prol, %.lr.ph155.preheader
  %.lcssa197.unr.a = phi ptr [ poison, %.lr.ph155.preheader ], [ %i.by, %.lr.ph155.prol ]
  %.lcssa196.unr = phi ptr [ poison, %.lr.ph155.preheader ], [ %i.ca, %.lr.ph155.prol ]
  %.unr = phi i32 [ %.ph, %.lr.ph155.preheader ], [ %i.cb, %.lr.ph155.prol ]
  %.unr198 = phi ptr [ %.ph195, %.lr.ph155.preheader ], [ %i.ca, %.lr.ph155.prol ]
  %.4113153.unr = phi ptr [ %.4113153.ph, %.lr.ph155.preheader ], [ %i.by, %.lr.ph155.prol ]
  %i.cc = icmp ult i32 %i.bv, 7
  br i1 %i.cc, label %.loopexit.loopexit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.lr.ph155.prol.loopexit, %.lr.ph155
  %i.cd = phi i32 [ %i.dd, %.lr.ph155 ], [ %.unr, %.lr.ph155.prol.loopexit ]
  %i.ce = phi ptr [ %i.dc, %.lr.ph155 ], [ %.unr198, %.lr.ph155.prol.loopexit ] ; 9 uses
  %.4113153 = phi ptr [ %i.da, %.lr.ph155 ], [ %.4113153.unr, %.lr.ph155.prol.loopexit ] ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.4113153, i64 1
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store i8 %i.cg, ptr %i.ce, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.4113153, i64 2
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i8 %i.cj, ptr %i.ch, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.4113153, i64 3
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  store i8 %i.cm, ptr %i.ck, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %.4113153, i64 4
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i8 %i.cp, ptr %i.cn, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.4113153, i64 5
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 5
  store i8 %i.cs, ptr %i.cq, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.4113153, i64 6
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 6
  store i8 %i.cv, ptr %i.ct, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.4113153, i64 7
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ce, i64 7
  store i8 %i.cy, ptr %i.cw, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.4113153, i64 8 ; 3 uses
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  store i8 %i.db, ptr %i.cz, align 1
  %i.dd = add i32 %i.cd, -8                       ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %.loopexit.loopexit, label %.lr.ph155, !llvm.loop !55

.loopexit.loopexit:                               ; preds = %.lr.ph155.prol.loopexit, %.lr.ph155, %vec.epilog.middle.block, %middle.block
  %.lcssa176 = phi ptr [ %i.bs, %vec.epilog.middle.block ], [ %i.bk, %middle.block ], [ %.lcssa197.unr.a, %.lr.ph155.prol.loopexit ], [ %i.da, %.lr.ph155 ]
  %.lcssa = phi ptr [ %i.br, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %.lcssa196.unr, %.lr.ph155.prol.loopexit ], [ %i.dc, %.lr.ph155 ]
  %i.df = add i32 %i.az, -2
  %i.dg = zext i32 %i.df to i64
  %i.dh = xor i64 %i.dg, -1
  %i.di = add i64 %.092162, %i.dh
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ad, %bb.aa, %bb.ac
  %.5 = phi ptr [ %.3112160, %bb.aa ], [ %.3112160, %bb.ac ], [ %.3112160, %bb.ad ], [ %.lcssa176, %.loopexit.loopexit ]
  %.3108 = phi ptr [ %i.aw, %bb.aa ], [ %i.ax, %bb.ac ], [ %i.bb, %bb.ad ], [ %.lcssa, %.loopexit.loopexit ] ; 2 uses
  %.2 = phi i64 [ %.092162, %bb.aa ], [ %.092162, %bb.ac ], [ %.092162, %bb.ad ], [ %i.di, %.loopexit.loopexit ]
  %i.dj = add i64 %.2, -1                         ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %.not = icmp eq i64 %i.dj, 0
  br i1 %.not, label %.loopexit141, label %bb.z, !llvm.loop !56

.loopexit141:                                     ; preds = %.loopexit, %.preheader, %bb.y
  %.4 = phi ptr [ %i.aq, %bb.y ], [ %i.an, %.preheader ], [ %.3108, %.loopexit ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.4, i64 1
  store i8 %i.b, ptr %.4, align 1
  store i8 0, ptr %i.dl, align 1
  br label %.critedge

bb.ae:                                            ; preds = %bb.s, %bb.t, %.critedge130, %bb.q
  tail call void (ptr, ptr, ...) @libpq_append_conn_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.71, i64 noundef -1) #25
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.k, %bb.a, %bb.ae, %.loopexit141, %bb.v
  %.4118 = phi ptr [ null, %bb.ae ], [ null, %bb.v ], [ %i.am, %.loopexit141 ], [ null, %bb.a ], [ null, %bb.k ], [ null, %bb.n ]
  ret ptr %.4118
}

; Function Attrs: nounwind uwtable
define noundef ptr @PQescapeIdentifier(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @PQescapeInternal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @PQescapeByteaConn(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1248
  tail call void @resetPQExpBuffer(ptr noundef nonnull %i.d) #25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i32 0, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.g = load i8, ptr %i.f, align 4, !range !6, !noundef !7
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 908
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp sgt i32 %i.j, 89999
  %i.l = tail call fastcc ptr @PQescapeByteaInternal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %i.h, i1 noundef zeroext %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.l, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @PQescapeByteaInternal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = select i1 %4, i64 1, i64 2               ; 3 uses
  br i1 %5, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not90 = icmp eq i64 %2, 0
  br i1 %.not90, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = shl nuw nsw i64 %i.a, 1
  %i.c = add nuw nsw i64 %i.a, 3
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %i.a, 2
  %i.e = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.d, i64 %2) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %6 = extractvalue { i64, i1 } %i.e, 0
  %i.g = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %6, i64 %2) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %.loopexit, label %.thread

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %.093 = phi i64 [ %2, %.lr.ph ], [ %i.o, %bb.j ]
  %.06692 = phi ptr [ %1, %.lr.ph ], [ %i.p, %bb.j ] ; 2 uses
  %.08491 = phi i64 [ 1, %.lr.ph ], [ %.185, %bb.j ] ; 4 uses
  %i.i = load i8, ptr %.06692, align 1            ; 2 uses
  %i.j = add i8 %i.i, -127
  %or.cond77 = icmp ult i8 %i.j, -95
  br i1 %or.cond77, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.08491, i64 %i.c) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %.loopexit, label %bb.j

bb.f:                                             ; preds = %bb.d
  switch i8 %i.i, label %bb.i [
    i8 39, label %bb.g
    i8 92, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %7 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.08491, i64 2) ; 2 uses
  %8 = extractvalue { i64, i1 } %7, 1
  br i1 %8, label %.loopexit, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.m = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.08491, i64 %i.b) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %.loopexit, label %bb.j

bb.i:                                             ; preds = %bb.f
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.08491, i64 1) ; 2 uses
  %10 = extractvalue { i64, i1 } %9, 1
  br i1 %10, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.h, %bb.i, %bb.g
  %.pn = phi { i64, i1 } [ %i.k, %bb.e ], [ %9, %bb.i ], [ %7, %bb.g ], [ %i.m, %bb.h ]
  %.185 = extractvalue { i64, i1 } %.pn, 0        ; 2 uses
  %i.o = add i64 %.093, -1                        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.06692, i64 1
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %.084.lcssa = phi i64 [ 1, %.preheader ], [ %.185, %bb.j ] ; 2 uses
  store i64 %.084.lcssa, ptr %3, align 8
  %i.q = tail call noalias ptr @malloc(i64 noundef %.084.lcssa) #24 ; 7 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.k, label %bb.n

.thread:                                          ; preds = %bb.c
  %11 = extractvalue { i64, i1 } %i.g, 0          ; 2 uses
  store i64 %11, ptr %3, align 8
  %i.s = tail call noalias ptr @malloc(i64 noundef %11) #24 ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.k, label %.thread88

bb.k:                                             ; preds = %.thread, %._crit_edge
  %.not75 = icmp eq ptr %0, null
  br i1 %.not75, label %bb.ab, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @libpq_append_conn_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #25
  br label %bb.ab

.thread88:                                        ; preds = %.thread
  br i1 %4, label %.thread118, label %bb.m

bb.m:                                             ; preds = %.thread88
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 92, ptr %i.s, align 1
  br label %.thread118

bb.n:                                             ; preds = %._crit_edge
  %.not7494 = icmp eq i64 %2, 0
  br i1 %.not7494, label %._crit_edge100, label %.lr.ph99.split

.thread118:                                       ; preds = %.thread88, %bb.m
  %.064 = phi ptr [ %i.s, %.thread88 ], [ %i.u, %bb.m ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.064, i64 1
  store i8 92, ptr %.064, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.064, i64 2 ; 3 uses
  store i8 120, ptr %i.v, align 1
  %.not7494120 = icmp eq i64 %2, 0
  br i1 %.not7494120, label %._crit_edge100, label %.lr.ph99.split.us.preheader

.lr.ph99.split.us.preheader:                      ; preds = %.thread118
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph99.split.us.prol.loopexit, label %.lr.ph99.split.us.prol

.lr.ph99.split.us.prol:                           ; preds = %.lr.ph99.split.us.preheader
  %i.x = load i8, ptr %1, align 1
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @hextbl, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.064, i64 3
  store i8 %i.ac, ptr %i.w, align 1
  %i.ae = and i32 %i.y, 15
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @hextbl, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.064, i64 4 ; 2 uses
  store i8 %i.ah, ptr %i.ad, align 1
  %i.aj = add nsw i64 %2, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph99.split.us.prol.loopexit

.lr.ph99.split.us.prol.loopexit:                  ; preds = %.lr.ph99.split.us.prol, %.lr.ph99.split.us.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph99.split.us.preheader ], [ %i.ai, %.lr.ph99.split.us.prol ]
  %.197.us.unr = phi i64 [ %2, %.lr.ph99.split.us.preheader ], [ %i.aj, %.lr.ph99.split.us.prol ]
  %.296.us.unr = phi ptr [ %i.w, %.lr.ph99.split.us.preheader ], [ %i.ai, %.lr.ph99.split.us.prol ]
  %.16795.us.unr = phi ptr [ %1, %.lr.ph99.split.us.preheader ], [ %i.ak, %.lr.ph99.split.us.prol ]
  %i.al = icmp eq i64 %2, 1
  br i1 %i.al, label %._crit_edge100, label %.lr.ph99.split.us

.lr.ph99.split.us:                                ; preds = %.lr.ph99.split.us.prol.loopexit, %.lr.ph99.split.us
  %.197.us = phi i64 [ %i.bl, %.lr.ph99.split.us ], [ %.197.us.unr, %.lr.ph99.split.us.prol.loopexit ]
  %.296.us = phi ptr [ %i.bk, %.lr.ph99.split.us ], [ %.296.us.unr, %.lr.ph99.split.us.prol.loopexit ] ; 5 uses
  %.16795.us = phi ptr [ %i.bm, %.lr.ph99.split.us ], [ %.16795.us.unr, %.lr.ph99.split.us.prol.loopexit ] ; 3 uses
  %i.am = load i8, ptr %.16795.us, align 1
  %i.an = zext i8 %i.am to i32                    ; 2 uses
  %i.ao = lshr i32 %i.an, 4
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @hextbl, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.296.us, i64 1
  store i8 %i.ar, ptr %.296.us, align 1
  %i.at = and i32 %i.an, 15
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @hextbl, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.296.us, i64 2
  store i8 %i.aw, ptr %i.as, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.16795.us, i64 1
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = lshr i32 %i.ba, 4
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @hextbl, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.296.us, i64 3
  store i8 %i.be, ptr %i.ax, align 1
  %i.bg = and i32 %i.ba, 15
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @hextbl, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.296.us, i64 4 ; 2 uses
  store i8 %i.bj, ptr %i.bf, align 1
  %i.bl = add i64 %.197.us, -2                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.16795.us, i64 2
  %.not74.us.1 = icmp eq i64 %i.bl, 0
  br i1 %.not74.us.1, label %._crit_edge100, label %.lr.ph99.split.us, !llvm.loop !58

.lr.ph99.split:                                   ; preds = %bb.n
  br i1 %4, label %.lr.ph99.split.split.us, label %.lr.ph99.split.split

.lr.ph99.split.split.us:                          ; preds = %.lr.ph99.split, %bb.t
  %.197.us102 = phi i64 [ %i.cc, %bb.t ], [ %2, %.lr.ph99.split ]
  %.296.us103 = phi ptr [ %.5.us105, %bb.t ], [ %i.q, %.lr.ph99.split ] ; 10 uses
  %.16795.us104 = phi ptr [ %i.cd, %bb.t ], [ %1, %.lr.ph99.split ] ; 2 uses
  %i.bn = load i8, ptr %.16795.us104, align 1     ; 6 uses
  %i.bo = add i8 %i.bn, -127
  %or.cond.us = icmp ult i8 %i.bo, -95
  %i.bp = getelementptr inbounds nuw i8, ptr %.296.us103, i64 1 ; 4 uses
  br i1 %or.cond.us, label %bb.s, label %bb.o

bb.o:                                             ; preds = %.lr.ph99.split.split.us
  switch i8 %i.bn, label %bb.r [
    i8 39, label %bb.q
    i8 92, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  store i8 92, ptr %.296.us103, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.296.us103, i64 2
  store i8 92, ptr %i.bp, align 1
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  store i8 39, ptr %.296.us103, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.296.us103, i64 2
  store i8 39, ptr %i.bp, align 1
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  store i8 %i.bn, ptr %.296.us103, align 1
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph99.split.split.us
  store i8 92, ptr %.296.us103, align 1
  %i.bs = lshr i8 %i.bn, 6
  %i.bt = or disjoint i8 %i.bs, 48
  %i.bu = getelementptr inbounds nuw i8, ptr %.296.us103, i64 2
  store i8 %i.bt, ptr %i.bp, align 1
  %i.bv = lshr i8 %i.bn, 3
  %i.bw = and i8 %i.bv, 7
  %i.bx = or disjoint i8 %i.bw, 48
  %i.by = getelementptr inbounds nuw i8, ptr %.296.us103, i64 3
  store i8 %i.bx, ptr %i.bu, align 1
  %i.bz = and i8 %i.bn, 7
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = getelementptr inbounds nuw i8, ptr %.296.us103, i64 4
  store i8 %i.ca, ptr %i.by, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.5.us105 = phi ptr [ %i.bp, %bb.r ], [ %i.cb, %bb.s ], [ %i.br, %bb.q ], [ %i.bq, %bb.p ] ; 2 uses
  %i.cc = add i64 %.197.us102, -1                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.16795.us104, i64 1
  %.not74.us106 = icmp eq i64 %i.cc, 0
  br i1 %.not74.us106, label %._crit_edge100, label %.lr.ph99.split.split.us, !llvm.loop !58

.lr.ph99.split.split:                             ; preds = %.lr.ph99.split, %bb.z
  %.197 = phi i64 [ %i.cw, %bb.z ], [ %2, %.lr.ph99.split ]
  %.296 = phi ptr [ %.5, %bb.z ], [ %i.q, %.lr.ph99.split ] ; 13 uses
  %.16795 = phi ptr [ %i.cx, %bb.z ], [ %1, %.lr.ph99.split ] ; 2 uses
  %i.ce = load i8, ptr %.16795, align 1           ; 6 uses
  %i.cf = add i8 %i.ce, -127
  %or.cond = icmp ult i8 %i.cf, -95
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph99.split.split
  %i.cg = getelementptr inbounds nuw i8, ptr %.296, i64 1
  store i8 92, ptr %.296, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.296, i64 2
  store i8 92, ptr %i.cg, align 1
  %i.ci = lshr i8 %i.ce, 6
  %i.cj = or disjoint i8 %i.ci, 48
  %i.ck = getelementptr inbounds nuw i8, ptr %.296, i64 3
  store i8 %i.cj, ptr %i.ch, align 1
  %i.cl = lshr i8 %i.ce, 3
  %i.cm = and i8 %i.cl, 7
  %i.cn = or disjoint i8 %i.cm, 48
  %i.co = getelementptr inbounds nuw i8, ptr %.296, i64 4
  store i8 %i.cn, ptr %i.ck, align 1
  %i.cp = and i8 %i.ce, 7
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = getelementptr inbounds nuw i8, ptr %.296, i64 5
  store i8 %i.cq, ptr %i.co, align 1
  br label %bb.z

bb.v:                                             ; preds = %.lr.ph99.split.split
  switch i8 %i.ce, label %bb.y [
    i8 39, label %bb.w
    i8 92, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %.296, i64 1
  store i8 39, ptr %.296, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.296, i64 2
end_hunk_0
