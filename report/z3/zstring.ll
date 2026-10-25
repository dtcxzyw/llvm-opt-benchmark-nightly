Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/zstring?download=true
inline.NumInlined: 258
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7zstring14is_escape_charERPKcRj:bb.a
  br i1 %i.c, label %bb.b, label %_ZL12is_hex_digitcRj.exit41

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = icmp eq i8 %i.e, 117
  br i1 %i.f, label %bb.c, label %_ZL12is_hex_digitcRj.exit41

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %i.i = icmp eq i8 %i.h, 123
  br i1 %i.i, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %.not = icmp eq i8 %i.k, 125
  br i1 %.not, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !14
  %i.l = load i8, ptr %i.j, align 1, !tbaa !13    ; 5 uses
  %i.m = zext nneg i8 %i.l to i32
  %i.n = add i8 %i.l, -48
  %or.cond.i = icmp ult i8 %i.n, 10
  br i1 %or.cond.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add i8 %i.l, -65
  %or.cond5.i = icmp ult i8 %i.o, 6
  br i1 %or.cond5.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add i8 %i.l, -97
  %or.cond8.i = icmp ult i8 %i.p, 6
  br i1 %or.cond8.i, label %bb.h, label %_ZL12is_hex_digitcRj.exit

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.sink21.i = phi i32 [ -55, %bb.f ], [ -48, %bb.e ], [ -87, %bb.g ]
  %i.q = add nsw i32 %.sink21.i, %i.m             ; 3 uses
  store i32 %i.q, ptr %2, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13    ; 5 uses
  %i.t = zext nneg i8 %i.s to i32
  %i.u = add i8 %i.s, -48
  %or.cond.i.1 = icmp ult i8 %i.u, 10
  br i1 %or.cond.i.1, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = add i8 %i.s, -65
  %or.cond5.i.1 = icmp ult i8 %i.v, 6
  br i1 %or.cond5.i.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = add i8 %i.s, -97
  %or.cond8.i.1 = icmp ult i8 %i.w, 6
  br i1 %or.cond8.i.1, label %bb.k, label %_ZL12is_hex_digitcRj.exit

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sink21.i.1 = phi i32 [ -55, %bb.i ], [ -48, %bb.h ], [ -87, %bb.j ]
  %i.x = add nsw i32 %.sink21.i.1, %i.t
  %i.y = shl nsw i32 %i.q, 4
  %i.z = add nsw i32 %i.x, %i.y                   ; 3 uses
  store i32 %i.z, ptr %2, align 4, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13  ; 5 uses
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = add i8 %i.ab, -48
  %or.cond.i.2 = icmp ult i8 %i.ad, 10
  br i1 %or.cond.i.2, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = add i8 %i.ab, -65
  %or.cond5.i.2 = icmp ult i8 %i.ae, 6
  br i1 %or.cond5.i.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = add i8 %i.ab, -97
  %or.cond8.i.2 = icmp ult i8 %i.af, 6
  br i1 %or.cond8.i.2, label %bb.n, label %_ZL12is_hex_digitcRj.exit

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sink21.i.2 = phi i32 [ -55, %bb.l ], [ -48, %bb.k ], [ -87, %bb.m ]
  %i.ag = add nsw i32 %.sink21.i.2, %i.ac
  %i.ah = shl nsw i32 %i.z, 4
  %i.ai = add nsw i32 %i.ag, %i.ah                ; 3 uses
  store i32 %i.ai, ptr %2, align 4, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13  ; 5 uses
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = add i8 %i.ak, -48
  %or.cond.i.3 = icmp ult i8 %i.am, 10
  br i1 %or.cond.i.3, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = add i8 %i.ak, -65
  %or.cond5.i.3 = icmp ult i8 %i.an, 6
  br i1 %or.cond5.i.3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = add i8 %i.ak, -97
  %or.cond8.i.3 = icmp ult i8 %i.ao, 6
  br i1 %or.cond8.i.3, label %bb.q, label %_ZL12is_hex_digitcRj.exit

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.sink21.i.3 = phi i32 [ -55, %bb.o ], [ -48, %bb.n ], [ -87, %bb.p ]
  %i.ap = add nsw i32 %.sink21.i.3, %i.al
  %i.aq = shl nsw i32 %i.ai, 4
  %i.ar = add nsw i32 %i.ap, %i.aq                ; 3 uses
  store i32 %i.ar, ptr %2, align 4, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.at = load i8, ptr %i.as, align 1, !tbaa !13  ; 5 uses
  %i.au = zext nneg i8 %i.at to i32
  %i.av = add i8 %i.at, -48
  %or.cond.i.4 = icmp ult i8 %i.av, 10
  br i1 %or.cond.i.4, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = add i8 %i.at, -65
  %or.cond5.i.4 = icmp ult i8 %i.aw, 6
  br i1 %or.cond5.i.4, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = add i8 %i.at, -97
  %or.cond8.i.4 = icmp ult i8 %i.ax, 6
  br i1 %or.cond8.i.4, label %bb.t, label %_ZL12is_hex_digitcRj.exit

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sink21.i.4 = phi i32 [ -55, %bb.r ], [ -48, %bb.q ], [ -87, %bb.s ]
  %i.ay = add nsw i32 %.sink21.i.4, %i.au
  %i.az = shl nsw i32 %i.ar, 4
  %i.ba = add nsw i32 %i.ay, %i.az                ; 3 uses
  store i32 %i.ba, ptr %2, align 4, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13  ; 5 uses
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = add i8 %i.bc, -48
  %or.cond.i.5 = icmp ult i8 %i.be, 10
  br i1 %or.cond.i.5, label %_ZL12is_hex_digitcRj.exit41.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = add i8 %i.bc, -65
  %or.cond5.i.5 = icmp ult i8 %i.bf, 6
  br i1 %or.cond5.i.5, label %_ZL12is_hex_digitcRj.exit41.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = add i8 %i.bc, -97
  %or.cond8.i.5 = icmp ult i8 %i.bg, 6
  br i1 %or.cond8.i.5, label %_ZL12is_hex_digitcRj.exit41.loopexit, label %_ZL12is_hex_digitcRj.exit

