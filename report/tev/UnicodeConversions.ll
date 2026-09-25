Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/UnicodeConversions?download=true
inline.NumInlined: 74
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZL16UTF16Nat_to_UTF8PKtmPhmPmS2_:bb.a
  %i.cc = add i64 %.473211, -2                    ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.794209, i64 4 ; 2 uses
  %i.ce = sub i64 %.4212, %i.bz                   ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.785210, i64 %i.bz ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.cg = icmp ne i64 %i.cc, 0
  %i.ch = icmp ne i64 %i.ce, 0
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %i.ci, label %.lr.ph213, label %.loopexit

bb.m:                                             ; preds = %.lr.ph213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.thread122, %bb.m
  %.794183 = phi ptr [ %.794209, %bb.m ], [ %.491.lcssa, %.thread122 ], [ %i.cd, %bb.l ]
  %.785178 = phi ptr [ %.785210, %bb.m ], [ %.482.lcssa, %.thread122 ], [ %i.cf, %bb.l ]
  %.473173 = phi i64 [ %.473211, %bb.m ], [ %.170.lcssa, %.thread122 ], [ %i.cc, %bb.l ] ; 3 uses
  %.4168 = phi i64 [ %.4212, %bb.m ], [ %.166.lcssa, %.thread122 ], [ %i.ce, %bb.l ] ; 3 uses
  %i.cj = icmp ne i64 %.473173, 0
  %i.ck = icmp ne i64 %.4168, 0
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %.lr.ph222, label %.thread148

.thread148:                                       ; preds = %.loopexit, %.lr.ph.i.1, %bb.a, %.thread131
  %.877 = phi i64 [ %1, %bb.a ], [ %.473211.lcssa236, %.thread131 ], [ %.170199, %.lr.ph.i.1 ], [ %.473173, %.loopexit ]
  %.8 = phi i64 [ %3, %bb.a ], [ %.4212, %.thread131 ], [ %.166200, %.lr.ph.i.1 ], [ %.4168, %.loopexit ]
  %i.cm = sub i64 %1, %.877
  store i64 %i.cm, ptr %4, align 8, !tbaa !23
  %i.cn = sub i64 %3, %.8
  store i64 %i.cn, ptr %5, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL16UTF32Nat_to_UTF8PKjmPhmPmS2_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne i64 %1, 0
  %i.b = icmp ne i64 %3, 0
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph141, label %.thread95

.lr.ph141:                                        ; preds = %bb.a, %._crit_edge
  %.044139 = phi i64 [ %.145.lcssa, %._crit_edge ], [ %3, %bb.a ] ; 2 uses
  %.047138 = phi i64 [ %.148.lcssa, %._crit_edge ], [ %1, %bb.a ] ; 2 uses
  %.053137 = phi ptr [ %.457.lcssa, %._crit_edge ], [ %2, %bb.a ]
  %.059136 = phi ptr [ %.463.lcssa, %._crit_edge ], [ %0, %bb.a ]
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.047138, i64 %.044139) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph141, %bb.c
  %.043123 = phi i64 [ 0, %.lr.ph141 ], [ %i.i, %bb.c ] ; 2 uses
  %.154122 = phi ptr [ %.053137, %.lr.ph141 ], [ %i.h, %bb.c ] ; 3 uses
  %.160121 = phi ptr [ %.059136, %.lr.ph141 ], [ %i.g, %bb.c ] ; 3 uses
  %i.d = load i32, ptr %.160121, align 4, !tbaa !24 ; 2 uses
  %i.e = icmp ugt i32 %i.d, 127
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = trunc nuw nsw i32 %i.d to i8
  store i8 %i.f, ptr %.154122, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.160121, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.154122, i64 1 ; 2 uses
  %i.i = add nuw i64 %.043123, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %spec.select
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !32

