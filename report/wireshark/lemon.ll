inline.NumInlined: 160
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 27
begin_hunk_0_@OptArg:bb.a
sub_2.i:                                          ; preds = %sub_1.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, 0
  %i.p = select i1 %i.o, i32 1, i32 %.025.i
  br label %.tail.i

.tail.i:                                          ; preds = %sub_2.i, %sub_1.i, %sub_0.i
  %spec.select.i = phi i32 [ %.025.i, %sub_0.i ], [ %.025.i, %sub_1.i ], [ %i.p, %sub_2.i ]
  %i.q = add i32 %.01124.i, 1                     ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [8 x i8], ptr %i.a, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not19.i = icmp eq ptr %i.t, null
  br i1 %.not19.i, label %argindex.exit.thread, label %.lr.ph.i, !llvm.loop !93

argindex.exit:                                    ; preds = %bb.e
  %i.u = icmp sgt i32 %.01124.i, -1
  br i1 %i.u, label %bb.g, label %argindex.exit.thread

bb.g:                                             ; preds = %argindex.exit
  %i.v = zext nneg i32 %.01124.i to i64
  %i.w = getelementptr [8 x i8], ptr %i.a, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  br label %argindex.exit.thread

argindex.exit.thread:                             ; preds = %.tail.i, %.preheader.i, %bb.a, %bb.b, %argindex.exit, %bb.g
  %i.y = phi ptr [ %i.x, %bb.g ], [ null, %argindex.exit ], [ null, %bb.b ], [ null, %bb.a ], [ null, %.preheader.i ], [ null, %.tail.i ]
  ret ptr %i.y
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden nonnull ptr @Symbol_new(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @x2a, align 8              ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Symbol_find.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1                 ; 2 uses
  %.not5.i.i = icmp eq i8 %i.c, 0
  br i1 %.not5.i.i, label %strhash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.d = phi i8 [ %i.i, %.lr.ph.i.i ], [ %i.c, %bb.b ]
  %.07.i.i = phi i32 [ %i.h, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.036.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %0, %bb.b ]
  %i.e = mul i32 %.07.i.i, 13
  %i.f = getelementptr i8, ptr %.036.i.i, i64 1   ; 2 uses
  %i.g = sext i8 %i.d to i32
  %i.h = add i32 %i.e, %i.g                       ; 2 uses
  %i.i = load i8, ptr %i.f, align 1               ; 2 uses
  %.not.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i, label %strhash.exit.i, label %.lr.ph.i.i, !llvm.loop !35

strhash.exit.i:                                   ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %i.h, %.lr.ph.i.i ]
  %i.j = load i32, ptr %i.a, align 8
  %i.k = add i32 %i.j, -1
  %i.l = and i32 %i.k, %.0.lcssa.i.i
  %i.m = getelementptr i8, ptr %i.a, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr [8 x i8], ptr %i.n, i64 %i.o
  %.010.i = load ptr, ptr %i.p, align 8           ; 2 uses
  %.not11.i = icmp eq ptr %.010.i, null
  br i1 %.not11.i, label %Symbol_find.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %strhash.exit.i, %bb.c
  %.012.i = phi ptr [ %.0.i, %bb.c ], [ %.010.i, %strhash.exit.i ] ; 3 uses
  %i.q = getelementptr i8, ptr %.012.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 @strcmp(ptr noundef %i.r, ptr noundef readonly %0) #44
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %Symbol_find.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr i8, ptr %.012.i, i64 16
  %.0.i = load ptr, ptr %i.u, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %Symbol_find.exit.thread, label %.lr.ph.i, !llvm.loop !36

Symbol_find.exit:                                 ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %.012.i, align 8           ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %Symbol_find.exit.thread, label %bb.f

Symbol_find.exit.thread:                          ; preds = %bb.c, %strhash.exit.i, %bb.a, %Symbol_find.exit
  %i.x = tail call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #40 ; 7 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %Symbol_find.exit.thread
  tail call void @memory_error()
  unreachable

bb.e:                                             ; preds = %Symbol_find.exit.thread
  %i.z = tail call ptr @Strsafe(ptr noundef %0)   ; 2 uses
  store ptr %i.z, ptr %i.x, align 8
  %i.aa = tail call ptr @__ctype_b_loc() #47
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load i8, ptr %0, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr [2 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = and i16 %i.af, 256
  %.not = icmp eq i16 %i.ag, 0
  %i.ah = zext i1 %.not to i32
  %i.ai = getelementptr i8, ptr %i.x, i64 12
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = getelementptr i8, ptr %i.x, i64 32
  store i32 -1, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %i.x, i64 36
  store i32 3, ptr %i.ak, align 4
  %i.al = tail call i32 @Symbol_insert(ptr noundef nonnull %i.x, ptr noundef %i.z) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %Symbol_find.exit
  %.0 = phi ptr [ %i.x, %bb.e ], [ %i.v, %Symbol_find.exit ] ; 2 uses
  %i.am = getelementptr i8, ptr %.0, i64 52       ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @Parse(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 5 uses
  %1 = alloca %struct.pstate, align 8             ; 63 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #42
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16136) %i.b, i8 noundef 0, i64 noundef 16136, i1 noundef false) #42
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 22 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  store ptr %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 71 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 53 uses
  store i32 0, ptr %i.g, align 8
  %i.h = tail call noalias ptr @fopen(ptr noundef %i.e, ptr noundef nonnull @.str.73) ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.e, i32 noundef 0, ptr noundef nonnull @.str.74)
  %i.j = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8
  br label %bb.jx

