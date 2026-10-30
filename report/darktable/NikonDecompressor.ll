Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/NikonDecompressor?download=true
inline.NumInlined: 1176
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev:bb.a
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit.i

_ZNSt6vectorItSaItEED2Ev.exit.i:                  ; preds = %bb.c, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorItSaItEED2Ev.exit2.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit2.i

_ZNSt6vectorItSaItEED2Ev.exit2.i:                 ; preds = %bb.d, %_ZNSt6vectorItSaItEED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !69   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit2.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #24
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNSt6vectorItSaItEED2Ev.exit2.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i:              ; preds = %bb.f, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !58  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !59
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #24
  br label %_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEED2Ev.exit

_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !58     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed18AbstractPrefixCodeINS_15BaselineCodeTagEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #24
  br label %_ZN8rawspeed18AbstractPrefixCodeINS_15BaselineCodeTagEED2Ev.exit

_ZN8rawspeed18AbstractPrefixCodeINS_15BaselineCodeTagEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed17NikonDecompressorC2ENS_8RawImageENS_10ByteStreamEj(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 28), (48, 72)) %0, ptr nofree noundef align 8 captures(none) %1, ptr nofree noundef byval(%"class.rawspeed::ByteStream") align 8 captures(none) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 16      ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !54
  store ptr null, ptr %i.b, align 8, !tbaa !78
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !54
  store ptr null, ptr %1, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %3, ptr %i.d, align 8, !tbaa !239
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  store i32 0, ptr %i.e, align 4, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !81     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  %i.j = load i32, ptr %i.i, align 8, !tbaa !154
  %.not = icmp eq i32 %i.j, 1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 553
  %i.l = load i8, ptr %i.k, align 1, !tbaa !240
  %.not14 = icmp eq i8 %i.l, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 596
  %i.n = load i32, ptr %i.m, align 4, !tbaa !241
  %.not15 = icmp eq i32 %i.n, 2
  br i1 %.not15, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed17NikonDecompressorC2ENS_8RawImageENS_10ByteStreamEj) #16
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !242  ; 4 uses
  %i.q = icmp slt i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.s = load i32, ptr %i.r, align 4              ; 3 uses
  %i.t = icmp slt i32 %i.s, 1
  %.not51 = select i1 %i.q, i1 true, i1 %i.t
  %.not16 = trunc i32 %i.p to i1
  %i.u = icmp samesign ugt i32 %i.p, 8288
  %or.cond22 = or i1 %i.u, %.not16
  %or.cond48 = select i1 %.not51, i1 true, i1 %or.cond22
  %i.v = icmp samesign ugt i32 %i.s, 5520
  %or.cond60 = select i1 %or.cond48, i1 true, i1 %i.v
  br i1 %or.cond60, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed17NikonDecompressorC2ENS_8RawImageENS_10ByteStreamEj, i32 noundef %i.p, i32 noundef %i.s) #16
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  switch i32 %3, label %bb.j [
    i32 12, label %bb.l
    i32 14, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed17NikonDecompressorC2ENS_8RawImageENS_10ByteStreamEj, i32 noundef %3) #16
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !29   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !30   ; 10 uses
  %.not.i.not.i.i.i.i.i = icmp ult i32 %i.x, %i.z
  br i1 %.not.i.not.i.i.i.i.i, label %bb.m, label %.invoke

bb.m:                                             ; preds = %bb.l
  %i.aa = zext i32 %i.x to i64
  %i.ab = load ptr, ptr %2, align 8, !tbaa !32    ; 6 uses
  %i.ac = icmp sgt i32 %i.z, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.ad, align 1 ; 3 uses
  %i.ae = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.af = zext i8 %.0.copyload.i.i.i.i.i.i to i32 ; 2 uses
  %.not.i.not.i.i.i.i.i23 = icmp ult i32 %i.ae, %i.z
  br i1 %.not.i.not.i.i.i.i.i23, label %bb.n, label %.invoke

