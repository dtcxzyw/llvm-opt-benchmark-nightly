Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/DartsDict?download=true
inline.NumInlined: 1274
inline.NumDeleted: 491
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK5Darts7Details11DawgBuilder9find_nodeEjPj:bb.a
  %.not23.i = icmp eq i32 %i.cp, 0
  br i1 %.not23.i, label %_ZNK5Darts7Details11DawgBuilder9are_equalEjj.exit, label %.lr.ph40.i, !llvm.loop !253

.loopexit:                                        ; preds = %.lr.ph.i13, %bb.i, %_ZNK5Darts7Details8DawgNode4unitEv.exit.i15, %._crit_edge.i
  %i.cr = add nuw nsw i64 %storemerge39, 1
  %.pn = and i64 %i.cr, 4294967295
  %storemerge.in = urem i64 %.pn, %i.am           ; 3 uses
  %storemerge = trunc nuw i64 %storemerge.in to i32
  store i32 %storemerge, ptr %2, align 4, !tbaa !56
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %storemerge.in
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !56 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_ZNK5Darts7Details11DawgBuilder9are_equalEjj.exit, label %.lr.ph.split, !llvm.loop !252

_ZNK5Darts7Details11DawgBuilder9are_equalEjj.exit: ; preds = %.loopexit, %bb.j, %.loopexit31.us, %._crit_edge.i.us, %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit
  %i.cv = phi i32 [ %i.bh, %bb.j ], [ 0, %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit ], [ 0, %.loopexit31.us ], [ %i.at, %._crit_edge.i.us ], [ 0, %.loopexit ]
  ret i32 %i.cv
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details9BitVector5buildEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !152  ; 3 uses
  %i.d = icmp ugt i64 %i.c, 4611686018427387903
  %i.e = shl i64 %i.c, 2
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #29
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !126
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #30
  %.pre = load i64, ptr %i.b, align 8, !tbaa !152
  br label %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit

bb.d:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.j = extractvalue { ptr, i32 } %i.i, 1
  %i.k = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #28
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = extractvalue { ptr, i32 } %i.i, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #28 ; 0 uses
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @.str.28, ptr %i.p, align 8, !tbaa !131
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
          to label %bb.k unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit:     ; preds = %bb.c, %bb.b
  %i.r = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !138
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.g, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !126
  %i.u = load ptr, ptr %0, align 8, !tbaa !117
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h
  store i64 %i.ar, ptr %i.s, align 8, !tbaa !138
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.v = phi i64 [ 0, %.lr.ph ], [ %i.ar, %bb.h ] ; 2 uses
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.as, %bb.h ] ; 3 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.011
  store i32 %i.w, ptr %i.x, align 4, !tbaa !56
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.011
  %i.z = load i32, ptr %i.y, align 4, !tbaa !56   ; 2 uses
  %i.aa = lshr i32 %i.z, 1
  %i.ab = and i32 %i.aa, 1431655765
  %i.ac = and i32 %i.z, 1431655765
  %i.ad = add nuw i32 %i.ab, %i.ac                ; 2 uses
  %i.ae = lshr i32 %i.ad, 2
  %i.af = and i32 %i.ae, 858993459
  %i.ag = and i32 %i.ad, 858993459
  %i.ah = add nuw nsw i32 %i.af, %i.ag            ; 2 uses
  %i.ai = lshr i32 %i.ah, 4
  %i.aj = add nuw nsw i32 %i.ai, %i.ah
  %i.ak = and i32 %i.aj, 252645135                ; 2 uses
  %i.al = lshr i32 %i.ak, 8
  %i.am = add nuw nsw i32 %i.al, %i.ak            ; 2 uses
  %i.an = lshr i32 %i.am, 16
  %i.ao = add nuw nsw i32 %i.an, %i.am
  %i.ap = and i32 %i.ao, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = add i64 %i.v, %i.aq                     ; 2 uses
  %i.as = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !254

bb.i:                                             ; preds = %bb.f, %bb.d
  %.merged = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %.merged

bb.j:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #31
  unreachable

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
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.bb, label %bb.e, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.d
  %.pre = load ptr, ptr %4, align 8, !tbaa !117
  %.pre46 = zext i32 %3 to i64
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bc = zext i32 %3 to i64                      ; 2 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !117   ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %storemerge.i = or i32 %i.bf, 256
  store i32 %storemerge.i, ptr %i.be, align 4, !tbaa !145
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.e
  %.pre-phi = phi i64 [ %.pre46, %..critedge_crit_edge ], [ %i.bc, %bb.e ]
  %5 = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.bd, %bb.e ]
  %6 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.pre-phi ; 2 uses
  %i.bg = icmp ugt i32 %i.at, 536870911
  br i1 %i.bg, label %bb.f, label %7