bb.c:                                             ; preds = %bb.a
  %i.m = tail call i32 @fseek(ptr noundef nonnull %i.h, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.n = tail call i64 @ftell(ptr noundef nonnull %i.h) ; 3 uses
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  tail call void @rewind(ptr noundef nonnull %i.h)
  %i.p = add i64 %i.n, 1
  %i.q = and i64 %i.p, 4294967295                 ; 2 uses
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #45 ; 101 uses
  %i.s = icmp ugt i32 %i.o, 100000000
  %i.t = icmp eq ptr %i.r, null
  %or.cond = or i1 %i.s, %i.t
  br i1 %or.cond, label %bb.d, label %fread.inline.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.e, i32 noundef 0, ptr noundef nonnull @.str.75)
  tail call void @free(ptr noundef %i.r) #42
  %i.u = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8
  %i.x = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.jx

fread.inline.exit:                                ; preds = %bb.c
  %i.y = and i64 %i.n, 134217727                  ; 3 uses
  %i.z = tail call i64 @__fread_chk(ptr noundef nonnull %i.r, i64 noundef %i.q, i64 noundef 1, i64 noundef range(i64 0, 100000001) %i.y, ptr noundef nonnull %i.h)
  %.not = icmp eq i64 %i.z, %i.y
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %fread.inline.exit
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.e, i32 noundef 0, ptr noundef nonnull @.str.76, i32 noundef %i.o)
  tail call void @free(ptr noundef nonnull %i.r) #42
  %i.aa = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 8
  %i.ad = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.jx

bb.f:                                             ; preds = %fread.inline.exit
  %i.ae = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  %i.af = getelementptr i8, ptr %i.r, i64 %i.y
  store i8 0, ptr %i.af, align 1
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i, %bb.f
  %.0130.i = phi i32 [ 0, %bb.f ], [ %i.nn, %.critedge.i ] ; 16 uses
  %.0119.i = phi i32 [ 0, %bb.f ], [ %.5.i, %.critedge.i ] ; 11 uses
  %.0114.i = phi i32 [ 0, %bb.f ], [ %.4118.i, %.critedge.i ] ; 17 uses
  %.0112.i = phi i32 [ 1, %bb.f ], [ %.1113161.i, %.critedge.i ] ; 13 uses
  %.0.i210 = phi i32 [ 1, %bb.f ], [ %.4.i, %.critedge.i ] ; 14 uses
  %i.ag = sext i32 %.0130.i to i64                ; 6 uses
  %i.ah = getelementptr i8, ptr %i.r, i64 %i.ag   ; 6 uses
  %i.ai = load i8, ptr %i.ah, align 1
  switch i8 %i.ai, label %.critedge.i [
    i8 0, label %bb.ak
    i8 10, label %.thread.i
    i8 37, label %bb.h
  ]

.thread.i:                                        ; preds = %bb.g
  %i.aj = add i32 %.0112.i, 1
  br label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp sgt i32 %.0130.i, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = zext nneg i32 %.0130.i to i64
  %i.am = getelementptr i8, ptr %i.r, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1
  %.not140.i = icmp eq i8 %i.ao, 10
  br i1 %.not140.i, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = tail call i32 @strncmp(ptr noundef %i.ah, ptr noundef nonnull dereferenceable(7) @.str.271, i64 noundef 6) #44
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ar = tail call ptr @__ctype_b_loc() #47
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = add i32 %.0130.i, 6
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr i8, ptr %i.r, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr [2 x i8], ptr %i.as, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = and i16 %i.az, 8192
  %.not141.i = icmp eq i16 %i.ba, 0
  br i1 %.not141.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not155.i = icmp eq i32 %.0119.i, 0
  br i1 %.not155.i, label %.loopexit166.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = add i32 %.0119.i, -1                    ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.preheader165.i, label %.loopexit166.i

.preheader165.i:                                  ; preds = %bb.m
  %i.bd = icmp slt i32 %.0114.i, %.0130.i
  br i1 %i.bd, label %iter.check684, label %.loopexit166.i