bb.n:                                             ; preds = %bb.m
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %.0.copyload.i.i.i.i.i.i24 = load i8, ptr %i.ah, align 1 ; 2 uses
  %i.ai = zext i8 %.0.copyload.i.i.i.i.i.i24 to i32 ; 2 uses
  invoke void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, i32 noundef %i.af, i32 noundef %i.ai)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aj = add nuw nsw i32 %i.x, 2
  %i.ak = icmp eq i8 %.0.copyload.i.i.i.i.i.i, 73
  %i.al = icmp eq i8 %.0.copyload.i.i.i.i.i.i24, 88
  %or.cond = or i1 %i.ak, %i.al
  br i1 %or.cond, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %5 = zext nneg i32 %i.x to i64
  %i.am = add nuw nsw i64 %5, 2112
  %i.an = zext nneg i32 %i.z to i64
  %.not.i.i = icmp samesign ugt i64 %i.am, %i.an
  br i1 %.not.i.i, label %.invoke, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.p
  %i.ao = add nuw nsw i32 %i.x, 2112              ; 2 uses
  %i.ap = icmp samesign ule i32 %i.ao, %i.z
  tail call void @llvm.assume(i1 %i.ap)
  br label %bb.r

bb.q:                                             ; preds = %.invoke, %bb.j, %bb.g, %bb.d, %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.r:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %bb.o
  %i.ar = phi i32 [ %i.ao, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ], [ %i.aj, %bb.o ] ; 5 uses
  %i.as = icmp eq i8 %.0.copyload.i.i.i.i.i.i, 70
  br i1 %i.as, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 2, ptr %i.e, align 4, !tbaa !89
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.at = load i32, ptr %i.d, align 8, !tbaa !239 ; 2 uses
  %i.au = icmp eq i32 %i.at, 14
  br i1 %i.au, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.av = load i32, ptr %i.e, align 4, !tbaa !89
  %i.aw = add i32 %i.av, 3
  store i32 %i.aw, ptr %i.e, align 4, !tbaa !89
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ax = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, 2
  %i.az = zext nneg i32 %i.z to i64               ; 4 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.ay, %i.az
  br i1 %.not.i.i.i.i.i.i, label %.invoke, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !31
  %i.bc = icmp eq i16 %i.bb, -8531                ; 4 uses
  %i.bd = add nuw nsw i32 %i.ar, 2                ; 2 uses
  %i.be = icmp samesign ule i32 %i.bd, %i.z
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ax
  %.0.copyload.i.i.i.i.i.i28 = load i16, ptr %i.bf, align 1 ; 2 uses
  %i.bg = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i28)
  %spec.select.i.i.i.i.i.i = select i1 %i.bc, i16 %.0.copyload.i.i.i.i.i.i28, i16 %i.bg
  %i.bh = zext i16 %spec.select.i.i.i.i.i.i to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !33
  %i.bj = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bk = add nuw nsw i64 %i.bj, 2
  %.not.i.i.i.i.i.i30 = icmp samesign ugt i64 %i.bk, %i.az
  br i1 %.not.i.i.i.i.i.i30, label %.invoke, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = add nuw nsw i32 %i.ar, 4                ; 2 uses
  %i.bm = icmp samesign ule i32 %i.bl, %i.z
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bj
  %.0.copyload.i.i.i.i.i.i31 = load i16, ptr %i.bn, align 1 ; 2 uses
  %i.bo = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i31)
  %spec.select.i.i.i.i.i.i32 = select i1 %i.bc, i16 %.0.copyload.i.i.i.i.i.i31, i16 %i.bo
  %i.bp = zext i16 %spec.select.i.i.i.i.i.i32 to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !33
  %i.br = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bs = add nuw nsw i64 %i.br, 2
  %.not.i.i.i.i.i.i35 = icmp samesign ugt i64 %i.bs, %i.az
  br i1 %.not.i.i.i.i.i.i35, label %.invoke, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = add nuw nsw i32 %i.ar, 6                ; 2 uses
  %i.bu = icmp samesign ule i32 %i.bt, %i.z
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.br
  %.0.copyload.i.i.i.i.i.i36 = load i16, ptr %i.bv, align 1 ; 2 uses
  %i.bw = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i36)
  %spec.select.i.i.i.i.i.i37 = select i1 %i.bc, i16 %.0.copyload.i.i.i.i.i.i36, i16 %i.bw
  %i.bx = zext i16 %spec.select.i.i.i.i.i.i37 to i32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !33
  %i.bz = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.ca = add nuw nsw i64 %i.bz, 2
  %.not.i.i.i.i.i.i40 = icmp samesign ugt i64 %i.ca, %i.az
  br i1 %.not.i.i.i.i.i.i40, label %.invoke, label %bb.z