bb.f:                                             ; preds = %.critedge
  %i.bh = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.bh, align 8, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr @.str.29, ptr %i.bi, align 8, !tbaa !131
  tail call void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

7:                                                ; preds = %.critedge
  %8 = load i32, ptr %6, align 4, !tbaa !145
  %9 = and i32 %8, -2147483137                    ; 2 uses
  %10 = icmp samesign ult i32 %i.at, 2097152
  br i1 %10, label %11, label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.a

11:                                               ; preds = %7
  %12 = shl nuw nsw i32 %i.at, 10
  %13 = or disjoint i32 %9, %12
  br label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit

_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.a: ; preds = %7
  %i.bj = shl nuw nsw i32 %i.at, 2
  %i.bk = or i32 %i.bj, %9
  %storemerge.i44.a = or i32 %i.bk, 512
  br label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit

_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit: ; preds = %11, %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.a
  %storemerge.i44 = phi i32 [ %storemerge.i44.a, %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.a ], [ %13, %11 ]
  store i32 %storemerge.i44, ptr %6, align 4, !tbaa !145
  br label %.loopexit

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.bl = tail call noundef i32 @_ZN5Darts7Details18DoubleArrayBuilder17arrange_from_dawgERKNS0_11DawgBuilderEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !56 ; 2 uses
  %i.bp = lshr i32 %i.bo, %i.m
  %i.bq = trunc i32 %i.bp to i1
  br i1 %i.bq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !126
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !56
  %i.bw = xor i32 %i.m, 31
  %i.bx = lshr i32 -1, %i.bw
  %i.by = and i32 %i.bo, %i.bx                    ; 2 uses
  %i.bz = lshr i32 %i.by, 1
  %i.ca = and i32 %i.bz, 1431655765
  %i.cb = and i32 %i.by, 1431655765
  %i.cc = add nuw i32 %i.ca, %i.cb                ; 2 uses
  %i.cd = lshr i32 %i.cc, 2
  %i.ce = and i32 %i.cd, 858993459
  %i.cf = and i32 %i.cc, 858993459
  %i.cg = add nuw nsw i32 %i.ce, %i.cf            ; 2 uses
  %i.ch = lshr i32 %i.cg, 4
  %i.ci = add nuw nsw i32 %i.ch, %i.cg
  %i.cj = and i32 %i.ci, 252645135                ; 2 uses
  %i.ck = lshr i32 %i.cj, 8
  %i.cl = add nuw nsw i32 %i.ck, %i.cj            ; 2 uses
  %i.cm = lshr i32 %i.cl, 16
  %i.cn = add nuw nsw i32 %i.cm, %i.cl
  %i.co = and i32 %i.cn, 63
  %i.cp = add nsw i32 %i.co, -1
  %i.cq = add i32 %i.cp, %i.bv
  %i.cr = zext i32 %i.cq to i64
  %i.cs = load ptr, ptr %i.br, align 8, !tbaa !126
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.bl, ptr %i.ct, align 4, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cv = lshr i32 %i.e, 2
  %i.cw = zext nneg i32 %i.cv to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ %i.cw, %bb.i ] ; 4 uses
  %.037 = phi i32 [ %i.dh, %bb.l ], [ %i.f, %bb.i ]
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !117
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !38  ; 2 uses
  %.not42 = icmp eq i8 %i.cz, 0
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = zext i8 %i.cz to i32
  %i.db = xor i32 %i.bl, %i.da
  %i.dc = trunc nuw i64 %indvars.iv to i32
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder15build_from_dawgERKNS0_11DawgBuilderEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %i.dc, i32 noundef %i.db)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv
  %i.df = load i32, ptr %i.de, align 4, !tbaa !147
  %i.dg = trunc i32 %i.df to i1
  %i.dh = add i32 %.037, 1                        ; 2 uses
  %.not4345 = icmp ne i32 %i.dh, 0
  %.not43.not = and i1 %.not4345, %i.dg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not43.not, label %bb.j, label %.loopexit, !llvm.loop !255

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
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !256
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

