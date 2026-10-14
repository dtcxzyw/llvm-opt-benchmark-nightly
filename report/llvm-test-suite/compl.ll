Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/compl?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@simplify:bb.a
  %i.de = and <4 x i32> %wide.load97, %wide.load95
  %i.df = and <4 x i32> %wide.load98, %wide.load96
  store <4 x i32> %i.de, ptr %i.cz, align 4, !tbaa !7, !alias.scope !66, !noalias !67
  store <4 x i32> %i.df, ptr %i.da, align 4, !tbaa !7, !alias.scope !66, !noalias !67
  %index.next99 = add nuw i64 %index94, 8         ; 2 uses
  %i.dg = icmp eq i64 %index.next99, %n.vec92
  br i1 %i.dg, label %middle.block100, label %vector.body93, !llvm.loop !62

middle.block100:                                  ; preds = %vector.body93
  %cmp.n101 = icmp eq i64 %i.ct, %n.vec92
  br i1 %cmp.n101, label %.loopexit103, label %scalar.ph89.preheader

scalar.ph89.preheader:                            ; preds = %vector.memcheck78, %.lr.ph46, %middle.block100
  %indvars.iv49.ph = phi i64 [ %i.cq, %vector.memcheck78 ], [ %i.cq, %.lr.ph46 ], [ %i.cw, %middle.block100 ]
  br label %scalar.ph89

scalar.ph89:                                      ; preds = %scalar.ph89.preheader, %scalar.ph89
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %scalar.ph89 ], [ %indvars.iv49.ph, %scalar.ph89.preheader ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.094.i44, i64 %indvars.iv49 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv49
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !7
  %i.dl = and i32 %i.dk, %i.di
  store i32 %i.dl, ptr %i.dh, align 4, !tbaa !7
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, -1
  %i.dm = icmp samesign ugt i64 %indvars.iv49, 1
  br i1 %i.dm, label %scalar.ph89, label %.loopexit103, !llvm.loop !63

.loopexit103:                                     ; preds = %scalar.ph89, %middle.block100
  %i.dn = load i32, ptr %i.ce, align 8, !tbaa !25
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %.094.i44, i64 %i.do ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %i.cm
  br i1 %i.dq, label %.lr.ph46, label %simplify_special_cases.exit.thread.sink.split

._crit_edge47:                                    ; preds = %bb.l
  %.not113.i = icmp eq ptr %i.al, null
  br i1 %.not113.i, label %simplify_special_cases.exit.thread, label %simplify_special_cases.exit.thread.sink.split

bb.m:                                             ; preds = %._crit_edge
  %.not114.i = icmp eq ptr %i.al, null
  br i1 %.not114.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.al) #8, !inline_history !53
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void (ptr, ...) @massive_count(ptr noundef nonnull %0) #8, !inline_history !53
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 32), align 8, !tbaa !19 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dt = load i32, ptr @cube, align 8, !tbaa !14
  %i.du = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.dt) #8, !inline_history !53
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !15
  %i.dw = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.du, ptr noundef %i.dv) #8, !inline_history !53 ; 2 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %.not116.i = icmp eq ptr %i.dx, null
  br i1 %.not116.i, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

bb.q:                                             ; preds = %bb.o
  %i.dy = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !20
  %i.dz = icmp eq i32 %i.dy, %i.dr
  br i1 %i.dz, label %bb.r, label %simplify_special_cases.exit

bb.r:                                             ; preds = %bb.q
  %i.ea = tail call ptr (ptr, ...) @cubeunlist(ptr noundef nonnull %0) #8, !inline_history !53
  %i.eb = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.ea) #8, !inline_history !53 ; 2 uses
  %i.ec = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %.not115.i = icmp eq ptr %i.ec, null
  br i1 %.not115.i, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