iter.check684:                                    ; preds = %.preheader165.i
  %i.be = sext i32 %.0114.i to i64                ; 6 uses
  %i.bf = sub nsw i64 %i.ag, %i.be                ; 7 uses
  %min.iters.check607 = icmp ult i64 %i.bf, 8
  br i1 %min.iters.check607, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check608

vector.main.loop.iter.check608:                   ; preds = %iter.check684
  %min.iters.check609 = icmp ult i64 %i.bf, 32
  br i1 %min.iters.check609, label %vec.epilog.ph688, label %vector.ph610

vector.ph610:                                     ; preds = %vector.main.loop.iter.check608
  %i.bg = and i64 %i.bf, 24
  %n.vec611 = and i64 %i.bf, -32                  ; 4 uses
  %i.bh = add nsw i64 %n.vec611, %i.be
  br label %vector.body612

vector.body612:                                   ; preds = %pred.store.continue679, %vector.ph610
  %index613 = phi i64 [ 0, %vector.ph610 ], [ %index.next680, %pred.store.continue679 ] ; 2 uses
  %i.bi = add i64 %index613, %i.be                ; 32 uses
  %i.bj = getelementptr i8, ptr %i.r, i64 %i.bi   ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %wide.load614 = load <16 x i8>, ptr %i.bj, align 1
  %wide.load615 = load <16 x i8>, ptr %i.bk, align 1
  %i.bl = icmp ne <16 x i8> %wide.load614, splat (i8 10) ; 16 uses
  %i.bm = icmp ne <16 x i8> %wide.load615, splat (i8 10) ; 16 uses
  %i.bn = extractelement <16 x i1> %i.bl, i64 0
  br i1 %i.bn, label %pred.store.if616, label %pred.store.continue617

pred.store.if616:                                 ; preds = %vector.body612
  store i8 32, ptr %i.bj, align 1
  br label %pred.store.continue617

pred.store.continue617:                           ; preds = %pred.store.if616, %vector.body612
  %i.bo = extractelement <16 x i1> %i.bl, i64 1
  br i1 %i.bo, label %pred.store.if618, label %pred.store.continue619

pred.store.if618:                                 ; preds = %pred.store.continue617
  %i.bp = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bq = getelementptr i8, ptr %i.bp, i64 1
  store i8 32, ptr %i.bq, align 1
  br label %pred.store.continue619

pred.store.continue619:                           ; preds = %pred.store.if618, %pred.store.continue617
  %i.br = extractelement <16 x i1> %i.bl, i64 2
  br i1 %i.br, label %pred.store.if620, label %pred.store.continue621

pred.store.if620:                                 ; preds = %pred.store.continue619
  %i.bs = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bt = getelementptr i8, ptr %i.bs, i64 2
  store i8 32, ptr %i.bt, align 1
  br label %pred.store.continue621

pred.store.continue621:                           ; preds = %pred.store.if620, %pred.store.continue619
  %i.bu = extractelement <16 x i1> %i.bl, i64 3
  br i1 %i.bu, label %pred.store.if622, label %pred.store.continue623

pred.store.if622:                                 ; preds = %pred.store.continue621
  %i.bv = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bw = getelementptr i8, ptr %i.bv, i64 3
  store i8 32, ptr %i.bw, align 1
  br label %pred.store.continue623

pred.store.continue623:                           ; preds = %pred.store.if622, %pred.store.continue621
  %i.bx = extractelement <16 x i1> %i.bl, i64 4
  br i1 %i.bx, label %pred.store.if624, label %pred.store.continue625

pred.store.if624:                                 ; preds = %pred.store.continue623
  %i.by = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bz = getelementptr i8, ptr %i.by, i64 4
  store i8 32, ptr %i.bz, align 1
  br label %pred.store.continue625

pred.store.continue625:                           ; preds = %pred.store.if624, %pred.store.continue623
  %i.ca = extractelement <16 x i1> %i.bl, i64 5
  br i1 %i.ca, label %pred.store.if626, label %pred.store.continue627

pred.store.if626:                                 ; preds = %pred.store.continue625
  %i.cb = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.cc = getelementptr i8, ptr %i.cb, i64 5
  store i8 32, ptr %i.cc, align 1
  br label %pred.store.continue627

pred.store.continue627:                           ; preds = %pred.store.if626, %pred.store.continue625
  %i.cd = extractelement <16 x i1> %i.bl, i64 6
  br i1 %i.cd, label %pred.store.if628, label %pred.store.continue629

pred.store.if628:                                 ; preds = %pred.store.continue627
  %i.ce = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.cf = getelementptr i8, ptr %i.ce, i64 6
  store i8 32, ptr %i.cf, align 1
  br label %pred.store.continue629

pred.store.continue629:                           ; preds = %pred.store.if628, %pred.store.continue627
  %i.cg = extractelement <16 x i1> %i.bl, i64 7
  br i1 %i.cg, label %pred.store.if630, label %pred.store.continue631

