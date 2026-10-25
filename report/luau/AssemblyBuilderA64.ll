Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/AssemblyBuilderA64?download=true
inline.NumInlined: 630
inline.NumDeleted: 161
begin_hunk_0_@_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fmovENS1_11RegisterA64ES3_:bb.a
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.63, i8 %1, i8 %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = lshr i8 %1, 3
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = lshr i8 %2, 3
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 5
  %i.ad = or disjoint i32 %i.ac, %i.z
  %i.ae = or disjoint i32 %i.ad, -1637416960
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !46 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !46
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47
  %i.ak = icmp eq ptr %i.aj, %i.ah
  br i1 %i.ak, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit

bb.i:                                             ; preds = %bb.e
  %i.al = icmp eq i8 %i.a, 2
  %or.cond34 = select i1 %i.al, i1 %i.d, i1 false
  br i1 %or.cond34, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = load i8, ptr %i.am, align 8, !tbaa !38, !range !20, !noundef !21
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.63, i8 %1, i8 %2)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = lshr i8 %1, 3
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = lshr i8 %2, 3
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 5
  %i.au = or disjoint i32 %i.at, %i.aq
  %i.av = or disjoint i32 %i.au, -1637482496
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !46 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !46
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !47
  %i.bb = icmp eq ptr %i.ba, %i.ay
  br i1 %i.bb, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit

bb.m:                                             ; preds = %bb.i
  %i.bc = icmp eq i8 %i.a, 3                      ; 2 uses
  %i.bd = icmp eq i8 %i.c, 3
  %or.cond36 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond36, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !38, !range !20, !noundef !21
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.63, i8 %1, i8 %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bh = lshr i8 %1, 3
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = lshr i8 %2, 3
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 5
  %i.bm = or disjoint i32 %i.bl, %i.bi
  %i.bn = or disjoint i32 %i.bm, 505430016
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !46 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !46
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !53
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !47
  %i.bt = icmp eq ptr %i.bs, %i.bq
  br i1 %i.bt, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit

bb.q:                                             ; preds = %bb.m
  %i.bu = icmp eq i8 %i.c, 1
  %or.cond38 = select i1 %i.bc, i1 %i.bu, i1 false
  br i1 %or.cond38, label %bb.r, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !38, !range !20, !noundef !21
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.63, i8 %1, i8 %2)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.by = lshr i8 %1, 3
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = lshr i8 %2, 3
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 5
  %i.cd = or disjoint i32 %i.cc, %i.bz
  %i.ce = or disjoint i32 %i.cd, 505872384
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !46 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !46
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !47
  %i.ck = icmp eq ptr %i.cj, %i.ch
  br i1 %i.ck, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split: ; preds = %bb.t, %bb.p, %bb.l, %bb.h, %bb.d
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit: ; preds = %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split, %bb.t, %bb.p, %bb.l, %bb.h, %bb.d, %bb.q
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fmovENS1_11RegisterA64Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, double noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = bitcast double %2 to i64                 ; 4 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit.thread29, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 281474976710655
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit, label %_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit.thread

_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit:     ; preds = %bb.b
  %i.d = lshr i64 %i.a, 56
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 128                        ; 2 uses
  %i.g = lshr exact i64 %i.a, 48
  %i.h = trunc nuw nsw i64 %i.g to i32            ; 4 uses
  %i.i = and i32 %i.h, 127
  %i.j = or disjoint i32 %i.f, %i.i
  %i.k = shl nuw nsw i32 %i.f, 8
  %i.l = and i32 %i.h, 64
  %i.m = and i32 %i.h, 63
  %reass.sub = sub nsw i32 %i.m, %i.l
  %i.n = add nsw i32 %reass.sub, 16384
  %i.o = add nuw nsw i32 %i.n, %i.k
  %i.p = icmp eq i32 %i.o, %i.h
  %i.q = select i1 %i.p, i32 %i.j, i32 -1         ; 2 uses
  %i.r = and i8 %1, 7
  %i.s = icmp eq i8 %i.r, 4
  br i1 %i.s, label %.thread, label %.thread26

_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit.thread29: ; preds = %bb.a
  %i.t = and i8 %1, 7
  %i.u = icmp eq i8 %i.t, 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load i8, ptr %i.v, align 8, !tbaa !38, !range !20, !noundef !21
  %i.x = trunc nuw i8 %i.w to i1                  ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.h

_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit.thread: ; preds = %bb.b
  %i.y = and i8 %1, 7
  %i.z = icmp eq i8 %i.y, 4
  br i1 %i.z, label %.thread, label %.thread26

