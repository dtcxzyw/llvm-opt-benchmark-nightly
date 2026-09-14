Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/DartsDict?download=true
inline.NumInlined: 1274
inline.NumDeleted: 491
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5Darts7Details9BitVector5buildEv:bb.a

bb.k:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details18DoubleArrayBuilder15build_from_dawgERKNS0_11DawgBuilderEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !147  ; 3 uses
  %i.f = lshr i32 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = lshr i32 %i.e, 7
  %i.i = zext nneg i32 %i.h to i64                ; 4 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !56   ; 2 uses
  %i.m = and i32 %i.f, 31                         ; 4 uses
  %i.n = lshr i32 %i.l, %i.m
  %i.o = trunc i32 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !56
  %i.t = xor i32 %i.m, 31
  %i.u = lshr i32 -1, %i.t
  %i.v = and i32 %i.u, %i.l                       ; 2 uses
  %i.w = lshr i32 %i.v, 1
  %i.x = and i32 %i.w, 1431655765
  %i.y = and i32 %i.v, 1431655765
  %i.z = add nuw i32 %i.x, %i.y                   ; 2 uses
  %i.aa = lshr i32 %i.z, 2
  %i.ab = and i32 %i.aa, 858993459
  %i.ac = and i32 %i.z, 858993459
  %i.ad = add nuw nsw i32 %i.ab, %i.ac            ; 2 uses
  %i.ae = lshr i32 %i.ad, 4
  %i.af = add nuw nsw i32 %i.ae, %i.ad
  %i.ag = and i32 %i.af, 252645135                ; 2 uses
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = add nuw nsw i32 %i.ah, %i.ag            ; 2 uses
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = add nuw nsw i32 %i.aj, %i.ai
  %i.al = and i32 %i.ak, 63
  %i.am = add nsw i32 %i.al, -1
  %i.an = add i32 %i.am, %i.s
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = zext i32 %i.an to i64
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !126
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !56 ; 2 uses
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = xor i32 %i.as, %3                       ; 6 uses
  %i.au = and i32 %i.at, 534773760
  %.not40 = icmp eq i32 %i.au, 0
  %i.av = and i32 %i.at, 255
  %.not41 = icmp eq i32 %i.av, 0
  %or.cond = or i1 %.not40, %.not41
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = zext nneg i32 %i.f to i64
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !117
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !38
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = zext i32 %3 to i64
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !117
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bd ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %storemerge.i = or i32 %i.bg, 256
  store i32 %storemerge.i, ptr %i.bf, align 4, !tbaa !145
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d
  %i.bh = icmp ugt i32 %i.at, 536870911
  br i1 %i.bh, label %bb.f, label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit

bb.f:                                             ; preds = %.critedge
  %i.bi = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.bi, align 8, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @.str.29, ptr %i.bj, align 8, !tbaa !131
  tail call void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit: ; preds = %.critedge
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !117
  %i.bm = zext i32 %3 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !145
  %i.bp = and i32 %i.bo, -2147483137
  %i.bq = icmp samesign ult i32 %i.at, 2097152
  %i.br = shl nuw nsw i32 %i.at, 2
  %i.bs = or i32 %i.br, 512
  %i.bt = shl nuw nsw i32 %i.at, 10
  %.pn.i = select i1 %i.bq, i32 %i.bt, i32 %i.bs
  %storemerge.i44 = or i32 %i.bp, %.pn.i
  store i32 %storemerge.i44, ptr %i.bn, align 4, !tbaa !145
  br label %.loopexit

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.bu = tail call noundef i32 @_ZN5Darts7Details18DoubleArrayBuilder17arrange_from_dawgERKNS0_11DawgBuilderEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !56 ; 2 uses
  %i.by = lshr i32 %i.bx, %i.m
  %i.bz = trunc i32 %i.by to i1
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !126
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !56
  %i.cf = xor i32 %i.m, 31
  %i.cg = lshr i32 -1, %i.cf
  %i.ch = and i32 %i.bx, %i.cg                    ; 2 uses
  %i.ci = lshr i32 %i.ch, 1
  %i.cj = and i32 %i.ci, 1431655765
  %i.ck = and i32 %i.ch, 1431655765
  %i.cl = add nuw i32 %i.cj, %i.ck                ; 2 uses
  %i.cm = lshr i32 %i.cl, 2
  %i.cn = and i32 %i.cm, 858993459
  %i.co = and i32 %i.cl, 858993459
  %i.cp = add nuw nsw i32 %i.cn, %i.co            ; 2 uses
  %i.cq = lshr i32 %i.cp, 4
  %i.cr = add nuw nsw i32 %i.cq, %i.cp
  %i.cs = and i32 %i.cr, 252645135                ; 2 uses
  %i.ct = lshr i32 %i.cs, 8
  %i.cu = add nuw nsw i32 %i.ct, %i.cs            ; 2 uses
  %i.cv = lshr i32 %i.cu, 16
  %i.cw = add nuw nsw i32 %i.cv, %i.cu
  %i.cx = and i32 %i.cw, 63
  %i.cy = add nsw i32 %i.cx, -1
  %i.cz = add i32 %i.cy, %i.ce
  %i.da = zext i32 %i.cz to i64
  %i.db = load ptr, ptr %i.ca, align 8, !tbaa !126
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.da
  store i32 %i.bu, ptr %i.dc, align 4, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.de = lshr i32 %i.e, 2
  %i.df = zext nneg i32 %i.de to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ %i.df, %bb.i ] ; 4 uses
  %.037 = phi i32 [ %i.dq, %bb.l ], [ %i.f, %bb.i ]
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !117
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !38  ; 2 uses
  %.not42 = icmp eq i8 %i.di, 0
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dj = zext i8 %i.di to i32
  %i.dk = xor i32 %i.bu, %i.dj
  %i.dl = trunc nuw i64 %indvars.iv to i32
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder15build_from_dawgERKNS0_11DawgBuilderEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %i.dl, i32 noundef %i.dk)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !147
  %i.dp = trunc i32 %i.do to i1
  %i.dq = add i32 %.037, 1                        ; 2 uses
  %.not4345 = icmp ne i32 %i.dq, 0
  %.not43.not = and i1 %.not4345, %i.dp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not43.not, label %bb.j, label %.loopexit, !llvm.loop !260

.loopexit:                                        ; preds = %bb.l, %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !116  ; 5 uses
  %i.d = trunc i64 %i.c to i32                    ; 7 uses
  %i.e = lshr i64 %i.c, 8
  %i.f = trunc i64 %i.e to i32
  %i.g = add i32 %i.d, 256                        ; 5 uses
  %i.h = add i32 %i.f, -16                        ; 2 uses
  %i.i = icmp ult i32 %i.h, -17
  br i1 %i.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %i.h, 8                          ; 2 uses
  %i.k = add i32 %i.j, 256                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124  ; 6 uses
  %i.n = zext i32 %i.j to i64                     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %indvars.iv = phi i64 [ %i.n, %bb.b ], [ %indvars.iv.next.3, %bb.g ] ; 6 uses
  %i.o = and i64 %indvars.iv, 4092
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !143, !range !148, !noundef !149
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = and i64 %indvars.iv.next, 4093
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.w = load i8, ptr %i.v, align 1, !tbaa !143, !range !148, !noundef !149
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %.split.loop.exit

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.y = and i64 %indvars.iv.next.1, 4094
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !143, !range !148, !noundef !149
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ad = and i64 %indvars.iv.next.2, 4095
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !143, !range !148, !noundef !149
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %.split.loop.exit

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars.3 = trunc i64 %indvars.iv.next.3 to i32
  %.not.i.3 = icmp eq i32 %i.k, %indvars.3
  br i1 %.not.i.3, label %.split.loop.exit67, label %bb.c, !llvm.loop !14

.split.loop.exit:                                 ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next, %bb.d ], [ %indvars.iv.next.1, %bb.e ], [ %indvars.iv.next.2, %bb.f ]
  %i.ai = trunc nuw i64 %indvars.iv.lcssa to i32
  br label %.split.loop.exit67

