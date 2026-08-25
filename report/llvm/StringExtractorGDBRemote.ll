Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StringExtractorGDBRemote?download=true
begin_hunk_0_@_ZN24StringExtractorGDBRemote9GetStatusEv:bb.a
  store i8 0, ptr %i.h, align 8, !tbaa !15
  %i.j = call noundef signext i8 @_ZN15StringExtractor7GetCharEc(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef signext 0) #13
  %i.k = icmp eq i8 %i.j, 59
  br i1 %i.k, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef i64 @_ZN15StringExtractor16GetHexByteStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !18
  %i.n = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.o = load i64, ptr %i.i, align 8, !tbaa !8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.o, ptr %i.a, align 8, !tbaa !19
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #13 ; 2 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !14
  %i.r = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.r, ptr %i.m, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %i.o, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.n, align 1, !tbaa !15
  store i8 %i.t, ptr %i.s, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.n, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.u = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !8
  %i.w = load ptr, ptr %5, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @_ZN12lldb_private6StatusC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr nofree noundef nonnull align 8 dereferenceable(32) %5) #13
  %i.y = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %4) #13 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #13
  %i.z = load ptr, ptr %5, align 8, !tbaa !14     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.m
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !15
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ad = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.g
  %i.af = load i64, ptr %i.h, align 8, !tbaa !15
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  ret void
}

declare void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #6

declare void @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef, ...) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #7

declare noundef signext i8 @_ZN15StringExtractor7GetCharEc(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef signext) local_unnamed_addr #6

