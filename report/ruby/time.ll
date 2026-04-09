inline.NumInlined: 958
inline.NumDeleted: 130
begin_hunk_0_@time_init_parse:bb.a

RSTRING_END.exit:                                 ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 6 uses
  %6 = ptrtoint ptr %i.n to i64                   ; 5 uses
  %i.o = getelementptr i8, ptr %i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !56   ; 6 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %i.p     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %i.n, ptr %i.a, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
end_hunk_0
begin_hunk_1_@time_init_parse:bb.a

bb.k:                                             ; preds = %bb.i, %rb_num2ull_inline.exit
  %i.aj = ptrtoint ptr %i.q to i64                ; 8 uses
  %i.ak = call i64 @rb_int_parse_cstr(ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10, i32 noundef 1) #19 ; 4 uses
  %i.al = icmp eq i64 %i.ak, 4
  br i1 %i.al, label %bb.l, label %bb.m
end_hunk_1
begin_hunk_2_@time_init_parse:bb.a
  %storemerge.lcssa246 = phi i64 [ %storemerge193, %.critedge ], [ %i.eg, %bb.as ]
  %i.es = call i64 @rb_int_parse_cstr(ptr noundef %i.dx, i64 noundef %storemerge.lcssa246, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10, i32 noundef 0) #19 ; 4 uses
  %i.et = icmp eq i64 %i.es, 4
  %.promoted198.pre = load ptr, ptr %i.a, align 8, !tbaa !69 ; 6 uses
  br i1 %i.et, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %.critedge.thread243
  %i.eu = icmp ult ptr %.promoted198.pre, %i.q
  br i1 %i.eu, label %.lr.ph196.preheader, label %.critedge2

.lr.ph196.preheader:                              ; preds = %.preheader
  %.promoted210 = ptrtoint ptr %.promoted198.pre to i64
  %7 = add i64 %i.p, %6
  %8 = sub i64 %7, %.promoted210
  %scevgep = getelementptr i8, ptr %.promoted198.pre, i64 %8 ; 2 uses
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %bb.at
  %i.ev = phi ptr [ %i.fa, %bb.at ], [ %.promoted198.pre, %.lr.ph196.preheader ] ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !53
  %i.ex = sext i8 %i.ew to i32
  %i.ey = add nsw i32 %i.ex, -58
end_hunk_2
begin_hunk_3_@time_init_parse:bb.a
  br i1 %i.ez, label %.critedge2, label %bb.at

bb.at:                                            ; preds = %.lr.ph196
  %i.fa = getelementptr i8, ptr %i.ev, i64 1      ; 3 uses
  store ptr %i.fa, ptr %i.a, align 8, !tbaa !69
  %exitcond.not = icmp eq ptr %i.fa, %scevgep
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph196, !llvm.loop !73