.split.loop.exit67:                               ; preds = %bb.g, %.split.loop.exit
  %.018.i = phi i32 [ %i.ai, %.split.loop.exit ], [ 0, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.split.loop.exit67, %bb.n
  %.pre54 = phi ptr [ %i.m, %.split.loop.exit67 ], [ %.pre55, %bb.n ] ; 2 uses
  %i.ak = phi ptr [ %i.m, %.split.loop.exit67 ], [ %i.bv, %bb.n ] ; 2 uses
  %indvars.iv46 = phi i64 [ %i.n, %.split.loop.exit67 ], [ %indvars.iv.next47, %bb.n ] ; 7 uses
  %i.al = and i64 %indvars.iv46, 4095             ; 3 uses
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.ak, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !142, !range !148, !noundef !149
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !116
  %.not.i36 = icmp ugt i64 %i.aq, %indvars.iv46
  br i1 %.not.i36, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !261
  %.pre.pre = load ptr, ptr %i.l, align 8, !tbaa !124
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre = phi ptr [ %.pre.pre, %bb.j ], [ %.pre54, %bb.i ] ; 6 uses
  %i.ar = load i32, ptr %i.aj, align 8, !tbaa !127
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp eq i64 %indvars.iv46, %i.as
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.al
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !140 ; 3 uses
  br i1 %i.at, label %bb.l, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.l:                                             ; preds = %bb.k
  store i32 %i.aw, ptr %i.aj, align 8, !tbaa !127
  %i.ax = zext i32 %i.aw to i64
  %i.ay = icmp eq i64 %indvars.iv46, %i.ax
  br i1 %i.ay, label %bb.m, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.m:                                             ; preds = %bb.l
  %i.az = load i64, ptr %i.b, align 8, !tbaa !116
  %i.ba = trunc i64 %i.az to i32
  store i32 %i.ba, ptr %i.aj, align 8, !tbaa !127
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.al ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !141 ; 2 uses
  %i.bd = and i32 %i.bc, 4095
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %i.aw, ptr %i.bh, align 4, !tbaa !140
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !140
  %i.bj = and i32 %i.bi, 4095
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.bk
  store i32 %i.bc, ptr %i.bl, align 4, !tbaa !141
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i8 1, ptr %i.bm, align 4, !tbaa !142
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv46 ; 2 uses
  %i.bp = trunc nuw i64 %indvars.iv46 to i32
  %i.bq = xor i32 %.018.i, %i.bp
  %i.br = load i32, ptr %i.bo, align 4, !tbaa !145
  %i.bs = and i32 %i.br, -256
  %i.bt = and i32 %i.bq, 255
  %i.bu = or disjoint i32 %i.bs, %i.bt
  store i32 %i.bu, ptr %i.bo, align 4, !tbaa !145
  br label %bb.n

bb.n:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit, %bb.h
  %.pre55 = phi ptr [ %.pre, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit ], [ %.pre54, %bb.h ]
  %i.bv = phi ptr [ %.pre, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit ], [ %i.ak, %bb.h ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %indvars48 = trunc i64 %indvars.iv.next47 to i32
  %.not19.i = icmp eq i32 %i.k, %indvars48
  br i1 %.not19.i, label %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit, label %bb.h, !llvm.loop !16

_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit: ; preds = %bb.n
  %i.bw = zext i32 %i.g to i64                    ; 8 uses
  %.promoted.i = load i64, ptr %i.b, align 8, !tbaa !116 ; 2 uses
  %i.bx = icmp ugt i64 %.promoted.i, %i.bw
  br i1 %i.bx, label %.lr.ph.preheader.i, label %bb.o

.lr.ph.preheader.i:                               ; preds = %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit
  store i64 %i.bw, ptr %i.b, align 8, !tbaa !116
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph.preheader.i, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit
  %i.by = phi i64 [ %i.bw, %.lr.ph.preheader.i ], [ %.promoted.i, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !133
  %i.cb = icmp ult i64 %i.ca, %i.bw
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bw)
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !116
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cc = phi i64 [ %.pre.i, %bb.p ], [ %i.by, %bb.o ] ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %i.bw
  br i1 %i.cd, label %.lr.ph8.i, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit

.lr.ph8.i:                                        ; preds = %bb.q
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.cf = shl nuw nsw i64 %i.cc, 2
  %scevgep.i = getelementptr nuw i8, ptr %i.ce, i64 %i.cf
  %i.cg = sub nuw nsw i64 %i.bw, %i.cc
  %i.ch = shl nuw nsw i64 %i.cg, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.ch, i1 false), !tbaa !145
  store i64 %i.bw, ptr %i.b, align 8, !tbaa !116
  br label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit

_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit: ; preds = %bb.q, %.lr.ph8.i
  %i.ci = icmp ult i32 %i.d, -256
  br i1 %i.ci, label %.lr.ph, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35

.lr.ph:                                           ; preds = %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit
  %i.cj = load ptr, ptr %i.l, align 8, !tbaa !124
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.r
  %.02840 = phi i32 [ %i.d, %.lr.ph ], [ %i.cp, %bb.r ] ; 2 uses
  %i.ck = and i32 %.02840, 4095
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 9
  store i8 0, ptr %i.cn, align 1, !tbaa !143
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i8 0, ptr %i.co, align 4, !tbaa !142
  %i.cp = add nuw i32 %.02840, 1                  ; 2 uses
  %i.cq = icmp ult i32 %i.cp, %i.g
  br i1 %i.cq, label %bb.r, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35, !llvm.loop !262

.critedge:                                        ; preds = %bb.a
  %i.cr = zext i32 %i.g to i64                    ; 8 uses
  %i.cs = icmp ugt i64 %i.c, %i.cr
  br i1 %i.cs, label %.lr.ph.preheader.i34, label %bb.s

.lr.ph.preheader.i34:                             ; preds = %.critedge
  store i64 %i.cr, ptr %i.b, align 8, !tbaa !116
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph.preheader.i34, %.critedge
  %i.ct = phi i64 [ %i.cr, %.lr.ph.preheader.i34 ], [ %i.c, %.critedge ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !133
  %i.cw = icmp ult i64 %i.cv, %i.cr
  br i1 %i.cw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.cr)
  %.pre.i33 = load i64, ptr %i.b, align 8, !tbaa !116
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cx = phi i64 [ %.pre.i33, %bb.t ], [ %i.ct, %bb.s ] ; 3 uses
  %i.cy = icmp ult i64 %i.cx, %i.cr
  br i1 %i.cy, label %.lr.ph8.i31, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35

.lr.ph8.i31:                                      ; preds = %bb.u
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.da = shl nuw nsw i64 %i.cx, 2
  %scevgep.i32 = getelementptr nuw i8, ptr %i.cz, i64 %i.da
  %i.db = sub nuw nsw i64 %i.cr, %i.cx
  %i.dc = shl nuw nsw i64 %i.db, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i32, i8 0, i64 %i.dc, i1 false), !tbaa !145
  store i64 %i.cr, ptr %i.b, align 8, !tbaa !116
  br label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35

_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35: ; preds = %bb.r, %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit, %.lr.ph8.i31, %bb.u
  %.041 = add i32 %i.d, 1                         ; 2 uses
  %i.dd = icmp ult i32 %.041, %i.g
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !124 ; 10 uses
  br i1 %i.dd, label %.lr.ph44, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph44, %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35
  %i.dg = and i64 %i.c, 4095
  %i.dh = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %i.dg ; 2 uses
  %i.di = add i32 %i.d, 255                       ; 3 uses
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !141
  %i.dj = and i32 %i.di, 4095
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !127 ; 2 uses
  %i.dp = and i32 %i.do, 4095
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !141 ; 2 uses
  store i32 %i.ds, ptr %i.dh, align 4, !tbaa !141
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !140
  %i.dt = and i32 %i.ds, 4095
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 %i.d, ptr %i.dw, align 4, !tbaa !140
  store i32 %i.di, ptr %i.dr, align 4, !tbaa !141
  ret void

.lr.ph44:                                         ; preds = %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35, %.lr.ph44
  %.043 = phi i32 [ %.0.2, %.lr.ph44 ], [ %.041, %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35 ] ; 7 uses
  %.0.in42 = phi i32 [ %.0.1.a, %.lr.ph44 ], [ %i.d, %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35 ] ; 2 uses
  %1 = and i32 %.0.in42, 4095
  %2 = zext nneg i32 %1 to i64
  %3 = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %2
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.043, ptr %4, align 4, !tbaa !140
  %5 = and i32 %.043, 4095
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %6
  store i32 %.0.in42, ptr %7, align 4, !tbaa !141
  %.0 = add nuw i32 %.043, 1                      ; 4 uses
  %8 = and i32 %.043, 4095
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %.0, ptr %11, align 4, !tbaa !140
  %12 = and i32 %.0, 4095
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %13
  store i32 %.043, ptr %14, align 4, !tbaa !141
  %.0.1.a = add nuw i32 %.043, 2                  ; 3 uses
  %i.dx = and i32 %.0, 4095
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 %.0.1.a, ptr %i.ea, align 4, !tbaa !140
  %i.eb = and i32 %.0.1.a, 4095
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %i.ec
  store i32 %.0, ptr %i.ed, align 4, !tbaa !141
  %.0.2 = add nuw i32 %.043, 3                    ; 2 uses
  %exitcond.not.2 = icmp eq i32 %.0.2, %i.g
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph44, !llvm.loop !263
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5Darts7Details18DoubleArrayBuilder17arrange_from_dawgERKNS0_11DawgBuilderEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %.promoted.i = load i64, ptr %i.b, align 8, !tbaa !125
  %.not34 = icmp eq i64 %.promoted.i, 0
  br i1 %.not34, label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !125
  br label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit

_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit:      ; preds = %bb.a, %.lr.ph.preheader.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !117  ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  %i.h = load i32, ptr %i.g, align 4, !tbaa !147
  %i.i = lshr i32 %i.h, 2                         ; 2 uses
  %.not41 = icmp eq i32 %i.i, 0
  br i1 %.not41, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit
  %.03042 = phi i32 [ %i.i, %.lr.ph ], [ %i.aa, %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit ] ; 2 uses
  %i.k = zext i32 %.03042 to i64                  ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !117
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !tbaa !38
  %i.o = load i64, ptr %i.b, align 8, !tbaa !125  ; 3 uses
  %i.p = load i64, ptr %i.c, align 8, !tbaa !128
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.c, label %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %i.o, 1
  tail call void @_ZN5Darts7Details8AutoPoolIhE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.r)
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !125
  br label %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit

_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit:    ; preds = %bb.b, %bb.c
  %i.s = phi i64 [ %.pre.i, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.b, align 8, !tbaa !125
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 %i.n, ptr %i.v, align 1, !tbaa !38
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !117  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.k
  %i.y = load i32, ptr %i.x, align 4, !tbaa !147
  %i.z = trunc i32 %i.y to i1
  %i.aa = add i32 %.03042, 1                      ; 2 uses
  %.not78 = icmp ne i32 %i.aa, 0
  %.not.not = and i1 %.not78, %i.z
  br i1 %.not.not, label %bb.b, label %select.unfold._crit_edge

select.unfold._crit_edge:                         ; preds = %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit, %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit
  %i.ab = phi ptr [ %i.f, %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit ], [ %i.w, %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !127 ; 6 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !116 ; 3 uses
  %.not.i = icmp ugt i64 %i.ag, %i.ae
  br i1 %.not.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %select.unfold._crit_edge
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !38
  %i.aj = zext i8 %i.ai to i32                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !124 ; 5 uses
  %i.am = load i64, ptr %i.b, align 8
  %.fr.i = freeze i64 %i.am                       ; 2 uses
  %.not1415.i.i = icmp ult i64 %.fr.i, 2
  br i1 %.not1415.i.i, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i, %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.us.i
  %.010.us.i = phi i32 [ %i.bb, %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.us.i ], [ %i.ad, %.preheader.i ] ; 2 uses
  %i.an = xor i32 %.010.us.i, %i.aj               ; 3 uses
  %i.ao = and i32 %i.an, 4095
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !143, !range !148, !noundef !149
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.us.i, label %bb.d

bb.d:                                             ; preds = %.preheader.split.us.i
  %i.au = xor i32 %i.an, %3                       ; 2 uses
  %i.av = and i32 %i.au, 255
  %.not.i.us.i = icmp eq i32 %i.av, 0
  %i.aw = and i32 %i.au, 534773760
  %.not13.i.us.i = icmp eq i32 %i.aw, 0
  %or.cond.i.us.i = or i1 %.not.i.us.i, %.not13.i.us.i
  br i1 %or.cond.i.us.i, label %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit, label %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.us.i

_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.us.i: ; preds = %bb.d, %.preheader.split.us.i
  %i.ax = and i32 %.010.us.i, 4095
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !140 ; 2 uses
  %.not13.us.i = icmp eq i32 %i.bb, %i.ad
  br i1 %.not13.us.i, label %.split.us.i, label %.preheader.split.us.i, !llvm.loop !20

bb.e:                                             ; preds = %select.unfold._crit_edge
  %i.bc = trunc nuw i64 %i.ag to i32
  %i.bd = and i32 %3, 255
  %i.be = or i32 %i.bd, %i.bc
  br label %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit

.preheader.split.i:                               ; preds = %.preheader.i, %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.i
  %.010.i = phi i32 [ %i.cd, %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.i ], [ %i.ad, %.preheader.i ] ; 2 uses
  %i.bf = xor i32 %.010.i, %i.aj                  ; 3 uses
  %i.bg = and i32 %i.bf, 4095                     ; 2 uses
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 9
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !143, !range !148, !noundef !149
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.preheader.split.i
  %i.bm = xor i32 %i.bf, %3                       ; 2 uses
  %i.bn = and i32 %i.bm, 255
  %.not.i.i = icmp eq i32 %i.bn, 0
  %i.bo = and i32 %i.bm, 534773760
  %.not13.i.i = icmp eq i32 %i.bo, 0
  %or.cond.i.i = or i1 %.not.i.i, %.not13.i.i
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.by, %.lr.ph.i.i ], [ 1, %bb.f ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.016.i.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !38
  %i.br = zext i8 %i.bq to i32
  %i.bs = xor i32 %i.bg, %i.br
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !142, !range !148, !noundef !149
  %i.bx = trunc nuw i8 %i.bw to i1                ; 2 uses
  %i.by = add nuw i64 %.016.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.by, %.fr.i
  %or.cond20.i.i = select i1 %i.bx, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond20.i.i, label %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.i, label %.lr.ph.i.i, !llvm.loop !21

_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.i: ; preds = %.lr.ph.i.i
  br i1 %i.bx, label %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.i, label %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit

_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.i: ; preds = %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.i, %bb.f, %.preheader.split.i
  %i.bz = and i32 %.010.i, 4095
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !140 ; 2 uses
  %.not13.i = icmp eq i32 %i.cd, %i.ad
  br i1 %.not13.i, label %.split.us.i, label %.preheader.split.i, !llvm.loop !20

.split.us.i:                                      ; preds = %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.i, %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.us.i
  %i.ce = trunc i64 %i.ag to i32
  %i.cf = and i32 %3, 255
  %i.cg = or i32 %i.cf, %i.ce
  br label %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit

_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit: ; preds = %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.i, %bb.d, %bb.e, %.split.us.i
  %.3.i = phi i32 [ %i.be, %bb.e ], [ %i.cg, %.split.us.i ], [ %i.an, %bb.d ], [ %i.bf, %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.i ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ci = zext i32 %3 to i64                      ; 2 uses
  %i.cj = xor i32 %.3.i, %3                       ; 4 uses
  %i.ck = icmp ugt i32 %i.cj, 536870911
  br i1 %i.ck, label %bb.g, label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit

bb.g:                                             ; preds = %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit
  %i.cl = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.cl, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr @.str.29, ptr %i.cm, align 8, !tbaa !131
  tail call void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit: ; preds = %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !117
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ci ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !145
  %i.cq = and i32 %i.cp, -2147483137
  %i.cr = icmp samesign ult i32 %i.cj, 2097152
  %i.cs = shl nuw nsw i32 %i.cj, 2
  %i.ct = or i32 %i.cs, 512
  %i.cu = shl nuw nsw i32 %i.cj, 10
  %.pn.i = select i1 %i.cr, i32 %i.cu, i32 %i.ct
  %storemerge.i = or i32 %i.cq, %.pn.i
  store i32 %storemerge.i, ptr %i.co, align 4, !tbaa !145
  %i.cv = load i64, ptr %i.b, align 8, !tbaa !125
  %.not46 = icmp eq i64 %i.cv, 0
  br i1 %.not46, label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge_crit_edge, label %.lr.ph45

_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge_crit_edge: ; preds = %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre59 = load ptr, ptr %.phi.trans.insert58, align 8, !tbaa !124
  br label %._crit_edge

.lr.ph45:                                         ; preds = %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.e
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !147
  %i.cy = lshr i32 %i.cx, 2
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.h

._crit_edge:                                      ; preds = %bb.o, %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge_crit_edge
  %i.db = phi ptr [ %.pre59, %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge_crit_edge ], [ %i.eb, %bb.o ]
  %i.dc = and i32 %.3.i, 4095
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [12 x i8], ptr %i.db, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 9
  store i8 1, ptr %i.df, align 1, !tbaa !143
  ret i32 %.3.i

bb.h:                                             ; preds = %.lr.ph45, %bb.o
  %i.dg = phi i32 [ %i.ad, %.lr.ph45 ], [ %i.ea, %bb.o ]
  %.044 = phi i64 [ 0, %.lr.ph45 ], [ %i.fm, %bb.o ] ; 3 uses
  %.143 = phi i32 [ %i.cy, %.lr.ph45 ], [ %i.fl, %bb.o ] ; 2 uses
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.044
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !38
  %i.dk = zext i8 %i.dj to i32
  %i.dl = xor i32 %.3.i, %i.dk                    ; 6 uses
  %i.dm = zext i32 %i.dl to i64                   ; 3 uses
  %i.dn = load i64, ptr %i.af, align 8, !tbaa !116
  %.not.i31 = icmp ugt i64 %i.dn, %i.dm
  br i1 %.not.i31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !13
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !127
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.do = phi i32 [ %.pre, %bb.i ], [ %i.dg, %bb.h ] ; 2 uses
  %i.dp = icmp eq i32 %i.dl, %i.do
  br i1 %i.dp, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %.pre.i32 = load ptr, ptr %i.cz, align 8, !tbaa !124 ; 2 uses
  %.pre9.i = and i32 %i.dl, 4095
  %.pre10.i = zext nneg i32 %.pre9.i to i64       ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [12 x i8], ptr %.pre.i32, i64 %.pre10.i
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.pre54 = load i32, ptr %.phi.trans.insert53, align 4, !tbaa !140
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.k:                                             ; preds = %bb.j
  %i.dq = and i32 %i.dl, 4095
  %i.dr = zext nneg i32 %i.dq to i64              ; 3 uses
  %i.ds = load ptr, ptr %i.cz, align 8, !tbaa !124 ; 3 uses
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !140 ; 4 uses
  store i32 %i.dv, ptr %i.ac, align 8, !tbaa !127
  %i.dw = icmp eq i32 %i.dv, %i.dl
  br i1 %i.dw, label %bb.l, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.l:                                             ; preds = %bb.k
  %i.dx = load i64, ptr %i.af, align 8, !tbaa !116
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  store i32 %i.dy, ptr %i.ac, align 8, !tbaa !127
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit: ; preds = %._crit_edge.i, %bb.k, %bb.l
  %i.dz = phi i32 [ %.pre54, %._crit_edge.i ], [ %i.dv, %bb.k ], [ %i.dl, %bb.l ] ; 2 uses
  %i.ea = phi i32 [ %i.do, %._crit_edge.i ], [ %i.dv, %bb.k ], [ %i.dy, %bb.l ]
  %.pre-phi11.i = phi i64 [ %.pre10.i, %._crit_edge.i ], [ %i.dr, %bb.k ], [ %i.dr, %bb.l ]
  %i.eb = phi ptr [ %.pre.i32, %._crit_edge.i ], [ %i.ds, %bb.k ], [ %i.ds, %bb.l ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %.pre-phi11.i ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !141 ; 2 uses
  %i.ee = and i32 %i.ed, 4095
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i32 %i.dz, ptr %i.eh, align 4, !tbaa !140
  %i.ei = and i32 %i.dz, 4095
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %i.ej
  store i32 %i.ed, ptr %i.ek, align 4, !tbaa !141
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i8 1, ptr %i.el, align 4, !tbaa !142
  %i.em = zext i32 %.143 to i64                   ; 3 uses
  %i.en = load ptr, ptr %i.da, align 8, !tbaa !117
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !38
  %i.eq = icmp eq i8 %i.ep, 0
  %i.er = load ptr, ptr %i.ch, align 8, !tbaa !117 ; 3 uses
  br i1 %i.eq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.ci ; 2 uses
  %i.et = load i32, ptr %i.es, align 4
  %storemerge.i33 = or i32 %i.et, 256
  store i32 %storemerge.i33, ptr %i.es, align 4, !tbaa !145
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.dm
  %i.ev = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.em
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !147 ; 2 uses
  %i.ey = lshr i32 %i.ex, 1
  %i.ez = or disjoint i32 %i.ey, -2147483648
  store i32 %i.ez, ptr %i.eu, align 4, !tbaa !145
  br label %bb.o

bb.n:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.dm ; 2 uses
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.044
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !38
  %i.fe = load i32, ptr %i.fa, align 4, !tbaa !145
  %i.ff = and i32 %i.fe, -256
  %i.fg = zext i8 %i.fd to i32
  %i.fh = or disjoint i32 %i.ff, %i.fg
  store i32 %i.fh, ptr %i.fa, align 4, !tbaa !145
  %.pre55 = load ptr, ptr %i.d, align 8, !tbaa !117
  %.phi.trans.insert56 = getelementptr inbounds nuw [4 x i8], ptr %.pre55, i64 %i.em
  %.pre57 = load i32, ptr %.phi.trans.insert56, align 4, !tbaa !147
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fi = phi i32 [ %.pre57, %bb.n ], [ %i.ex, %bb.m ]
  %i.fj = trunc i32 %i.fi to i1
  %i.fk = add i32 %.143, 1
  %i.fl = select i1 %i.fj, i32 %i.fk, i32 0
  %i.fm = add nuw i64 %.044, 1                    ; 2 uses
  %i.fn = load i64, ptr %i.b, align 8, !tbaa !125
  %i.fo = icmp ult i64 %i.fm, %i.fn
  br i1 %i.fo, label %bb.h, label %._crit_edge, !llvm.loop !264
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details18DoubleArrayBuilder17build_from_keysetIiEEvRKNS0_6KeysetIT_EEmmmj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %._crit_edge73, %bb.a
  %.tr63 = phi i64 [ %2, %bb.a ], [ %.040.lcssa, %._crit_edge73 ] ; 5 uses
  %.tr65 = phi i64 [ %4, %bb.a ], [ %i.ae, %._crit_edge73 ] ; 11 uses
  %.tr66 = phi i32 [ %5, %bb.a ], [ %i.bb, %._crit_edge73 ]
  %i.c = tail call noundef i32 @_ZN5Darts7Details18DoubleArrayBuilder19arrange_from_keysetIiEEjRKNS0_6KeysetIT_EEmmmj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.tr63, i64 noundef %3, i64 noundef %.tr65, i32 noundef %.tr66) ; 2 uses
  %i.d = icmp ult i64 %.tr63, %3
  br i1 %i.d, label %.lr.ph, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit._crit_edge

.lr.ph:                                           ; preds = %tailrecurse
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %.not5.i = icmp eq ptr %i.e, null
  br i1 %.not5.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !105
  br label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.us

_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.us:     ; preds = %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread.us, %.lr.ph.split.us
  %.04267.us = phi i64 [ %.tr63, %.lr.ph.split.us ], [ %i.k, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread.us ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.04267.us
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.tr65
  %i.j = load i8, ptr %i.i, align 1, !tbaa !38
  %.not.us = icmp eq i8 %i.j, 0
  br i1 %.not.us, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread.us, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit._crit_edge

_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread.us: ; preds = %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.us
  %i.k = add i64 %.04267.us, 1                    ; 2 uses
  %exitcond78.not = icmp eq i64 %i.k, %3
  br i1 %exitcond78.not, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit._crit_edge.thread, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.us, !llvm.loop !265

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread
  %.04267 = phi i64 [ %i.s, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread ], [ %.tr63, %.lr.ph ] ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04267
  %i.m = load i64, ptr %i.l, align 8, !tbaa !35
  %.not.i = icmp ult i64 %.tr65, %i.m
  br i1 %.not.i, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread

_ZNK5Darts7Details6KeysetIiE4keysEmm.exit:        ; preds = %.lr.ph.split
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.04267
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !97
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.tr65
  %i.r = load i8, ptr %i.q, align 1, !tbaa !38
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit._crit_edge

_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread: ; preds = %.lr.ph.split, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit
  %i.s = add i64 %.04267, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %3
  br i1 %exitcond.not, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit._crit_edge.thread, label %.lr.ph.split, !llvm.loop !265

_ZNK5Darts7Details6KeysetIiE4keysEmm.exit._crit_edge: ; preds = %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.us, %tailrecurse
  %.042.lcssa = phi i64 [ %.tr63, %tailrecurse ], [ %.04267.us, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.us ], [ %.04267, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit ] ; 6 uses
  %i.t = icmp eq i64 %.042.lcssa, %3
  br i1 %i.t, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit._crit_edge
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !106  ; 3 uses
  %.not5.i48 = icmp eq ptr %i.u, null
  br i1 %.not5.i48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.042.lcssa
  %i.w = load i64, ptr %i.v, align 8, !tbaa !35
  %.not.i49 = icmp ult i64 %.tr65, %i.w
  br i1 %.not.i49, label %bb.d, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit51

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.042.lcssa
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.tr65
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !38
  br label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit51

_ZNK5Darts7Details6KeysetIiE4keysEmm.exit51:      ; preds = %bb.c, %bb.d
  %.0.i50 = phi i8 [ %i.ab, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.ac = add i64 %.042.lcssa, 1                  ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %3
  %i.ae = add i64 %.tr65, 1                       ; 2 uses
  br i1 %i.ad, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit51, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit59
  %i.af = phi ptr [ %i.ay, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit59 ], [ %i.u, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit51 ] ; 3 uses
  %i.ag = phi i64 [ %i.az, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit59 ], [ %i.ac, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit51 ] ; 8 uses
  %.071 = phi i8 [ %.1, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit59 ], [ %.0.i50, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit51 ] ; 3 uses
  %.04070 = phi i64 [ %.141, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit59 ], [ %.042.lcssa, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit51 ] ; 2 uses
  %.not5.i52 = icmp eq ptr %i.af, null
  br i1 %.not5.i52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph72
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !35
  %.not.i53 = icmp ult i64 %.tr65, %i.ai
  br i1 %.not.i53, label %bb.f, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit55

bb.f:                                             ; preds = %bb.e, %.lr.ph72
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.tr65
  %i.an = load i8, ptr %i.am, align 1, !tbaa !38
  br label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit55

_ZNK5Darts7Details6KeysetIiE4keysEmm.exit55:      ; preds = %bb.e, %bb.f
  %.0.i54 = phi i8 [ %i.an, %bb.f ], [ 0, %bb.e ]
  %.not47 = icmp eq i8 %.0.i54, %.071
  br i1 %.not47, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit59, label %bb.g

bb.g:                                             ; preds = %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit55
  %i.ao = zext i8 %.071 to i32
  %i.ap = xor i32 %i.c, %i.ao
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder17build_from_keysetIiEEvRKNS0_6KeysetIT_EEmmmj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.04070, i64 noundef %i.ag, i64 noundef %i.ae, i32 noundef %i.ap)
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !106 ; 4 uses
  %.not5.i56 = icmp eq ptr %i.aq, null
  br i1 %.not5.i56, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ag
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !35
  %.not.i57 = icmp ult i64 %.tr65, %i.as
  br i1 %.not.i57, label %bb.i, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit59

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ag
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !97
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.tr65
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !38
  br label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit59

_ZNK5Darts7Details6KeysetIiE4keysEmm.exit59:      ; preds = %bb.i, %bb.h, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit55
  %i.ay = phi ptr [ %i.af, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit55 ], [ %i.aq, %bb.h ], [ %i.aq, %bb.i ]
  %.141 = phi i64 [ %.04070, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit55 ], [ %i.ag, %bb.h ], [ %i.ag, %bb.i ] ; 2 uses
  %.1 = phi i8 [ %.071, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit55 ], [ 0, %bb.h ], [ %i.ax, %bb.i ] ; 2 uses
  %i.az = add nuw i64 %i.ag, 1                    ; 2 uses
  %exitcond79.not = icmp eq i64 %i.az, %3
  br i1 %exitcond79.not, label %._crit_edge73, label %.lr.ph72, !llvm.loop !266

._crit_edge73:                                    ; preds = %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit59, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit51
  %.040.lcssa = phi i64 [ %.042.lcssa, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit51 ], [ %.141, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit59 ]
  %.0.lcssa = phi i8 [ %.0.i50, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit51 ], [ %.1, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit59 ]
  %i.ba = zext i8 %.0.lcssa to i32
  %i.bb = xor i32 %i.c, %i.ba
  br label %tailrecurse

_ZNK5Darts7Details6KeysetIiE4keysEmm.exit._crit_edge.thread: ; preds = %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit._crit_edge, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread.us
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5Darts7Details18DoubleArrayBuilder19arrange_from_keysetIiEEjRKNS0_6KeysetIT_EEmmmj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %.promoted.i = load i64, ptr %i.b, align 8, !tbaa !125
  %.not63 = icmp eq i64 %.promoted.i, 0
  br i1 %.not63, label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !125
  br label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit

_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit:      ; preds = %bb.a, %.lr.ph.preheader.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp ult i64 %2, %3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.y
  %i.h = or i32 %.2, -2147483648
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit
  %.036.lcssa = phi i32 [ -1, %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit ], [ %i.h, %._crit_edge.loopexit ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !127  ; 6 uses
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !116  ; 3 uses
  %.not.i = icmp ugt i64 %i.m, %i.k
  br i1 %.not.i, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %._crit_edge
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !38
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !124  ; 5 uses
  %i.s = load i64, ptr %i.b, align 8
  %.fr.i = freeze i64 %i.s                        ; 2 uses
  %.not1415.i.i = icmp ult i64 %.fr.i, 2
  br i1 %.not1415.i.i, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i, %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.us.i
  %.010.us.i = phi i32 [ %i.ah, %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.us.i ], [ %i.j, %.preheader.i ] ; 2 uses
  %i.t = xor i32 %.010.us.i, %i.p                 ; 3 uses
  %i.u = and i32 %i.t, 4095
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !143, !range !148, !noundef !149
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.us.i, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us.i
  %i.aa = xor i32 %i.t, %5                        ; 2 uses
  %i.ab = and i32 %i.aa, 255
  %.not.i.us.i = icmp eq i32 %i.ab, 0
  %i.ac = and i32 %i.aa, 534773760
  %.not13.i.us.i = icmp eq i32 %i.ac, 0
  %or.cond.i.us.i = or i1 %.not.i.us.i, %.not13.i.us.i
  br i1 %or.cond.i.us.i, label %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit, label %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.us.i

_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.us.i: ; preds = %bb.b, %.preheader.split.us.i
  %i.ad = and i32 %.010.us.i, 4095
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !140 ; 2 uses
  %.not13.us.i = icmp eq i32 %i.ah, %i.j
  br i1 %.not13.us.i, label %.split.us.i, label %.preheader.split.us.i, !llvm.loop !20

bb.c:                                             ; preds = %._crit_edge
  %i.ai = trunc nuw i64 %i.m to i32
  %i.aj = and i32 %5, 255
  %i.ak = or i32 %i.aj, %i.ai
  br label %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit

.preheader.split.i:                               ; preds = %.preheader.i, %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.i
  %.010.i = phi i32 [ %i.bj, %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.i ], [ %i.j, %.preheader.i ] ; 2 uses
  %i.al = xor i32 %.010.i, %i.p                   ; 3 uses
  %i.am = and i32 %i.al, 4095                     ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 9
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !143, !range !148, !noundef !149
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.preheader.split.i
  %i.as = xor i32 %i.al, %5                       ; 2 uses
  %i.at = and i32 %i.as, 255
  %.not.i.i = icmp eq i32 %i.at, 0
  %i.au = and i32 %i.as, 534773760
  %.not13.i.i = icmp eq i32 %i.au, 0
  %or.cond.i.i = or i1 %.not.i.i, %.not13.i.i
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.be, %.lr.ph.i.i ], [ 1, %bb.d ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 %.016.i.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !38
  %i.ax = zext i8 %i.aw to i32
  %i.ay = xor i32 %i.am, %i.ax
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !142, !range !148, !noundef !149
  %i.bd = trunc nuw i8 %i.bc to i1                ; 2 uses
  %i.be = add nuw i64 %.016.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.be, %.fr.i
  %or.cond20.i.i = select i1 %i.bd, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond20.i.i, label %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.i, label %.lr.ph.i.i, !llvm.loop !21

_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.i: ; preds = %.lr.ph.i.i
  br i1 %i.bd, label %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.i, label %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit

_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.i: ; preds = %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.i, %bb.d, %.preheader.split.i
  %i.bf = and i32 %.010.i, 4095
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !140 ; 2 uses
  %.not13.i = icmp eq i32 %i.bj, %i.j
  br i1 %.not13.i, label %.split.us.i, label %.preheader.split.i, !llvm.loop !20

.split.us.i:                                      ; preds = %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.i, %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.thread.us.i
  %i.bk = trunc i64 %i.m to i32
  %i.bl = and i32 %5, 255
  %i.bm = or i32 %i.bl, %i.bk
  br label %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit

_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit: ; preds = %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.i, %bb.b, %bb.c, %.split.us.i
  %.3.i = phi i32 [ %i.ak, %bb.c ], [ %i.bm, %.split.us.i ], [ %i.t, %bb.b ], [ %i.al, %_ZNK5Darts7Details18DoubleArrayBuilder15is_valid_offsetEjj.exit.i ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bo = zext i32 %5 to i64                      ; 2 uses
  %i.bp = xor i32 %.3.i, %5                       ; 4 uses
  %i.bq = icmp ugt i32 %i.bp, 536870911
  br i1 %i.bq, label %bb.e, label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit

bb.e:                                             ; preds = %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit
  %i.br = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.br, align 8, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @.str.29, ptr %i.bs, align 8, !tbaa !131
  tail call void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit: ; preds = %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !117
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bo ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !145
  %i.bw = and i32 %i.bv, -2147483137
  %i.bx = icmp samesign ult i32 %i.bp, 2097152
  %i.by = shl nuw nsw i32 %i.bp, 2
  %i.bz = or i32 %i.by, 512
  %i.ca = shl nuw nsw i32 %i.bp, 10
  %.pn.i = select i1 %i.bx, i32 %i.ca, i32 %i.bz
  %storemerge.i = or i32 %i.bw, %.pn.i
  store i32 %storemerge.i, ptr %i.bu, align 4, !tbaa !145
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !125
  %.not78 = icmp eq i64 %i.cb, 0
  %.phi.trans.insert90 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %.not78, label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge77_crit_edge, label %.lr.ph76

_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge77_crit_edge: ; preds = %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit
  %.pre91 = load ptr, ptr %.phi.trans.insert90, align 8, !tbaa !124
  br label %._crit_edge77

.lr.ph76:                                         ; preds = %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit
  %.pre86 = load ptr, ptr %i.a, align 8, !tbaa !117
  br label %bb.z

bb.f:                                             ; preds = %.lr.ph, %bb.y
  %.03574 = phi i64 [ %2, %.lr.ph ], [ %i.ef, %bb.y ] ; 9 uses
  %.03673 = phi i32 [ -1, %.lr.ph ], [ %.2, %bb.y ] ; 4 uses
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !106 ; 2 uses
  %.not5.i = icmp eq ptr %i.cc, null
  br i1 %.not5.i, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread60, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.03574
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !35
  %.not.i39 = icmp ult i64 %4, %i.ce
  br i1 %.not.i39, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit, label %.thread61

_ZNK5Darts7Details6KeysetIiE4keysEmm.exit:        ; preds = %bb.g
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !105
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.03574
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !97
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %4
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !38  ; 2 uses
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.h, label %bb.q

_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread60: ; preds = %bb.f
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !105
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.03574
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !97
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %4
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !38  ; 2 uses
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %.thread61, label %bb.q

bb.h:                                             ; preds = %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit
  %i.cr = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.cr, align 8, !tbaa !41
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr @.str.30, ptr %i.cs, align 8, !tbaa !131
  tail call void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

.thread61:                                        ; preds = %bb.g, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread60
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !107 ; 3 uses
  %.not.i41 = icmp eq ptr %i.ct, null             ; 2 uses
  br i1 %.not.i41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread61
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.03574
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !56
  br label %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit

bb.j:                                             ; preds = %.thread61
  %i.cw = trunc i64 %.03574 to i32
  br label %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit

_ZNK5Darts7Details6KeysetIiE6valuesEm.exit:       ; preds = %bb.i, %bb.j
  %.0.i42 = phi i32 [ %i.cv, %bb.i ], [ %i.cw, %bb.j ]
  %i.cx = icmp slt i32 %.0.i42, 0
  br i1 %i.cx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit
  %i.cy = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.cy, align 8, !tbaa !41
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr @.str.31, ptr %i.cz, align 8, !tbaa !131
  tail call void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

bb.l:                                             ; preds = %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit
  %i.da = icmp eq i32 %.03673, -1
  br i1 %i.da, label %bb.m, label %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.03574
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !56
  br label %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45

bb.o:                                             ; preds = %bb.m
  %i.dd = trunc i64 %.03574 to i32
  br label %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45

_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45:     ; preds = %bb.o, %bb.n, %bb.l
  %.1 = phi i32 [ %.03673, %bb.l ], [ %i.dc, %bb.n ], [ %i.dd, %bb.o ] ; 2 uses
  %i.de = load ptr, ptr %0, align 8, !tbaa !115   ; 2 uses
  %.not = icmp eq ptr %i.de, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45
  %i.df = add nuw i64 %.03574, 1
  %i.dg = load i64, ptr %1, align 8, !tbaa !104
  %i.dh = add i64 %i.dg, 1
  %i.di = tail call noundef i32 %i.de(i64 noundef %i.df, i64 noundef %i.dh) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread60, %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45, %bb.p, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit
  %.0.i55 = phi i8 [ 0, %bb.p ], [ 0, %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45 ], [ %i.cj, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit ], [ %i.cp, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread60 ] ; 4 uses
  %.2 = phi i32 [ %.1, %bb.p ], [ %.1, %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45 ], [ %.03673, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit ], [ %.03673, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread60 ] ; 2 uses
  %i.dj = load i64, ptr %i.b, align 8, !tbaa !125 ; 5 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dl = load i64, ptr %i.c, align 8, !tbaa !128
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.s, label %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN5Darts7Details8AutoPoolIhE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !125
  br label %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit

_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit:    ; preds = %bb.r, %bb.s
  %i.dn = phi i64 [ %.pre.i, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.b, align 8, !tbaa !125
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dn
  store i8 %.0.i55, ptr %i.dq, align 1, !tbaa !38
  br label %bb.y

bb.t:                                             ; preds = %bb.q
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dj
  %i.dt = getelementptr i8, ptr %i.ds, i64 -1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !38  ; 2 uses
  %.not38 = icmp eq i8 %.0.i55, %i.du
  br i1 %.not38, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dv = icmp ult i8 %.0.i55, %i.du
  br i1 %i.dv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dw = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.dw, align 8, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr @.str.32, ptr %i.dx, align 8, !tbaa !131
  tail call void @__cxa_throw(ptr nonnull %i.dw, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dy = load i64, ptr %i.c, align 8, !tbaa !128
  %i.dz = icmp eq i64 %i.dj, %i.dy
  br i1 %i.dz, label %bb.x, label %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit47

bb.x:                                             ; preds = %bb.w
  %i.ea = add i64 %i.dj, 1
  tail call void @_ZN5Darts7Details8AutoPoolIhE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ea)
  %.pre.i46 = load i64, ptr %i.b, align 8, !tbaa !125
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !117
  br label %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit47

_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit47:  ; preds = %bb.w, %bb.x
  %i.eb = phi ptr [ %.pre, %bb.x ], [ %i.dr, %bb.w ]
  %i.ec = phi i64 [ %.pre.i46, %bb.x ], [ %i.dj, %bb.w ] ; 2 uses
  %i.ed = add i64 %i.ec, 1
  store i64 %i.ed, ptr %i.b, align 8, !tbaa !125
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ec
  store i8 %.0.i55, ptr %i.ee, align 1, !tbaa !38
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit47, %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit
  %i.ef = add i64 %.03574, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ef, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !267

._crit_edge77:                                    ; preds = %bb.ag, %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge77_crit_edge
  %i.eg = phi ptr [ %.pre91, %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge77_crit_edge ], [ %i.fg, %bb.ag ]
  %i.eh = and i32 %.3.i, 4095
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 9
  store i8 1, ptr %i.ek, align 1, !tbaa !143
  ret i32 %.3.i

bb.z:                                             ; preds = %.lr.ph76, %bb.ag
  %i.el = phi i32 [ %i.j, %.lr.ph76 ], [ %i.ff, %bb.ag ]
  %i.em = phi ptr [ %.pre86, %.lr.ph76 ], [ %i.fr, %bb.ag ]
  %.075 = phi i64 [ 0, %.lr.ph76 ], [ %i.ge, %bb.ag ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.075
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !38
  %i.ep = zext i8 %i.eo to i32
  %i.eq = xor i32 %.3.i, %i.ep                    ; 6 uses
  %i.er = zext i32 %i.eq to i64                   ; 3 uses
  %i.es = load i64, ptr %i.l, align 8, !tbaa !116
  %.not.i48 = icmp ugt i64 %i.es, %i.er
  br i1 %.not.i48, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !13
  %.pre87 = load i32, ptr %i.i, align 8, !tbaa !127
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.et = phi i32 [ %.pre87, %bb.aa ], [ %i.el, %bb.z ] ; 2 uses
  %i.eu = icmp eq i32 %i.eq, %i.et
  br i1 %i.eu, label %bb.ac, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ab
  %.pre.i49 = load ptr, ptr %.phi.trans.insert90, align 8, !tbaa !124 ; 2 uses
  %.pre9.i = and i32 %i.eq, 4095
  %.pre10.i = zext nneg i32 %.pre9.i to i64       ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [12 x i8], ptr %.pre.i49, i64 %.pre10.i
  %.phi.trans.insert88 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.pre89 = load i32, ptr %.phi.trans.insert88, align 4, !tbaa !140
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ev = and i32 %i.eq, 4095
  %i.ew = zext nneg i32 %i.ev to i64              ; 3 uses
  %i.ex = load ptr, ptr %.phi.trans.insert90, align 8, !tbaa !124 ; 3 uses
  %i.ey = getelementptr inbounds nuw [12 x i8], ptr %i.ex, i64 %i.ew
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !140 ; 4 uses
  store i32 %i.fa, ptr %i.i, align 8, !tbaa !127
  %i.fb = icmp eq i32 %i.fa, %i.eq
  br i1 %i.fb, label %bb.ad, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fc = load i64, ptr %i.l, align 8, !tbaa !116
  %i.fd = trunc i64 %i.fc to i32                  ; 2 uses
  store i32 %i.fd, ptr %i.i, align 8, !tbaa !127
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit: ; preds = %._crit_edge.i, %bb.ac, %bb.ad
  %i.fe = phi i32 [ %.pre89, %._crit_edge.i ], [ %i.fa, %bb.ac ], [ %i.eq, %bb.ad ] ; 2 uses
  %i.ff = phi i32 [ %i.et, %._crit_edge.i ], [ %i.fa, %bb.ac ], [ %i.fd, %bb.ad ]
  %.pre-phi11.i = phi i64 [ %.pre10.i, %._crit_edge.i ], [ %i.ew, %bb.ac ], [ %i.ew, %bb.ad ]
  %i.fg = phi ptr [ %.pre.i49, %._crit_edge.i ], [ %i.ex, %bb.ac ], [ %i.ex, %bb.ad ] ; 4 uses
  %i.fh = getelementptr inbounds nuw [12 x i8], ptr %i.fg, i64 %.pre-phi11.i ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !141 ; 2 uses
  %i.fj = and i32 %i.fi, 4095
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [12 x i8], ptr %i.fg, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 %i.fe, ptr %i.fm, align 4, !tbaa !140
  %i.fn = and i32 %i.fe, 4095
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [12 x i8], ptr %i.fg, i64 %i.fo
  store i32 %i.fi, ptr %i.fp, align 4, !tbaa !141
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i8 1, ptr %i.fq, align 4, !tbaa !142
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.075
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !38  ; 2 uses
  %i.fu = icmp eq i8 %i.ft, 0
  %i.fv = load ptr, ptr %i.bn, align 8, !tbaa !117 ; 3 uses
  br i1 %i.fu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.bo ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4
  %storemerge.i50 = or i32 %i.fx, 256
  store i32 %storemerge.i50, ptr %i.fw, align 4, !tbaa !145
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.er
  store i32 %.036.lcssa, ptr %i.fy, align 4, !tbaa !145
  br label %bb.ag

bb.af:                                            ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.er ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !145
  %i.gb = and i32 %i.ga, -256
  %i.gc = zext i8 %i.ft to i32
  %i.gd = or disjoint i32 %i.gb, %i.gc
  store i32 %i.gd, ptr %i.fz, align 4, !tbaa !145
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ge = add nuw i64 %.075, 1                    ; 2 uses
  %i.gf = load i64, ptr %i.b, align 8, !tbaa !125
  %i.gg = icmp ult i64 %i.ge, %i.gf
  br i1 %i.gg, label %bb.z, label %._crit_edge77, !llvm.loop !268
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6opencc10BinaryDictELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #20 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6opencc10BinaryDictELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(88) %i.b) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6opencc10BinaryDictELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6opencc10BinaryDictELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DartsDict.cpp() #15 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, i64 16), ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 24, ptr %i.b, align 8, !tbaa !35
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, align 8, !tbaa !37
  %i.d = load i64, ptr %i.b, align 8, !tbaa !35   ; 3 uses
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, i64 16), align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str, i64 24, i1 false)
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, i64 8), align 8, !tbaa !39
  %i.e = load ptr, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.g = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, ptr nonnull @__dso_handle) #28 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, i64 16), ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 30, ptr %i.a, align 8, !tbaa !35
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, align 8, !tbaa !37
  %i.i = load i64, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, i64 16), align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.h, ptr noundef nonnull align 1 dereferenceable(30) @.str.2, i64 30, i1 false)
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, i64 8), align 8, !tbaa !39
  %i.j = load ptr, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.l = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, ptr nonnull @__dso_handle) #28 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nounwind memory(none) }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { noreturn }