simplify_special_cases.exit:                      ; preds = %bb.q
  %i.ed = load i32, ptr @cube, align 8, !tbaa !14 ; 3 uses
  %i.ee = icmp slt i32 %i.ed, 33
  %i.ef = add nsw i32 %i.ed, -1
  %i.eg = lshr i32 %i.ef, 3
  %i.eh = and i32 %i.eg, 536870908
  %i.ei = add nuw nsw i32 %i.eh, 8
  %narrow40 = select i1 %i.ee, i32 8, i32 %i.ei
  %i.ej = zext nneg i32 %narrow40 to i64
  %i.ek = tail call noalias ptr @malloc(i64 noundef %i.ej) #9
  %i.el = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.ek, i32 noundef %i.ed) #8 ; 5 uses
  %i.em = load i32, ptr @cube, align 8, !tbaa !14 ; 3 uses
  %i.en = icmp slt i32 %i.em, 33
  %i.eo = add nsw i32 %i.em, -1
  %i.ep = lshr i32 %i.eo, 3
  %i.eq = and i32 %i.ep, 536870908
  %i.er = add nuw nsw i32 %i.eq, 8
  %narrow41 = select i1 %i.en, i32 8, i32 %i.er
  %i.es = zext nneg i32 %narrow41 to i64
  %i.et = tail call noalias ptr @malloc(i64 noundef %i.es) #9
  %i.eu = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.et, i32 noundef %i.em) #8 ; 5 uses
  %i.ev = tail call i32 (ptr, ptr, ptr, i32, ...) @binate_split_select(ptr noundef nonnull %0, ptr noundef %i.el, ptr noundef %i.eu, i32 noundef 1) #8 ; 3 uses
  %i.ew = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef nonnull %0, ptr noundef %i.el, i32 noundef %i.ev) #8
  %i.ex = tail call ptr @simplify(ptr noundef %i.ew)
  %i.ey = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef nonnull %0, ptr noundef %i.eu, i32 noundef %i.ev) #8
  %i.ez = tail call ptr @simplify(ptr noundef %i.ey)
  %i.fa = tail call fastcc ptr @compl_merge(ptr noundef nonnull %0, ptr noundef %i.ex, ptr noundef %i.ez, ptr noundef %i.el, ptr noundef %i.eu, i32 noundef %i.ev, i32 noundef 0) ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !23
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !10
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %0 to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = ashr exact i64 %i.fi, 3
  %i.fk = add nsw i64 %i.fj, -3
  %i.fl = icmp slt i64 %i.fk, %i.fd
  br i1 %i.fl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %simplify_special_cases.exit
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.fa) #8
  %i.fm = tail call ptr (ptr, ...) @cubeunlist(ptr noundef nonnull %0) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %simplify_special_cases.exit
  %.0 = phi ptr [ %i.fm, %bb.s ], [ %i.fa, %simplify_special_cases.exit ] ; 2 uses
  %.not33 = icmp eq ptr %i.el, null
  br i1 %.not33, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.el) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not34 = icmp eq ptr %i.eu, null
  br i1 %.not34, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.eu) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fn = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %.not35 = icmp eq ptr %i.fn, null
  br i1 %.not35, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

simplify_special_cases.exit.thread.sink.split.sink.split: ; preds = %bb.x, %bb.r, %bb.p, %bb.h, %bb.f, %bb.d
  %.sink69 = phi ptr [ %i.ec, %bb.r ], [ %i.dx, %bb.p ], [ %i.ab, %bb.h ], [ %i.t, %bb.f ], [ %i.k, %bb.d ], [ %i.fn, %bb.x ]
  %.1.ph.ph = phi ptr [ %i.eb, %bb.r ], [ %i.dw, %bb.p ], [ %i.aa, %bb.h ], [ %i.s, %bb.f ], [ %i.j, %bb.d ], [ %.0, %bb.x ]
  tail call void @free(ptr noundef nonnull %.sink69) #8
  br label %simplify_special_cases.exit.thread.sink.split

simplify_special_cases.exit.thread.sink.split:    ; preds = %.loopexit103, %simplify_special_cases.exit.thread.sink.split.sink.split, %bb.x, %bb.r, %bb.p, %._crit_edge47, %bb.h, %bb.f, %bb.d
  %.sink = phi ptr [ %0, %bb.h ], [ %0, %bb.p ], [ %i.al, %._crit_edge47 ], [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.r ], [ %0, %bb.x ], [ %0, %simplify_special_cases.exit.thread.sink.split.sink.split ], [ %i.al, %.loopexit103 ]
  %.1.ph = phi ptr [ %i.aa, %bb.h ], [ %i.dw, %bb.p ], [ %i.ce, %._crit_edge47 ], [ %i.s, %bb.f ], [ %i.j, %bb.d ], [ %i.eb, %bb.r ], [ %.0, %bb.x ], [ %.1.ph.ph, %simplify_special_cases.exit.thread.sink.split.sink.split ], [ %i.ce, %.loopexit103 ]
  tail call void @free(ptr noundef nonnull %.sink) #8
  br label %simplify_special_cases.exit.thread

simplify_special_cases.exit.thread:               ; preds = %simplify_special_cases.exit.thread.sink.split, %._crit_edge47
  %.1 = phi ptr [ %i.ce, %._crit_edge47 ], [ %.1.ph, %simplify_special_cases.exit.thread.sink.split ] ; 2 uses
  %i.fo = load i32, ptr @debug, align 4, !tbaa !7
  %i.fp = and i32 %i.fo, 1
  %.not36 = icmp eq i32 %i.fp, 0
  br i1 %.not36, label %bb.z, label %bb.y