declare noundef i64 @_ZN15StringExtractor16GetHexByteStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZN12lldb_private6StatusC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr nofree noundef align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN24StringExtractorGDBRemote20GetEscapedBinaryDataERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) initializes((8, 16)) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !8
  %i.b = load ptr, ptr %1, align 8, !tbaa !14
  store i8 0, ptr %i.b, align 1, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  %.not.not = icmp ugt i64 %i.f, %i.d
  br i1 %.not.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_mm.exit, label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_mm.exit: ; preds = %bb.a
  %spec.select.i = sub nuw i64 %i.f, %i.d         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = load i64, ptr %i.a, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.i, ptr noundef %i.j, i64 noundef %spec.select.i) #13 ; 0 uses
  %i.l = load i64, ptr %i.c, align 8, !tbaa !16
  %i.m = add i64 %i.l, %spec.select.i
  store i64 %i.m, ptr %i.c, align 8, !tbaa !16
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_mm.exit, %bb.a
  %i.n = load i64, ptr %i.a, align 8, !tbaa !8
  ret i64 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN24StringExtractorGDBRemote21CopyResponseValidatorERKS_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((48, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load <2 x ptr>, ptr %i.a, align 8, !tbaa !20
  store <2 x ptr> %i.c, ptr %i.b, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN24StringExtractorGDBRemote20SetResponseValidatorEPFbPvRKS_ES0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((48, 64)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %2, ptr %i.b, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN24StringExtractorGDBRemote41SetResponseValidatorToOKErrorNotSupportedEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((48, 64)) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZL36OKErrorNotSupportedResponseValidatorPvRK24StringExtractorGDBRemote, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.b, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal noundef zeroext i1 @_ZL36OKErrorNotSupportedResponseValidatorPvRK24StringExtractorGDBRemote(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) #0 {
switch.lookup:
  %i.a = tail call noundef i32 @_ZNK24StringExtractorGDBRemote15GetResponseTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %switch.cast = trunc nuw nsw i32 %i.a to i6
  %switch.downshift = lshr i6 25, %switch.cast
  %switch.masked = trunc i6 %switch.downshift to i1
  ret i1 %switch.masked
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN24StringExtractorGDBRemote35SetResponseValidatorToASCIIHexBytesEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((48, 64)) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZL30ASCIIHexBytesResponseValidatorPvRK24StringExtractorGDBRemote, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.b, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal noundef zeroext i1 @_ZL30ASCIIHexBytesResponseValidatorPvRK24StringExtractorGDBRemote(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK24StringExtractorGDBRemote15GetResponseTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  switch i32 %i.a, label %bb.d [
    i32 0, label %.split.loop.exit
    i32 3, label %.split.loop.exit
    i32 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %.not25 = icmp samesign eq i64 %i.e, 0
  br i1 %.not25, label %.split.loop.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %2 = add nuw nsw i32 %.01527, 1
  %3 = getelementptr inbounds nuw i8, ptr %.01726, i64 1 ; 2 uses
  %.not = icmp eq ptr %3, %i.f
  br i1 %.not, label %.split.loop.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.01527 = phi i32 [ %2, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.01726 = phi ptr [ %3, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.g = load i8, ptr %.01726, align 1, !tbaa !15
  %i.h = sext i8 %i.g to i32
  %i.i = tail call i32 @isxdigit(i32 noundef %i.h) #12
  %.not20 = icmp ne i32 %i.i, 0                   ; 2 uses
  %i.j = icmp samesign ult i32 %.01527, 15        ; 2 uses
  %cond1 = select i1 %.not20, i1 %i.j, i1 false
  br i1 %cond1, label %bb.c, label %.split.loop.exit23

.split.loop.exit23:                               ; preds = %.lr.ph
  %not. = xor i1 %i.j, true
  %i.k = select i1 %.not20, i1 %not., i1 false
  br label %.split.loop.exit

bb.d:                                             ; preds = %bb.a
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.c, %.split.loop.exit23, %bb.b, %bb.a, %bb.a, %bb.d
  %.4 = phi i1 [ false, %bb.d ], [ true, %bb.a ], [ true, %bb.a ], [ %i.k, %.split.loop.exit23 ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN24StringExtractorGDBRemote26SetResponseValidatorToJSONEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((48, 64)) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZL21JSONResponseValidatorPvRK24StringExtractorGDBRemote, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.b, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal noundef zeroext i1 @_ZL21JSONResponseValidatorPvRK24StringExtractorGDBRemote(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK24StringExtractorGDBRemote15GetResponseTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  switch i32 %i.a, label %bb.c [
    i32 0, label %bb.d
    i32 3, label %bb.d
    i32 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = load i8, ptr %i.c, align 1, !tbaa !15
  %i.e = add i8 %i.d, -91
  %switch.and = and i8 %i.e, -33
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.a ], [ %switch.selectcmp, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK24StringExtractorGDBRemote16ValidateResponseEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = tail call noundef zeroext i1 %i.b(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(64) %0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN24StringExtractorGDBRemote9GetPidTidEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) initializes((16, 17)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, i64 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !8    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated4.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.h) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.speculated4.i ; 6 uses
  %i.j = sub i64 %i.f, %.sroa.speculated4.i       ; 7 uses
  store ptr %i.i, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.j, ptr %i.k, align 8
  %.not.i.i.not = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i.i.not, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i, label %_ZN4llvm9StringRef13consume_frontES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.a
  %lhsc = load i8, ptr %i.i, align 1
  %i.l = icmp eq i8 %lhsc, 112
  br i1 %i.l, label %bb.b, label %_ZN4llvm9StringRef13consume_frontES0_.exit.thread

bb.b:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.n = add i64 %i.j, -1                         ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !24
  store i64 %i.n, ptr %i.k, align 8, !tbaa !19
  %.not.i.i7 = icmp ult i64 %i.n, 2
  br i1 %.not.i.i7, label %bb.d, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i9

_ZNK4llvm9StringRef11starts_withES0_.exit.i9:     ; preds = %bb.b
  %i.o = load i16, ptr %i.m, align 1
  %i.p = icmp ne i16 %i.o, 12589
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i9
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.t = add i64 %i.j, -3                         ; 2 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !24
  store i64 %i.t, ptr %i.k, align 8, !tbaa !19
  br label %bb.f

bb.d:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i9, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.u = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #13
  br i1 %i.u, label %_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit.thread, label %_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit

_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.e

_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit: ; preds = %bb.d
  %i.v = load i64, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit._crit_edge

_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit._crit_edge: ; preds = %_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit
  %.pre = load i64, ptr %i.k, align 8, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit.thread, %_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit
  store i64 -1, ptr %i.g, align 8, !tbaa !16
  br label %bb.l

bb.f:                                             ; preds = %_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit._crit_edge, %bb.c
  %i.x = phi i64 [ %i.t, %bb.c ], [ %.pre, %_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit._crit_edge ] ; 3 uses
  %.0 = phi i64 [ -1, %bb.c ], [ %i.v, %_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit._crit_edge ] ; 2 uses
  %.not.i.i13 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i13, label %bb.g, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i15

_ZNK4llvm9StringRef11starts_withES0_.exit.i15:    ; preds = %bb.f
  %.pre.i14 = load ptr, ptr %3, align 8, !tbaa !29 ; 2 uses
  %lhsc54 = load i8, ptr %.pre.i14, align 1
  %i.y = icmp eq i8 %lhsc54, 46
  br i1 %i.y, label %_ZN4llvm9StringRef13consume_frontES0_.exit18, label %bb.g

_ZN4llvm9StringRef13consume_frontES0_.exit18:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i15
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i14, i64 1 ; 2 uses
  %i.aa = add i64 %i.x, -1                        ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !24
  store i64 %i.aa, ptr %i.k, align 8, !tbaa !19
  br label %_ZN4llvm9StringRef13consume_frontES0_.exit.thread

bb.g:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i15, %bb.f
  %i.ab = sub i64 %i.j, %i.x
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !16
  %i.ad = add i64 %i.ab, %i.ac
  store i64 %i.ad, ptr %i.g, align 8, !tbaa !16
  store i64 %.0, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.428.0..sroa_idx, align 8
  br label %bb.l

_ZN4llvm9StringRef13consume_frontES0_.exit.thread: ; preds = %bb.a, %_ZNK4llvm9StringRef11starts_withES0_.exit.i, %_ZN4llvm9StringRef13consume_frontES0_.exit18
  %.pre.i20 = phi ptr [ %i.z, %_ZN4llvm9StringRef13consume_frontES0_.exit18 ], [ %i.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %i.i, %bb.a ]
  %i.ae = phi i64 [ %i.aa, %_ZN4llvm9StringRef13consume_frontES0_.exit18 ], [ %i.j, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %i.j, %bb.a ] ; 2 uses
  %.1 = phi i64 [ %.0, %_ZN4llvm9StringRef13consume_frontES0_.exit18 ], [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ 0, %bb.a ] ; 3 uses
  %.not.i.i19 = icmp ult i64 %i.ae, 2
  br i1 %.not.i.i19, label %bb.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i21

_ZNK4llvm9StringRef11starts_withES0_.exit.i21:    ; preds = %_ZN4llvm9StringRef13consume_frontES0_.exit.thread
  %i.af = load i16, ptr %.pre.i20, align 1
  %i.ag = icmp ne i16 %i.af, 12589
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i21
  %i.aj = add i64 %i.ae, -2
  br label %bb.k

bb.i:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i21, %_ZN4llvm9StringRef13consume_frontES0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ak = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  br i1 %i.ak, label %_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit25.thread, label %_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit25

_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit25.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.j

end_hunk_0