bb.d:                                             ; preds = %bb.b, %bb.c
  %.160.lcssa = phi ptr [ %.160121, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.154.lcssa = phi ptr [ %.154122, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.043.lcssa = phi i64 [ %.043123, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.j = sub i64 %.047138, %.043.lcssa            ; 3 uses
  %i.k = sub i64 %.044139, %.043.lcssa            ; 3 uses
  %i.l = icmp ne i64 %i.j, 0
  %i.m = icmp ne i64 %i.k, 0
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %.145127 = phi i64 [ %i.bv, %bb.i ], [ %i.k, %bb.d ] ; 4 uses
  %.148126 = phi i64 [ %i.bt, %bb.i ], [ %i.j, %bb.d ] ; 3 uses
  %.457125 = phi ptr [ %i.bw, %bb.i ], [ %.154.lcssa, %bb.d ] ; 8 uses
  %.463124 = phi ptr [ %i.bu, %bb.i ], [ %.160.lcssa, %bb.d ] ; 3 uses
  %i.o = load i32, ptr %.463124, align 4, !tbaa !24 ; 8 uses
  %i.p = icmp ult i32 %i.o, 128
  br i1 %i.p, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = icmp ugt i32 %i.o, 1114111
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.r, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @.str.1, ptr %i.s, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %i.t, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = and i32 %i.o, 2095104
  %or.cond.i = icmp eq i32 %i.u, 55296
  br i1 %or.cond.i, label %bb.h, label %.lr.ph.i

bb.h:                                             ; preds = %bb.g
  %i.v = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.v, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @.str.2, ptr %i.w, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i8 0, ptr %i.x, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.038.i = phi i64 [ %i.y, %.lr.ph.i ], [ 0, %bb.g ] ; 3 uses
  %.03037.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.o, %bb.g ]
  %i.y = add nuw nsw i64 %.038.i, 1               ; 3 uses
  %i.z = lshr i32 %.03037.i, 6                    ; 2 uses
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  %i.ab = mul i32 %i.aa, 6
  %i.ac = add i32 %i.ab, -6
  %i.ad = lshr i32 %i.o, %i.ac
  %i.ae = lshr i32 128, %i.aa
  %i.af = add nsw i32 %i.ae, -1
  %i.ag = icmp ugt i32 %i.ad, %i.af
  %i.ah = zext i1 %i.ag to i64                    ; 3 uses
  %spec.select.i = add nuw i64 %i.y, %i.ah        ; 5 uses
  %i.ai = icmp ugt i64 %spec.select.i, %.145127
  br i1 %i.ai, label %.thread95, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.239.i = add nuw i64 %.038.i, %i.ah            ; 4 uses
  %.not3440.i = icmp eq i64 %.239.i, 0
  br i1 %.not3440.i, label %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit.thread76, label %.lr.ph43.i.preheader

.lr.ph43.i.preheader:                             ; preds = %.preheader.i
  %i.aj = add nsw i64 %.038.i, -1
  %i.ak = add nsw i64 %i.aj, %i.ah
  %xtraiter = and i64 %.239.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph43.i.prol.loopexit, label %.lr.ph43.i.prol

.lr.ph43.i.prol:                                  ; preds = %.lr.ph43.i.preheader, %.lr.ph43.i.prol
  %.242.i.prol = phi i64 [ %.2.i.prol, %.lr.ph43.i.prol ], [ %.239.i, %.lr.ph43.i.preheader ] ; 2 uses
  %.13141.i.prol = phi i32 [ %i.ap, %.lr.ph43.i.prol ], [ %i.o, %.lr.ph43.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph43.i.prol ], [ 0, %.lr.ph43.i.preheader ]
  %i.al = trunc i32 %.13141.i.prol to i8
  %i.am = and i8 %i.al, 63
  %i.an = or disjoint i8 %i.am, -128
  %i.ao = getelementptr inbounds nuw i8, ptr %.457125, i64 %.242.i.prol
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !13
  %i.ap = lshr i32 %.13141.i.prol, 6              ; 3 uses
  %.2.i.prol = add nsw i64 %.242.i.prol, -1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph43.i.prol.loopexit, label %.lr.ph43.i.prol, !llvm.loop !33

.lr.ph43.i.prol.loopexit:                         ; preds = %.lr.ph43.i.prol, %.lr.ph43.i.preheader
  %.lcssa177.unr = phi i32 [ poison, %.lr.ph43.i.preheader ], [ %i.ap, %.lr.ph43.i.prol ]
  %.242.i.unr = phi i64 [ %.239.i, %.lr.ph43.i.preheader ], [ %.2.i.prol, %.lr.ph43.i.prol ]
  %.13141.i.unr = phi i32 [ %i.o, %.lr.ph43.i.preheader ], [ %i.ap, %.lr.ph43.i.prol ]
  %i.aq = icmp ult i64 %i.ak, 3
  br i1 %i.aq, label %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit, label %.lr.ph43.i

_ZL23CodePoint_to_UTF8_MultijPhmPm.exit.thread76: ; preds = %.preheader.i
  %i.ar = trunc nuw nsw i64 %spec.select.i to i32
  %notmask.i78 = ashr exact i32 -256, %i.ar
  %i.as = or i32 %notmask.i78, %i.o
  br label %bb.i

.lr.ph43.i:                                       ; preds = %.lr.ph43.i.prol.loopexit, %.lr.ph43.i
  %.242.i = phi i64 [ %.2.i.3, %.lr.ph43.i ], [ %.242.i.unr, %.lr.ph43.i.prol.loopexit ] ; 5 uses
  %.13141.i = phi i32 [ %i.bp, %.lr.ph43.i ], [ %.13141.i.unr, %.lr.ph43.i.prol.loopexit ] ; 5 uses
  %i.at = trunc i32 %.13141.i to i8
  %i.au = and i8 %i.at, 63
  %i.av = or disjoint i8 %i.au, -128
  %i.aw = getelementptr inbounds nuw i8, ptr %.457125, i64 %.242.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !13
  %i.ax = lshr i32 %.13141.i, 6
  %i.ay = trunc i32 %i.ax to i8
  %i.az = and i8 %i.ay, 63
  %i.ba = or disjoint i8 %i.az, -128
  %i.bb = getelementptr i8, ptr %.457125, i64 %.242.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 -1
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !13
  %i.bd = lshr i32 %.13141.i, 12
  %i.be = trunc i32 %i.bd to i8
  %i.bf = and i8 %i.be, 63
  %i.bg = or disjoint i8 %i.bf, -128
  %i.bh = getelementptr i8, ptr %.457125, i64 %.242.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 -2
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !13
  %i.bj = lshr i32 %.13141.i, 18
  %i.bk = trunc nuw i32 %i.bj to i8
  %i.bl = and i8 %i.bk, 63
  %i.bm = or disjoint i8 %i.bl, -128
  %i.bn = getelementptr i8, ptr %.457125, i64 %.242.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 -3
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !13
  %i.bp = lshr i32 %.13141.i, 24                  ; 2 uses
  %.2.i.3 = add nsw i64 %.242.i, -4               ; 2 uses
  %.not34.i.3 = icmp eq i64 %.2.i.3, 0
  br i1 %.not34.i.3, label %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit, label %.lr.ph43.i, !llvm.loop !2

_ZL23CodePoint_to_UTF8_MultijPhmPm.exit:          ; preds = %.lr.ph43.i, %.lr.ph43.i.prol.loopexit
  %.lcssa177 = phi i32 [ %.lcssa177.unr, %.lr.ph43.i.prol.loopexit ], [ %i.bp, %.lr.ph43.i ]
  %i.bq = trunc i64 %spec.select.i to i32
  %i.br = sub i32 8, %i.bq
  %notmask.i = shl nsw i32 -1, %i.br
  %i.bs = or i32 %.lcssa177, %notmask.i
  br label %bb.i

bb.i:                                             ; preds = %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit, %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit.thread76
  %storemerge.in = phi i32 [ %i.bs, %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit ], [ %i.as, %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit.thread76 ]
  %storemerge = trunc i32 %storemerge.in to i8
  store i8 %storemerge, ptr %.457125, align 1, !tbaa !13
  %i.bt = add i64 %.148126, -1                    ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.463124, i64 4 ; 2 uses
  %i.bv = sub nuw i64 %.145127, %spec.select.i    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.457125, i64 %spec.select.i ; 2 uses
  %i.bx = icmp ne i64 %i.bt, 0
  %i.by = icmp ne i64 %i.bv, 0
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %.lr.ph, %bb.d
  %.463.lcssa = phi ptr [ %.160.lcssa, %bb.d ], [ %.463124, %.lr.ph ], [ %i.bu, %bb.i ]
  %.457.lcssa = phi ptr [ %.154.lcssa, %bb.d ], [ %.457125, %.lr.ph ], [ %i.bw, %bb.i ]
  %.148.lcssa = phi i64 [ %i.j, %bb.d ], [ %.148126, %.lr.ph ], [ %i.bt, %bb.i ] ; 3 uses
  %.145.lcssa = phi i64 [ %i.k, %bb.d ], [ %.145127, %.lr.ph ], [ %i.bv, %bb.i ] ; 3 uses
  %i.ca = icmp ne i64 %.148.lcssa, 0
  %i.cb = icmp ne i64 %.145.lcssa, 0
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %.lr.ph141, label %.thread95

.thread95:                                        ; preds = %._crit_edge, %._crit_edge.i, %bb.a
  %.552 = phi i64 [ %.148126, %._crit_edge.i ], [ %1, %bb.a ], [ %.148.lcssa, %._crit_edge ]
  %.5 = phi i64 [ %.145127, %._crit_edge.i ], [ %3, %bb.a ], [ %.145.lcssa, %._crit_edge ]
  %i.cd = sub i64 %1, %.552
  store i64 %i.cd, ptr %4, align 8, !tbaa !23
  %i.ce = sub i64 %3, %.5
  store i64 %i.ce, ptr %5, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL21CodePoint_to_UTF16NatjPtmPm(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZL31CodePoint_to_UTF16Nat_SurrogatejPtmPm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 55295
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.c = trunc nuw i32 %0 to i16
  store i16 %i.c, ptr %1, align 2, !tbaa !15
  br label %_ZL31CodePoint_to_UTF16Nat_SurrogatejPtmPm.exit

bb.d:                                             ; preds = %bb.b
  %i.d = icmp ugt i32 %0, 65535
  br i1 %i.d, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ugt i32 %0, 57343
  br i1 %i.e, label %bb.c, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @.str.2, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 0, ptr %i.h, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.i = icmp ugt i32 %0, 1114111
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @.str.1, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 0, ptr %i.l, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = icmp eq i64 %2, 1
  br i1 %i.m, label %_ZL31CodePoint_to_UTF16Nat_SurrogatejPtmPm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = add nuw nsw i32 %0, 16711680
  %i.o = lshr i32 %i.n, 10
  %i.p = trunc nuw nsw i32 %i.o to i16
  %i.q = or i16 %i.p, -10240
  store i16 %i.q, ptr %1, align 2, !tbaa !15
  %i.r = trunc i32 %0 to i16
  %i.s = and i16 %i.r, 1023
  %i.t = or disjoint i16 %i.s, -9216
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.t, ptr %i.u, align 2, !tbaa !15
  br label %_ZL31CodePoint_to_UTF16Nat_SurrogatejPtmPm.exit

_ZL31CodePoint_to_UTF16Nat_SurrogatejPtmPm.exit:  ; preds = %bb.j, %bb.i, %bb.c, %bb.a
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.i ], [ 2, %bb.j ]
  store i64 %storemerge, ptr %3, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL21CodePoint_to_UTF16SwpjPtmPm(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZL31CodePoint_to_UTF16Swp_SurrogatejPtmPm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 55295
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.c = trunc nuw i32 %0 to i16
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.c)
  store i16 %i.d, ptr %1, align 2, !tbaa !15
  br label %_ZL31CodePoint_to_UTF16Swp_SurrogatejPtmPm.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp ugt i32 %0, 65535
  br i1 %i.e, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp samesign ugt i32 %0, 57343
  br i1 %i.f, label %bb.c, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @.str.2, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 0, ptr %i.i, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.j = icmp ugt i32 %0, 1114111
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @.str.1, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 0, ptr %i.m, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %_ZL31CodePoint_to_UTF16Swp_SurrogatejPtmPm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = add nuw nsw i32 %0, 16711680
  %i.p = lshr i32 %i.o, 10
  %i.q = trunc nuw nsw i32 %i.p to i16
  %i.r = or i16 %i.q, -10240
  %i.s = tail call i16 @llvm.bswap.i16(i16 %i.r)
  store i16 %i.s, ptr %1, align 2, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.u = trunc i32 %0 to i16
  %i.v = and i16 %i.u, 1023
  %i.w = or disjoint i16 %i.v, -9216
  %i.x = tail call i16 @llvm.bswap.i16(i16 %i.w)
  store i16 %i.x, ptr %i.t, align 2, !tbaa !15
  br label %_ZL31CodePoint_to_UTF16Swp_SurrogatejPtmPm.exit

_ZL31CodePoint_to_UTF16Swp_SurrogatejPtmPm.exit:  ; preds = %bb.j, %bb.i, %bb.c, %bb.a
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.i ], [ 2, %bb.j ]
  store i64 %storemerge, ptr %3, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL23CodePoint_from_UTF16NatPKtmPjPm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZL33CodePoint_from_UTF16Nat_SurrogatePKtmPjPm.exit, label %bb.b

end_hunk_0
begin_hunk_1_@_ZL16UTF8_to_UTF32SwpPKhmPjmPmS2_:bb.a
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ch = icmp ugt i32 %.lcssa208, 1114111
  br i1 %i.ch, label %bb.n, label %_ZL25CodePoint_from_UTF8_MultiPKhmPjPm.exit

bb.n:                                             ; preds = %bb.m
  %i.ci = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.ci, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr @.str.6, ptr %i.cj, align 8, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i8 0, ptr %i.ck, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

_ZL25CodePoint_from_UTF8_MultiPKhmPjPm.exit:      ; preds = %._crit_edge48.i, %bb.m
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %.lcssa207)
  store i32 %i.cl, ptr %.457139, align 4, !tbaa !24
  %i.cm = sub nuw i64 %.148140, %i.s              ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.463138, i64 %i.s ; 2 uses
  %i.co = add i64 %.145141, -1                    ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.457139, i64 4 ; 2 uses
  %i.cq = icmp ne i64 %i.cm, 0
  %i.cr = icmp ne i64 %i.co, 0
  %i.cs = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZL25CodePoint_from_UTF8_MultiPKhmPjPm.exit, %.lr.ph, %bb.d
  %.463.lcssa = phi ptr [ %.160.lcssa, %bb.d ], [ %.463138, %.lr.ph ], [ %i.cn, %_ZL25CodePoint_from_UTF8_MultiPKhmPjPm.exit ]
  %.457.lcssa = phi ptr [ %.154.lcssa, %bb.d ], [ %.457139, %.lr.ph ], [ %i.cp, %_ZL25CodePoint_from_UTF8_MultiPKhmPjPm.exit ]
  %.148.lcssa = phi i64 [ %i.k, %bb.d ], [ %.148140, %.lr.ph ], [ %i.cm, %_ZL25CodePoint_from_UTF8_MultiPKhmPjPm.exit ] ; 3 uses
  %.145.lcssa = phi i64 [ %i.l, %bb.d ], [ %.145141, %.lr.ph ], [ %i.co, %_ZL25CodePoint_from_UTF8_MultiPKhmPjPm.exit ] ; 3 uses
  %i.ct = icmp ne i64 %.148.lcssa, 0
  %i.cu = icmp ne i64 %.145.lcssa, 0
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %.lr.ph155, label %.thread96