_ZL12is_hex_digitcRj.exit41.loopexit:             ; preds = %bb.v, %bb.u, %bb.t
  %.sink21.i.5 = phi i32 [ -55, %bb.u ], [ -48, %bb.t ], [ -87, %bb.v ]
  %i.bh = add nsw i32 %.sink21.i.5, %i.bd
  %i.bi = shl nsw i32 %i.ba, 4
  %i.bj = add nsw i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %2, align 4, !tbaa !14
  br label %_ZL12is_hex_digitcRj.exit41

_ZL12is_hex_digitcRj.exit:                        ; preds = %bb.v, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g
  %i.bk = phi i32 [ 0, %bb.g ], [ %i.q, %bb.j ], [ %i.z, %bb.m ], [ %i.ai, %bb.p ], [ %i.ar, %bb.s ], [ %i.ba, %bb.v ]
  %.lcssa97 = phi i64 [ 0, %bb.g ], [ 1, %bb.j ], [ 2, %bb.m ], [ 3, %bb.p ], [ 4, %bb.s ], [ 5, %bb.v ]
  %.lcssa = phi i8 [ %i.l, %bb.g ], [ %i.s, %bb.j ], [ %i.ab, %bb.m ], [ %i.ak, %bb.p ], [ %i.at, %bb.s ], [ %i.bc, %bb.v ]
  %i.bl = icmp eq i8 %.lcssa, 125
  br i1 %i.bl, label %switch.lookup, label %_ZL12is_hex_digitcRj.exit41

switch.lookup:                                    ; preds = %_ZL12is_hex_digitcRj.exit
  %i.bm = tail call noundef i32 @_ZN7zstring12get_encodingEv()
  %i.bn = zext nneg i32 %i.bm to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK7zstring11well_formedEv, i64 %i.bn
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.bo = icmp ugt i32 %i.bk, %switch.load
  br i1 %i.bo, label %_ZL12is_hex_digitcRj.exit41, label %bb.w

bb.w:                                             ; preds = %switch.lookup
  %i.bp = load ptr, ptr %1, align 8, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.lcssa97
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store ptr %i.br, ptr %1, align 8, !tbaa !12
  br label %_ZL12is_hex_digitcRj.exit41