pred.store.if630:                                 ; preds = %pred.store.continue629
  %i.ch = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.ci = getelementptr i8, ptr %i.ch, i64 7
  store i8 32, ptr %i.ci, align 1
  br label %pred.store.continue631

pred.store.continue631:                           ; preds = %pred.store.if630, %pred.store.continue629
  %i.cj = extractelement <16 x i1> %i.bl, i64 8
  br i1 %i.cj, label %pred.store.if632, label %pred.store.continue633

pred.store.if632:                                 ; preds = %pred.store.continue631
  %i.ck = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  store i8 32, ptr %i.cl, align 1
  br label %pred.store.continue633

pred.store.continue633:                           ; preds = %pred.store.if632, %pred.store.continue631
  %i.cm = extractelement <16 x i1> %i.bl, i64 9
  br i1 %i.cm, label %pred.store.if634, label %pred.store.continue635

pred.store.if634:                                 ; preds = %pred.store.continue633
  %i.cn = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.co = getelementptr i8, ptr %i.cn, i64 9
  store i8 32, ptr %i.co, align 1
  br label %pred.store.continue635

pred.store.continue635:                           ; preds = %pred.store.if634, %pred.store.continue633
  %i.cp = extractelement <16 x i1> %i.bl, i64 10
  br i1 %i.cp, label %pred.store.if636, label %pred.store.continue637

pred.store.if636:                                 ; preds = %pred.store.continue635
  %i.cq = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.cr = getelementptr i8, ptr %i.cq, i64 10
  store i8 32, ptr %i.cr, align 1
  br label %pred.store.continue637

pred.store.continue637:                           ; preds = %pred.store.if636, %pred.store.continue635
  %i.cs = extractelement <16 x i1> %i.bl, i64 11
  br i1 %i.cs, label %pred.store.if638, label %pred.store.continue639

pred.store.if638:                                 ; preds = %pred.store.continue637
  %i.ct = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.cu = getelementptr i8, ptr %i.ct, i64 11
  store i8 32, ptr %i.cu, align 1
  br label %pred.store.continue639

pred.store.continue639:                           ; preds = %pred.store.if638, %pred.store.continue637
  %i.cv = extractelement <16 x i1> %i.bl, i64 12
  br i1 %i.cv, label %pred.store.if640, label %pred.store.continue641

pred.store.if640:                                 ; preds = %pred.store.continue639
  %i.cw = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.cx = getelementptr i8, ptr %i.cw, i64 12
  store i8 32, ptr %i.cx, align 1
  br label %pred.store.continue641

pred.store.continue641:                           ; preds = %pred.store.if640, %pred.store.continue639
  %i.cy = extractelement <16 x i1> %i.bl, i64 13
  br i1 %i.cy, label %pred.store.if642, label %pred.store.continue643

pred.store.if642:                                 ; preds = %pred.store.continue641
  %i.cz = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.da = getelementptr i8, ptr %i.cz, i64 13
  store i8 32, ptr %i.da, align 1
  br label %pred.store.continue643

pred.store.continue643:                           ; preds = %pred.store.if642, %pred.store.continue641
  %i.db = extractelement <16 x i1> %i.bl, i64 14
  br i1 %i.db, label %pred.store.if644, label %pred.store.continue645

pred.store.if644:                                 ; preds = %pred.store.continue643
  %i.dc = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.dd = getelementptr i8, ptr %i.dc, i64 14
  store i8 32, ptr %i.dd, align 1
  br label %pred.store.continue645

pred.store.continue645:                           ; preds = %pred.store.if644, %pred.store.continue643
  %i.de = extractelement <16 x i1> %i.bl, i64 15
  br i1 %i.de, label %pred.store.if646, label %pred.store.continue647

pred.store.if646:                                 ; preds = %pred.store.continue645
  %i.df = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.dg = getelementptr i8, ptr %i.df, i64 15
  store i8 32, ptr %i.dg, align 1
  br label %pred.store.continue647

pred.store.continue647:                           ; preds = %pred.store.if646, %pred.store.continue645
  %i.dh = extractelement <16 x i1> %i.bm, i64 0
  br i1 %i.dh, label %pred.store.if648, label %pred.store.continue649

pred.store.if648:                                 ; preds = %pred.store.continue647
  %i.di = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  store i8 32, ptr %i.dj, align 1
  br label %pred.store.continue649

pred.store.continue649:                           ; preds = %pred.store.if648, %pred.store.continue647
  %i.dk = extractelement <16 x i1> %i.bm, i64 1
  br i1 %i.dk, label %pred.store.if650, label %pred.store.continue651

pred.store.if650:                                 ; preds = %pred.store.continue649
  %i.dl = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.dm = getelementptr i8, ptr %i.dl, i64 17
  store i8 32, ptr %i.dm, align 1
  br label %pred.store.continue651