end_hunk_0
begin_hunk_1_@_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv:bb.a
  %.0 = add nuw i32 %.043, 1                      ; 4 uses
  %i.ee = and i32 %.043, 4095
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i32 %.0, ptr %i.eh, align 4, !tbaa !140
  %i.ei = and i32 %.0, 4095
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %i.ej
  store i32 %.043, ptr %i.ek, align 4, !tbaa !141
  %.0.1 = add nuw i32 %.043, 2                    ; 3 uses
  %i.el = and i32 %.0, 4095
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 %.0.1, ptr %i.eo, align 4, !tbaa !140
  %i.ep = and i32 %.0.1, 4095
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %i.eq
  store i32 %.0, ptr %i.er, align 4, !tbaa !141
  %.0.2 = add nuw i32 %.043, 3                    ; 2 uses
  %exitcond.not.2 = icmp eq i32 %.0.2, %i.g
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph44, !llvm.loop !258
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
  %4 = load ptr, ptr %i.ch, align 8, !tbaa !117
  %5 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ci ; 2 uses
  %i.cj = xor i32 %.3.i, %3                       ; 4 uses
  %i.ck = icmp ugt i32 %i.cj, 536870911
  br i1 %i.ck, label %bb.g, label %6

bb.g:                                             ; preds = %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit
  %i.cl = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.cl, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr @.str.29, ptr %i.cm, align 8, !tbaa !131
  tail call void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

6:                                                ; preds = %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit
  %7 = load i32, ptr %5, align 4, !tbaa !145
  %8 = and i32 %7, -2147483137                    ; 2 uses
  %9 = icmp samesign ult i32 %i.cj, 2097152
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = shl nuw nsw i32 %i.cj, 10
  %12 = or disjoint i32 %8, %11
  br label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit

13:                                               ; preds = %6
  %14 = shl nuw nsw i32 %i.cj, 2
  %15 = or i32 %14, %8
  %16 = or i32 %15, 512
  br label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit

_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit: ; preds = %10, %13
  %storemerge.i = phi i32 [ %16, %13 ], [ %12, %10 ]
  store i32 %storemerge.i, ptr %5, align 4, !tbaa !145
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !125
  %.not46 = icmp eq i64 %i.cn, 0
  br i1 %.not46, label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge_crit_edge, label %.lr.ph45

_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge_crit_edge: ; preds = %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre59 = load ptr, ptr %.phi.trans.insert58, align 8, !tbaa !124
  br label %._crit_edge

.lr.ph45:                                         ; preds = %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.e
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !147
  %i.cq = lshr i32 %i.cp, 2
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.h

._crit_edge:                                      ; preds = %bb.o, %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge_crit_edge
  %i.ct = phi ptr [ %.pre59, %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge_crit_edge ], [ %i.dt, %bb.o ]
  %i.cu = and i32 %.3.i, 4095
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 9
  store i8 1, ptr %i.cx, align 1, !tbaa !143
  ret i32 %.3.i

