Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/NikonDecompressor?download=true
inline.NumInlined: 1176
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev:bb.a
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
  br i1 %.not15, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed17NikonDecompressorC2ENS_8RawImageENS_10ByteStreamEj) #16
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.k, %bb.h, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.g:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !242  ; 4 uses
  %i.r = icmp slt i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = icmp slt i32 %i.t, 1
  %.not51 = select i1 %i.r, i1 true, i1 %i.u
  %.not16 = trunc i32 %i.q to i1
  %i.v = icmp samesign ugt i32 %i.q, 8288
  %or.cond22 = or i1 %i.v, %.not16
  %or.cond48 = select i1 %.not51, i1 true, i1 %or.cond22
  %i.w = icmp samesign ugt i32 %i.t, 5520
  %or.cond60 = select i1 %or.cond48, i1 true, i1 %i.w
  br i1 %or.cond60, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed17NikonDecompressorC2ENS_8RawImageENS_10ByteStreamEj, i32 noundef %i.q, i32 noundef %i.t) #16
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  switch i32 %3, label %bb.k [
    i32 12, label %bb.m
    i32 14, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed17NikonDecompressorC2ENS_8RawImageENS_10ByteStreamEj, i32 noundef %3) #16
          to label %bb.l unwind label %bb.f

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !29   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !30  ; 10 uses
  %.not.i.not.i.i.i.i.i = icmp ult i32 %i.y, %i.aa
  br i1 %.not.i.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #16
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ab = zext i32 %i.y to i64                    ; 2 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !32    ; 6 uses
  %i.ad = icmp sgt i32 %i.aa, -1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.ae, align 1 ; 3 uses
  %i.af = add nuw i32 %i.y, 1                     ; 2 uses
  %i.ag = zext i8 %.0.copyload.i.i.i.i.i.i to i32 ; 2 uses
  %.not.i.not.i.i.i.i.i23 = icmp ult i32 %i.af, %i.aa
  br i1 %.not.i.not.i.i.i.i.i23, label %bb.p, label %.invoke

bb.p:                                             ; preds = %bb.o
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %.0.copyload.i.i.i.i.i.i24 = load i8, ptr %i.ai, align 1 ; 2 uses
  %i.aj = zext i8 %.0.copyload.i.i.i.i.i.i24 to i32 ; 2 uses
  invoke void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, i32 noundef %i.ag, i32 noundef %i.aj)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ak = add nuw nsw i32 %i.y, 2
  %i.al = icmp eq i8 %.0.copyload.i.i.i.i.i.i, 73
  %i.am = icmp eq i8 %.0.copyload.i.i.i.i.i.i24, 88
  %or.cond = or i1 %i.al, %i.am
  br i1 %or.cond, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.an = add nuw nsw i64 %i.ab, 2112
  %i.ao = zext nneg i32 %i.aa to i64
  %.not.i.i = icmp samesign ugt i64 %i.an, %i.ao
  br i1 %.not.i.i, label %.invoke, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.r
  %i.ap = add nuw i32 %i.y, 2112                  ; 2 uses
  %i.aq = icmp samesign ule i32 %i.ap, %i.aa
  tail call void @llvm.assume(i1 %i.aq)
  br label %bb.u