bb.x:                                             ; preds = %bb.d, %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13  ; 4 uses
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = add i8 %i.bt, -48
  %or.cond.i35 = icmp ult i8 %i.bv, 10
  br i1 %or.cond.i35, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = add i8 %i.bt, -65
  %or.cond5.i36 = icmp ult i8 %i.bw, 6
  br i1 %or.cond5.i36, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = add i8 %i.bt, -97
  %or.cond8.i37 = icmp ult i8 %i.bx, 6
  br i1 %or.cond8.i37, label %bb.aa, label %_ZL12is_hex_digitcRj.exit41

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.z
  %.sink21.i40 = phi i32 [ -55, %bb.y ], [ -48, %bb.x ], [ -87, %bb.z ]
  %i.by = add nsw i32 %.sink21.i40, %i.bu
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13  ; 4 uses
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = add i8 %i.ca, -48
  %or.cond.i42 = icmp ult i8 %i.cc, 10
  br i1 %or.cond.i42, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = add i8 %i.ca, -65
  %or.cond5.i43 = icmp ult i8 %i.cd, 6
  br i1 %or.cond5.i43, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = add i8 %i.ca, -97
  %or.cond8.i44 = icmp ult i8 %i.ce, 6
  br i1 %or.cond8.i44, label %bb.ad, label %_ZL12is_hex_digitcRj.exit41

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %.sink21.i47 = phi i32 [ -55, %bb.ab ], [ -48, %bb.aa ], [ -87, %bb.ac ]
  %i.cf = add nsw i32 %.sink21.i47, %i.cb
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !13  ; 4 uses
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = add i8 %i.ch, -48
  %or.cond.i49 = icmp ult i8 %i.cj, 10
  br i1 %or.cond.i49, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ck = add i8 %i.ch, -65
  %or.cond5.i50 = icmp ult i8 %i.ck, 6
  br i1 %or.cond5.i50, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = add i8 %i.ch, -97
  %or.cond8.i51 = icmp ult i8 %i.cl, 6
  br i1 %or.cond8.i51, label %bb.ag, label %_ZL12is_hex_digitcRj.exit41