bb.y:                                             ; preds = %simplify_special_cases.exit.thread
  %i.fq = load i32, ptr @simplify.simplify_level, align 4, !tbaa !7
  %i.fr = add nsw i32 %i.fq, -1                   ; 2 uses
  store i32 %i.fr, ptr @simplify.simplify_level, align 4, !tbaa !7
  tail call void (ptr, ptr, i32, ...) @debug1_print(ptr noundef %.1, ptr noundef nonnull @.str.6, i32 noundef %i.fr) #8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %simplify_special_cases.exit.thread
  ret ptr %.1
}

declare ptr @sf_addset(...) local_unnamed_addr #2

declare ptr @sf_new(...) local_unnamed_addr #2

declare ptr @set_or(...) local_unnamed_addr #2

declare i32 @full_row(...) local_unnamed_addr #2

declare ptr @set_copy(...) local_unnamed_addr #2

declare i32 @setp_equal(...) local_unnamed_addr #2

declare ptr @set_diff(...) local_unnamed_addr #2

declare ptr @sf_append(...) local_unnamed_addr #2

declare void @massive_count(...) local_unnamed_addr #2

declare ptr @map_cover_to_unate(...) local_unnamed_addr #2

declare ptr @unate_compl(...) local_unnamed_addr #2

declare ptr @map_unate_to_cover(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @compl_cube(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 9 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !15 ; 6 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 2 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !72
  %i.h = load i32, ptr @cube, align 8, !tbaa !14
  %i.i = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.g, i32 noundef %i.h) #8 ; 4 uses
  %i.j = load i32, ptr %i.e, align 4, !tbaa !7    ; 2 uses
  %i.k = and i32 %i.j, 1023
  %i.l = load i32, ptr %i.c, align 4, !tbaa !7
  %i.m = and i32 %i.l, -1024
  %i.n = or disjoint i32 %i.m, %i.k
  store i32 %i.n, ptr %i.c, align 4, !tbaa !7
  %i.o = and i32 %i.j, 1023                       ; 2 uses
  %i.p = zext nneg i32 %i.o to i64                ; 5 uses
  %i.q = icmp ne i32 %i.o, 0
  %.neg = sext i1 %i.q to i64
  %i.r = add nuw nsw i64 %i.p, 1
  %i.s = add nsw i64 %i.r, %.neg                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.s, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.t = ptrtoaddr ptr %0 to i64
  %i.u = sub i64 %i.d, %i.f
  %diff.check = icmp ugt i64 %i.u, -32
  %i.v = sub i64 %i.d, %i.t
  %diff.check44 = icmp ugt i64 %i.v, -32
  %conflict.rdx = or i1 %diff.check, %diff.check44
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, -8                       ; 3 uses
  %i.w = sub nsw i64 %i.p, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = sub i64 %i.p, %index                     ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -12
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -28
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !7
  %wide.load45 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !7
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -12
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -28
  %wide.load46 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !7
  %wide.load47 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !7
  %i.ae = xor <4 x i32> %wide.load46, splat (i32 -1)
  %i.af = xor <4 x i32> %wide.load47, splat (i32 -1)
  %i.ag = and <4 x i32> %wide.load, %i.ae
  %i.ah = and <4 x i32> %wide.load45, %i.af
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -12
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -28
  store <4 x i32> %i.ag, ptr %i.aj, align 4, !tbaa !7
  store <4 x i32> %i.ah, ptr %i.ak, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.p, %vector.memcheck ], [ %i.p, %bb.a ], [ %i.w, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = xor i32 %i.ap, -1
  %i.ar = and i32 %i.an, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.at = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.at, label %scalar.ph, label %.preheader, !llvm.loop !69

.preheader:                                       ; preds = %scalar.ph, %middle.block
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !72
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv41 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next42, %.loopexit ] ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv41
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !10 ; 4 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = tail call i32 (ptr, ptr, ...) @setp_disjoint(ptr noundef nonnull %i.c, ptr noundef %i.ba) #8
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !24 ; 2 uses
  %i.be = load i32, ptr %i.i, align 8, !tbaa !25
  %i.bf = load i32, ptr %i.ax, align 4, !tbaa !23 ; 2 uses
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ax, align 4, !tbaa !23
  %i.bh = mul nsw i32 %i.bf, %i.be
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bi ; 4 uses
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !7   ; 2 uses
  %i.bl = and i32 %i.bk, 1023
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.bn = and i32 %i.bm, -1024
  %i.bo = or disjoint i32 %i.bn, %i.bl
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !7
  %i.bp = and i32 %i.bk, 1023                     ; 2 uses
  %i.bq = zext nneg i32 %i.bp to i64              ; 5 uses
  %i.br = icmp ne i32 %i.bp, 0
  %.neg77 = sext i1 %i.br to i64
  %i.bs = add nuw nsw i64 %i.bq, 1
  %i.bt = add nsw i64 %i.bs, %.neg77              ; 3 uses
  %min.iters.check55 = icmp ult i64 %i.bt, 8
  br i1 %min.iters.check55, label %scalar.ph54.preheader, label %vector.memcheck48