.thread96:                                        ; preds = %._crit_edge, %bb.e, %bb.a
  %.552 = phi i64 [ %.148140, %bb.e ], [ %1, %bb.a ], [ %.148.lcssa, %._crit_edge ]
  %.5 = phi i64 [ %.145141, %bb.e ], [ %3, %bb.a ], [ %.145.lcssa, %._crit_edge ]
  %i.cw = sub i64 %1, %.552
  store i64 %i.cw, ptr %4, align 8, !tbaa !23
  %i.cx = sub i64 %3, %.5
  store i64 %i.cx, ptr %5, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL16UTF16Swp_to_UTF8PKtmPhmPmS2_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = icmp ne i64 %1, 0
  %i.c = icmp ne i64 %3, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph222, label %.thread148

.lr.ph222:                                        ; preds = %bb.a, %.loopexit
  %.065221 = phi i64 [ %.4168, %.loopexit ], [ %3, %bb.a ] ; 2 uses
  %.069220 = phi i64 [ %.473173, %.loopexit ], [ %1, %bb.a ] ; 2 uses
  %.078219 = phi ptr [ %.785178, %.loopexit ], [ %2, %bb.a ]
  %.087218 = phi ptr [ %.794183, %.loopexit ], [ %0, %bb.a ]
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.069220, i64 %.065221) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph222, %bb.c
  %.064196 = phi i64 [ 0, %.lr.ph222 ], [ %i.j, %bb.c ] ; 2 uses
  %.179195 = phi ptr [ %.078219, %.lr.ph222 ], [ %i.i, %bb.c ] ; 3 uses
  %.188194 = phi ptr [ %.087218, %.lr.ph222 ], [ %i.h, %bb.c ] ; 3 uses
  %.188.val = load i16, ptr %.188194, align 2, !tbaa !15
  %i.e = tail call noundef i16 @llvm.bswap.i16(i16 %.188.val) ; 2 uses
  %i.f = icmp ugt i16 %i.e, 127
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i16 %i.e to i8
  store i8 %i.g, ptr %.179195, align 1, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %.188194, i64 2 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.179195, i64 1 ; 2 uses
  %i.j = add nuw i64 %.064196, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %spec.select
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !36