bb.h:                                             ; preds = %.lr.ph45, %bb.o
  %i.cy = phi i32 [ %i.ad, %.lr.ph45 ], [ %i.ds, %bb.o ]
  %.044 = phi i64 [ 0, %.lr.ph45 ], [ %i.fe, %bb.o ] ; 3 uses
  %.143 = phi i32 [ %i.cq, %.lr.ph45 ], [ %i.fd, %bb.o ] ; 2 uses
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.044
  %i.db = load i8, ptr %i.da, align 1, !tbaa !38
  %i.dc = zext i8 %i.db to i32
  %i.dd = xor i32 %.3.i, %i.dc                    ; 6 uses
  %i.de = zext i32 %i.dd to i64                   ; 3 uses
  %i.df = load i64, ptr %i.af, align 8, !tbaa !116
  %.not.i31 = icmp ugt i64 %i.df, %i.de
  br i1 %.not.i31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !13
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !127
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dg = phi i32 [ %.pre, %bb.i ], [ %i.cy, %bb.h ] ; 2 uses
  %i.dh = icmp eq i32 %i.dd, %i.dg
  br i1 %i.dh, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %.pre.i32 = load ptr, ptr %i.cr, align 8, !tbaa !124 ; 2 uses
  %.pre9.i = and i32 %i.dd, 4095
  %.pre10.i = zext nneg i32 %.pre9.i to i64       ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [12 x i8], ptr %.pre.i32, i64 %.pre10.i
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.pre54 = load i32, ptr %.phi.trans.insert53, align 4, !tbaa !140
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.k:                                             ; preds = %bb.j
  %i.di = and i32 %i.dd, 4095
  %i.dj = zext nneg i32 %i.di to i64              ; 3 uses
  %i.dk = load ptr, ptr %i.cr, align 8, !tbaa !124 ; 3 uses
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !140 ; 4 uses
  store i32 %i.dn, ptr %i.ac, align 8, !tbaa !127
  %i.do = icmp eq i32 %i.dn, %i.dd
  br i1 %i.do, label %bb.l, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.l:                                             ; preds = %bb.k
  %i.dp = load i64, ptr %i.af, align 8, !tbaa !116
  %i.dq = trunc i64 %i.dp to i32                  ; 2 uses
  store i32 %i.dq, ptr %i.ac, align 8, !tbaa !127
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit: ; preds = %._crit_edge.i, %bb.k, %bb.l
  %i.dr = phi i32 [ %.pre54, %._crit_edge.i ], [ %i.dn, %bb.k ], [ %i.dd, %bb.l ] ; 2 uses
  %i.ds = phi i32 [ %i.dg, %._crit_edge.i ], [ %i.dn, %bb.k ], [ %i.dq, %bb.l ]
  %.pre-phi11.i = phi i64 [ %.pre10.i, %._crit_edge.i ], [ %i.dj, %bb.k ], [ %i.dj, %bb.l ]
  %i.dt = phi ptr [ %.pre.i32, %._crit_edge.i ], [ %i.dk, %bb.k ], [ %i.dk, %bb.l ] ; 4 uses
  %i.du = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %.pre-phi11.i ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !141 ; 2 uses
  %i.dw = and i32 %i.dv, 4095
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 %i.dr, ptr %i.dz, align 4, !tbaa !140
  %i.ea = and i32 %i.dr, 4095
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.eb
  store i32 %i.dv, ptr %i.ec, align 4, !tbaa !141
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i8 1, ptr %i.ed, align 4, !tbaa !142
  %i.ee = zext i32 %.143 to i64                   ; 3 uses
  %i.ef = load ptr, ptr %i.cs, align 8, !tbaa !117
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !38
  %i.ei = icmp eq i8 %i.eh, 0
  %i.ej = load ptr, ptr %i.ch, align 8, !tbaa !117 ; 3 uses
  br i1 %i.ei, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ci ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4
  %storemerge.i33 = or i32 %i.el, 256
  store i32 %storemerge.i33, ptr %i.ek, align 4, !tbaa !145
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.de
  %i.en = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ee
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !147 ; 2 uses
  %i.eq = lshr i32 %i.ep, 1
  %i.er = or disjoint i32 %i.eq, -2147483648
  store i32 %i.er, ptr %i.em, align 4, !tbaa !145
  br label %bb.o

bb.n:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.de ; 2 uses
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %.044
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !38
  %i.ew = load i32, ptr %i.es, align 4, !tbaa !145
  %i.ex = and i32 %i.ew, -256
  %i.ey = zext i8 %i.ev to i32
  %i.ez = or disjoint i32 %i.ex, %i.ey
  store i32 %i.ez, ptr %i.es, align 4, !tbaa !145
  %.pre55 = load ptr, ptr %i.d, align 8, !tbaa !117
  %.phi.trans.insert56 = getelementptr inbounds nuw [4 x i8], ptr %.pre55, i64 %i.ee
  %.pre57 = load i32, ptr %.phi.trans.insert56, align 4, !tbaa !147
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fa = phi i32 [ %.pre57, %bb.n ], [ %i.ep, %bb.m ]
  %i.fb = trunc i32 %i.fa to i1
  %i.fc = add i32 %.143, 1
  %i.fd = select i1 %i.fb, i32 %i.fc, i32 0
  %i.fe = add nuw i64 %.044, 1                    ; 2 uses
  %i.ff = load i64, ptr %i.b, align 8, !tbaa !125
  %i.fg = icmp ult i64 %i.fe, %i.ff
  br i1 %i.fg, label %bb.h, label %._crit_edge, !llvm.loop !259
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
  br i1 %exitcond78.not, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit._crit_edge.thread, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.us, !llvm.loop !260

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
end_hunk_1
begin_hunk_2_@_ZN5Darts7Details18DoubleArrayBuilder17build_from_keysetIiEEvRKNS0_6KeysetIT_EEmmmj:bb.a
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
  br i1 %exitcond79.not, label %._crit_edge73, label %.lr.ph72, !llvm.loop !261

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
  %6 = load ptr, ptr %i.bn, align 8, !tbaa !117
  %7 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bo ; 2 uses
  %i.bp = xor i32 %.3.i, %5                       ; 4 uses
  %i.bq = icmp ugt i32 %i.bp, 536870911
  br i1 %i.bq, label %bb.e, label %8