vector.memcheck48:                                ; preds = %bb.c
  %i.bu = ptrtoaddr ptr %i.bd to i64              ; 3 uses
  %i.bv = shl nsw i64 %i.bi, 2                    ; 3 uses
  %i.bw = add i64 %i.bv, %i.bu
  %i.bx = sub i64 %i.bw, %i.d
  %diff.check49 = icmp ugt i64 %i.bx, -32
  %i.by = add i64 %i.bv, %i.bu
  %i.bz = sub i64 %i.by, %i.bb
  %diff.check50 = icmp ugt i64 %i.bz, -32
  %conflict.rdx51 = or i1 %diff.check49, %diff.check50
  %i.ca = add i64 %i.bv, %i.bu
  %i.cb = sub i64 %i.ca, %i.f
  %diff.check52 = icmp ugt i64 %i.cb, -32
  %conflict.rdx53 = or i1 %conflict.rdx51, %diff.check52
  br i1 %conflict.rdx53, label %scalar.ph54.preheader, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck48
  %n.vec57 = and i64 %i.bt, -8                    ; 3 uses
  %i.cc = sub nsw i64 %i.bq, %n.vec57
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next73, %vector.body58 ] ; 2 uses
  %i.cd = sub i64 %i.bq, %index59                 ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -12
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -28
  %wide.load60 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !7
  %wide.load61 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !7
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cd ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -12
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -28
  %wide.load63 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !7 ; 2 uses
  %wide.load64 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !7 ; 2 uses
  %i.ck = and <4 x i32> %wide.load63, %wide.load60
  %i.cl = and <4 x i32> %wide.load64, %wide.load61
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cd ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -12
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -28
  %wide.load67 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !7
  %wide.load68 = load <4 x i32>, ptr %i.co, align 4, !tbaa !7
  %i.cp = xor <4 x i32> %wide.load63, splat (i32 -1)
  %i.cq = xor <4 x i32> %wide.load64, splat (i32 -1)
  %i.cr = and <4 x i32> %wide.load67, %i.cp
  %i.cs = and <4 x i32> %wide.load68, %i.cq
  %i.ct = or <4 x i32> %i.cr, %i.ck
  %i.cu = or <4 x i32> %i.cs, %i.cl
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cd ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -12
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -28
  store <4 x i32> %i.ct, ptr %i.cw, align 4, !tbaa !7
  store <4 x i32> %i.cu, ptr %i.cx, align 4, !tbaa !7
  %index.next73 = add nuw i64 %index59, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next73, %n.vec57
  br i1 %i.cy, label %middle.block74, label %vector.body58, !llvm.loop !70

middle.block74:                                   ; preds = %vector.body58
  %cmp.n75 = icmp eq i64 %i.bt, %n.vec57
  br i1 %cmp.n75, label %.loopexit, label %scalar.ph54.preheader

scalar.ph54.preheader:                            ; preds = %vector.memcheck48, %bb.c, %middle.block74
  %indvars.iv38.ph = phi i64 [ %i.bq, %vector.memcheck48 ], [ %i.bq, %bb.c ], [ %i.cc, %middle.block74 ]
  br label %scalar.ph54

scalar.ph54:                                      ; preds = %scalar.ph54.preheader, %scalar.ph54
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %scalar.ph54 ], [ %indvars.iv38.ph, %scalar.ph54.preheader ] ; 6 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv38
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv38
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !7  ; 2 uses
  %i.dd = and i32 %i.dc, %i.da
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv38
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dg = xor i32 %i.dc, -1
  %i.dh = and i32 %i.df, %i.dg
  %i.di = or i32 %i.dh, %i.dd
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv38
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !7
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, -1
  %i.dk = icmp samesign ugt i64 %indvars.iv38, 1
  br i1 %i.dk, label %scalar.ph54, label %.loopexit, !llvm.loop !71

.loopexit:                                        ; preds = %scalar.ph54, %middle.block74, %bb.b
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !72
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next42, %i.dm
  br i1 %i.dn, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  ret ptr %i.i
}

declare i32 @setp_disjoint(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @compl_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @debug, align 4, !tbaa !7
end_hunk_0