.invoke:                                          ; preds = %bb.p, %bb.l, %bb.m, %bb.y, %bb.x, %bb.w, %bb.v
  %i.cb = phi ptr [ @.str.7, %bb.x ], [ @.str.7, %bb.w ], [ @.str.7, %bb.v ], [ @.str.7, %bb.y ], [ @.str.7, %bb.m ], [ @.str.7, %bb.l ], [ @.str.9, %bb.p ]
  %i.cc = phi ptr [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.x ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.w ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.v ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.y ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.m ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.l ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj, %bb.p ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cc) #16
          to label %.cont unwind label %bb.q

.cont:                                            ; preds = %.invoke
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.cd = add nuw nsw i32 %i.ar, 8                ; 2 uses
  %i.ce = icmp samesign ule i32 %i.cd, %i.z
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bz
  %.0.copyload.i.i.i.i.i.i41 = load i16, ptr %i.cf, align 1 ; 2 uses
  %i.cg = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i41)
  %spec.select.i.i.i.i.i.i42 = select i1 %i.bc, i16 %.0.copyload.i.i.i.i.i.i41, i16 %i.cg
  store i32 %i.cd, ptr %i.w, align 8, !tbaa !29
  %i.ch = zext i16 %spec.select.i.i.i.i.i.i42 to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN8rawspeed17NikonDecompressor11createCurveERNS_10ByteStreamEjjjPj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.at, i32 noundef %i.af, i32 noundef %i.ai, ptr noundef nonnull %i.f)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !15  ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !16
  %i.cm = load <2 x ptr>, ptr %4, align 16, !tbaa !243
  store <2 x ptr> %i.cm, ptr %i.g, align 8, !tbaa !243
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !16
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !16
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %_ZNSt6vectorItSaItEEaSEOS1_.exit

_ZNSt6vectorItSaItEEaSEOS1_.exit:                 ; preds = %bb.aa
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = ptrtoint ptr %i.cj to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cr) #24
  %.pr = load ptr, ptr %4, align 16, !tbaa !15    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorItSaItEEaSEOS1_.exit
  %i.cs = load ptr, ptr %i.cn, align 16, !tbaa !16
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %.pr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cv) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.aa, %_ZNSt6vectorItSaItEEaSEOS1_.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cw = load i32, ptr %i.f, align 8, !tbaa !90
  %i.cx = load ptr, ptr %0, align 8, !tbaa !81
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 44
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !155
  %.not19 = icmp ult i32 %i.cw, %i.cz
  br i1 %.not19, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  store i32 0, ptr %i.f, align 8, !tbaa !90
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac, %_ZNSt6vectorItSaItEED2Ev.exit
  ret void

bb.af:                                            ; preds = %bb.ad, %bb.q
  %.pn20 = phi { ptr, i32 } [ %i.aq, %bb.q ], [ %i.da, %bb.ad ]
  %i.db = load ptr, ptr %i.g, align 8, !tbaa !15  ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorItSaItEED2Ev.exit46, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !16
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit46

_ZNSt6vectorItSaItEED2Ev.exit46:                  ; preds = %bb.af, %bb.ag
  call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  resume { ptr, i32 } %.pn20
}

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !246
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !247
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !call_target !162, !inline_history !244
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !call_target !164, !inline_history !244
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
end_hunk_0