pred.store.continue651:                           ; preds = %pred.store.if650, %pred.store.continue649
end_hunk_0
begin_hunk_1_@Parse:bb.a
  %i.ex = extractelement <16 x i1> %i.bm, i64 14
  br i1 %i.ex, label %pred.store.if676, label %pred.store.continue677

pred.store.if676:                                 ; preds = %pred.store.continue675
  %i.ey = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.ez = getelementptr i8, ptr %i.ey, i64 30
  store i8 32, ptr %i.ez, align 1
  br label %pred.store.continue677

pred.store.continue677:                           ; preds = %pred.store.if676, %pred.store.continue675
  %i.fa = extractelement <16 x i1> %i.bm, i64 15
  br i1 %i.fa, label %pred.store.if678, label %pred.store.continue679

pred.store.if678:                                 ; preds = %pred.store.continue677
  %i.fb = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.fc = getelementptr i8, ptr %i.fb, i64 31
  store i8 32, ptr %i.fc, align 1
  br label %pred.store.continue679

pred.store.continue679:                           ; preds = %pred.store.if678, %pred.store.continue677
  %index.next680 = add nuw i64 %index613, 32      ; 2 uses
  %i.fd = icmp eq i64 %index.next680, %n.vec611
  br i1 %i.fd, label %middle.block681, label %vector.body612, !llvm.loop !128

middle.block681:                                  ; preds = %pred.store.continue679
  %cmp.n682 = icmp eq i64 %i.bf, %n.vec611
  br i1 %cmp.n682, label %.loopexit166.i, label %vec.epilog.iter.check686

vec.epilog.iter.check686:                         ; preds = %middle.block681
  %min.epilog.iters.check687 = icmp eq i64 %i.bg, 0
  br i1 %min.epilog.iters.check687, label %.lr.ph.i.preheader, label %vec.epilog.ph688, !prof !129

vec.epilog.ph688:                                 ; preds = %vector.main.loop.iter.check608, %vec.epilog.iter.check686
  %vec.epilog.resume.val683 = phi i64 [ %n.vec611, %vec.epilog.iter.check686 ], [ 0, %vector.main.loop.iter.check608 ]
  %n.vec689 = and i64 %i.bf, -8                   ; 3 uses
  %i.fe = add nsw i64 %n.vec689, %i.be
  br label %vec.epilog.vector.body690

vec.epilog.vector.body690:                        ; preds = %pred.store.continue708, %vec.epilog.ph688
  %index691 = phi i64 [ %vec.epilog.resume.val683, %vec.epilog.ph688 ], [ %index.next709, %pred.store.continue708 ] ; 2 uses
  %i.ff = add i64 %index691, %i.be                ; 8 uses
  %i.fg = getelementptr i8, ptr %i.r, i64 %i.ff   ; 2 uses
  %wide.load692 = load <8 x i8>, ptr %i.fg, align 1
  %i.fh = icmp ne <8 x i8> %wide.load692, splat (i8 10) ; 8 uses
  %i.fi = extractelement <8 x i1> %i.fh, i64 0
  br i1 %i.fi, label %pred.store.if693, label %pred.store.continue694

pred.store.if693:                                 ; preds = %vec.epilog.vector.body690
  store i8 32, ptr %i.fg, align 1
  br label %pred.store.continue694

pred.store.continue694:                           ; preds = %pred.store.if693, %vec.epilog.vector.body690
  %i.fj = extractelement <8 x i1> %i.fh, i64 1
  br i1 %i.fj, label %pred.store.if695, label %pred.store.continue696

pred.store.if695:                                 ; preds = %pred.store.continue694
  %i.fk = getelementptr i8, ptr %i.r, i64 %i.ff
  %i.fl = getelementptr i8, ptr %i.fk, i64 1
  store i8 32, ptr %i.fl, align 1
  br label %pred.store.continue696

pred.store.continue696:                           ; preds = %pred.store.if695, %pred.store.continue694
  %i.fm = extractelement <8 x i1> %i.fh, i64 2
  br i1 %i.fm, label %pred.store.if697, label %pred.store.continue698

pred.store.if697:                                 ; preds = %pred.store.continue696
  %i.fn = getelementptr i8, ptr %i.r, i64 %i.ff
  %i.fo = getelementptr i8, ptr %i.fn, i64 2
  store i8 32, ptr %i.fo, align 1
  br label %pred.store.continue698

pred.store.continue698:                           ; preds = %pred.store.if697, %pred.store.continue696
  %i.fp = extractelement <8 x i1> %i.fh, i64 3
  br i1 %i.fp, label %pred.store.if699, label %pred.store.continue700

pred.store.if699:                                 ; preds = %pred.store.continue698
  %i.fq = getelementptr i8, ptr %i.r, i64 %i.ff
  %i.fr = getelementptr i8, ptr %i.fq, i64 3
  store i8 32, ptr %i.fr, align 1
  br label %pred.store.continue700