bb.e:                                             ; preds = %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit
  %i.br = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.br, align 8, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @.str.29, ptr %i.bs, align 8, !tbaa !131
  tail call void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

8:                                                ; preds = %_ZNK5Darts7Details18DoubleArrayBuilder17find_valid_offsetEj.exit
  %9 = load i32, ptr %7, align 4, !tbaa !145
  %10 = and i32 %9, -2147483137                   ; 2 uses
  %11 = icmp samesign ult i32 %i.bp, 2097152
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = shl nuw nsw i32 %i.bp, 10
  %14 = or disjoint i32 %10, %13
  br label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit

15:                                               ; preds = %8
  %16 = shl nuw nsw i32 %i.bp, 2
  %17 = or i32 %16, %10
  %18 = or i32 %17, 512
  br label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit

_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit: ; preds = %12, %15
  %storemerge.i = phi i32 [ %18, %15 ], [ %14, %12 ]
  store i32 %storemerge.i, ptr %7, align 4, !tbaa !145
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !125
  %.not78 = icmp eq i64 %i.bt, 0
  %.phi.trans.insert90 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %.not78, label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge77_crit_edge, label %.lr.ph76

_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge77_crit_edge: ; preds = %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit
  %.pre91 = load ptr, ptr %.phi.trans.insert90, align 8, !tbaa !124
  br label %._crit_edge77

.lr.ph76:                                         ; preds = %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit
  %.pre86 = load ptr, ptr %i.a, align 8, !tbaa !117
  br label %bb.z

bb.f:                                             ; preds = %.lr.ph, %bb.y
  %.03574 = phi i64 [ %2, %.lr.ph ], [ %i.dx, %bb.y ] ; 9 uses
  %.03673 = phi i32 [ -1, %.lr.ph ], [ %.2, %bb.y ] ; 4 uses
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !106 ; 2 uses
  %.not5.i = icmp eq ptr %i.bu, null
  br i1 %.not5.i, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread60, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.03574
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !35
  %.not.i39 = icmp ult i64 %4, %i.bw
  br i1 %.not.i39, label %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit, label %.thread61

_ZNK5Darts7Details6KeysetIiE4keysEmm.exit:        ; preds = %bb.g
  %i.bx = load ptr, ptr %i.f, align 8, !tbaa !105
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.03574
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !97
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %4
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !38  ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %bb.h, label %bb.q

_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread60: ; preds = %bb.f
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !105
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.03574
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !97
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %4
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !38  ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %.thread61, label %bb.q

bb.h:                                             ; preds = %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit
  %i.cj = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.cj, align 8, !tbaa !41
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr @.str.30, ptr %i.ck, align 8, !tbaa !131
  tail call void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

.thread61:                                        ; preds = %bb.g, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread60
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !107 ; 3 uses
  %.not.i41 = icmp eq ptr %i.cl, null             ; 2 uses
  br i1 %.not.i41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread61
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.03574
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !56
  br label %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit

bb.j:                                             ; preds = %.thread61
  %i.co = trunc i64 %.03574 to i32
  br label %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit

_ZNK5Darts7Details6KeysetIiE6valuesEm.exit:       ; preds = %bb.i, %bb.j
  %.0.i42 = phi i32 [ %i.cn, %bb.i ], [ %i.co, %bb.j ]
  %i.cp = icmp slt i32 %.0.i42, 0
  br i1 %i.cp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit
  %i.cq = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.cq, align 8, !tbaa !41
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr @.str.31, ptr %i.cr, align 8, !tbaa !131
  tail call void @__cxa_throw(ptr nonnull %i.cq, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

bb.l:                                             ; preds = %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit
  %i.cs = icmp eq i32 %.03673, -1
  br i1 %i.cs, label %bb.m, label %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.03574
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !56
  br label %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45

bb.o:                                             ; preds = %bb.m
  %i.cv = trunc i64 %.03574 to i32
  br label %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45

_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45:     ; preds = %bb.o, %bb.n, %bb.l
  %.1 = phi i32 [ %.03673, %bb.l ], [ %i.cu, %bb.n ], [ %i.cv, %bb.o ] ; 2 uses
  %i.cw = load ptr, ptr %0, align 8, !tbaa !115   ; 2 uses
  %.not = icmp eq ptr %i.cw, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45
  %i.cx = add nuw i64 %.03574, 1
  %i.cy = load i64, ptr %1, align 8, !tbaa !104
  %i.cz = add i64 %i.cy, 1
  %i.da = tail call noundef i32 %i.cw(i64 noundef %i.cx, i64 noundef %i.cz) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread60, %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45, %bb.p, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit
  %.0.i55 = phi i8 [ 0, %bb.p ], [ 0, %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45 ], [ %i.cb, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit ], [ %i.ch, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread60 ] ; 4 uses
  %.2 = phi i32 [ %.1, %bb.p ], [ %.1, %_ZNK5Darts7Details6KeysetIiE6valuesEm.exit45 ], [ %.03673, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit ], [ %.03673, %_ZNK5Darts7Details6KeysetIiE4keysEmm.exit.thread60 ] ; 2 uses
  %i.db = load i64, ptr %i.b, align 8, !tbaa !125 ; 5 uses
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dd = load i64, ptr %i.c, align 8, !tbaa !128
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.s, label %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN5Darts7Details8AutoPoolIhE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !125
  br label %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit

_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit:    ; preds = %bb.r, %bb.s
  %i.df = phi i64 [ %.pre.i, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.b, align 8, !tbaa !125
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 %.0.i55, ptr %i.di, align 1, !tbaa !38
  br label %bb.y

bb.t:                                             ; preds = %bb.q
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.db
  %i.dl = getelementptr i8, ptr %i.dk, i64 -1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !38  ; 2 uses
  %.not38 = icmp eq i8 %.0.i55, %i.dm
  br i1 %.not38, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = icmp ult i8 %.0.i55, %i.dm
  br i1 %i.dn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.do = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.do, align 8, !tbaa !41
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr @.str.32, ptr %i.dp, align 8, !tbaa !131
  tail call void @__cxa_throw(ptr nonnull %i.do, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dq = load i64, ptr %i.c, align 8, !tbaa !128
  %i.dr = icmp eq i64 %i.db, %i.dq
  br i1 %i.dr, label %bb.x, label %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit47

bb.x:                                             ; preds = %bb.w
  %i.ds = add i64 %i.db, 1
  tail call void @_ZN5Darts7Details8AutoPoolIhE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ds)
  %.pre.i46 = load i64, ptr %i.b, align 8, !tbaa !125
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !117
  br label %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit47

_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit47:  ; preds = %bb.w, %bb.x
  %i.dt = phi ptr [ %.pre, %bb.x ], [ %i.dj, %bb.w ]
  %i.du = phi i64 [ %.pre.i46, %bb.x ], [ %i.db, %bb.w ] ; 2 uses
  %i.dv = add i64 %i.du, 1
  store i64 %i.dv, ptr %i.b, align 8, !tbaa !125
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.du
  store i8 %.0.i55, ptr %i.dw, align 1, !tbaa !38
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit47, %_ZN5Darts7Details8AutoPoolIhE6appendERKh.exit
  %i.dx = add i64 %.03574, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.dx, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !262

._crit_edge77:                                    ; preds = %bb.ag, %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge77_crit_edge
  %i.dy = phi ptr [ %.pre91, %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit.._crit_edge77_crit_edge ], [ %i.ey, %bb.ag ]
  %i.dz = and i32 %.3.i, 4095
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %i.dy, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 9
  store i8 1, ptr %i.ec, align 1, !tbaa !143
  ret i32 %.3.i

bb.z:                                             ; preds = %.lr.ph76, %bb.ag
  %i.ed = phi i32 [ %i.j, %.lr.ph76 ], [ %i.ex, %bb.ag ]
  %i.ee = phi ptr [ %.pre86, %.lr.ph76 ], [ %i.fj, %bb.ag ]
  %.075 = phi i64 [ 0, %.lr.ph76 ], [ %i.fw, %bb.ag ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.075
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !38
  %i.eh = zext i8 %i.eg to i32
  %i.ei = xor i32 %.3.i, %i.eh                    ; 6 uses
  %i.ej = zext i32 %i.ei to i64                   ; 3 uses
  %i.ek = load i64, ptr %i.l, align 8, !tbaa !116
end_hunk_2