.critedge2:                                       ; preds = %bb.at, %.lr.ph196, %bb.y, %.preheader, %bb.z, %bb.x, %bb.aa, %.critedge.thread243, %bb.aq, %bb.ap, %bb.t, %bb.u, %bb.p, %bb.q
  %.promoted198 = phi ptr [ %i.au, %bb.p ], [ %i.bp, %bb.y ], [ %i.dr, %bb.ap ], [ %i.bf, %bb.u ], [ %i.bf, %bb.t ], [ %i.au, %bb.q ], [ %i.bp, %bb.aa ], [ %.promoted198.pre, %.critedge.thread243 ], [ %i.bp, %bb.x ], [ %i.bp, %bb.z ], [ %i.dr, %bb.aq ], [ %.promoted198.pre, %.preheader ], [ %scevgep, %bb.at ], [ %i.ev, %.lr.ph196 ] ; 6 uses
  %.1104 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.ct, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.ct, %.critedge.thread243 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.ct, %bb.aq ], [ %i.ct, %.preheader ], [ %i.ct, %.lr.ph196 ], [ %i.ct, %bb.at ] ; 3 uses
  %.1101 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.do, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.do, %.critedge.thread243 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.do, %bb.aq ], [ %i.do, %.preheader ], [ %i.do, %.lr.ph196 ], [ %i.do, %bb.at ] ; 3 uses
  %.198 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.by, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.by, %.critedge.thread243 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.by, %bb.aq ], [ %i.by, %.preheader ], [ %i.by, %.lr.ph196 ], [ %i.by, %bb.at ] ; 4 uses
  %.095 = phi i32 [ -1, %bb.p ], [ %i.bm, %bb.y ], [ %i.bm, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ %i.bm, %bb.aa ], [ %i.bm, %.critedge.thread243 ], [ %i.bm, %bb.x ], [ %i.bm, %bb.z ], [ %i.bm, %bb.aq ], [ %i.bm, %.preheader ], [ %i.bm, %.lr.ph196 ], [ %i.bm, %bb.at ] ; 3 uses
  %.093 = phi i32 [ -1, %bb.p ], [ %i.bc, %bb.y ], [ %i.bc, %bb.ap ], [ %i.bc, %bb.u ], [ %i.bc, %bb.t ], [ -1, %bb.q ], [ %i.bc, %bb.aa ], [ %i.bc, %.critedge.thread243 ], [ %i.bc, %bb.x ], [ %i.bc, %bb.z ], [ %i.bc, %bb.aq ], [ %i.bc, %.preheader ], [ %i.bc, %.lr.ph196 ], [ %i.bc, %bb.at ] ; 3 uses
  %.2 = phi i64 [ 4, %bb.p ], [ 4, %bb.y ], [ 4, %bb.ap ], [ 4, %bb.u ], [ 4, %bb.t ], [ 4, %bb.q ], [ 4, %bb.aa ], [ 4, %.critedge.thread243 ], [ 4, %bb.x ], [ 4, %bb.z ], [ 4, %bb.aq ], [ %i.es, %.preheader ], [ %i.es, %.lr.ph196 ], [ %i.es, %bb.at ] ; 4 uses
  %.promoted198211 = ptrtoint ptr %.promoted198 to i64 ; 2 uses
  %i.fb = icmp ult ptr %.promoted198, %i.q
  br i1 %i.fb, label %.lr.ph199.preheader, label %.critedge4

.lr.ph199.preheader:                              ; preds = %.critedge2
  %9 = add i64 %i.p, %6
  %10 = sub i64 %9, %.promoted198211
  %scevgep212 = getelementptr i8, ptr %.promoted198, i64 %10 ; 2 uses
  br label %.lr.ph199

.lr.ph199:                                        ; preds = %.lr.ph199.preheader, %bb.au
  %i.fc = phi ptr [ %i.fi, %bb.au ], [ %.promoted198, %.lr.ph199.preheader ] ; 4 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !53  ; 2 uses
  %i.fe = sext i8 %i.fd to i32
  %i.ff = icmp ne i8 %i.fd, 32
  %i.fg = add nsw i32 %i.fe, -14
  %i.fh = icmp ult i32 %i.fg, -5
  %narrow.i137.not = select i1 %i.ff, i1 %i.fh, i1 false
  br i1 %narrow.i137.not, label %.critedge4.loopexit, label %bb.au

bb.au:                                            ; preds = %.lr.ph199
  %i.fi = getelementptr i8, ptr %i.fc, i64 1      ; 4 uses
  store ptr %i.fi, ptr %i.a, align 8, !tbaa !69
  %exitcond213.not = icmp eq ptr %i.fi, %scevgep212
  br i1 %exitcond213.not, label %.critedge4.loopexit, label %.lr.ph199, !llvm.loop !74

.critedge4.loopexit:                              ; preds = %bb.au, %.lr.ph199
  %.promoted203223 = phi ptr [ %i.fc, %.lr.ph199 ], [ %i.fi, %bb.au ] ; 2 uses
  %.lcssa191.ph = phi ptr [ %i.fc, %.lr.ph199 ], [ %scevgep212, %bb.au ]
  %.pre = ptrtoint ptr %.promoted203223 to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.critedge2
  %.promoted203214.pre-phi = phi i64 [ %.pre, %.critedge4.loopexit ], [ %.promoted198211, %.critedge2 ] ; 2 uses
  %.promoted203 = phi ptr [ %.promoted203223, %.critedge4.loopexit ], [ %.promoted198, %.critedge2 ] ; 5 uses
  %.lcssa191 = phi ptr [ %.lcssa191.ph, %.critedge4.loopexit ], [ %.promoted198, %.critedge2 ] ; 2 uses
  %i.fj = icmp ult ptr %.promoted203, %i.q
  br i1 %i.fj, label %.lr.ph204.preheader, label %.critedge6