pred.store.continue700:                           ; preds = %pred.store.if699, %pred.store.continue698
  %i.fs = extractelement <8 x i1> %i.fh, i64 4
  br i1 %i.fs, label %pred.store.if701, label %pred.store.continue702

pred.store.if701:                                 ; preds = %pred.store.continue700
  %i.ft = getelementptr i8, ptr %i.r, i64 %i.ff
  %i.fu = getelementptr i8, ptr %i.ft, i64 4
  store i8 32, ptr %i.fu, align 1
  br label %pred.store.continue702

pred.store.continue702:                           ; preds = %pred.store.if701, %pred.store.continue700
  %i.fv = extractelement <8 x i1> %i.fh, i64 5
  br i1 %i.fv, label %pred.store.if703, label %pred.store.continue704

pred.store.if703:                                 ; preds = %pred.store.continue702
  %i.fw = getelementptr i8, ptr %i.r, i64 %i.ff
  %i.fx = getelementptr i8, ptr %i.fw, i64 5
  store i8 32, ptr %i.fx, align 1
  br label %pred.store.continue704

pred.store.continue704:                           ; preds = %pred.store.if703, %pred.store.continue702
  %i.fy = extractelement <8 x i1> %i.fh, i64 6
  br i1 %i.fy, label %pred.store.if705, label %pred.store.continue706

pred.store.if705:                                 ; preds = %pred.store.continue704
  %i.fz = getelementptr i8, ptr %i.r, i64 %i.ff
  %i.ga = getelementptr i8, ptr %i.fz, i64 6
  store i8 32, ptr %i.ga, align 1
  br label %pred.store.continue706

pred.store.continue706:                           ; preds = %pred.store.if705, %pred.store.continue704
  %i.gb = extractelement <8 x i1> %i.fh, i64 7
  br i1 %i.gb, label %pred.store.if707, label %pred.store.continue708

pred.store.if707:                                 ; preds = %pred.store.continue706
  %i.gc = getelementptr i8, ptr %i.r, i64 %i.ff
  %i.gd = getelementptr i8, ptr %i.gc, i64 7
  store i8 32, ptr %i.gd, align 1
  br label %pred.store.continue708

pred.store.continue708:                           ; preds = %pred.store.if707, %pred.store.continue706
  %index.next709 = add nuw i64 %index691, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next709, %n.vec689
  br i1 %i.ge, label %vec.epilog.middle.block710, label %vec.epilog.vector.body690, !llvm.loop !130

vec.epilog.middle.block710:                       ; preds = %pred.store.continue708
  %cmp.n711 = icmp eq i64 %i.bf, %n.vec689
  br i1 %cmp.n711, label %.loopexit166.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check684, %vec.epilog.iter.check686, %vec.epilog.middle.block710
  %indvars.iv.i.ph = phi i64 [ %i.be, %iter.check684 ], [ %i.bh, %vec.epilog.iter.check686 ], [ %i.fe, %vec.epilog.middle.block710 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.gf = getelementptr i8, ptr %i.r, i64 %indvars.iv.i ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1
  %.not158.i = icmp eq i8 %i.gg, 10
  br i1 %.not158.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  store i8 32, ptr %i.gf, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ag
  br i1 %exitcond.not.i, label %.loopexit166.i, label %.lr.ph.i, !llvm.loop !131

.loopexit166.i:                                   ; preds = %bb.o, %middle.block681, %vec.epilog.middle.block710, %.preheader165.i, %bb.m, %bb.l
  %.1120.i = phi i32 [ 0, %bb.l ], [ %i.bb, %bb.m ], [ 0, %.preheader165.i ], [ 0, %middle.block681 ], [ 0, %vec.epilog.middle.block710 ], [ 0, %bb.o ] ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.loopexit166.i
  %.1125.i = phi i32 [ %.0130.i, %.loopexit166.i ], [ %i.gk, %bb.q ] ; 2 uses
  %i.gh = sext i32 %.1125.i to i64
  %i.gi = getelementptr i8, ptr %i.r, i64 %i.gh   ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1
  switch i8 %i.gj, label %bb.q [
    i8 0, label %.critedge.i
    i8 10, label %.critedge.i
  ]

bb.q:                                             ; preds = %bb.p
  store i8 32, ptr %i.gi, align 1
  %i.gk = add i32 %.1125.i, 1
  br label %bb.p, !llvm.loop !132

bb.r:                                             ; preds = %bb.k, %bb.j
  %i.gl = tail call i32 @strncmp(ptr noundef %i.ah, ptr noundef nonnull dereferenceable(6) @.str.272, i64 noundef 5) #44
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.gn = tail call ptr @__ctype_b_loc() #47
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = add i32 %.0130.i, 5
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr i8, ptr %i.r, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr [2 x i8], ptr %i.go, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2
  %i.gw = and i16 %i.gv, 8192
  %.not142.i = icmp eq i16 %i.gw, 0
  br i1 %.not142.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  switch i32 %.0119.i, label %.loopexit.i [
    i32 1, label %.preheader163.i
    i32 0, label %bb.w
  ]

.preheader163.i:                                  ; preds = %bb.t
  %i.gx = icmp slt i32 %.0114.i, %.0130.i
  br i1 %i.gx, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %.preheader163.i
  %i.gy = sext i32 %.0114.i to i64                ; 6 uses
  %i.gz = sub nsw i64 %i.ag, %i.gy                ; 7 uses
  %min.iters.check = icmp ult i64 %i.gz, 8
  br i1 %min.iters.check, label %.lr.ph171.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check521 = icmp ult i64 %i.gz, 32
  br i1 %min.iters.check521, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ha = and i64 %i.gz, 24
  %n.vec = and i64 %i.gz, -32                     ; 4 uses
  %i.hb = add nsw i64 %n.vec, %i.gy
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue584, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue584 ] ; 2 uses
  %i.hc = add i64 %index, %i.gy                   ; 32 uses
  %i.hd = getelementptr i8, ptr %i.r, i64 %i.hc   ; 3 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 16
  %wide.load = load <16 x i8>, ptr %i.hd, align 1
  %wide.load522 = load <16 x i8>, ptr %i.he, align 1
  %i.hf = icmp ne <16 x i8> %wide.load, splat (i8 10) ; 16 uses
  %i.hg = icmp ne <16 x i8> %wide.load522, splat (i8 10) ; 16 uses
  %i.hh = extractelement <16 x i1> %i.hf, i64 0
  br i1 %i.hh, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 32, ptr %i.hd, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.hi = extractelement <16 x i1> %i.hf, i64 1
  br i1 %i.hi, label %pred.store.if523, label %pred.store.continue524