attributes #28 = { nounwind }
attributes #29 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind allocsize(0) }

!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!24}
!llvm.errno.tbaa = !{!29}

!0 = distinct !{null, null}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{null}
!3 = distinct !{null, null, null, null}
!4 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN6opencc10BinaryDictELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5 = distinct !{null, null, null, null}
!6 = distinct !{!6, !70}
!7 = distinct !{ptr @_ZNSt12__shared_ptrIN6opencc10BinaryDictELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8 = distinct !{null}
!9 = distinct !{!9, !70}
!10 = distinct !{null, null}
!11 = distinct !{!11, !70}
!12 = distinct !{!12, !70}
!13 = distinct !{null}
!14 = distinct !{!14, !70}
!15 = distinct !{null, null}
!16 = distinct !{!16, !70}
!17 = distinct !{!17, !70}
!18 = distinct !{!18, !70}
!19 = distinct !{!19, !70}
!20 = distinct !{!20, !70}
!21 = distinct !{!21, !70}
!22 = !{i32 8, !"PIC Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 2}
!24 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!25 = !{!"Simple C++ TBAA"}
!26 = !{!"omnipotent char", !25, i64 0}
!27 = !{!"int", !26, i64 0}
!28 = !{!"__libc_errno", !27, i64 0}
!29 = !{!28, !27, i64 0}
!30 = !{!"any pointer", !26, i64 0}
!31 = !{!"p1 omnipotent char", !30, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!33 = !{!32, !31, i64 0}
!34 = !{!"long", !26, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !34, i64 8, !26, i64 16}
!37 = !{!36, !31, i64 0}
!38 = !{!26, !26, i64 0}
!39 = !{!36, !34, i64 8}
!40 = !{!"vtable pointer", !25, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"_ZTSN6opencc4DictE"}
!43 = !{!"_ZTSN6opencc16SerializableDictE"}
!44 = !{!"p1 _ZTSN6opencc7LexiconE", !30, i64 0}
!45 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !30, i64 0}
!46 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0}
!47 = !{!"_ZTSSt12__shared_ptrIN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE", !44, i64 0, !46, i64 8}
!48 = !{!"_ZTSSt10shared_ptrIN6opencc7LexiconEE", !47, i64 0}
!49 = !{!"p1 _ZTSN6opencc9DartsDict13DartsInternalE", !30, i64 0}
!50 = !{!"_ZTSN6opencc9DartsDictE", !42, i64 0, !43, i64 8, !34, i64 16, !48, i64 24, !49, i64 40}
!51 = !{!50, !49, i64 40}
!52 = !{!46, !45, i64 0}
!53 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 8, !27, i64 12}
!54 = !{!53, !27, i64 8}
!55 = !{!53, !27, i64 12}
!56 = !{!27, !27, i64 0}
!57 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!58 = !{!"p1 _ZTSN6opencc10BinaryDictE", !30, i64 0}
!59 = !{!"_ZTSSt12__shared_ptrIN6opencc10BinaryDictELN9__gnu_cxx12_Lock_policyE2EE", !58, i64 0, !46, i64 8}
!60 = !{!"_ZTSSt10shared_ptrIN6opencc10BinaryDictEE", !59, i64 0}
!61 = !{!"p1 _ZTSN5Darts15DoubleArrayImplIvvivEE", !30, i64 0}
!62 = !{!"p1 _ZTSN12_GLOBAL__N_112LegacyUnit64E", !30, i64 0}
!63 = !{!"_ZTSN6opencc9DartsDict13DartsInternalE", !60, i64 0, !30, i64 16, !61, i64 24, !62, i64 32}
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!68 = !{!"_ZTSN12_GLOBAL__N_112LegacyUnit64E", !34, i64 0}
!69 = !{!68, !34, i64 0}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!47, !44, i64 0}
!72 = !{!"p1 _ZTSSt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS1_EE", !30, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!74 = !{!73, !72, i64 8}
!75 = !{!73, !72, i64 0}
!76 = !{!"p1 _ZTSN6opencc9DictEntryE", !30, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!"p1 _ZTSN5Darts7Details15DoubleArrayUnitE", !30, i64 0}
!79 = !{!"_ZTSN5Darts15DoubleArrayImplIvvivEE", !34, i64 8, !78, i64 16, !78, i64 24}
!80 = !{!79, !78, i64 16}
!81 = !{!"_ZTSN5Darts7Details15DoubleArrayUnitE", !27, i64 0}
!82 = !{!81, !27, i64 0}
!83 = !{!30, !30, i64 0}
!84 = !{!"bool", !26, i64 0}
!85 = !{!"p1 _ZTSN6opencc9DartsDictE", !30, i64 0}
!86 = !{!"_ZTSSt12__shared_ptrIN6opencc9DartsDictELN9__gnu_cxx12_Lock_policyE2EE", !85, i64 0, !46, i64 8}
!87 = !{!86, !85, i64 0}
!88 = !{!"_ZTSSt15_Sp_counted_ptrIPN6opencc9DartsDictELN9__gnu_cxx12_Lock_policyE2EE", !53, i64 0, !85, i64 16}
!89 = !{!88, !85, i64 16}
!90 = !{!59, !58, i64 0}
!91 = !{!79, !78, i64 24}
!92 = !{!79, !34, i64 8}
!93 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!95 = !{!94, !93, i64 8}
!96 = !{!94, !93, i64 0}
!97 = !{!31, !31, i64 0}
!98 = !{!94, !93, i64 16}
!99 = !{!"any p2 pointer", !30, i64 0}
!100 = !{!"p2 omnipotent char", !99, i64 0}
!101 = !{!"p1 long", !30, i64 0}
!102 = !{!"p1 int", !30, i64 0}
!103 = !{!"_ZTSN5Darts7Details6KeysetIiEE", !34, i64 0, !100, i64 8, !101, i64 16, !102, i64 24}
!104 = !{!103, !34, i64 0}
!105 = !{!103, !100, i64 8}
!106 = !{!103, !101, i64 16}
!107 = !{!103, !102, i64 24}
!108 = !{!"_ZTSN5Darts7Details9AutoArrayIcEE", !31, i64 0}
!109 = !{!"_ZTSN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEEE", !108, i64 0, !34, i64 8, !34, i64 16}
!110 = !{!"p1 _ZTSN5Darts7Details27DoubleArrayBuilderExtraUnitE", !30, i64 0}
!111 = !{!"_ZTSN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEEE", !110, i64 0}
!112 = !{!"_ZTSN5Darts7Details8AutoPoolIhEE", !108, i64 0, !34, i64 8, !34, i64 16}
!113 = !{!"_ZTSN5Darts7Details9AutoArrayIjEE", !102, i64 0}
!114 = !{!"_ZTSN5Darts7Details18DoubleArrayBuilderE", !30, i64 0, !109, i64 8, !111, i64 32, !112, i64 40, !113, i64 64, !27, i64 72}
!115 = !{!114, !30, i64 0}
!116 = !{!109, !34, i64 8}
!117 = !{!108, !31, i64 0}
!118 = !{!"llvm.loop.isvectorized", i32 1}
!119 = !{!"llvm.loop.unroll.runtime.disable"}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = !{!"_ZTSSt15_Sp_counted_ptrIPN6opencc10BinaryDictELN9__gnu_cxx12_Lock_policyE2EE", !53, i64 0, !58, i64 16}
!122 = !{!121, !58, i64 16}
!123 = !{ptr @_ZN6opencc9ExceptionD2Ev}
!124 = !{!111, !110, i64 0}
!125 = !{!112, !34, i64 8}
!126 = !{!113, !102, i64 0}
!127 = !{!114, !27, i64 72}
!128 = !{!112, !34, i64 16}
!129 = !{!"_ZTSSt9exception"}
!130 = !{!"_ZTSN5Darts7Details9ExceptionE", !129, i64 0, !31, i64 8}
!131 = !{!130, !31, i64 8}
!132 = !{!"branch_weights", i32 4, i32 28}
!133 = !{!109, !34, i64 16}
!134 = !{!"_ZTSN5Darts7Details8AutoPoolINS0_8DawgUnitEEE", !108, i64 0, !34, i64 8, !34, i64 16}
!135 = !{!134, !34, i64 8}
!136 = !{!"_ZTSN5Darts7Details8AutoPoolIjEE", !108, i64 0, !34, i64 8, !34, i64 16}
!137 = !{!"_ZTSN5Darts7Details9BitVectorE", !136, i64 0, !113, i64 24, !34, i64 32, !34, i64 40}
!138 = !{!137, !34, i64 32}
!139 = !{!"_ZTSN5Darts7Details27DoubleArrayBuilderExtraUnitE", !27, i64 0, !27, i64 4, !84, i64 8, !84, i64 9}
!140 = !{!139, !27, i64 4}
!141 = !{!139, !27, i64 0}
!142 = !{!139, !84, i64 8}
!143 = !{!139, !84, i64 9}
!144 = !{!"_ZTSN5Darts7Details22DoubleArrayBuilderUnitE", !27, i64 0}
!145 = !{!144, !27, i64 0}
!146 = !{!"_ZTSN5Darts7Details8DawgUnitE", !27, i64 0}
!147 = !{!146, !27, i64 0}
!148 = !{i8 0, i8 2}
!149 = !{}
!150 = !{!"_ZTSN5Darts7Details8AutoPoolINS0_8DawgNodeEEE", !108, i64 0, !34, i64 8, !34, i64 16}
!151 = !{!150, !34, i64 8}
!152 = !{!136, !34, i64 8}
!153 = !{!136, !34, i64 16}
!154 = !{!134, !34, i64 16}
!155 = !{!150, !34, i64 16}
!156 = !{!137, !34, i64 40}
!157 = !{!"_ZTSN5Darts7Details9AutoStackIjEE", !136, i64 0}
!158 = !{!"_ZTSN5Darts7Details11DawgBuilderE", !150, i64 0, !134, i64 24, !112, i64 48, !137, i64 72, !136, i64 120, !157, i64 144, !157, i64 168, !34, i64 192}
!159 = !{!158, !34, i64 192}
!160 = !{!"_ZTSN5Darts7Details8DawgNodeE", !27, i64 0, !27, i64 4, !26, i64 8, !84, i64 9, !84, i64 10}
!161 = !{!160, !26, i64 8}
!162 = !{!160, !27, i64 0}
!163 = !{!160, !84, i64 10}
!164 = !{!160, !84, i64 9}
!165 = !{!160, !27, i64 4}
!166 = distinct !{null}
!167 = distinct !{null, ptr @_ZNSt12__shared_ptrIN6opencc10BinaryDictELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!168 = distinct !{!168, !70}
!169 = distinct !{!169, !70}
!170 = distinct !{!170, !70}
!171 = distinct !{!171, !70}
!172 = distinct !{!172, !70}
!173 = distinct !{!173, !70}
!174 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !34, i64 0, !31, i64 8}
!175 = !{!"_ZTSN6opencc15PrefixMatchViewE", !84, i64 0, !34, i64 8, !174, i64 16, !174, i64 32}
!176 = !{!175, !84, i64 0}
!177 = !{!175, !34, i64 8}
!178 = !{!174, !34, i64 0}
!179 = !{!174, !31, i64 8}
!180 = distinct !{!180, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!181 = distinct !{!181, !180, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!182 = distinct !{!182, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!183 = distinct !{!183, !182, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!184 = !{!181}
!185 = !{!183, !181}
!186 = distinct !{!186, !70}
!187 = distinct !{!187, !70, !118, !119}
!188 = distinct !{!188, !120}
!189 = distinct !{!189, !70, !118}
!190 = distinct !{null, null, null}
!191 = !{!58, !58, i64 0}
!192 = distinct !{null}
!193 = distinct !{!193, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!194 = distinct !{!194, !193, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!195 = distinct !{!195, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!196 = distinct !{!196, !195, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!197 = !{!194}
!198 = !{!196, !194}
!199 = !{ptr @_ZN5Darts15DoubleArrayImplIvvivED2Ev}
!200 = distinct !{!200, !120}
!201 = distinct !{!201, !70}
!202 = distinct !{!202, !120}
!203 = distinct !{!203, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!204 = distinct !{!204, !203, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!205 = distinct !{!205, !203, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!206 = distinct !{!206, !70}
!207 = !{!204}
!208 = !{!205}
!209 = !{!204, !205}
!210 = distinct !{null}
!211 = distinct !{!211, !70}
!212 = distinct !{!212, !70, !118, !119}
!213 = distinct !{!213, !70, !118, !119}
!214 = distinct !{!214, !120}
!215 = distinct !{!215, !70, !118}
!216 = distinct !{!216, !70}
!217 = distinct !{!217, !70, !118, !119}
!218 = distinct !{!218, !120}
!219 = distinct !{!219, !70, !118}
!220 = distinct !{!220, !70}
!221 = distinct !{!221, !70}
!222 = distinct !{!222, !70, !118, !119}
!223 = distinct !{!223, !120}
!224 = distinct !{!224, !70, !118}
!225 = distinct !{!225, !70, !118, !119}
!226 = distinct !{!226, !120}
!227 = distinct !{!227, !70, !118}
!228 = distinct !{!228, !70}
!229 = distinct !{!229, !70}
!230 = !{!84, !84, i64 0}
!231 = !{i64 0, i64 4, !56, i64 4, i64 4, !56, i64 8, i64 1, !38, i64 9, i64 1, !230, i64 10, i64 1, !230}
!232 = distinct !{!232, !70}
!233 = distinct !{!233, !70}
!234 = distinct !{!234, !70}
!235 = distinct !{!235, !70, !118, !119}
!236 = distinct !{!236, !120}
!237 = distinct !{!237, !70, !118}
!238 = distinct !{!238, !70, !118, !119}
!239 = distinct !{!239, !120}
!240 = distinct !{!240, !70, !118}
!241 = distinct !{!241, !70, !118, !119}
!242 = distinct !{!242, !70, !118, !119}
!243 = distinct !{!243, !120}
!244 = distinct !{!244, !70, !118}
!245 = distinct !{!245, !70}
!246 = distinct !{!246, !70}
!247 = distinct !{!247, !70}
!248 = distinct !{!248, !70, !118, !119}
!249 = distinct !{!249, !120}
!250 = distinct !{!250, !70, !118}
!251 = distinct !{!251, !70}
!252 = distinct !{!252, !70}
!253 = distinct !{!253, !70}
!254 = distinct !{!254, !70}
!255 = distinct !{!255, !70}
!256 = distinct !{!256, !70}
!257 = distinct !{!257, !70}
!258 = distinct !{!258, !70}
!259 = distinct !{!259, !70}
!260 = distinct !{!260, !70}
!261 = distinct !{null, null}
!262 = distinct !{!262, !70}
!263 = distinct !{!263, !70}
!264 = distinct !{!264, !70}
!265 = distinct !{!265, !70}
!266 = distinct !{!266, !70}
!267 = distinct !{!267, !70}
!268 = distinct !{!268, !70}
end_hunk_1
