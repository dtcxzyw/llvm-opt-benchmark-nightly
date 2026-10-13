Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_record?download=true
inline.NumInlined: 71
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@rec_for_loop:bb.a
  store i16 %i.el, ptr %i.em, align 8, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.dm, ptr %i.eo, align 2, !tbaa !9
  %i.ep = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 2 uses
  %i.eq = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.h
  store i32 %i.ep, ptr %i.er, align 4, !tbaa !37
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.p
  %i.es = phi ptr [ %.pre84, %._crit_edge ], [ %i.eq, %bb.p ]
  %.1 = phi i32 [ %.0, %._crit_edge ], [ %i.ep, %bb.p ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.h
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  store i32 %.1, ptr %i.eu, align 4, !tbaa !37
  %i.ev = trunc i32 %.1 to i16
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 %i.ev, ptr %i.ew, align 8, !tbaa !199
  %i.ex = ptrtoint ptr %1 to i64
  store i64 %i.ex, ptr %2, align 8, !tbaa !200
  %i.ey = add nuw nsw i32 %i.c, 4
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !36
  ret void
}

declare hidden void @lj_snap_replay(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @lj_ir_k64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare hidden ptr @lj_tab_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare hidden i64 @lj_vm_num2int_check(double noundef) local_unnamed_addr #5

declare hidden i32 @lj_opt_narrow_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_idx_abc(ptr noundef initializes((184, 190)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = and i32 %i.b, 12582912
  %i.d = icmp eq i32 %i.c, 12582912
  %i.e = trunc i32 %2 to i16                      ; 2 uses
  br i1 %i.d, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %2, 65535                        ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38   ; 3 uses
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
  %i.m = icmp eq i8 %i.l, 41
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !9    ; 3 uses
  %i.p = icmp sgt i16 %i.o, -1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i16 %i.o to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.q
  %i.s = load i32, ptr %i.r, align 8, !tbaa !9
  %i.t = load i16, ptr %i.j, align 8, !tbaa !9    ; 2 uses
  %i.u = zext i16 %i.t to i32
  %i.v = zext i16 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.049 = phi i32 [ %i.u, %bb.d ], [ %i.f, %bb.c ], [ %i.f, %bb.b ]
  %.048 = phi ptr [ %i.w, %bb.d ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  %.047 = phi i32 [ %i.s, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.046 = phi i16 [ %i.o, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2992
  %i.y = load i16, ptr %i.x, align 8, !tbaa !61
  %i.z = zext i16 %i.y to i32
  %i.aa = icmp eq i32 %.049, %i.z
  br i1 %i.aa, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !35
  %i.ah = zext i32 %i.ag to i64
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = load i16, ptr %.048, align 8, !tbaa !9
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !9
  %i.ap = fptosi double %i.ao to i32
  %i.aq = sext i32 %i.ap to i64
  %i.ar = sext i32 %.047 to i64                   ; 2 uses
  %i.as = add nsw i64 %i.aq, %i.ar
  %i.at = zext i32 %3 to i64
  %.not52 = icmp ult i64 %i.as, %i.at
  br i1 %.not52, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %bb.f
  %i.au = trunc i32 %1 to i16                     ; 2 uses
  %i.av = and i32 %1, 32768
  %.not.not = icmp eq i32 %i.av, 0
  %i.aw = select i1 %.not.not, i16 2708, i16 2693 ; 2 uses
  %i.ax = icmp eq i32 %.047, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2996
  %i.az = load i16, ptr %i.ay, align 4, !tbaa !106 ; 2 uses
  br i1 %i.ax, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 10515, ptr %i.bb, align 4, !tbaa !9
  store i16 %i.az, ptr %i.ba, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %.046, ptr %i.bc, align 2, !tbaa !9
  %i.bd = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.be = trunc i32 %i.bd to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bf = phi i16 [ %i.be, %bb.h ], [ %i.az, %bb.g ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  store i16 %i.aw, ptr %i.bh, align 4, !tbaa !9
  store i16 %i.au, ptr %i.bg, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  store i16 %i.bf, ptr %i.bi, align 2, !tbaa !9
  %i.bj = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3001
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !201
  %.not = icmp eq i8 %i.bl, 0
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2994
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !110 ; 2 uses
  %.not51 = icmp eq i16 %i.bn, 0
  br i1 %.not51, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.bp = zext i16 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !9
  %i.bs = sext i32 %i.br to i64
  %i.bt = add nsw i64 %i.bs, %i.ar
  %i.bu = icmp sgt i64 %i.bt, -1
  br i1 %i.bu, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  store i16 %i.aw, ptr %i.bh, align 4, !tbaa !9
  store i16 %i.au, ptr %i.bg, align 8, !tbaa !9
  store i16 %i.e, ptr %i.bi, align 2, !tbaa !9
  br label %.critedge.sink.split

.critedge.thread:                                 ; preds = %bb.a, %bb.e, %bb.f
  %i.bv = trunc i32 %1 to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 2707, ptr %i.bx, align 4, !tbaa !9
  store i16 %i.bv, ptr %i.bw, align 8, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.e, ptr %i.by, align 2, !tbaa !9
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %.critedge.thread, %bb.l
  %i.bz = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.k
  ret void
}

declare hidden i32 @lj_ir_kslot(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @lj_vm_cpcall(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @rec_mm_concat_cp(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.RecordIndex, align 8        ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !67   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !68   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 3 uses
  %i.i = zext i32 %i.f to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %.not97 = icmp ugt i32 %i.d, %i.f
  br i1 %.not97, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 186
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.p = phi ptr [ %i.h, %.lr.ph ], [ %i.ao, %bb.d ] ; 2 uses
  %.07898 = phi i32 [ %i.d, %.lr.ph ], [ %i.ap, %bb.d ] ; 4 uses
  %i.q = zext i32 %.07898 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !37
  %.not91 = icmp eq i32 %i.s, 0
  br i1 %.not91, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.w = sext i32 %.07898 to i64                  ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !9
  %i.z = ashr i64 %i.y, 47                        ; 2 uses
  %i.aa = icmp ult i64 %i.z, -14
  %i.ab = trunc nsw i64 %i.z to i32
  %i.ac = xor i32 %i.ab, -1
  %.0.i.i = select i1 %i.aa, i32 14, i32 %i.ac    ; 3 uses
  %i.ad = trunc nuw nsw i32 %.0.i.i to i16
  %i.ae = or disjoint i16 %i.ad, 18304
  %i.af = load i32, ptr %i.l, align 8, !tbaa !35
  %i.ag = add nsw i32 %i.af, %.07898
  %i.ah = trunc i32 %i.ag to i16
  store i16 %i.ae, ptr %i.n, align 4, !tbaa !9
  store i16 %i.ah, ptr %i.m, align 8, !tbaa !9
  store i16 4, ptr %i.o, align 2, !tbaa !9
  %i.ai = tail call i32 @lj_ir_emit(ptr noundef nonnull %i.b) #8
  %i.aj = icmp samesign ult i32 %.0.i.i, 3
  %i.ak = mul nuw nsw i32 %.0.i.i, 16777217
  %i.al = xor i32 %i.ak, 32767
  %.0.i = select i1 %i.aj, i32 %i.al, i32 %i.ai
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !42  ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.w
  store i32 %.0.i, ptr %i.an, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = phi ptr [ %i.am, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.ap = add i32 %.07898, 1                      ; 2 uses
  %.not = icmp ugt i32 %i.ap, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !202

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.aq = phi ptr [ %i.h, %bb.a ], [ %i.ao, %bb.d ]
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !37  ; 2 uses
  %i.as = lshr i32 %i.ar, 24
  %i.at = and i32 %i.as, 30
  %i.au = add nsw i32 %i.at, -14
  %i.av = icmp ult i32 %i.au, 6
  %i.aw = and i32 %i.ar, 520093696
  %i.ax = icmp eq i32 %i.aw, 67108864
  %or.cond = or i1 %i.ax, %i.av
  br i1 %or.cond, label %bb.e, label %bb.n

bb.e:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !37 ; 2 uses
  %i.ba = lshr i32 %i.az, 24
  %i.bb = and i32 %i.ba, 30
  %i.bc = add nsw i32 %i.bb, -14
  %i.bd = icmp ult i32 %i.bc, 6
  %i.be = and i32 %i.az, 520093696
  %i.bf = icmp eq i32 %i.be, 67108864
  %or.cond94 = or i1 %i.bf, %i.bd
  br i1 %or.cond94, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.bg = zext i32 %i.d to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bg ; 3 uses
  %.not8899 = icmp ult ptr %i.j, %i.bh
  br i1 %.not8899, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 186
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph102, %bb.j
  %.076100 = phi ptr [ %i.j, %.lr.ph102 ], [ %i.bx, %bb.j ] ; 4 uses
  %i.bl = load i32, ptr %.076100, align 4, !tbaa !37 ; 4 uses
  %i.bm = lshr i32 %i.bl, 24
  %i.bn = and i32 %i.bm, 30
  %i.bo = add nsw i32 %i.bn, -14
  %i.bp = icmp ult i32 %i.bo, 6
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = trunc i32 %i.bl to i16
  %i.br = and i32 %i.bl, 520093696
  %i.bs = icmp eq i32 %i.br, 234881024
  %i.bt = zext i1 %i.bs to i16
  store i16 23812, ptr %i.bj, align 4, !tbaa !9
  store i16 %i.bq, ptr %i.bi, align 8, !tbaa !9
  store i16 %i.bt, ptr %i.bk, align 2, !tbaa !9
  %i.bu = tail call i32 @lj_opt_fold(ptr noundef %i.b) #8
  store i32 %i.bu, ptr %.076100, align 4, !tbaa !37
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bv = and i32 %i.bl, 520093696
  %i.bw = icmp eq i32 %i.bv, 67108864
  br i1 %i.bw, label %bb.j, label %._crit_edge103

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bx = getelementptr inbounds i8, ptr %.076100, i64 -4 ; 3 uses
  %.not88 = icmp ult ptr %i.bx, %i.bh
  br i1 %.not88, label %._crit_edge103, label %bb.g, !llvm.loop !203

._crit_edge103:                                   ; preds = %bb.j, %bb.i, %bb.f
  %.076.lcssa = phi ptr [ %i.j, %bb.f ], [ %.076100, %bb.i ], [ %i.bx, %bb.j ]
  %i.by = getelementptr inbounds nuw i8, ptr %.076.lcssa, i64 4 ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %i.b, i64 -544
  %i.ca = tail call i32 @lj_ir_kptr_(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull %i.bz) #8
  %i.cb = trunc i32 %i.ca to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 188 ; 3 uses
  store i16 21769, ptr %i.cd, align 4, !tbaa !9
  store i16 %i.cb, ptr %i.cc, align 8, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 186 ; 3 uses
  store i16 0, ptr %i.ce, align 2, !tbaa !9
  %i.cf = tail call i32 @lj_opt_fold(ptr noundef %i.b) #8 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge103
  %.077 = phi i32 [ %i.cf, %._crit_edge103 ], [ %i.ck, %bb.k ]
  %.1 = phi ptr [ %i.by, %._crit_edge103 ], [ %i.ch, %bb.k ] ; 2 uses
  %i.cg = trunc i32 %.077 to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  %i.ci = load i32, ptr %.1, align 4, !tbaa !37
  %i.cj = trunc i32 %i.ci to i16
  store i16 22153, ptr %i.cd, align 4, !tbaa !9
  store i16 %i.cg, ptr %i.cc, align 8, !tbaa !9
  store i16 %i.cj, ptr %i.ce, align 2, !tbaa !9
  %i.ck = tail call i32 @lj_opt_fold(ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not89 = icmp ugt ptr %i.ch, %i.j
  br i1 %.not89, label %bb.l, label %bb.k, !llvm.loop !204

bb.l:                                             ; preds = %bb.k
  %i.cl = trunc i32 %i.ck to i16
  %i.cm = trunc i32 %i.cf to i16
  store i16 22404, ptr %i.cd, align 4, !tbaa !9
  store i16 %i.cl, ptr %i.cc, align 8, !tbaa !9
  store i16 %i.cm, ptr %i.ce, align 2, !tbaa !9
  %i.cn = tail call i32 @lj_opt_fold(ptr noundef nonnull %i.b) #8 ; 3 uses
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.cp = ptrtoint ptr %i.by to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = lshr exact i64 %i.cr, 2                 ; 2 uses
  %i.ct = trunc i64 %i.cs to i32                  ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 2 uses
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !36
  %.not90 = icmp eq ptr %i.by, %i.bh
  br i1 %.not90, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = add i32 %i.ct, -1                       ; 2 uses
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !36
  store i32 %i.ct, ptr %i.e, align 4, !tbaa !68
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !46
  %i.cy = add nuw nsw i64 %i.cs, 4294967295
  %i.cz = and i64 %i.cy, 4294967295
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.da, i64 48, i1 false)
  store i32 %i.cn, ptr %i.by, align 4, !tbaa !37
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dc = getelementptr inbounds i8, ptr %i.b, i64 -624
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = or i64 %i.dd, -703687441776640
  store i64 %i.de, ptr %i.db, align 8, !tbaa !9
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre107 = load ptr, ptr %.phi.trans.insert106, align 8, !tbaa !46
  br label %bb.o

bb.n:                                             ; preds = %bb.e, %._crit_edge
  %i.df = add i32 %i.f, -1                        ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !36
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !43
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !46 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.i
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !9
  store i64 %i.dn, ptr %i.dj, align 8, !tbaa !9
  %.pre108 = load i32, ptr %i.j, align 4, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.pre-phi = phi i32 [ %i.cv, %bb.m ], [ %i.df, %bb.n ]
  %4 = phi i32 [ %i.cn, %bb.m ], [ %.pre108, %bb.n ]
  %i.do = phi ptr [ %.pre107, %bb.m ], [ %i.dl, %bb.n ]
  %.180 = phi ptr [ %i.by, %bb.m ], [ %i.j, %bb.n ]
  %i.dp = zext i32 %.pre-phi to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !9
  store i64 %i.dr, ptr %3, align 8, !tbaa !9
  %i.ds = getelementptr inbounds i8, ptr %.180, i64 -4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !37
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.dt, ptr %i.du, align 8, !tbaa !49
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %4, ptr %i.dv, align 4, !tbaa !74
  call fastcc void @rec_mm_arith(ptr noundef nonnull %i.b, ptr noundef %3, i32 noundef 8)
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.o
  %.sink = phi i32 [ 0, %bb.o ], [ %i.cn, %bb.l ]
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.sink, ptr %i.dw, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret ptr null
}

declare hidden void @lj_snap_shrink(ptr noundef) local_unnamed_addr #2

declare hidden i32 @lj_debug_line(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_mm_callcomp(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9
  %i.h = and i64 %i.g, 140737488355327
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -93
  %i.n = load i8, ptr %i.m, align 1, !tbaa !60    ; 2 uses
  %i.o = zext i8 %i.n to i32                      ; 4 uses
  %i.p = select i1 %.not, i64 ptrtoint (ptr @lj_cont_condt to i64), i64 ptrtoint (ptr @lj_cont_condf to i64)
  %i.q = tail call i32 @lj_ir_k64(ptr noundef nonnull %0, i32 noundef 28, i64 noundef %i.p) #8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42   ; 3 uses
  %i.t = zext i8 %i.n to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  store i32 %i.q, ptr %i.u, align 4, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 131072, ptr %i.v, align 4, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 4 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !31
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !36  ; 3 uses
  %i.ab = icmp ult i32 %i.aa, %i.o
  br i1 %i.ab, label %.lr.ph.preheader.i, label %rec_mm_prep.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %scevgep.i = getelementptr i8, ptr %i.s, i64 %i.ad
  %i.ae = xor i32 %i.aa, -1
  %i.af = add nsw i32 %i.ae, %i.o
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ai, i1 false), !tbaa !37
  br label %rec_mm_prep.exit

rec_mm_prep.exit:                                 ; preds = %bb.a, %.lr.ph.preheader.i
  %i.aj = add nuw nsw i32 %i.o, 2                 ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ak ; 3 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ak ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !50
  store i32 %i.ar, ptr %i.al, align 4, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !75
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.at, ptr %i.au, align 4, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !9
  store i64 %i.az, ptr %i.ap, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !9
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !9
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !9
  tail call fastcc void @rec_call_setup(ptr noundef nonnull %0, i32 noundef %i.aj, i64 noundef 2), !inline_history !77
  %i.bg = load i32, ptr %i.w, align 4, !tbaa !31
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.w, align 4, !tbaa !31
  %i.bi = add nuw nsw i32 %i.o, 4                 ; 2 uses
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.bk = zext nneg i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  store ptr %i.bl, ptr %i.r, align 8, !tbaa !42
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !35
  %i.bo = add i32 %i.bn, %i.bi                    ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !35
  %i.bp = load i32, ptr %i.z, align 4, !tbaa !36
  %i.bq = add i32 %i.bp, %i.bo
  %i.br = icmp ugt i32 %i.bq, 249
  br i1 %i.br, label %bb.b, label %lj_record_call.exit

bb.b:                                             ; preds = %rec_mm_prep.exit
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 3) #9, !inline_history !77
  unreachable

lj_record_call.exit:                              ; preds = %rec_mm_prep.exit
  ret void
}

declare hidden void @lj_cont_condf() #2

declare hidden void @lj_cont_condt() #2

declare hidden i32 @lj_ir_kint64(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i32 @lj_ffrecord_select_mode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @lj_meta_for(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @lj_opt_narrow_forl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_for_check(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %4 to i16                      ; 4 uses
  %i.b = and i32 %4, 32768
  %.not.not = icmp eq i32 %i.b, 0
  br i1 %.not.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 19                       ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @lj_ir_kint(ptr noundef %0, i32 noundef 0) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @lj_ir_knum_u64(ptr noundef %0, i64 noundef 0) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  %.not.not50 = icmp eq i32 %2, 0
  %i.g = shl nuw nsw i32 %2, 8
  %i.h = or i32 %1, %i.g
  %i.i = trunc i32 %i.h to i16
  %i.j = or i16 %i.i, 128
  %i.k = trunc i32 %i.f to i16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 5 uses
  store i16 %i.j, ptr %i.m, align 4, !tbaa !9
  store i16 %i.a, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 5 uses
  store i16 %i.k, ptr %i.n, align 2, !tbaa !9
  %i.o = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  %i.p = icmp ne i32 %5, 0
  %or.cond = and i1 %i.c, %i.p
  br i1 %or.cond, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.q = and i32 %3, 32768
  %.not.not51 = icmp eq i32 %i.q, 0
  br i1 %.not.not51, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  %.mask = and i32 %3, 32767
  %i.t = zext nneg i32 %.mask to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 8, !tbaa !9    ; 4 uses
  br i1 %.not.not50, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.x = sub nuw nsw i32 2147483647, %i.v
  %i.y = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.x) #8
  %i.z = trunc i32 %i.y to i16
  store i16 659, ptr %i.m, align 4, !tbaa !9
  store i16 %i.a, ptr %i.l, align 8, !tbaa !9
  store i16 %i.z, ptr %i.n, align 2, !tbaa !9
  br label %.sink.split

end_hunk_0