pred.store.if523:                                 ; preds = %pred.store.continue
  %i.hj = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.hk = getelementptr i8, ptr %i.hj, i64 1
  store i8 32, ptr %i.hk, align 1
  br label %pred.store.continue524

pred.store.continue524:                           ; preds = %pred.store.if523, %pred.store.continue
  %i.hl = extractelement <16 x i1> %i.hf, i64 2
  br i1 %i.hl, label %pred.store.if525, label %pred.store.continue526

pred.store.if525:                                 ; preds = %pred.store.continue524
  %i.hm = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.hn = getelementptr i8, ptr %i.hm, i64 2
  store i8 32, ptr %i.hn, align 1
  br label %pred.store.continue526

pred.store.continue526:                           ; preds = %pred.store.if525, %pred.store.continue524
  %i.ho = extractelement <16 x i1> %i.hf, i64 3
  br i1 %i.ho, label %pred.store.if527, label %pred.store.continue528

pred.store.if527:                                 ; preds = %pred.store.continue526
  %i.hp = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.hq = getelementptr i8, ptr %i.hp, i64 3
  store i8 32, ptr %i.hq, align 1
  br label %pred.store.continue528

pred.store.continue528:                           ; preds = %pred.store.if527, %pred.store.continue526
  %i.hr = extractelement <16 x i1> %i.hf, i64 4
  br i1 %i.hr, label %pred.store.if529, label %pred.store.continue530

pred.store.if529:                                 ; preds = %pred.store.continue528
  %i.hs = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.ht = getelementptr i8, ptr %i.hs, i64 4
  store i8 32, ptr %i.ht, align 1
  br label %pred.store.continue530

pred.store.continue530:                           ; preds = %pred.store.if529, %pred.store.continue528
  %i.hu = extractelement <16 x i1> %i.hf, i64 5
  br i1 %i.hu, label %pred.store.if531, label %pred.store.continue532

pred.store.if531:                                 ; preds = %pred.store.continue530
  %i.hv = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.hw = getelementptr i8, ptr %i.hv, i64 5
  store i8 32, ptr %i.hw, align 1
  br label %pred.store.continue532

pred.store.continue532:                           ; preds = %pred.store.if531, %pred.store.continue530
  %i.hx = extractelement <16 x i1> %i.hf, i64 6
  br i1 %i.hx, label %pred.store.if533, label %pred.store.continue534

pred.store.if533:                                 ; preds = %pred.store.continue532
  %i.hy = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.hz = getelementptr i8, ptr %i.hy, i64 6
  store i8 32, ptr %i.hz, align 1
  br label %pred.store.continue534

pred.store.continue534:                           ; preds = %pred.store.if533, %pred.store.continue532
  %i.ia = extractelement <16 x i1> %i.hf, i64 7
  br i1 %i.ia, label %pred.store.if535, label %pred.store.continue536

pred.store.if535:                                 ; preds = %pred.store.continue534
  %i.ib = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.ic = getelementptr i8, ptr %i.ib, i64 7
  store i8 32, ptr %i.ic, align 1
  br label %pred.store.continue536