bb.d:                                             ; preds = %bb.b, %bb.c
  %.188.lcssa = phi ptr [ %.188194, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.179.lcssa = phi ptr [ %.179195, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.064.lcssa = phi i64 [ %.064196, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.k = sub i64 %.069220, %.064.lcssa            ; 3 uses
  %i.l = sub i64 %.065221, %.064.lcssa            ; 3 uses
  %i.m = icmp ne i64 %i.k, 0
  %i.n = icmp ne i64 %i.l, 0
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %.lr.ph, label %.thread122

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.166200 = phi i64 [ %i.br, %bb.e ], [ %i.l, %bb.d ] ; 5 uses
  %.170199 = phi i64 [ %i.bp, %bb.e ], [ %i.k, %bb.d ] ; 4 uses
  %.482198 = phi ptr [ %i.bs, %bb.e ], [ %.179.lcssa, %bb.d ] ; 9 uses
  %.491197 = phi ptr [ %i.bq, %bb.e ], [ %.188.lcssa, %bb.d ] ; 3 uses
  %.491.val = load i16, ptr %.491197, align 2, !tbaa !15 ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %.491.val) ; 5 uses
  %i.q = zext i16 %i.p to i32                     ; 4 uses
  %i.r = icmp ult i16 %i.p, 128
  %i.s = and i16 %i.p, -2048
  %or.cond = icmp eq i16 %i.s, -10240
  %or.cond101 = or i1 %i.r, %or.cond
  br i1 %or.cond101, label %.thread122, label %.preheader35.i

.preheader35.i:                                   ; preds = %.lr.ph
  %.not36.i = icmp eq i16 %.491.val, 0
  br i1 %.not36.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader35.i
  %.not.i = icmp ult i16 %i.p, 64
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %.not.i.1 = icmp ult i16 %i.p, 4096
  %spec.select388 = select i1 %.not.i.1, i64 2, i64 3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.1, %.lr.ph.i, %.preheader35.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader35.i ], [ 1, %.lr.ph.i ], [ %spec.select388, %.lr.ph.i.1 ] ; 3 uses
  %i.t = trunc i64 %.0.lcssa.i to i32             ; 2 uses
  %i.u = mul i32 %i.t, 6
  %i.v = add i32 %i.u, -6
  %i.w = lshr i32 %i.q, %i.v
  %i.x = lshr i32 128, %i.t
  %i.y = add nsw i32 %i.x, -1
  %i.z = icmp ugt i32 %i.w, %i.y
  %i.aa = zext i1 %i.z to i64                     ; 2 uses
  %spec.select.i = add i64 %.0.lcssa.i, %i.aa     ; 7 uses
  %i.ab = icmp ugt i64 %spec.select.i, %.166200
  br i1 %i.ab, label %.thread148, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.239.i = add i64 %spec.select.i, -1            ; 4 uses
  %.not3440.i = icmp eq i64 %.239.i, 0
  br i1 %.not3440.i, label %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit.thread113, label %.lr.ph43.i.preheader

.lr.ph43.i.preheader:                             ; preds = %.preheader.i
  %i.ac = add i64 %.0.lcssa.i, -2
  %i.ad = add i64 %i.ac, %i.aa
  %xtraiter = and i64 %.239.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph43.i.prol.loopexit, label %.lr.ph43.i.prol

.lr.ph43.i.prol:                                  ; preds = %.lr.ph43.i.preheader, %.lr.ph43.i.prol
  %.242.i.prol = phi i64 [ %.2.i.prol, %.lr.ph43.i.prol ], [ %.239.i, %.lr.ph43.i.preheader ] ; 2 uses
  %.13141.i.prol = phi i32 [ %i.ai, %.lr.ph43.i.prol ], [ %i.q, %.lr.ph43.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph43.i.prol ], [ 0, %.lr.ph43.i.preheader ]
  %i.ae = trunc i32 %.13141.i.prol to i8
  %i.af = and i8 %i.ae, 63
  %i.ag = or disjoint i8 %i.af, -128
  %i.ah = getelementptr inbounds nuw i8, ptr %.482198, i64 %.242.i.prol
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !13
  %i.ai = lshr i32 %.13141.i.prol, 6              ; 3 uses
  %.2.i.prol = add i64 %.242.i.prol, -1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph43.i.prol.loopexit, label %.lr.ph43.i.prol, !llvm.loop !37

.lr.ph43.i.prol.loopexit:                         ; preds = %.lr.ph43.i.prol, %.lr.ph43.i.preheader
  %.lcssa323.unr = phi i32 [ poison, %.lr.ph43.i.preheader ], [ %i.ai, %.lr.ph43.i.prol ]
  %.242.i.unr = phi i64 [ %.239.i, %.lr.ph43.i.preheader ], [ %.2.i.prol, %.lr.ph43.i.prol ]
  %.13141.i.unr = phi i32 [ %i.q, %.lr.ph43.i.preheader ], [ %i.ai, %.lr.ph43.i.prol ]
  %i.aj = icmp ult i64 %i.ad, 3
  br i1 %i.aj, label %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit, label %.lr.ph43.i

_ZL23CodePoint_to_UTF8_MultijPhmPm.exit.thread113: ; preds = %.preheader.i
  %i.ak = trunc nuw nsw i64 %spec.select.i to i32
  %notmask.i115 = ashr exact i32 -256, %i.ak
  %i.al = or i32 %notmask.i115, %i.q
  %i.am = trunc nsw i32 %i.al to i8
  store i8 %i.am, ptr %.482198, align 1, !tbaa !13
  br label %bb.e

.lr.ph43.i:                                       ; preds = %.lr.ph43.i.prol.loopexit, %.lr.ph43.i
  %.242.i = phi i64 [ %.2.i.3, %.lr.ph43.i ], [ %.242.i.unr, %.lr.ph43.i.prol.loopexit ] ; 5 uses
  %.13141.i = phi i32 [ %i.bj, %.lr.ph43.i ], [ %.13141.i.unr, %.lr.ph43.i.prol.loopexit ] ; 5 uses
  %i.an = trunc i32 %.13141.i to i8
  %i.ao = and i8 %i.an, 63
  %i.ap = or disjoint i8 %i.ao, -128
  %i.aq = getelementptr inbounds nuw i8, ptr %.482198, i64 %.242.i
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !13
  %i.ar = lshr i32 %.13141.i, 6
  %i.as = trunc i32 %i.ar to i8
  %i.at = and i8 %i.as, 63
  %i.au = or disjoint i8 %i.at, -128
  %i.av = getelementptr i8, ptr %.482198, i64 %.242.i
  %i.aw = getelementptr i8, ptr %i.av, i64 -1
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !13
  %i.ax = lshr i32 %.13141.i, 12
  %i.ay = trunc i32 %i.ax to i8
  %i.az = and i8 %i.ay, 63
  %i.ba = or disjoint i8 %i.az, -128
  %i.bb = getelementptr i8, ptr %.482198, i64 %.242.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 -2
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !13
  %i.bd = lshr i32 %.13141.i, 18
  %i.be = trunc nuw i32 %i.bd to i8
  %i.bf = and i8 %i.be, 63
  %i.bg = or disjoint i8 %i.bf, -128
  %i.bh = getelementptr i8, ptr %.482198, i64 %.242.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 -3
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !13
  %i.bj = lshr i32 %.13141.i, 24                  ; 2 uses
  %.2.i.3 = add i64 %.242.i, -4                   ; 2 uses
  %.not34.i.3 = icmp eq i64 %.2.i.3, 0
  br i1 %.not34.i.3, label %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit, label %.lr.ph43.i, !llvm.loop !2

_ZL23CodePoint_to_UTF8_MultijPhmPm.exit:          ; preds = %.lr.ph43.i, %.lr.ph43.i.prol.loopexit
  %.lcssa323 = phi i32 [ %.lcssa323.unr, %.lr.ph43.i.prol.loopexit ], [ %i.bj, %.lr.ph43.i ]
  %i.bk = trunc i64 %spec.select.i to i32
  %i.bl = sub i32 8, %i.bk
  %notmask.i = shl nsw i32 -1, %i.bl
  %i.bm = or i32 %.lcssa323, %notmask.i
  %i.bn = trunc i32 %i.bm to i8
  store i8 %i.bn, ptr %.482198, align 1, !tbaa !13
  %i.bo = icmp eq i64 %spec.select.i, 0
  br i1 %i.bo, label %.thread148, label %bb.e

bb.e:                                             ; preds = %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit, %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit.thread113
  %i.bp = add i64 %.170199, -1                    ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.491197, i64 2 ; 2 uses
  %i.br = sub nuw i64 %.166200, %spec.select.i    ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.482198, i64 %spec.select.i ; 2 uses
  %i.bt = icmp ne i64 %i.bp, 0
  %i.bu = icmp ne i64 %i.br, 0
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %.lr.ph, label %.thread122

.thread122:                                       ; preds = %bb.e, %.lr.ph, %bb.d
  %.491.lcssa = phi ptr [ %.188.lcssa, %bb.d ], [ %.491197, %.lr.ph ], [ %i.bq, %bb.e ] ; 2 uses
  %.482.lcssa = phi ptr [ %.179.lcssa, %bb.d ], [ %.482198, %.lr.ph ], [ %i.bs, %bb.e ] ; 2 uses
  %.170.lcssa = phi i64 [ %i.k, %bb.d ], [ %.170199, %.lr.ph ], [ %i.bp, %bb.e ] ; 4 uses
  %.166.lcssa = phi i64 [ %i.l, %bb.d ], [ %.166200, %.lr.ph ], [ %i.br, %bb.e ] ; 3 uses
  %i.bw = icmp ne i64 %.170.lcssa, 0
  %i.bx = icmp ne i64 %.166.lcssa, 0
  %i.by = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %i.by, label %.lr.ph213, label %.loopexit

.lr.ph213:                                        ; preds = %.thread122, %bb.l
  %.4212 = phi i64 [ %i.cy, %bb.l ], [ %.166.lcssa, %.thread122 ] ; 4 uses
  %.473211 = phi i64 [ %i.cw, %bb.l ], [ %.170.lcssa, %.thread122 ] ; 4 uses
  %.785210 = phi ptr [ %i.cz, %bb.l ], [ %.482.lcssa, %.thread122 ] ; 3 uses
  %.794209 = phi ptr [ %i.cx, %bb.l ], [ %.491.lcssa, %.thread122 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.794.val = load i16, ptr %.794209, align 2, !tbaa !15
  %i.bz = tail call noundef i16 @llvm.bswap.i16(i16 %.794.val) ; 3 uses
  %i.ca = add i16 %i.bz, 8192
  %or.cond5 = icmp ult i16 %i.ca, -2048
  br i1 %or.cond5, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.lr.ph213
  %i.cb = icmp samesign ugt i16 %i.bz, -9217
  br i1 %i.cb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cc = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.cc, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr @.str.7, ptr %i.cd, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i8 0, ptr %i.ce, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.cc, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.cf = icmp ult i64 %.473211, 2
  br i1 %i.cf, label %.thread131.split.loop.exit286, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %.794209, i64 2
  %.val.i = load i16, ptr %i.cg, align 2, !tbaa !15
  %i.ch = tail call noundef i16 @llvm.bswap.i16(i16 %.val.i) ; 2 uses
  %i.ci = add i16 %i.ch, 8192
  %or.cond.i102 = icmp ult i16 %i.ci, -1024
  br i1 %or.cond.i102, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cj = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.cj, align 8, !tbaa !19
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr @.str.8, ptr %i.ck, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i8 0, ptr %i.cl, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cm = and i16 %i.bz, 1023
  %i.cn = zext nneg i16 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 10
  %i.cp = and i16 %i.ch, 1023
  %i.cq = zext nneg i16 %i.cp to i32
  %i.cr = add nuw nsw i32 %i.co, 65536
  %i.cs = or disjoint i32 %i.cr, %i.cq
  call fastcc void @_ZL23CodePoint_to_UTF8_MultijPhmPm(i32 noundef %i.cs, ptr noundef %.785210, i64 noundef %.4212, ptr noundef nonnull %i.a)
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !23  ; 3 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.thread131, label %bb.l

.thread131.split.loop.exit286:                    ; preds = %bb.h
  %i.cv = and i64 %.170.lcssa, 1
  br label %.thread131

.thread131:                                       ; preds = %bb.k, %.thread131.split.loop.exit286
  %.473211.lcssa240 = phi i64 [ %i.cv, %.thread131.split.loop.exit286 ], [ %.473211, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread148

bb.l:                                             ; preds = %bb.k
  %i.cw = add i64 %.473211, -2                    ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.794209, i64 4 ; 2 uses
  %i.cy = sub i64 %.4212, %i.ct                   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.785210, i64 %i.ct ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.da = icmp ne i64 %i.cw, 0
  %i.db = icmp ne i64 %i.cy, 0
  %i.dc = select i1 %i.da, i1 %i.db, i1 false
  br i1 %i.dc, label %.lr.ph213, label %.loopexit

bb.m:                                             ; preds = %.lr.ph213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.thread122, %bb.m
  %.794183 = phi ptr [ %.794209, %bb.m ], [ %.491.lcssa, %.thread122 ], [ %i.cx, %bb.l ]
  %.785178 = phi ptr [ %.785210, %bb.m ], [ %.482.lcssa, %.thread122 ], [ %i.cz, %bb.l ]
  %.473173 = phi i64 [ %.473211, %bb.m ], [ %.170.lcssa, %.thread122 ], [ %i.cw, %bb.l ] ; 3 uses
  %.4168 = phi i64 [ %.4212, %bb.m ], [ %.166.lcssa, %.thread122 ], [ %i.cy, %bb.l ] ; 3 uses
  %i.dd = icmp ne i64 %.473173, 0
  %i.de = icmp ne i64 %.4168, 0
  %i.df = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %i.df, label %.lr.ph222, label %.thread148

.thread148:                                       ; preds = %.loopexit, %._crit_edge.i, %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit, %bb.a, %.thread131
  %.877 = phi i64 [ %1, %bb.a ], [ %.473211.lcssa240, %.thread131 ], [ %.170199, %._crit_edge.i ], [ %.170199, %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit ], [ %.473173, %.loopexit ]
  %.8 = phi i64 [ %3, %bb.a ], [ %.4212, %.thread131 ], [ %.166200, %._crit_edge.i ], [ %.166200, %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit ], [ %.4168, %.loopexit ]
  %i.dg = sub i64 %1, %.877
  store i64 %i.dg, ptr %4, align 8, !tbaa !23
  %i.dh = sub i64 %3, %.8
  store i64 %i.dh, ptr %5, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL16UTF32Swp_to_UTF8PKjmPhmPmS2_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne i64 %1, 0
  %i.b = icmp ne i64 %3, 0
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph141, label %.thread95

.lr.ph141:                                        ; preds = %bb.a, %._crit_edge
  %.044139 = phi i64 [ %.145.lcssa, %._crit_edge ], [ %3, %bb.a ] ; 2 uses
  %.047138 = phi i64 [ %.148.lcssa, %._crit_edge ], [ %1, %bb.a ] ; 2 uses
  %.053137 = phi ptr [ %.457.lcssa, %._crit_edge ], [ %2, %bb.a ]
  %.059136 = phi ptr [ %.463.lcssa, %._crit_edge ], [ %0, %bb.a ]
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.047138, i64 %.044139) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph141, %bb.c
  %.043123 = phi i64 [ 0, %.lr.ph141 ], [ %i.i, %bb.c ] ; 2 uses
  %.154122 = phi ptr [ %.053137, %.lr.ph141 ], [ %i.h, %bb.c ] ; 3 uses
  %.160121 = phi ptr [ %.059136, %.lr.ph141 ], [ %i.g, %bb.c ] ; 3 uses
  %.160.val = load i32, ptr %.160121, align 4, !tbaa !24
  %i.d = tail call noundef i32 @llvm.bswap.i32(i32 %.160.val) ; 2 uses
  %i.e = icmp ugt i32 %i.d, 127
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = trunc nuw nsw i32 %i.d to i8
  store i8 %i.f, ptr %.154122, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.160121, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.154122, i64 1 ; 2 uses
  %i.i = add nuw i64 %.043123, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %spec.select
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !38

bb.d:                                             ; preds = %bb.b, %bb.c
  %.160.lcssa = phi ptr [ %.160121, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.154.lcssa = phi ptr [ %.154122, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.043.lcssa = phi i64 [ %.043123, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.j = sub i64 %.047138, %.043.lcssa            ; 3 uses
  %i.k = sub i64 %.044139, %.043.lcssa            ; 3 uses
  %i.l = icmp ne i64 %i.j, 0
  %i.m = icmp ne i64 %i.k, 0
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %.145127 = phi i64 [ %i.bv, %bb.i ], [ %i.k, %bb.d ] ; 4 uses
  %.148126 = phi i64 [ %i.bt, %bb.i ], [ %i.j, %bb.d ] ; 3 uses
  %.457125 = phi ptr [ %i.bw, %bb.i ], [ %.154.lcssa, %bb.d ] ; 8 uses
  %.463124 = phi ptr [ %i.bu, %bb.i ], [ %.160.lcssa, %bb.d ] ; 3 uses
  %.463.val = load i32, ptr %.463124, align 4, !tbaa !24
  %i.o = tail call noundef i32 @llvm.bswap.i32(i32 %.463.val) ; 8 uses
  %i.p = icmp ult i32 %i.o, 128
  br i1 %i.p, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = icmp ugt i32 %i.o, 1114111
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.r, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @.str.1, ptr %i.s, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %i.t, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = and i32 %i.o, 2095104
  %or.cond.i = icmp eq i32 %i.u, 55296
  br i1 %or.cond.i, label %bb.h, label %.lr.ph.i

bb.h:                                             ; preds = %bb.g
  %i.v = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.v, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @.str.2, ptr %i.w, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i8 0, ptr %i.x, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.038.i = phi i64 [ %i.y, %.lr.ph.i ], [ 0, %bb.g ] ; 3 uses
  %.03037.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.o, %bb.g ]
  %i.y = add nuw nsw i64 %.038.i, 1               ; 3 uses
  %i.z = lshr i32 %.03037.i, 6                    ; 2 uses
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  %i.ab = mul i32 %i.aa, 6
  %i.ac = add i32 %i.ab, -6
  %i.ad = lshr i32 %i.o, %i.ac
  %i.ae = lshr i32 128, %i.aa
  %i.af = add nsw i32 %i.ae, -1
  %i.ag = icmp ugt i32 %i.ad, %i.af
  %i.ah = zext i1 %i.ag to i64                    ; 3 uses
  %spec.select.i = add nuw i64 %i.y, %i.ah        ; 5 uses
  %i.ai = icmp ugt i64 %spec.select.i, %.145127
  br i1 %i.ai, label %.thread95, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.239.i = add nuw i64 %.038.i, %i.ah            ; 4 uses
  %.not3440.i = icmp eq i64 %.239.i, 0
  br i1 %.not3440.i, label %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit.thread76, label %.lr.ph43.i.preheader

.lr.ph43.i.preheader:                             ; preds = %.preheader.i
  %i.aj = add nsw i64 %.038.i, -1
  %i.ak = add nsw i64 %i.aj, %i.ah
  %xtraiter = and i64 %.239.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph43.i.prol.loopexit, label %.lr.ph43.i.prol

.lr.ph43.i.prol:                                  ; preds = %.lr.ph43.i.preheader, %.lr.ph43.i.prol
  %.242.i.prol = phi i64 [ %.2.i.prol, %.lr.ph43.i.prol ], [ %.239.i, %.lr.ph43.i.preheader ] ; 2 uses
  %.13141.i.prol = phi i32 [ %i.ap, %.lr.ph43.i.prol ], [ %i.o, %.lr.ph43.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph43.i.prol ], [ 0, %.lr.ph43.i.preheader ]
  %i.al = trunc i32 %.13141.i.prol to i8
  %i.am = and i8 %i.al, 63
  %i.an = or disjoint i8 %i.am, -128
  %i.ao = getelementptr inbounds nuw i8, ptr %.457125, i64 %.242.i.prol
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !13
  %i.ap = lshr i32 %.13141.i.prol, 6              ; 3 uses
  %.2.i.prol = add nsw i64 %.242.i.prol, -1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph43.i.prol.loopexit, label %.lr.ph43.i.prol, !llvm.loop !39

.lr.ph43.i.prol.loopexit:                         ; preds = %.lr.ph43.i.prol, %.lr.ph43.i.preheader
  %.lcssa177.unr = phi i32 [ poison, %.lr.ph43.i.preheader ], [ %i.ap, %.lr.ph43.i.prol ]
  %.242.i.unr = phi i64 [ %.239.i, %.lr.ph43.i.preheader ], [ %.2.i.prol, %.lr.ph43.i.prol ]
  %.13141.i.unr = phi i32 [ %i.o, %.lr.ph43.i.preheader ], [ %i.ap, %.lr.ph43.i.prol ]
  %i.aq = icmp ult i64 %i.ak, 3
  br i1 %i.aq, label %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit, label %.lr.ph43.i

_ZL23CodePoint_to_UTF8_MultijPhmPm.exit.thread76: ; preds = %.preheader.i
  %i.ar = trunc nuw nsw i64 %spec.select.i to i32
  %notmask.i78 = ashr exact i32 -256, %i.ar
  %i.as = or i32 %notmask.i78, %i.o
  br label %bb.i

.lr.ph43.i:                                       ; preds = %.lr.ph43.i.prol.loopexit, %.lr.ph43.i
  %.242.i = phi i64 [ %.2.i.3, %.lr.ph43.i ], [ %.242.i.unr, %.lr.ph43.i.prol.loopexit ] ; 5 uses
  %.13141.i = phi i32 [ %i.bp, %.lr.ph43.i ], [ %.13141.i.unr, %.lr.ph43.i.prol.loopexit ] ; 5 uses
  %i.at = trunc i32 %.13141.i to i8
  %i.au = and i8 %i.at, 63
  %i.av = or disjoint i8 %i.au, -128
  %i.aw = getelementptr inbounds nuw i8, ptr %.457125, i64 %.242.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !13
  %i.ax = lshr i32 %.13141.i, 6
  %i.ay = trunc i32 %i.ax to i8
  %i.az = and i8 %i.ay, 63
  %i.ba = or disjoint i8 %i.az, -128
  %i.bb = getelementptr i8, ptr %.457125, i64 %.242.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 -1
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !13
  %i.bd = lshr i32 %.13141.i, 12
  %i.be = trunc i32 %i.bd to i8
  %i.bf = and i8 %i.be, 63
  %i.bg = or disjoint i8 %i.bf, -128
  %i.bh = getelementptr i8, ptr %.457125, i64 %.242.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 -2
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !13
  %i.bj = lshr i32 %.13141.i, 18
  %i.bk = trunc nuw i32 %i.bj to i8
  %i.bl = and i8 %i.bk, 63
  %i.bm = or disjoint i8 %i.bl, -128
  %i.bn = getelementptr i8, ptr %.457125, i64 %.242.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 -3
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !13
  %i.bp = lshr i32 %.13141.i, 24                  ; 2 uses
  %.2.i.3 = add nsw i64 %.242.i, -4               ; 2 uses
  %.not34.i.3 = icmp eq i64 %.2.i.3, 0
  br i1 %.not34.i.3, label %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit, label %.lr.ph43.i, !llvm.loop !2

_ZL23CodePoint_to_UTF8_MultijPhmPm.exit:          ; preds = %.lr.ph43.i, %.lr.ph43.i.prol.loopexit
  %.lcssa177 = phi i32 [ %.lcssa177.unr, %.lr.ph43.i.prol.loopexit ], [ %i.bp, %.lr.ph43.i ]
  %i.bq = trunc i64 %spec.select.i to i32
  %i.br = sub i32 8, %i.bq
  %notmask.i = shl nsw i32 -1, %i.br
  %i.bs = or i32 %.lcssa177, %notmask.i
  br label %bb.i

bb.i:                                             ; preds = %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit, %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit.thread76
  %storemerge.in = phi i32 [ %i.bs, %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit ], [ %i.as, %_ZL23CodePoint_to_UTF8_MultijPhmPm.exit.thread76 ]
  %storemerge = trunc i32 %storemerge.in to i8
  store i8 %storemerge, ptr %.457125, align 1, !tbaa !13
  %i.bt = add i64 %.148126, -1                    ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.463124, i64 4 ; 2 uses
  %i.bv = sub nuw i64 %.145127, %spec.select.i    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.457125, i64 %spec.select.i ; 2 uses
  %i.bx = icmp ne i64 %i.bt, 0
  %i.by = icmp ne i64 %i.bv, 0
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %.lr.ph, %bb.d
  %.463.lcssa = phi ptr [ %.160.lcssa, %bb.d ], [ %.463124, %.lr.ph ], [ %i.bu, %bb.i ]
  %.457.lcssa = phi ptr [ %.154.lcssa, %bb.d ], [ %.457125, %.lr.ph ], [ %i.bw, %bb.i ]
  %.148.lcssa = phi i64 [ %i.j, %bb.d ], [ %.148126, %.lr.ph ], [ %i.bt, %bb.i ] ; 3 uses
  %.145.lcssa = phi i64 [ %i.k, %bb.d ], [ %.145127, %.lr.ph ], [ %i.bv, %bb.i ] ; 3 uses
  %i.ca = icmp ne i64 %.148.lcssa, 0
  %i.cb = icmp ne i64 %.145.lcssa, 0
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %.lr.ph141, label %.thread95

.thread95:                                        ; preds = %._crit_edge, %._crit_edge.i, %bb.a
  %.552 = phi i64 [ %.148126, %._crit_edge.i ], [ %1, %bb.a ], [ %.148.lcssa, %._crit_edge ]
  %.5 = phi i64 [ %.145127, %._crit_edge.i ], [ %3, %bb.a ], [ %.145.lcssa, %._crit_edge ]
  %i.cd = sub i64 %1, %.552
  store i64 %i.cd, ptr %4, align 8, !tbaa !23
  %i.ce = sub i64 %3, %.5
  store i64 %i.ce, ptr %5, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL20UTF16Nat_to_UTF32NatPKtmPjmPmS2_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne i64 %1, 0
  %i.b = icmp ne i64 %3, 0
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph142, label %.thread97

.lr.ph142:                                        ; preds = %bb.a, %._crit_edge
  %.051140 = phi i64 [ %.152.lcssa, %._crit_edge ], [ %3, %bb.a ] ; 2 uses
  %.054139 = phi i64 [ %.155.lcssa, %._crit_edge ], [ %1, %bb.a ] ; 2 uses
  %.060138 = phi ptr [ %.464.lcssa, %._crit_edge ], [ %2, %bb.a ]
  %.066137 = phi ptr [ %.470.lcssa, %._crit_edge ], [ %0, %bb.a ]
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.054139, i64 %.051140) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph142, %bb.c
  %.050124 = phi i64 [ 0, %.lr.ph142 ], [ %i.i, %bb.c ] ; 2 uses
  %.161123 = phi ptr [ %.060138, %.lr.ph142 ], [ %i.h, %bb.c ] ; 3 uses
  %.167122 = phi ptr [ %.066137, %.lr.ph142 ], [ %i.g, %bb.c ] ; 3 uses
  %i.d = load i16, ptr %.167122, align 2, !tbaa !15 ; 2 uses
  %i.e = and i16 %i.d, -2048
  %or.cond = icmp eq i16 %i.e, -10240
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i16 %i.d to i32
  store i32 %i.f, ptr %.161123, align 4, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %.167122, i64 2 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.161123, i64 4 ; 2 uses
  %i.i = add nuw i64 %.050124, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %spec.select
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !40

bb.d:                                             ; preds = %bb.b, %bb.c
  %.167.lcssa = phi ptr [ %.167122, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.161.lcssa = phi ptr [ %.161123, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.050.lcssa = phi i64 [ %.050124, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.j = sub i64 %.054139, %.050.lcssa            ; 3 uses
  %i.k = sub i64 %.051140, %.050.lcssa            ; 3 uses
  %i.l = icmp ne i64 %i.j, 0
  %i.m = icmp ne i64 %i.k, 0
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.j
  %.152128 = phi i64 [ %i.ak, %bb.j ], [ %i.k, %bb.d ] ; 3 uses
  %.155127 = phi i64 [ %i.ai, %bb.j ], [ %i.j, %bb.d ] ; 3 uses
  %.464126 = phi ptr [ %i.al, %bb.j ], [ %.161.lcssa, %bb.d ] ; 3 uses
  %.470125 = phi ptr [ %i.aj, %bb.j ], [ %.167.lcssa, %bb.d ] ; 4 uses
  %i.o = load i16, ptr %.470125, align 2, !tbaa !15 ; 3 uses
  %i.p = add i16 %i.o, 8192
  %or.cond5 = icmp ult i16 %i.p, -2048
  br i1 %or.cond5, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = icmp samesign ugt i16 %i.o, -9217
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.r, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @.str.7, ptr %i.s, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %i.t, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = icmp ult i64 %.155127, 2
  br i1 %i.u, label %.thread97, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.470125, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !15   ; 2 uses
  %i.x = add i16 %i.w, 8192
  %or.cond.i = icmp ult i16 %i.x, -1024
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.y, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @.str.8, ptr %i.z, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i8 0, ptr %i.aa, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ab = and i16 %i.o, 1023
  %i.ac = zext nneg i16 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 10
  %i.ae = and i16 %i.w, 1023
  %i.af = zext nneg i16 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.ad, 65536
  %i.ah = or disjoint i32 %i.ag, %i.af
  store i32 %i.ah, ptr %.464126, align 4, !tbaa !24
  %i.ai = add i64 %.155127, -2                    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.470125, i64 4 ; 2 uses
  %i.ak = add i64 %.152128, -1                    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.464126, i64 4 ; 2 uses
  %i.am = icmp ne i64 %i.ai, 0
  %i.an = icmp ne i64 %i.ak, 0
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %.lr.ph, %bb.d
  %.470.lcssa = phi ptr [ %.167.lcssa, %bb.d ], [ %.470125, %.lr.ph ], [ %i.aj, %bb.j ]
  %.464.lcssa = phi ptr [ %.161.lcssa, %bb.d ], [ %.464126, %.lr.ph ], [ %i.al, %bb.j ]
  %.155.lcssa = phi i64 [ %i.j, %bb.d ], [ %.155127, %.lr.ph ], [ %i.ai, %bb.j ] ; 3 uses
  %.152.lcssa = phi i64 [ %i.k, %bb.d ], [ %.152128, %.lr.ph ], [ %i.ak, %bb.j ] ; 3 uses
  %i.ap = icmp ne i64 %.155.lcssa, 0
  %i.aq = icmp ne i64 %.152.lcssa, 0
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph142, label %.thread97

.thread97:                                        ; preds = %._crit_edge, %bb.g, %bb.a
  %.559 = phi i64 [ 1, %bb.g ], [ %1, %bb.a ], [ %.155.lcssa, %._crit_edge ]
  %.5 = phi i64 [ %.152128, %bb.g ], [ %3, %bb.a ], [ %.152.lcssa, %._crit_edge ]
  %i.as = sub i64 %1, %.559
  store i64 %i.as, ptr %4, align 8, !tbaa !23
  %i.at = sub i64 %3, %.5
  store i64 %i.at, ptr %5, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL20UTF16Nat_to_UTF32SwpPKtmPjmPmS2_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne i64 %1, 0
  %i.b = icmp ne i64 %3, 0
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph145, label %.thread100

.lr.ph145:                                        ; preds = %bb.a, %._crit_edge
  %.051143 = phi i64 [ %.152.lcssa, %._crit_edge ], [ %3, %bb.a ] ; 2 uses
  %.054142 = phi i64 [ %.155.lcssa, %._crit_edge ], [ %1, %bb.a ] ; 2 uses
  %.060141 = phi ptr [ %.464.lcssa, %._crit_edge ], [ %2, %bb.a ]
  %.066140 = phi ptr [ %.470.lcssa, %._crit_edge ], [ %0, %bb.a ]
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.054142, i64 %.051143) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph145, %bb.c
  %.050127 = phi i64 [ 0, %.lr.ph145 ], [ %i.j, %bb.c ] ; 2 uses
  %.161126 = phi ptr [ %.060141, %.lr.ph145 ], [ %i.i, %bb.c ] ; 3 uses
  %.167125 = phi ptr [ %.066140, %.lr.ph145 ], [ %i.h, %bb.c ] ; 3 uses
  %i.d = load i16, ptr %.167125, align 2, !tbaa !15 ; 2 uses
end_hunk_1
begin_hunk_2_@_Z9FromUTF32PKjmPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb:bb.a
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z15FromUTF32NativePKjmPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef nonnull %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, i64 noundef -1) ; 0 uses
  %i.e = shl i64 %1, 1
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.e)
  %.not10 = icmp eq i64 %1, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.012 = phi ptr [ %i.m, %bb.c ], [ %0, %bb.a ]  ; 2 uses
  %.0811 = phi i64 [ %i.n, %bb.c ], [ %1, %bb.a ] ; 2 uses
  call void @_ZL16UTF32Nat_to_UTF8PKjmPhmPmS2_(ptr noundef %.012, i64 noundef %.0811, ptr noundef nonnull %i.a, i64 noundef 16384, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.f = load i64, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 205, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @.str, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 0, ptr %i.j, align 8, !tbaa !21
  call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.k = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.a, i64 noundef %i.f) ; 0 uses
  %i.l = load i64, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.012, i64 %i.l
  %i.n = sub i64 %.0811, %i.l                     ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z17CodePoint_to_UTF8jPhmPm(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 127
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i32 %0 to i8
  store i8 %i.c, ptr %1, align 1, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.c ]
  store i64 %.0, ptr %3, align 8, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_ZL23CodePoint_to_UTF8_MultijPhmPm(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL23CodePoint_to_UTF8_MultijPhmPm(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef range(i64 1, 0) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i32 %0, 1114111
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str.1, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 0, ptr %i.d, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = and i32 %0, 2095104
  %or.cond = icmp eq i32 %i.e, 55296
  br i1 %or.cond, label %bb.d, label %.preheader35

.preheader35:                                     ; preds = %bb.c
  %.not36 = icmp eq i32 %0, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @.str.2, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 0, ptr %i.h, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

.lr.ph:                                           ; preds = %.preheader35, %.lr.ph
  %.038 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.preheader35 ]
  %.03037 = phi i32 [ %i.j, %.lr.ph ], [ %0, %.preheader35 ]
  %i.i = add nuw nsw i64 %.038, 1                 ; 2 uses
  %i.j = lshr i32 %.03037, 6                      ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %.preheader35
  %.0.lcssa = phi i64 [ 0, %.preheader35 ], [ %i.i, %.lr.ph ] ; 3 uses
  %i.k = trunc i64 %.0.lcssa to i32               ; 2 uses
  %i.l = mul i32 %i.k, 6
  %i.m = add i32 %i.l, -6
  %i.n = lshr i32 %0, %i.m
  %i.o = lshr i32 128, %i.k
  %i.p = add nsw i32 %i.o, -1
  %i.q = icmp ugt i32 %i.n, %i.p
  %i.r = zext i1 %i.q to i64                      ; 2 uses
  %spec.select = add i64 %.0.lcssa, %i.r          ; 4 uses
  %i.s = icmp ugt i64 %spec.select, %2
  br i1 %i.s, label %bb.e, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %.239 = add i64 %spec.select, -1                ; 4 uses
  %.not3440 = icmp eq i64 %.239, 0
  br i1 %.not3440, label %._crit_edge44, label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %.preheader
  %i.t = add i64 %.0.lcssa, %i.r
  %i.u = add i64 %i.t, -2
  %xtraiter = and i64 %.239, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph43.prol.loopexit, label %.lr.ph43.prol

.lr.ph43.prol:                                    ; preds = %.lr.ph43.preheader, %.lr.ph43.prol
  %.242.prol = phi i64 [ %.2.prol, %.lr.ph43.prol ], [ %.239, %.lr.ph43.preheader ] ; 2 uses
  %.13141.prol = phi i32 [ %i.z, %.lr.ph43.prol ], [ %0, %.lr.ph43.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph43.prol ], [ 0, %.lr.ph43.preheader ]
  %i.v = trunc i32 %.13141.prol to i8
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.242.prol
  store i8 %i.x, ptr %i.y, align 1, !tbaa !13
  %i.z = lshr i32 %.13141.prol, 6                 ; 3 uses
  %.2.prol = add i64 %.242.prol, -1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph43.prol.loopexit, label %.lr.ph43.prol, !llvm.loop !64

.lr.ph43.prol.loopexit:                           ; preds = %.lr.ph43.prol, %.lr.ph43.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph43.preheader ], [ %i.z, %.lr.ph43.prol ]
  %.242.unr = phi i64 [ %.239, %.lr.ph43.preheader ], [ %.2.prol, %.lr.ph43.prol ]
  %.13141.unr = phi i32 [ %0, %.lr.ph43.preheader ], [ %i.z, %.lr.ph43.prol ]
  %i.aa = icmp ult i64 %i.u, 3
  br i1 %i.aa, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43.prol.loopexit, %.lr.ph43
  %.242 = phi i64 [ %.2.3, %.lr.ph43 ], [ %.242.unr, %.lr.ph43.prol.loopexit ] ; 5 uses
  %.13141 = phi i32 [ %i.ax, %.lr.ph43 ], [ %.13141.unr, %.lr.ph43.prol.loopexit ] ; 5 uses
  %i.ab = trunc i32 %.13141 to i8
  %i.ac = and i8 %i.ab, 63
  %i.ad = or disjoint i8 %i.ac, -128
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.242
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !13
  %i.af = lshr i32 %.13141, 6
  %i.ag = trunc i32 %i.af to i8
  %i.ah = and i8 %i.ag, 63
  %i.ai = or disjoint i8 %i.ah, -128
  %i.aj = getelementptr i8, ptr %1, i64 %.242
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !13
  %i.al = lshr i32 %.13141, 12
  %i.am = trunc i32 %i.al to i8
  %i.an = and i8 %i.am, 63
  %i.ao = or disjoint i8 %i.an, -128
  %i.ap = getelementptr i8, ptr %1, i64 %.242
  %i.aq = getelementptr i8, ptr %i.ap, i64 -2
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !13
  %i.ar = lshr i32 %.13141, 18
  %i.as = trunc nuw i32 %i.ar to i8
  %i.at = and i8 %i.as, 63
  %i.au = or disjoint i8 %i.at, -128
  %i.av = getelementptr i8, ptr %1, i64 %.242
  %i.aw = getelementptr i8, ptr %i.av, i64 -3
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !13
  %i.ax = lshr i32 %.13141, 24                    ; 2 uses
  %.2.3 = add i64 %.242, -4                       ; 2 uses
  %.not34.3 = icmp eq i64 %.2.3, 0
  br i1 %.not34.3, label %._crit_edge44, label %.lr.ph43, !llvm.loop !2

._crit_edge44:                                    ; preds = %.lr.ph43.prol.loopexit, %.lr.ph43, %.preheader
  %.131.lcssa = phi i32 [ %0, %.preheader ], [ %.lcssa.unr, %.lr.ph43.prol.loopexit ], [ %i.ax, %.lr.ph43 ]
  %i.ay = trunc i64 %spec.select to i32
  %i.az = sub i32 8, %i.ay
  %notmask = shl nsw i32 -1, %i.az
  %i.ba = or i32 %.131.lcssa, %notmask
  %i.bb = trunc i32 %i.ba to i8
  store i8 %i.bb, ptr %1, align 1, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %._crit_edge44
  %.032 = phi i64 [ 0, %._crit_edge ], [ %spec.select, %._crit_edge44 ]
  store i64 %.032, ptr %3, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z19CodePoint_from_UTF8PKhmPjPm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZL25CodePoint_from_UTF8_MultiPKhmPjPm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !13      ; 4 uses
  %i.c = icmp slt i8 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i8 %i.b to i32
  br label %_ZL25CodePoint_from_UTF8_MultiPKhmPjPm.exit.sink.split

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.e = add nsw i64 %.03138.i, -4
  %or.cond.i = icmp ult i64 %i.e, -3
  br i1 %or.cond.i, label %._crit_edge.thread.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.039.i = phi i8 [ %i.g, %.lr.ph.i ], [ %i.b, %bb.b ]
  %.03138.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %bb.b ] ; 6 uses
  %i.f = add nuw nsw i64 %.03138.i, 1             ; 4 uses
  %i.g = shl i8 %.039.i, 1                        ; 2 uses
  %i.h = icmp slt i8 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %i.i = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.i, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.3, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 0, ptr %i.k, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

bb.d:                                             ; preds = %._crit_edge.i
  %.not54.i = icmp ult i64 %.03138.i, %1
  br i1 %.not54.i, label %.lr.ph47.preheader.i, label %_ZL25CodePoint_from_UTF8_MultiPKhmPjPm.exit

.lr.ph47.preheader.i:                             ; preds = %bb.d
  %i.l = zext i8 %i.b to i32
  %i.m = trunc nuw nsw i64 %i.f to i32
  %i.n = lshr exact i32 128, %i.m
  %i.o = add nuw nsw i32 %i.n, 255
  %i.p = and i32 %i.o, %i.l
  %.03244.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %.03244.i, align 1, !tbaa !13
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = and i32 %i.r, 192
  %.not36.i = icmp eq i32 %i.s, 128
  br i1 %.not36.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph47.i.7, %.lr.ph47.i.6, %.lr.ph47.i.5, %.lr.ph47.i.4, %.lr.ph47.i.3, %.lr.ph47.i.2, %.lr.ph47.i.1, %.lr.ph47.preheader.i
  %i.t = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.t, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @.str.4, ptr %i.u, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i8 0, ptr %i.v, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTI9XMP_Error, ptr null) #8
  unreachable

bb.f:                                             ; preds = %.lr.ph47.preheader.i
  %i.w = shl nuw nsw i32 %i.p, 6                  ; 2 uses
  %i.x = and i32 %i.r, 63
  %i.y = or disjoint i32 %i.x, %i.w               ; 2 uses
  %.not.i = icmp eq i64 %.03138.i, 1
  br i1 %.not.i, label %._crit_edge48.i, label %.lr.ph47.i.1

.lr.ph47.i.1:                                     ; preds = %bb.f
  %.03244.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.z = load i8, ptr %.03244.i.1, align 1, !tbaa !13
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %i.ab = and i32 %i.aa, 192
  %.not36.i.1 = icmp eq i32 %i.ab, 128
  br i1 %.not36.i.1, label %bb.g, label %bb.e

bb.g:                                             ; preds = %.lr.ph47.i.1
  %i.ac = shl nuw nsw i32 %i.y, 6                 ; 2 uses
  %i.ad = and i32 %i.aa, 63
  %i.ae = or disjoint i32 %i.ad, %i.ac            ; 2 uses
  %.not.i.1 = icmp eq i64 %.03138.i, 2
  br i1 %.not.i.1, label %._crit_edge48.i, label %.lr.ph47.i.2

.lr.ph47.i.2:                                     ; preds = %bb.g
  %.03244.i.2 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.af = load i8, ptr %.03244.i.2, align 1, !tbaa !13
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = and i32 %i.ag, 192
  %.not36.i.2 = icmp eq i32 %i.ah, 128
  br i1 %.not36.i.2, label %bb.h, label %bb.e

bb.h:                                             ; preds = %.lr.ph47.i.2
  %i.ai = shl nuw nsw i32 %i.ae, 6                ; 2 uses
  %i.aj = and i32 %i.ag, 63
  %i.ak = or disjoint i32 %i.aj, %i.ai            ; 2 uses
  %.not.i.2 = icmp eq i64 %.03138.i, 3
  br i1 %.not.i.2, label %._crit_edge48.i, label %.lr.ph47.i.3

.lr.ph47.i.3:                                     ; preds = %bb.h
  %.03244.i.3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i8, ptr %.03244.i.3, align 1, !tbaa !13
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = and i32 %i.am, 192
  %.not36.i.3 = icmp eq i32 %i.an, 128
  br i1 %.not36.i.3, label %.lr.ph47.i.4, label %bb.e

.lr.ph47.i.4:                                     ; preds = %.lr.ph47.i.3
  %.03244.i.4 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ao = load i8, ptr %.03244.i.4, align 1, !tbaa !13
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 192
  %.not36.i.4 = icmp eq i32 %i.aq, 128
  br i1 %.not36.i.4, label %.lr.ph47.i.5, label %bb.e

.lr.ph47.i.5:                                     ; preds = %.lr.ph47.i.4
  %i.ar = shl i32 %i.ak, 12
  %i.as = shl nuw nsw i32 %i.am, 6
  %i.at = and i32 %i.as, 4032
  %i.au = or disjoint i32 %i.ar, %i.at
  %i.av = and i32 %i.ap, 63
  %i.aw = or disjoint i32 %i.av, %i.au
  %.03244.i.5 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ax = load i8, ptr %.03244.i.5, align 1, !tbaa !13
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = and i32 %i.ay, 192
  %.not36.i.5 = icmp eq i32 %i.az, 128
  br i1 %.not36.i.5, label %.lr.ph47.i.6, label %bb.e

.lr.ph47.i.6:                                     ; preds = %.lr.ph47.i.5
  %.03244.i.6 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ba = load i8, ptr %.03244.i.6, align 1, !tbaa !13
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = and i32 %i.bb, 192
  %.not36.i.6 = icmp eq i32 %i.bc, 128
  br i1 %.not36.i.6, label %.lr.ph47.i.7, label %bb.e

.lr.ph47.i.7:                                     ; preds = %.lr.ph47.i.6
  %i.bd = shl i32 %i.aw, 12
  %i.be = shl nuw nsw i32 %i.ay, 6
  %i.bf = and i32 %i.be, 4032
  %i.bg = or disjoint i32 %i.bd, %i.bf
  %i.bh = and i32 %i.bb, 63
  %i.bi = or disjoint i32 %i.bh, %i.bg
  %.03244.i.7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load i8, ptr %.03244.i.7, align 1, !tbaa !13
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  %i.bl = and i32 %i.bk, 192
  %.not36.i.7 = icmp eq i32 %i.bl, 128
  br i1 %.not36.i.7, label %bb.i, label %bb.e

bb.i:                                             ; preds = %.lr.ph47.i.7
  %i.bm = shl i32 %i.bi, 6                        ; 2 uses
  %i.bn = and i32 %i.bk, 63
  %i.bo = or disjoint i32 %i.bn, %i.bm
  br label %._crit_edge48.i

._crit_edge48.i:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.lcssa22 = phi i32 [ %i.w, %bb.f ], [ %i.ac, %bb.g ], [ %i.ai, %bb.h ], [ %i.bm, %bb.i ] ; 3 uses
  %.lcssa = phi i32 [ %i.y, %bb.f ], [ %i.ae, %bb.g ], [ %i.ak, %bb.h ], [ %i.bo, %bb.i ] ; 2 uses
  %i.bp = icmp ugt i32 %.lcssa22, 55295
  br i1 %i.bp, label %bb.j, label %_ZL25CodePoint_from_UTF8_MultiPKhmPjPm.exit.sink.split

bb.j:                                             ; preds = %._crit_edge48.i
  %i.bq = icmp ult i32 %.lcssa22, 57344
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = tail call ptr @__cxa_allocate_exception(i64 24) #7 ; 4 uses
  store i32 4, ptr %i.br, align 8, !tbaa !19
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
end_hunk_2