bb.ag:                                            ; preds = %bb.ad, %bb.ae, %bb.af
  %.sink21.i54 = phi i32 [ -55, %bb.ae ], [ -48, %bb.ad ], [ -87, %bb.af ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13  ; 4 uses
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = add i8 %i.cn, -48
  %or.cond.i56 = icmp ult i8 %i.cp, 10
  br i1 %or.cond.i56, label %switch.lookup100, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cq = add i8 %i.cn, -65
  %or.cond5.i57 = icmp ult i8 %i.cq, 6
  br i1 %or.cond5.i57, label %switch.lookup100, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cr = add i8 %i.cn, -97
  %or.cond8.i58 = icmp ult i8 %i.cr, 6
  br i1 %or.cond8.i58, label %switch.lookup100, label %_ZL12is_hex_digitcRj.exit41

switch.lookup100:                                 ; preds = %bb.ag, %bb.ah, %bb.ai
  %.sink21.i61 = phi i32 [ -55, %bb.ah ], [ -48, %bb.ag ], [ -87, %bb.ai ]
  %i.cs = shl nsw i32 %i.by, 8
  %i.ct = shl nsw i32 %i.cf, 4
  %i.cu = add nsw i32 %i.ct, %i.cs
  %i.cv = add nsw i32 %i.cu, %i.ci
  %i.cw = add nsw i32 %i.cv, %.sink21.i54
  %i.cx = shl nsw i32 %i.cw, 4
  %i.cy = add nsw i32 %i.cx, %i.co
  %i.cz = add nsw i32 %i.cy, %.sink21.i61         ; 2 uses
  store i32 %i.cz, ptr %2, align 4, !tbaa !14
  %i.da = tail call noundef i32 @_ZN7zstring12get_encodingEv()
  %i.db = zext nneg i32 %i.da to i64
  %switch.gep101 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK7zstring11well_formedEv, i64 %i.db
  %switch.load102 = load i32, ptr %switch.gep101, align 4
  %i.dc = icmp ugt i32 %i.cz, %switch.load102
  br i1 %i.dc, label %_ZL12is_hex_digitcRj.exit41, label %bb.aj

bb.aj:                                            ; preds = %switch.lookup100
  %i.dd = load ptr, ptr %1, align 8, !tbaa !12
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 6
  store ptr %i.de, ptr %1, align 8, !tbaa !12
  br label %_ZL12is_hex_digitcRj.exit41

_ZL12is_hex_digitcRj.exit41:                      ; preds = %bb.b, %_ZL12is_hex_digitcRj.exit41.loopexit, %bb.aj, %switch.lookup100, %bb.a, %bb.z, %bb.ac, %bb.af, %bb.ai, %switch.lookup, %bb.w, %_ZL12is_hex_digitcRj.exit
  %.2 = phi i1 [ false, %_ZL12is_hex_digitcRj.exit ], [ true, %bb.w ], [ false, %switch.lookup ], [ false, %bb.ai ], [ false, %switch.lookup100 ], [ true, %bb.aj ], [ false, %bb.af ], [ false, %bb.ac ], [ false, %bb.z ], [ false, %bb.a ], [ false, %_ZL12is_hex_digitcRj.exit41.loopexit ], [ false, %bb.b ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7zstringC2EPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i32 0, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  store i32 16, ptr %i.e, align 4, !tbaa !19
  %i.f = load i8, ptr %1, align 1, !tbaa !13
  %.not23 = icmp eq i8 %i.f, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.g = invoke noundef zeroext i1 @_ZN7zstring14is_escape_charERPKcRj(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.i = load i32, ptr %i.e, align 4, !tbaa !19   ; 2 uses
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit

bb.d:                                             ; preds = %bb.c
  %i.j = shl i32 %i.i, 1                          ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.l)
          to label %.noexc unwind label %bb.j     ; 9 uses

.noexc:                                           ; preds = %bb.d
  %i.n = load i32, ptr %i.d, align 8, !tbaa !18   ; 4 uses
  %.not.i.i = icmp eq i32 %i.n, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !17 ; 10 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %.pre.i.i29 = ptrtoaddr ptr %.pre.i.i to i64
  %i.o = ptrtoaddr ptr %i.m to i64
  %wide.trip.count.i.i = zext i32 %i.n to i64     ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  %i.p = sub i64 %.pre.i.i29, %i.o
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !tbaa !14
  %wide.load30 = load <4 x i32>, ptr %i.s, align 4, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %wide.load, ptr %i.q, align 4, !tbaa !14
  store <4 x i32> %wide.load30, ptr %i.t, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter47 = and i64 %wide.trip.count.i.i, 3   ; 2 uses
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter49 = phi i64 [ %prol.iter49.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i.prol
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  store i32 %i.x, ptr %i.v, align 4, !tbaa !14
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter49.next = add i64 %prol.iter49, 1     ; 2 uses
  %prol.iter49.cmp.not = icmp eq i64 %prol.iter49.next, %xtraiter47
  br i1 %prol.iter49.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !30

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.y = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %._crit_edge.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc
  %.not.i.i.i = icmp eq ptr %.pre.i.i, %i.c
  %i.aa = icmp eq ptr %.pre.i.i, null
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.aa
  br i1 %or.cond.i.i.i, label %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i)
          to label %.noexc4 unwind label %bb.j

.noexc4:                                          ; preds = %bb.e
  %.pre2.pre.i = load i32, ptr %i.d, align 8, !tbaa !18
  br label %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !14
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !14
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !14
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !14
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !14
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !14
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.2
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !14
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !31

_ZN6bufferIjLb1ELj16EE6expandEv.exit.i:           ; preds = %.noexc4, %._crit_edge.i.i
  %.pre2.i = phi i32 [ %i.n, %._crit_edge.i.i ], [ %.pre2.pre.i, %.noexc4 ]
  store ptr %i.m, ptr %0, align 8, !tbaa !17
  store i32 %i.j, ptr %i.e, align 4, !tbaa !19
  br label %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit

_ZN6bufferIjLb1ELj16EE9push_backERKj.exit:        ; preds = %._crit_edge.i, %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i
  %i.an = phi i32 [ %i.h, %._crit_edge.i ], [ %.pre2.i, %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i ]
  %i.ao = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.m, %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i ]
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !14
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !14
  %i.as = load i32, ptr %i.d, align 8, !tbaa !18
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !18
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  %i.aw = zext i8 %i.av to i32
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !19  ; 2 uses
  %.not.i5 = icmp ult i32 %i.ax, %i.ay
  br i1 %.not.i5, label %._crit_edge.i19, label %bb.g

._crit_edge.i19:                                  ; preds = %bb.f
  %.pre.i20 = load ptr, ptr %0, align 8, !tbaa !17
  br label %bb.i

end_hunk_0
