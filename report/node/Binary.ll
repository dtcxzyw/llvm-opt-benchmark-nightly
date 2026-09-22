Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/Binary?download=true
inline.NumInlined: 6710
inline.NumDeleted: 2795
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4LIEF2PE6BinaryD2Ev:bb.a
  %i.gj = load ptr, ptr %.05.i.i.i68, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  tail call void %i.gl(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.05.i.i.i68) #25, !inline_history !84
  %i.gm = getelementptr inbounds nuw i8, ptr %.05.i.i.i68, i64 120 ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.gm, %i.gi
  br i1 %.not.i.i.i69, label %_ZSt8_DestroyIPN4LIEF2PE9SignatureEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i67, !llvm.loop !85

_ZSt8_DestroyIPN4LIEF2PE9SignatureEEvT_S4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i67
  %.pr.i70 = load ptr, ptr %i.gf, align 8
  br label %_ZSt8_DestroyIPN4LIEF2PE9SignatureEEvT_S4_.exit.i

_ZSt8_DestroyIPN4LIEF2PE9SignatureEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN4LIEF2PE9SignatureEEvT_S4_.exitthread-pre-split.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.gn = phi ptr [ %.pr.i70, %_ZSt8_DestroyIPN4LIEF2PE9SignatureEEvT_S4_.exitthread-pre-split.i ], [ %i.gg, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE7SectionESt14default_deleteIS3_EESaIS6_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i71 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i1.i71, label %_ZNSt6vectorIN4LIEF2PE9SignatureESaIS2_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN4LIEF2PE9SignatureEEvT_S4_.exit.i
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.gn to i64
  %i.gs = sub i64 %i.gq, %i.gr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gs) #26
  br label %_ZNSt6vectorIN4LIEF2PE9SignatureESaIS2_EED2Ev.exit

_ZNSt6vectorIN4LIEF2PE9SignatureESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4LIEF2PE9SignatureEEvT_S4_.exit.i, %bb.n
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.gt) #25
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.gu) #25
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.gv) #25
  tail call void @_ZN4LIEF6BinaryD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4LIEF6BinaryD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE6BinaryD0Ev(ptr noundef nonnull align 8 dereferenceable(736) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4LIEF2PE6BinaryD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 736) #26
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE6BinaryC2Ev(ptr noundef nonnull align 8 dereferenceable(736) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4LIEF6BinaryC2ENS0_7FORMATSE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 2) #25
  store ptr getelementptr inbounds nuw inrange(-16, 200) (i8, ptr @_ZTVN4LIEF2PE6BinaryE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 523, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.b) #25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF2PE9DosHeaderE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF2PE6HeaderE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 0, ptr %i.h, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.g, i8 0, i64 14, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %i.i) #25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF2PE14OptionalHeaderE, i64 16), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i16 267, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 218
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.k, i8 0, i64 26, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.l, i8 0, i64 44, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.o, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.p, i8 0, i64 376, i1 false)
  ret void
}