.lr.ph204.preheader:                              ; preds = %.critedge4
  %11 = add i64 %i.p, %6
  %12 = sub i64 %11, %.promoted203214.pre-phi
  %scevgep215 = getelementptr i8, ptr %.promoted203, i64 %12 ; 2 uses
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %bb.av
  %i.fk = phi ptr [ %i.fq, %bb.av ], [ %.promoted203, %.lr.ph204.preheader ] ; 4 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !53  ; 2 uses
  %i.fm = sext i8 %i.fl to i32
  %i.fn = icmp ne i8 %i.fl, 32
  %i.fo = add nsw i32 %i.fm, -14
  %i.fp = icmp ult i32 %i.fo, -5
  %narrow.i138.not = select i1 %i.fn, i1 %i.fp, i1 false
  br i1 %narrow.i138.not, label %bb.av, label %.critedge6.loopexit

bb.av:                                            ; preds = %.lr.ph204
  %i.fq = getelementptr i8, ptr %i.fk, i64 1      ; 4 uses
  store ptr %i.fq, ptr %i.a, align 8, !tbaa !69
  %exitcond216.not = icmp eq ptr %i.fq, %scevgep215
  br i1 %exitcond216.not, label %.critedge6.loopexit, label %.lr.ph204, !llvm.loop !75

.critedge6.loopexit:                              ; preds = %bb.av, %.lr.ph204
  %.promoted208225 = phi ptr [ %i.fk, %.lr.ph204 ], [ %i.fq, %bb.av ] ; 2 uses
  %.lcssa.ph = phi ptr [ %i.fk, %.lr.ph204 ], [ %scevgep215, %bb.av ]
  %.pre226 = ptrtoint ptr %.promoted208225 to i64
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.critedge4
  %.promoted208217.pre-phi = phi i64 [ %.pre226, %.critedge6.loopexit ], [ %.promoted203214.pre-phi, %.critedge4 ]
  %.promoted208 = phi ptr [ %.promoted208225, %.critedge6.loopexit ], [ %.promoted203, %.critedge4 ] ; 3 uses
  %.lcssa = phi ptr [ %.lcssa.ph, %.critedge6.loopexit ], [ %.promoted203, %.critedge4 ] ; 2 uses
  %i.fr = icmp ult ptr %.promoted208, %i.q
  br i1 %i.fr, label %.lr.ph209.preheader, label %.critedge8

.lr.ph209.preheader:                              ; preds = %.critedge6
  %13 = add i64 %i.p, %6
  %14 = sub i64 %13, %.promoted208217.pre-phi
  %scevgep218 = getelementptr i8, ptr %.promoted208, i64 %14
  br label %.lr.ph209

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %bb.aw
  %i.fs = phi ptr [ %i.fy, %bb.aw ], [ %.promoted208, %.lr.ph209.preheader ] ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !53  ; 2 uses
  %i.fu = sext i8 %i.ft to i32
  %i.fv = icmp ne i8 %i.ft, 32
end_hunk_3
begin_hunk_4_@time_init_parse:bb.a
bb.aw:                                            ; preds = %.lr.ph209
  %i.fy = getelementptr i8, ptr %i.fs, i64 1      ; 3 uses
  store ptr %i.fy, ptr %i.a, align 8, !tbaa !69
  %exitcond219.not = icmp eq ptr %i.fy, %scevgep218
  br i1 %exitcond219.not, label %.critedge8, label %.lr.ph209, !llvm.loop !76

bb.ax:                                            ; preds = %.lr.ph209
  %i.fz = call fastcc i64 @rbimpl_str_new_cstr()  ; 2 uses
end_hunk_4
begin_hunk_5_@time_init_parse:bb.a
  unreachable

.critedge8:                                       ; preds = %bb.aw, %.critedge6
  %i.gg = icmp ugt ptr %.lcssa, %.lcssa191
  br i1 %i.gg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.critedge8
  %i.gh = ptrtoint ptr %.lcssa191 to i64          ; 2 uses
  %i.gi = sub i64 %i.gh, %6
  %i.gj = ptrtoint ptr %.lcssa to i64
  %i.gk = sub i64 %i.gj, %i.gh
  %i.gl = call i64 @rb_str_subseq(i64 noundef %i.c, i64 noundef %i.gi, i64 noundef %i.gk) #19
  br label %bb.bb
end_hunk_5