bb.c:                                             ; preds = %_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit.thread29
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.64, i8 %1, double noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = lshr i8 %1, 3
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.ab, 788587520
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !46
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.ai = icmp eq ptr %i.ah, %i.af
  br i1 %i.ai, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit

.thread:                                          ; preds = %_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit, %_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit.thread
  %.0.i2325 = phi i32 [ -1, %_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit.thread ], [ %i.q, %_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit ]
  %i.aj = shl nsw i32 %.0.i2325, 13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !38, !range !20, !noundef !21
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.63, i8 %1, double noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %i.an = lshr i8 %1, 3
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.aj, %i.ao
  %i.aq = or i32 %i.ap, 509612032
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !46
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47
  %i.aw = icmp eq ptr %i.av, %i.at
  br i1 %i.aw, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit.thread29
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.65, i8 %1, double noundef %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ax = lshr i8 %1, 3
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.ay, 1325401088
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !46 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !46
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !47
  %i.bf = icmp eq ptr %i.be, %i.bc
  br i1 %i.bf, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit

.thread26:                                        ; preds = %_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit, %_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit.thread
  %.0.i2228 = phi i32 [ -1, %_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit.thread ], [ %i.q, %_ZN4Luau7CodeGen3A64L14getFmovImmFp64Ed.exit ] ; 2 uses
  %i.bg = shl nsw i32 %.0.i2228, 6
  %i.bh = and i32 %i.bg, 92796928
  %i.bi = and i32 %.0.i2228, 31
  %i.bj = or disjoint i32 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !38, !range !20, !noundef !21
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread26
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.66, i8 %1, double noundef %2)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread26
  %i.bn = lshr i8 %1, 3
  %i.bo = zext nneg i8 %i.bn to i32
  %i.bp = shl nuw i32 %i.bj, 5
  %i.bq = or disjoint i32 %i.bp, %i.bo
  %i.br = or disjoint i32 %i.bq, 1325462528
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !46 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !46
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !53
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !47
  %i.bx = icmp eq ptr %i.bw, %i.bu
  br i1 %i.bx, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit.sink.split: ; preds = %bb.l, %bb.j, %bb.g, %bb.e
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit: ; preds = %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit.sink.split, %bb.l, %bb.j, %bb.g, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i8 %2, double noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i8 %2, double noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = lshr i8 %2, 3
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl i32 %4, 5
  %i.g = or disjoint i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !46
  store i32 %i.g, ptr %i.i, align 4, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fmovENS1_11RegisterA64Ef(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, float noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = bitcast float %2 to i32                  ; 5 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit.thread29, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 524287
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit, label %_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit.thread

_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit:     ; preds = %bb.b
  %i.d = lshr i32 %i.a, 24
  %i.e = and i32 %i.d, 128                        ; 2 uses
  %i.f = lshr exact i32 %i.a, 19                  ; 3 uses
  %i.g = and i32 %i.f, 127
  %i.h = or disjoint i32 %i.e, %i.g
  %i.i = shl nuw nsw i32 %i.e, 5
  %i.j = and i32 %i.a, 33554432
  %.not13.i = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not13.i, i32 2048, i32 1984
  %i.l = or disjoint i32 %i.i, %i.k
  %i.m = and i32 %i.f, 63
  %i.n = or disjoint i32 %i.l, %i.m
  %i.o = icmp eq i32 %i.n, %i.f
  %i.p = select i1 %i.o, i32 %i.h, i32 -1         ; 2 uses
  %i.q = and i8 %1, 7
  %i.r = icmp eq i8 %i.q, 3
  br i1 %i.r, label %.thread, label %.thread26

_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit.thread29: ; preds = %bb.a
  %i.s = and i8 %1, 7
  %i.t = icmp eq i8 %i.s, 3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load i8, ptr %i.u, align 8, !tbaa !38, !range !20, !noundef !21
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  br i1 %i.t, label %bb.c, label %bb.h

_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit.thread: ; preds = %bb.b
  %i.x = and i8 %1, 7
  %i.y = icmp eq i8 %i.x, 3
  br i1 %i.y, label %.thread, label %.thread26

bb.c:                                             ; preds = %_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit.thread29
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = fpext float %2 to double
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.64, i8 %1, double noundef %i.z)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = lshr i8 %1, 3
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.ab, 788587520
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !46
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.ai = icmp eq ptr %i.ah, %i.af
  br i1 %i.ai, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit

.thread:                                          ; preds = %_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit, %_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit.thread
  %.0.i2325 = phi i32 [ -1, %_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit.thread ], [ %i.p, %_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit ]
  %i.aj = shl nsw i32 %.0.i2325, 13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !38, !range !20, !noundef !21
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.an = fpext float %2 to double
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.63, i8 %1, double noundef %i.an)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %i.ao = lshr i8 %1, 3
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.aj, %i.ap
  %i.ar = or i32 %i.aq, 505417728
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !46
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !53
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47
  %i.ax = icmp eq ptr %i.aw, %i.au
  br i1 %i.ax, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit.thread29
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = fpext float %2 to double
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.65, i8 %1, double noundef %i.ay)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = lshr i8 %1, 3
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ba, 1325401088
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !46 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !46
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.bh = icmp eq ptr %i.bg, %i.be
  br i1 %i.bh, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit

.thread26:                                        ; preds = %_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit, %_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit.thread
  %.0.i2228 = phi i32 [ -1, %_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit.thread ], [ %i.p, %_ZN4Luau7CodeGen3A64L14getFmovImmFp32Ef.exit ] ; 2 uses
  %i.bi = shl nsw i32 %.0.i2228, 6
  %i.bj = and i32 %i.bi, 92796928
  %i.bk = and i32 %.0.i2228, 31
  %i.bl = or disjoint i32 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !38, !range !20, !noundef !21
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread26
  %i.bp = fpext float %2 to double
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.66, i8 %1, double noundef %i.bp)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread26
  %i.bq = lshr i8 %1, 3
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = shl nuw i32 %i.bl, 5
  %i.bt = or disjoint i32 %i.bs, %i.br
  %i.bu = or disjoint i32 %i.bt, 1325462528
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !46 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !46
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !53
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !47
  %i.ca = icmp eq ptr %i.bz, %i.bx
  br i1 %i.ca, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit.sink.split: ; preds = %bb.l, %bb.j, %bb.g, %bb.e
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit: ; preds = %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFMOVEPKcNS1_11RegisterA64Edj.exit.sink.split, %bb.l, %bb.j, %bb.g, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fabsENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i8 %1, 7                             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i8, ptr %i.b, align 8, !tbaa !38, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1                  ; 3 uses
  switch i8 %i.a, label %bb.h [
    i8 5, label %bb.b
    i8 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.67, i8 %1, i8 %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = and i8 %2, 7
  %i.f = icmp eq i8 %i.e, 2
  %i.g = select i1 %i.f, i32 -2147483648, i32 0
  %i.h = lshr i8 %1, 3
  %i.i = zext nneg i8 %i.h to i32
  %i.j = lshr i8 %2, 3
  %i.k = zext nneg i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 5
  %i.m = or disjoint i32 %i.l, %i.i
  %i.n = or disjoint i32 %i.m, %i.g
  %i.o = or disjoint i32 %i.n, 1319172096
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !46
  store i32 %i.o, ptr %i.q, align 4, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.u = icmp eq ptr %i.t, %i.r
  br i1 %i.u, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.67, i8 %1, i8 %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = and i8 %2, 7
  %i.w = icmp eq i8 %i.v, 2
  %i.x = select i1 %i.w, i32 -2147483648, i32 0
  %i.y = lshr i8 %1, 3
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = lshr i8 %2, 3
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 5
  %i.ad = or disjoint i32 %i.ac, %i.z
  %i.ae = or disjoint i32 %i.ad, %i.x
  %i.af = or disjoint i32 %i.ae, 509657088
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !46 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !46
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.al = icmp eq ptr %i.ak, %i.ai
  br i1 %i.al, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit

bb.h:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.67, i8 %1, i8 %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = icmp eq i8 %i.a, 2
  %i.an = and i8 %2, 7
  %i.ao = icmp eq i8 %i.an, 2
  %i.ap = select i1 %i.am, i1 true, i1 %i.ao
  %i.aq = select i1 %i.ap, i32 -2147483648, i32 0
  %i.ar = lshr i8 %1, 3
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = lshr i8 %2, 3
  %i.au = zext nneg i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 5
  %i.aw = or disjoint i32 %i.av, %i.as
  %i.ax = or disjoint i32 %i.aw, %i.aq
  %i.ay = or disjoint i32 %i.ax, 505462784
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !46 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !46
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !53
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.be = icmp eq ptr %i.bd, %i.bb
  br i1 %i.be, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split: ; preds = %bb.j, %bb.g, %bb.d
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit: ; preds = %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split, %bb.j, %bb.g, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA645faddpENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i8 %1, 7                             ; 2 uses
end_hunk_0