pred.store.continue536:                           ; preds = %pred.store.if535, %pred.store.continue534
  %i.id = extractelement <16 x i1> %i.hf, i64 8
  br i1 %i.id, label %pred.store.if537, label %pred.store.continue538

pred.store.if537:                                 ; preds = %pred.store.continue536
  %i.ie = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.if = getelementptr i8, ptr %i.ie, i64 8
  store i8 32, ptr %i.if, align 1
  br label %pred.store.continue538

pred.store.continue538:                           ; preds = %pred.store.if537, %pred.store.continue536
  %i.ig = extractelement <16 x i1> %i.hf, i64 9
  br i1 %i.ig, label %pred.store.if539, label %pred.store.continue540

pred.store.if539:                                 ; preds = %pred.store.continue538
  %i.ih = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.ii = getelementptr i8, ptr %i.ih, i64 9
  store i8 32, ptr %i.ii, align 1
  br label %pred.store.continue540

pred.store.continue540:                           ; preds = %pred.store.if539, %pred.store.continue538
  %i.ij = extractelement <16 x i1> %i.hf, i64 10
  br i1 %i.ij, label %pred.store.if541, label %pred.store.continue542

pred.store.if541:                                 ; preds = %pred.store.continue540
  %i.ik = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.il = getelementptr i8, ptr %i.ik, i64 10
  store i8 32, ptr %i.il, align 1
  br label %pred.store.continue542

pred.store.continue542:                           ; preds = %pred.store.if541, %pred.store.continue540
  %i.im = extractelement <16 x i1> %i.hf, i64 11
  br i1 %i.im, label %pred.store.if543, label %pred.store.continue544

pred.store.if543:                                 ; preds = %pred.store.continue542
  %i.in = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.io = getelementptr i8, ptr %i.in, i64 11
  store i8 32, ptr %i.io, align 1
  br label %pred.store.continue544

pred.store.continue544:                           ; preds = %pred.store.if543, %pred.store.continue542
  %i.ip = extractelement <16 x i1> %i.hf, i64 12
  br i1 %i.ip, label %pred.store.if545, label %pred.store.continue546

pred.store.if545:                                 ; preds = %pred.store.continue544
  %i.iq = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.ir = getelementptr i8, ptr %i.iq, i64 12
  store i8 32, ptr %i.ir, align 1
  br label %pred.store.continue546

pred.store.continue546:                           ; preds = %pred.store.if545, %pred.store.continue544
  %i.is = extractelement <16 x i1> %i.hf, i64 13
  br i1 %i.is, label %pred.store.if547, label %pred.store.continue548

pred.store.if547:                                 ; preds = %pred.store.continue546
  %i.it = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.iu = getelementptr i8, ptr %i.it, i64 13
  store i8 32, ptr %i.iu, align 1
  br label %pred.store.continue548

pred.store.continue548:                           ; preds = %pred.store.if547, %pred.store.continue546
  %i.iv = extractelement <16 x i1> %i.hf, i64 14
  br i1 %i.iv, label %pred.store.if549, label %pred.store.continue550

pred.store.if549:                                 ; preds = %pred.store.continue548
  %i.iw = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.ix = getelementptr i8, ptr %i.iw, i64 14
  store i8 32, ptr %i.ix, align 1
  br label %pred.store.continue550

pred.store.continue550:                           ; preds = %pred.store.if549, %pred.store.continue548
  %i.iy = extractelement <16 x i1> %i.hf, i64 15
  br i1 %i.iy, label %pred.store.if551, label %pred.store.continue552

pred.store.if551:                                 ; preds = %pred.store.continue550
  %i.iz = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.ja = getelementptr i8, ptr %i.iz, i64 15
  store i8 32, ptr %i.ja, align 1
  br label %pred.store.continue552

pred.store.continue552:                           ; preds = %pred.store.if551, %pred.store.continue550
  %i.jb = extractelement <16 x i1> %i.hg, i64 0
  br i1 %i.jb, label %pred.store.if553, label %pred.store.continue554

pred.store.if553:                                 ; preds = %pred.store.continue552
  %i.jc = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.jd = getelementptr i8, ptr %i.jc, i64 16
  store i8 32, ptr %i.jd, align 1
  br label %pred.store.continue554

pred.store.continue554:                           ; preds = %pred.store.if553, %pred.store.continue552
  %i.je = extractelement <16 x i1> %i.hg, i64 1
  br i1 %i.je, label %pred.store.if555, label %pred.store.continue556

pred.store.if555:                                 ; preds = %pred.store.continue554
  %i.jf = getelementptr i8, ptr %i.r, i64 %i.hc
  %i.jg = getelementptr i8, ptr %i.jf, i64 17
  store i8 32, ptr %i.jg, align 1
  br label %pred.store.continue556

pred.store.continue556:                           ; preds = %pred.store.if555, %pred.store.continue554
end_hunk_1