declare void @_ZN4LIEF6BinaryC2ENS0_7FORMATSE(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE6Binary5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7Builder8config_tE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.171") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(736) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(241) %3) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.a = tail call noalias noundef nonnull dereferenceable(432) ptr @_Znwm(i64 noundef 432) #27, !noalias !92 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.a, i8 0, i64 64, i1 false), !noalias !92
  store ptr %i.b, ptr %i.c, align 8, !noalias !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %i.d, align 8, !noalias !92
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %1, ptr %i.e, align 8, !noalias !92
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call void @_ZN4LIEF2PE7Builder8config_tC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(241) %i.f, ptr noundef nonnull align 8 dereferenceable(241) %3), !noalias !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.g, i8 0, i64 96, i1 false), !noalias !92
  store ptr %i.a, ptr %0, align 8, !alias.scope !92
  %i.h = tail call i64 @_ZN4LIEF2PE7Builder5buildEv(ptr noundef nonnull align 8 dereferenceable(432) %i.a) #25, !noalias !90 ; 0 uses
  tail call void @_ZNK4LIEF2PE7Builder5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(432) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2) #25, !noalias !90
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE6Binary5writeERSoRKNS0_7Builder8config_tE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.171") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(736) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(241) %3) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.a = tail call noalias noundef nonnull dereferenceable(432) ptr @_Znwm(i64 noundef 432) #27, !noalias !99 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.a, i8 0, i64 64, i1 false), !noalias !99
  store ptr %i.b, ptr %i.c, align 8, !noalias !99
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %i.d, align 8, !noalias !99
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %1, ptr %i.e, align 8, !noalias !99
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call void @_ZN4LIEF2PE7Builder8config_tC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(241) %i.f, ptr noundef nonnull align 8 dereferenceable(241) %3), !noalias !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.g, i8 0, i64 96, i1 false), !noalias !99
  store ptr %i.a, ptr %0, align 8, !alias.scope !99
  %i.h = tail call i64 @_ZN4LIEF2PE7Builder5buildEv(ptr noundef nonnull align 8 dereferenceable(432) %i.a) #25, !noalias !97 ; 0 uses
  tail call void @_ZNK4LIEF2PE7Builder5writeERSo(ptr noundef nonnull align 8 dereferenceable(432) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2) #25, !noalias !97
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(112) ptr @_ZN4LIEF2PE6Binary3tlsERKNS0_3TLSE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(736) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #27, !noalias !103 ; 4 uses
  tail call void @_ZN4LIEF2PE3TLSC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %1), !noalias !103
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, 72
  br i1 %i.i, label %bb.b, label %_ZN4LIEF2PE6Binary7tls_dirEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  br label %_ZN4LIEF2PE6Binary7tls_dirEv.exit

_ZN4LIEF2PE6Binary7tls_dirEv.exit:                ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ null, %bb.a ], [ %i.k, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.0.i.i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  store ptr %i.a, ptr %i.m, align 8
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4LIEF2PE3TLSESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF2PE3TLSEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE3TLSEEclEPS2_.exit.i.i.i.i: ; preds = %_ZN4LIEF2PE6Binary7tls_dirEv.exit
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(112) %i.n) #25, !inline_history !102
  %.pre = load ptr, ptr %i.m, align 8
  br label %_ZNSt10unique_ptrIN4LIEF2PE3TLSESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE3TLSESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4LIEF2PE3TLSEEclEPS2_.exit.i.i.i.i, %_ZN4LIEF2PE6Binary7tls_dirEv.exit
  %i.r = phi ptr [ %.pre, %_ZNKSt14default_deleteIN4LIEF2PE3TLSEEclEPS2_.exit.i.i.i.i ], [ %i.a, %_ZN4LIEF2PE6Binary7tls_dirEv.exit ]
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE6Binary10remove_tlsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(736) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF2PE3TLSESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZN4LIEF2PE6Binary7tls_dirEv.exit

_ZN4LIEF2PE6Binary7tls_dirEv.exit:                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load i16, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8              ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = add i32 %i.n, %i.l                       ; 8 uses
  %i.p = zext i32 %i.l to i64                     ; 2 uses
  %i.q = zext i32 %i.n to i64                     ; 2 uses
  %i.r = sub i64 %i.p, %i.j                       ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  %spec.select.i = select i1 %i.s, i64 %i.r, i64 %i.p ; 2 uses
  %i.t = tail call noundef ptr @_ZNK4LIEF2PE6Binary16section_from_rvaEm(ptr noundef nonnull readonly align 8 dereferenceable(736) %0, i64 noundef %spec.select.i) ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4LIEF2PE6Binary7tls_dirEv.exit
  %i.v = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.50) #25 ; 0 uses
  br label %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit

bb.c:                                             ; preds = %_ZN4LIEF2PE6Binary7tls_dirEv.exit
  %i.w = load ptr, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(64) %i.t) #25, !inline_history !50
  %i.aa = sub i64 %spec.select.i, %i.z            ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = add i64 %i.aa, %i.q
  %i.aj = icmp ugt i64 %i.ai, %i.ah
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.50) #25 ; 0 uses
  br label %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit

bb.e:                                             ; preds = %bb.c
  %i.al = icmp eq i32 %i.n, 0
  br i1 %i.al, label %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 0, i64 %i.q, i1 false)
  br label %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit

_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %i.an = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i64, ptr %i.ao, align 8            ; 4 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit
  %i.aq = icmp eq i16 %i.h, 267
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3
  %i.az = select i1 %i.aq, i64 2, i64 3
  %i.ba = shl nsw i64 %i.ay, %i.az                ; 3 uses
  %i.bb = load i64, ptr %i.i, align 8
  %i.bc = sub i64 %i.ap, %i.bb                    ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  %spec.select.i28 = select i1 %i.bd, i64 %i.bc, i64 %i.ap ; 2 uses
  %i.be = tail call noundef ptr @_ZNK4LIEF2PE6Binary16section_from_rvaEm(ptr noundef nonnull readonly align 8 dereferenceable(736) %0, i64 noundef %spec.select.i28) ; 5 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.50) #25 ; 0 uses
  br label %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit29

bb.i:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %i.be, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef i64 %i.bj(ptr noundef nonnull align 8 dereferenceable(64) %i.be) #25, !inline_history !50
  %i.bl = sub i64 %spec.select.i28, %i.bk         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = add i64 %i.bl, %i.ba
  %i.bu = icmp ugt i64 %i.bt, %i.bs
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.50) #25 ; 0 uses
  br label %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit29

bb.k:                                             ; preds = %bb.i
  %i.bw = icmp eq ptr %i.at, %i.au
  br i1 %i.bw, label %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit29, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bx, i8 0, i64 %i.ba, i1 false)
  br label %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit29

_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit29: ; preds = %bb.h, %bb.j, %bb.k, %bb.l
  %i.by = sub i64 %i.ap, %i.j                     ; 2 uses
  %i.bz = trunc i64 %i.by to i32
  %i.ca = add i64 %i.ba, %i.by
  %i.cb = trunc i64 %i.ca to i32
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit29, %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit
  %i.cc = phi ptr [ %i.an, %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit ], [ %.pre, %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit29 ] ; 2 uses
  %.081 = phi i32 [ 0, %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit ], [ %i.bz, %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit29 ] ; 8 uses
  %.0 = phi i32 [ 0, %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit ], [ %i.cb, %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit29 ] ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load i64, ptr %i.cd, align 8            ; 5 uses
  %.not27 = icmp eq i64 %i.ce, 0
  br i1 %.not27, label %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit31, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = sub i64 %i.cg, %i.ce                    ; 2 uses
  %i.ci = load i64, ptr %i.i, align 8
  %i.cj = sub i64 %i.ce, %i.ci                    ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, 0
  %spec.select.i30 = select i1 %i.ck, i64 %i.cj, i64 %i.ce ; 2 uses
  %i.cl = tail call noundef ptr @_ZNK4LIEF2PE6Binary16section_from_rvaEm(ptr noundef nonnull readonly align 8 dereferenceable(736) %0, i64 noundef %spec.select.i30) ; 5 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cn = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.50) #25 ; 0 uses
  br label %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit31

bb.p:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %i.cl, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 88
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call noundef i64 %i.cq(ptr noundef nonnull align 8 dereferenceable(64) %i.cl) #25, !inline_history !50
  %i.cs = sub i64 %spec.select.i30, %i.cr         ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = add i64 %i.cs, %i.ch
  %i.db = icmp ugt i64 %i.da, %i.cz
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dc = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.50) #25 ; 0 uses
  br label %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit31

bb.r:                                             ; preds = %bb.p
  %i.dd = icmp eq i64 %i.cg, %i.ce
  br i1 %i.dd, label %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit31, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.de, i8 0, i64 %i.ch, i1 false)
  br label %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit31

_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit31: ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !116 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !117 ; 2 uses
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 3
  %.not97117 = icmp eq ptr %i.di, %i.dg
  br i1 %.not97117, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE15RelocationEntryESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EESD_.exit, %_ZN4LIEF2PE6Binary12fill_addressEmmhNS_6Binary8VA_TYPESE.exit31
  store i32 0, ptr %i.k, align 8
  store i32 0, ptr %i.m, align 4
  %i.dn = load ptr, ptr %i.a, align 8             ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4LIEF2PE3TLSESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN4LIEF2PE3TLSEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4LIEF2PE3TLSEEclEPS2_.exit.i.i: ; preds = %._crit_edge
  %i.do = load ptr, ptr %i.dn, align 8
end_hunk_0