bb.s:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.t:                                             ; preds = %.invoke, %bb.p
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.u:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %bb.q
  %i.at = phi i32 [ %i.ap, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ], [ %i.ak, %bb.q ] ; 5 uses
  %i.au = icmp eq i8 %.0.copyload.i.i.i.i.i.i, 70
  br i1 %i.au, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 2, ptr %i.e, align 4, !tbaa !89
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.av = load i32, ptr %i.d, align 8, !tbaa !239 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 14
  br i1 %i.aw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !89
  %i.ay = add i32 %i.ax, 3
  store i32 %i.ay, ptr %i.e, align 4, !tbaa !89
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.az = zext i32 %i.at to i64                   ; 2 uses
  %i.ba = add nuw nsw i64 %i.az, 2
  %i.bb = zext nneg i32 %i.aa to i64              ; 4 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.ba, %i.bb
  br i1 %.not.i.i.i.i.i.i, label %.invoke, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !31
  %i.be = icmp eq i16 %i.bd, -8531                ; 4 uses
  %i.bf = add nuw nsw i32 %i.at, 2                ; 2 uses
  %i.bg = icmp samesign ule i32 %i.bf, %i.aa
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.az
  %.0.copyload.i.i.i.i.i.i28 = load i16, ptr %i.bh, align 1 ; 2 uses
  %i.bi = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i28)
  %spec.select.i.i.i.i.i.i = select i1 %i.be, i16 %.0.copyload.i.i.i.i.i.i28, i16 %i.bi
  %i.bj = zext i16 %spec.select.i.i.i.i.i.i to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !33
  %i.bl = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, 2
  %.not.i.i.i.i.i.i30 = icmp samesign ugt i64 %i.bm, %i.bb
  br i1 %.not.i.i.i.i.i.i30, label %.invoke, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = add nuw nsw i32 %i.at, 4                ; 2 uses
  %i.bo = icmp samesign ule i32 %i.bn, %i.aa
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bl
  %.0.copyload.i.i.i.i.i.i31 = load i16, ptr %i.bp, align 1 ; 2 uses
  %i.bq = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i31)
  %spec.select.i.i.i.i.i.i32 = select i1 %i.be, i16 %.0.copyload.i.i.i.i.i.i31, i16 %i.bq
  %i.br = zext i16 %spec.select.i.i.i.i.i.i32 to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !33
  %i.bt = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bu = add nuw nsw i64 %i.bt, 2
  %.not.i.i.i.i.i.i35 = icmp samesign ugt i64 %i.bu, %i.bb
  br i1 %.not.i.i.i.i.i.i35, label %.invoke, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = add nuw nsw i32 %i.at, 6                ; 2 uses
  %i.bw = icmp samesign ule i32 %i.bv, %i.aa
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bt
  %.0.copyload.i.i.i.i.i.i36 = load i16, ptr %i.bx, align 1 ; 2 uses
  %i.by = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i36)
  %spec.select.i.i.i.i.i.i37 = select i1 %i.be, i16 %.0.copyload.i.i.i.i.i.i36, i16 %i.by
  %i.bz = zext i16 %spec.select.i.i.i.i.i.i37 to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !33
  %i.cb = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.cc = add nuw nsw i64 %i.cb, 2
  %.not.i.i.i.i.i.i40 = icmp samesign ugt i64 %i.cc, %i.bb
  br i1 %.not.i.i.i.i.i.i40, label %.invoke, label %bb.ac

.invoke:                                          ; preds = %bb.r, %bb.o, %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.cd = phi ptr [ @.str.7, %bb.aa ], [ @.str.7, %bb.z ], [ @.str.7, %bb.y ], [ @.str.7, %bb.ab ], [ @.str.7, %bb.o ], [ @.str.9, %bb.r ]
  %i.ce = phi ptr [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.aa ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.z ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.y ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.ab ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.o ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj, %bb.r ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ce) #16
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.cf = add nuw nsw i32 %i.at, 8                ; 2 uses
  %i.cg = icmp samesign ule i32 %i.cf, %i.aa
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cb
  %.0.copyload.i.i.i.i.i.i41 = load i16, ptr %i.ch, align 1 ; 2 uses
  %i.ci = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i41)
  %spec.select.i.i.i.i.i.i42 = select i1 %i.be, i16 %.0.copyload.i.i.i.i.i.i41, i16 %i.ci
  store i32 %i.cf, ptr %i.x, align 8, !tbaa !29
  %i.cj = zext i16 %spec.select.i.i.i.i.i.i42 to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN8rawspeed17NikonDecompressor11createCurveERNS_10ByteStreamEjjjPj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.av, i32 noundef %i.ag, i32 noundef %i.aj, ptr noundef nonnull %i.f)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !15  ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !16
  %i.co = load <2 x ptr>, ptr %4, align 16, !tbaa !243
  store <2 x ptr> %i.co, ptr %i.g, align 8, !tbaa !243
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 16, !tbaa !16
  store ptr %i.cq, ptr %i.cm, align 8, !tbaa !16
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %_ZNSt6vectorItSaItEEaSEOS1_.exit

_ZNSt6vectorItSaItEEaSEOS1_.exit:                 ; preds = %bb.ad
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = ptrtoint ptr %i.cl to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ct) #24
  %.pr = load ptr, ptr %4, align 16, !tbaa !15    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorItSaItEEaSEOS1_.exit
  %i.cu = load ptr, ptr %i.cp, align 16, !tbaa !16
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %.pr to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cx) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.ad, %_ZNSt6vectorItSaItEEaSEOS1_.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cy = load i32, ptr %i.f, align 8, !tbaa !90
  %i.cz = load ptr, ptr %0, align 8, !tbaa !81
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 44
  %i.db = load i32, ptr %i.da, align 4, !tbaa !155
  %.not19 = icmp ult i32 %i.cy, %i.db
  br i1 %.not19, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  store i32 0, ptr %i.f, align 8, !tbaa !90
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %_ZNSt6vectorItSaItEED2Ev.exit
  ret void

bb.ai:                                            ; preds = %bb.s, %bb.ag, %bb.t, %bb.f
  %.pn20 = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.ar, %bb.s ], [ %i.dc, %bb.ag ], [ %i.as, %bb.t ]
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !15  ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorItSaItEED2Ev.exit46, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !16
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit46

_ZNSt6vectorItSaItEED2Ev.exit46:                  ; preds = %bb.ai, %bb.aj
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
