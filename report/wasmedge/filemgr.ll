Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/filemgr?download=true
inline.NumInlined: 595
inline.NumDeleted: 341
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8WasmEdge7FileMgr7readU32Ev:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN8WasmEdge7FileMgr7readU64Ev(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected.59") align 8 captures(none) initializes((0, 1), (8, 12)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !24     ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.a, ptr %i.b, align 8, !tbaa !35
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32, !noalias !73 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 10 uses
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.y
  store i32 278, ptr %1, align 8, !tbaa !24
  store i8 0, ptr %0, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 278, ptr %i.k, align 8, !tbaa !35
  br label %bb.aa

bb.e:                                             ; preds = %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.c
  store i64 %i.g, ptr %i.c, align 8, !tbaa !40, !noalias !73
  store i64 %i.g, ptr %i.e, align 8, !tbaa !41, !noalias !73
  store i32 258, ptr %1, align 8, !tbaa !24, !noalias !73
  store i8 0, ptr %0, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 258, ptr %i.l, align 8, !tbaa !35
  br label %bb.aa

bb.f:                                             ; preds = %.critedge.9
  store i32 277, ptr %1, align 8, !tbaa !24
  store i8 0, ptr %0, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 277, ptr %i.m, align 8, !tbaa !35
  br label %bb.aa

bb.g:                                             ; preds = %bb.c
  %i.n = add i64 %i.d, 1                          ; 3 uses
  store i64 %i.n, ptr %i.c, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  %i.p = load i8, ptr %i.o, align 1, !tbaa !35    ; 2 uses
  %i.q = and i8 %i.p, 127
  %i.r = zext nneg i8 %i.q to i64                 ; 2 uses
  %.not10 = icmp sgt i8 %i.p, -1
  br i1 %.not10, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp eq i64 %i.g, %i.n
  br i1 %i.s, label %bb.e, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = add i64 %i.d, 2                          ; 3 uses
  store i64 %i.t, ptr %i.c, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  %i.v = load i8, ptr %i.u, align 1, !tbaa !35    ; 2 uses
  %i.w = and i8 %i.v, 127
  %i.x = zext nneg i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 7
  %i.z = or disjoint i64 %i.y, %i.r               ; 2 uses
  %.not10.1 = icmp sgt i8 %i.v, -1
  br i1 %.not10.1, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp eq i64 %i.g, %i.t
  br i1 %i.aa, label %bb.e, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = add i64 %i.d, 3                         ; 3 uses
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.t
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35  ; 2 uses
  %i.ae = and i8 %i.ad, 127
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 14
  %i.ah = or disjoint i64 %i.ag, %i.z             ; 2 uses
  %.not10.2 = icmp sgt i8 %i.ad, -1
  br i1 %.not10.2, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = icmp eq i64 %i.g, %i.ab
  br i1 %i.ai, label %bb.e, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = add i64 %i.d, 4                         ; 3 uses
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ab
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35  ; 2 uses
  %i.am = and i8 %i.al, 127
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 21
  %i.ap = or disjoint i64 %i.ao, %i.ah            ; 2 uses
  %.not10.3 = icmp sgt i8 %i.al, -1
  br i1 %.not10.3, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp eq i64 %i.g, %i.aj
  br i1 %i.aq, label %bb.e, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = add i64 %i.d, 5                         ; 3 uses
  store i64 %i.ar, ptr %i.c, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aj
  %i.at = load i8, ptr %i.as, align 1, !tbaa !35  ; 2 uses
  %i.au = and i8 %i.at, 127
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 28
  %i.ax = or disjoint i64 %i.aw, %i.ap            ; 2 uses
  %.not10.4 = icmp sgt i8 %i.at, -1
  br i1 %.not10.4, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = icmp eq i64 %i.g, %i.ar
  br i1 %i.ay, label %bb.e, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = add i64 %i.d, 6                         ; 3 uses
  store i64 %i.az, ptr %i.c, align 8, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ar
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !35  ; 2 uses
  %i.bc = and i8 %i.bb, 127
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 35
  %i.bf = or i64 %i.be, %i.ax                     ; 2 uses
  %.not10.5 = icmp sgt i8 %i.bb, -1
  br i1 %.not10.5, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = icmp eq i64 %i.g, %i.az
  br i1 %i.bg, label %bb.e, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = add i64 %i.d, 7                         ; 3 uses
  store i64 %i.bh, ptr %i.c, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.az
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !35  ; 2 uses
  %i.bk = and i8 %i.bj, 127
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 42
  %i.bn = or i64 %i.bm, %i.bf                     ; 2 uses
  %.not10.6 = icmp sgt i8 %i.bj, -1
  br i1 %.not10.6, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = icmp eq i64 %i.g, %i.bh
  br i1 %i.bo, label %bb.e, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = add i64 %i.d, 8                         ; 3 uses
  store i64 %i.bp, ptr %i.c, align 8, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !35  ; 2 uses
  %i.bs = and i8 %i.br, 127
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 49
  %i.bv = or i64 %i.bu, %i.bn                     ; 2 uses
  %.not10.7 = icmp sgt i8 %i.br, -1
  br i1 %.not10.7, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = icmp eq i64 %i.g, %i.bp
  br i1 %i.bw, label %bb.e, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = add i64 %i.d, 9                         ; 3 uses
  store i64 %i.bx, ptr %i.c, align 8, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bp
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !35  ; 2 uses
  %i.ca = and i8 %i.bz, 127
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 56
  %i.cd = or i64 %i.cc, %i.bv                     ; 2 uses
  %.not10.8 = icmp sgt i8 %i.bz, -1
  br i1 %.not10.8, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = icmp eq i64 %i.g, %i.bx
  br i1 %i.ce, label %bb.e, label %.critedge.9

.critedge.9:                                      ; preds = %bb.x
  %i.cf = add i64 %i.d, 10
  store i64 %i.cf, ptr %i.c, align 8, !tbaa !40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bx
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !35  ; 3 uses
  %i.ci = and i8 %i.ch, 126
  %.not37 = icmp eq i8 %i.ci, 0
  br i1 %.not37, label %bb.y, label %bb.f

bb.y:                                             ; preds = %.critedge.9
  %i.cj = zext i8 %i.ch to i64
  %i.ck = shl i64 %i.cj, 63
  %i.cl = or i64 %i.ck, %i.cd
  %.not10.9 = icmp sgt i8 %i.ch, -1
  br i1 %.not10.9, label %bb.z, label %bb.d

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g
  %.lcssa = phi i64 [ %i.r, %bb.g ], [ %i.z, %bb.i ], [ %i.ah, %bb.k ], [ %i.ap, %bb.m ], [ %i.ax, %bb.o ], [ %i.bf, %bb.q ], [ %i.bn, %bb.s ], [ %i.bv, %bb.u ], [ %i.cd, %bb.w ], [ %i.cl, %bb.y ]
  store i8 1, ptr %0, align 8, !tbaa !72
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa, ptr %i.cm, align 8, !tbaa !35
  br label %bb.aa

bb.aa:                                            ; preds = %bb.d, %bb.f, %bb.z, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge7FileMgr7readS33Ev(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected.72") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN8WasmEdge7FileMgr6readSNIlLm33EEEN5cxx208expectedIT_NS_7ErrCodeEEEv(ptr dead_on_unwind writable sret(%"class.cxx20::expected.72") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge7FileMgr6readSNIlLm33EEEN5cxx208expectedIT_NS_7ErrCodeEEEv(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected.72") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !24     ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.a, ptr %i.b, align 8, !tbaa !35
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32, !noalias !76 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.c
  store i64 %i.g, ptr %i.c, align 8, !tbaa !40, !noalias !76
  store i64 %i.g, ptr %i.e, align 8, !tbaa !41, !noalias !76
  store i32 258, ptr %1, align 8, !tbaa !24, !noalias !76
  store i8 0, ptr %0, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 258, ptr %i.k, align 8, !tbaa !35
  br label %.thread

.critedge:                                        ; preds = %bb.c
  %i.l = add i64 %i.d, 1                          ; 3 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  %i.n = load i8, ptr %i.m, align 1, !tbaa !35    ; 3 uses
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %.not26 = icmp sgt i8 %i.n, -1
  br i1 %.not26, label %bb.f, label %bb.l

bb.e:                                             ; preds = %.critedge.4
  store i32 278, ptr %1, align 8, !tbaa !24
  store i8 0, ptr %0, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 278, ptr %i.p, align 8, !tbaa !35
  br label %.thread

bb.f:                                             ; preds = %.critedge.4, %.critedge.3, %.critedge.2, %.critedge.1, %.critedge
  %.lcssa82 = phi i8 [ %i.n, %.critedge ], [ %i.z, %.critedge.1 ], [ %i.ah, %.critedge.2 ], [ %i.ap, %.critedge.3 ], [ %i.ax, %.critedge.4 ] ; 2 uses
  %.lcssa = phi i32 [ %i.o, %.critedge ], [ %i.aa, %.critedge.1 ], [ %i.ai, %.critedge.2 ], [ %i.aq, %.critedge.3 ], [ %i.ay, %.critedge.4 ] ; 2 uses
  %.02170.lcssa77 = phi i64 [ 0, %.critedge ], [ 7, %.critedge.1 ], [ 14, %.critedge.2 ], [ 21, %.critedge.3 ], [ 28, %.critedge.4 ]
  %.02469.lcssa74 = phi i32 [ 6, %.critedge ], [ 6, %.critedge.1 ], [ 6, %.critedge.2 ], [ 6, %.critedge.3 ], [ 4, %.critedge.4 ] ; 2 uses
  %.03968.lcssa71.shrunk = phi i32 [ 0, %.critedge ], [ %i.v, %.critedge.1 ], [ %i.ad, %.critedge.2 ], [ %i.al, %.critedge.3 ], [ %i.au, %.critedge.4 ]
  %.03968.lcssa71 = zext nneg i32 %.03968.lcssa71.shrunk to i64
  %i.q = zext nneg i8 %.lcssa82 to i64            ; 2 uses
  %.not27 = icmp samesign ult i8 %.lcssa82, 64
  br i1 %.not27, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.neg = shl nsw i32 -1, %.02469.lcssa74
  %i.r = add nsw i32 %.neg, 128
  %.not29 = icmp samesign ugt i32 %i.r, %.lcssa
  br i1 %.not29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = or disjoint i64 %i.q, -128
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  store i32 277, ptr %1, align 8, !tbaa !24
  store i8 0, ptr %0, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 277, ptr %i.t, align 8, !tbaa !35
  br label %.thread

bb.j:                                             ; preds = %bb.f
  %.highbits = lshr i32 %.lcssa, %.02469.lcssa74
  %.not28 = icmp eq i32 %.highbits, 0
  br i1 %.not28, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 277, ptr %1, align 8, !tbaa !24
  store i8 0, ptr %0, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 277, ptr %i.u, align 8, !tbaa !35
  br label %.thread

bb.l:                                             ; preds = %.critedge
  %i.v = and i32 %i.o, 127                        ; 2 uses
  %i.w = icmp eq i64 %i.g, %i.l
  br i1 %i.w, label %bb.d, label %.critedge.1

.critedge.1:                                      ; preds = %bb.l
  %i.x = add i64 %i.d, 2                          ; 3 uses
  store i64 %i.x, ptr %i.c, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35    ; 3 uses
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %.not26.1 = icmp sgt i8 %i.z, -1
  br i1 %.not26.1, label %bb.f, label %bb.m

bb.m:                                             ; preds = %.critedge.1
  %i.ab = shl nuw nsw i32 %i.aa, 7
  %i.ac = and i32 %i.ab, 16256
  %i.ad = or disjoint i32 %i.ac, %i.v             ; 2 uses
  %i.ae = icmp eq i64 %i.g, %i.x
  br i1 %i.ae, label %bb.d, label %.critedge.2

.critedge.2:                                      ; preds = %bb.m
  %i.af = add i64 %i.d, 3                         ; 3 uses
  store i64 %i.af, ptr %i.c, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.x
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35  ; 3 uses
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %.not26.2 = icmp sgt i8 %i.ah, -1
  br i1 %.not26.2, label %bb.f, label %bb.n

bb.n:                                             ; preds = %.critedge.2
  %i.aj = shl nuw nsw i32 %i.ai, 14
  %i.ak = and i32 %i.aj, 2080768
  %i.al = or disjoint i32 %i.ak, %i.ad            ; 2 uses
  %i.am = icmp eq i64 %i.g, %i.af
  br i1 %i.am, label %bb.d, label %.critedge.3

.critedge.3:                                      ; preds = %bb.n
  %i.an = add i64 %i.d, 4                         ; 3 uses
  store i64 %i.an, ptr %i.c, align 8, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.af
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35  ; 3 uses
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  %.not26.3 = icmp sgt i8 %i.ap, -1
  br i1 %.not26.3, label %bb.f, label %bb.o

bb.o:                                             ; preds = %.critedge.3
  %i.ar = icmp eq i64 %i.g, %i.an
  br i1 %i.ar, label %bb.d, label %.critedge.4

.critedge.4:                                      ; preds = %bb.o
  %i.as = shl nuw nsw i32 %i.aq, 21
  %i.at = and i32 %i.as, 266338304
  %i.au = or disjoint i32 %i.at, %i.al
  %i.av = add i64 %i.d, 5
  store i64 %i.av, ptr %i.c, align 8, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !35  ; 3 uses
  %i.ay = zext nneg i8 %i.ax to i32
  %.not26.4 = icmp sgt i8 %i.ax, -1
  br i1 %.not26.4, label %bb.f, label %bb.e

bb.p:                                             ; preds = %bb.h, %bb.j
  %.0 = phi i64 [ %i.s, %bb.h ], [ %i.q, %bb.j ]
  %i.az = shl nsw i64 %.0, %.02170.lcssa77
  %i.ba = or i64 %i.az, %.03968.lcssa71
  store i8 1, ptr %0, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !35
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.i, %bb.e, %bb.p, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge7FileMgr7readS32Ev(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected.85") align 4 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN8WasmEdge7FileMgr6readSNIiLm32EEEN5cxx208expectedIT_NS_7ErrCodeEEEv(ptr dead_on_unwind writable sret(%"class.cxx20::expected.85") align 4 %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge7FileMgr6readSNIiLm32EEEN5cxx208expectedIT_NS_7ErrCodeEEEv(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected.85") align 4 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !24     ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.thread
end_hunk_0
