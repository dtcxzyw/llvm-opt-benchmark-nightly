Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.6?download=true
inline.NumInlined: 170
inline.NumDeleted: 68
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText10insert_str:_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText12remove_range(ptr noalias nofree noundef align 8 dereferenceable(1000) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp ugt i64 %1, %2
  br i1 %.not.i, label %bb.b, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #22, !noalias !89
  unreachable

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !90, !noalias !91, !noundef !5 ; 4 uses
  %i.c = icmp ugt i64 %i.b, 984                   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink13.i = select i1 %i.c, ptr %i.e, ptr %i.h
  %.sink12.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 2 uses
  %i.i = icmp eq i64 %1, 0
  br i1 %i.i, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit4, label %bb.c

bb.c:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit
  %.not5.i = icmp ult i64 %1, %.sink12.i
  br i1 %.not5.i, label %bb.d, label %.split

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit4: ; preds = %.split, %bb.d, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink13.i1 = select i1 %i.c, ptr %i.k, ptr %i.n
  %.sink12.i2 = select i1 %i.c, i64 %i.m, i64 %i.b ; 2 uses
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString12remove_range.exit, label %bb.f

.split:                                           ; preds = %bb.c
  %i.p = icmp eq i64 %1, %.sink12.i
  br i1 %i.p, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit4, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 %1
  %i.r = load i8, ptr %i.q, align 1, !noundef !5
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit4, label %bb.e, !prof !8

bb.e:                                             ; preds = %.split, %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #22
  unreachable

bb.f:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit4
  %.not6.i = icmp ult i64 %2, %.sink12.i2
  br i1 %.not6.i, label %bb.g, label %.split26

.split26:                                         ; preds = %bb.f
  %i.t = icmp eq i64 %2, %.sink12.i2
  br i1 %i.t, label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString12remove_range.exit, label %bb.h, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sink13.i1, i64 %2
  %i.v = load i8, ptr %i.u, align 1, !noundef !5
  %i.w = icmp sgt i8 %i.v, -65
  br i1 %i.w, label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString12remove_range.exit, label %bb.h, !prof !8

bb.h:                                             ; preds = %.split26, %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 62, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #22
  unreachable

_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString12remove_range.exit: ; preds = %.split26, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit4, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5
  %i.ab = select i1 %i.c, i64 %i.y, i64 %i.b      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.ac = icmp ugt i64 %2, %i.ab
  br i1 %i.ac, label %bb.i, label %_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2wCc12Mnjqg_5ropey.exit.i, !prof !7

bb.i:                                             ; preds = %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString12remove_range.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %i.ab, i64 noundef range(i64 0, -9223372036854775808) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #22, !noalias !93
  unreachable

_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2wCc12Mnjqg_5ropey.exit.i: ; preds = %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString12remove_range.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink12.i9 = select i1 %i.c, ptr %i.aa, ptr %i.ad ; 2 uses
  %.neg.i31 = sub i64 %1, %2
  %i.ae = sub nuw nsw i64 %i.ab, %2
  %i.af = getelementptr inbounds nuw i8, ptr %.sink12.i9, i64 %2
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink12.i9, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.af, i64 %i.ae, i1 false), !alias.scope !92
  %i.ah = add i64 %.neg.i31, %i.ab
  tail call void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE8truncateBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %0, i64 noundef %i.ah)
  %i.ai = load i64, ptr %i.a, align 8, !noundef !5
  %i.aj = icmp ugt i64 %i.ai, 984
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp ult i64 %i.al, 985
  %or.cond = select i1 %i.aj, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2wCc12Mnjqg_5ropey.exit.i
  ret void

bb.k:                                             ; preds = %_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2wCc12Mnjqg_5ropey.exit.i
  tail call void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE13shrink_to_fitBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %0)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText14push_str_split(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %0, ptr noalias nofree noundef align 8 dereferenceable(1000) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !99, !noalias !100, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 984
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.sink12.i.i = select i1 %i.c, i64 %i.e, i64 %i.b
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText16insert_str_split(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %1, i64 noundef %.sink12.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText14truncate_front(ptr noalias nofree noundef align 8 dereferenceable(1000) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit4:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !108, !noalias !109, !noundef !5 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 984                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink13.i1 = select i1 %i.c, ptr %i.e, ptr %i.h
  %.sink12.i2 = select i1 %i.c, i64 %i.g, i64 %i.b ; 2 uses
  %i.i = icmp eq i64 %1, 0
  br i1 %i.i, label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString12remove_range.exit, label %bb.a

bb.a:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit4
  %.not6.i = icmp ult i64 %1, %.sink12.i2
  br i1 %.not6.i, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %1, %.sink12.i2
  br i1 %i.j, label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString12remove_range.exit, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.sink13.i1, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !noundef !5
  %i.m = icmp sgt i8 %i.l, -65
  br i1 %i.m, label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString12remove_range.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %.split, %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 62, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #22
  unreachable

_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString12remove_range.exit: ; preds = %.split, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit4, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5
  %i.r = select i1 %i.c, i64 %i.o, i64 %i.b       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.s = icmp ugt i64 %1, %i.r
  br i1 %i.s, label %bb.d, label %_RINvMNtCskKLDkoKarTP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECs2wCc12Mnjqg_5ropey.exit, !prof !7

bb.d:                                             ; preds = %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString12remove_range.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %1, i64 noundef %i.r, i64 noundef range(i64 0, -9223372036854775808) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #22, !noalias !111
  unreachable

_RINvMNtCskKLDkoKarTP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECs2wCc12Mnjqg_5ropey.exit: ; preds = %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString12remove_range.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink12.i9 = select i1 %i.c, ptr %i.q, ptr %i.t ; 2 uses
  %i.u = sub nuw i64 %i.r, %1                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sink12.i9, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.sink12.i9, ptr nonnull align 1 %i.v, i64 %i.u, i1 false), !alias.scope !110
  tail call void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE8truncateBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %0, i64 noundef %i.u)
  %i.w = load i64, ptr %i.a, align 8, !noundef !5
  %i.x = icmp ugt i64 %i.w, 984
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp ult i64 %i.z, 985
  %or.cond = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %_RINvMNtCskKLDkoKarTP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECs2wCc12Mnjqg_5ropey.exit
  ret void

bb.f:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECs2wCc12Mnjqg_5ropey.exit
  tail call void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE13shrink_to_fitBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %0)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText16insert_str_split(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %0, ptr noalias nofree noundef align 8 dereferenceable(1000) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit:
  %i.a = alloca [1000 x i8], align 8              ; 25 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 992 ; 14 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !268, !noalias !269, !noundef !5 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 984                   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %.sink12.i.i = select i1 %i.e, i64 %i.g, i64 %i.d
  %i.h = add i64 %.sink12.i.i, %4                 ; 2 uses
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = add i64 %4, %2                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 4) ; 13 uses
  %i.k = sub nuw nsw i64 %i.i, %..i               ; 8 uses
  %i.l = add nuw i64 %i.i, 4
  %..i54 = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %i.l) ; 5 uses
  %i.m = icmp ult i64 %i.k, %..i54
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 4 uses
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.sroa.02.0303.us = phi i64 [ %i.s, %bb.f ], [ %i.k, %.lr.ph ] ; 9 uses
  %i.s = add i64 %.sroa.02.0303.us, 1             ; 2 uses
  %i.t = icmp ult i64 %.sroa.02.0303.us, %2
  br i1 %i.t, label %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit265.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.us
  %i.u = icmp ult i64 %.sroa.02.0303.us, %i.j
  br i1 %i.u, label %bb.c, label %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit269.us

_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit269.us: ; preds = %bb.a
  %i.v = sub i64 %.sroa.02.0303.us, %4            ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.r
  br i1 %i.w, label %bb.b, label %.split.us

bb.b:                                             ; preds = %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit269.us
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.v
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.y = sub nuw i64 %.sroa.02.0303.us, %2        ; 3 uses
  %i.z = icmp ult i64 %i.y, %4
  br i1 %i.z, label %bb.d, label %.split306.us

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.y
  br label %bb.f

_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit265.us: ; preds = %.lr.ph.split.us
  %i.ab = icmp ult i64 %.sroa.02.0303.us, %i.r
  br i1 %i.ab, label %bb.e, label %.split309.us

bb.e:                                             ; preds = %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit265.us
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.02.0303.us
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.01.0.in.us = phi ptr [ %i.ac, %bb.e ], [ %i.aa, %bb.d ], [ %i.x, %bb.b ]
  %i.ad = sub nuw i64 %.sroa.02.0303.us, %i.k
  %.sroa.01.0.us = load i8, ptr %.sroa.01.0.in.us, align 1, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  store i8 %.sroa.01.0.us, ptr %i.ae, align 1
  %exitcond326.not = icmp eq i64 %i.s, %..i54
  br i1 %exitcond326.not, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.bm, %bb.f, %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit
  %i.af = sub i64 %..i54, %i.k                    ; 17 uses
  %i.ag = icmp ult i64 %i.af, 9
  br i1 %i.ag, label %bb.h, label %bb.g, !prof !6

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.bm
  %.sroa.02.0303 = phi i64 [ %i.ah, %bb.bm ], [ %i.k, %.lr.ph ] ; 9 uses
  %i.ah = add i64 %.sroa.02.0303, 1               ; 2 uses
  %i.ai = icmp ult i64 %.sroa.02.0303, %2
  br i1 %i.ai, label %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit265, label %bb.bi

bb.g:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22
  unreachable

bb.h:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.aj = icmp eq i64 %i.i, 0                     ; 2 uses
  %i.ak = icmp eq i64 %..i, %i.af                 ; 2 uses
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = icmp ult i64 %..i, %i.af
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.b, i64 %..i    ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !272, !noundef !5 ; 2 uses
  %i.ao = icmp slt i8 %i.an, -64
  br i1 %i.ao, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.preheader.i, label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %..i, i64 noundef range(i64 0, 9) %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #22, !noalias !272
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr i8, ptr %i.am, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !272, !noundef !5
  %i.ar = icmp ne i8 %i.aq, 13
  %i.as = icmp ne i8 %i.an, 10
  %i.at = or i1 %i.as, %i.ar
  br label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.i

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.i:  ; preds = %bb.l, %bb.h
  %.sroa.0.0.i.i = phi i1 [ %i.at, %bb.l ], [ true, %bb.h ]
  %i.au = icmp ne i64 %..i, %i.af
  %or.cond.i55 = and i1 %i.au, %.sroa.0.0.i.i
  br i1 %or.cond.i55, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.thread.i, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread.i

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread.i: ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.i
  br i1 %i.aj, label %bb.m, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.preheader.i

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.preheader.i: ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread.i, %bb.j
  %.sroa.07.130.i = add nsw i64 %..i, -1          ; 4 uses
  %i.av = icmp eq i64 %.sroa.07.130.i, 0
  %i.aw = icmp eq i64 %.sroa.07.130.i, %i.af
  %or.cond.i1731.i = or i1 %i.av, %i.aw
  br i1 %or.cond.i1731.i, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.thread.i, label %.lr.ph.i

bb.m:                                             ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread.i
  %i.ax = icmp eq i64 %..i54, %i.k
  br i1 %i.ax, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf22nearest_internal_break.exit, label %bb.n

bb.n:                                             ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.thread.i, %bb.m
  %.sroa.07.0.i = phi i64 [ %.sroa.07.2.i, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.thread.i ], [ 0, %bb.m ] ; 3 uses
  %.sroa.0.134.i = add nuw nsw i64 %..i, 1        ; 3 uses
  %i.ay = icmp eq i64 %.sroa.0.134.i, %i.af
  br i1 %i.ay, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.thread.i, label %.lr.ph38.i

.lr.ph.i:                                         ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.preheader.i, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.backedge.i
  %.sroa.07.132.i = phi i64 [ %.sroa.07.1.i, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.backedge.i ], [ %.sroa.07.130.i, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.preheader.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.az = icmp ult i64 %.sroa.07.132.i, %i.af
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.ba = getelementptr i8, ptr %i.b, i64 %.sroa.07.132.i ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !274, !noundef !5 ; 2 uses
  %i.bc = icmp slt i8 %i.bb, -64
  br i1 %i.bc, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.backedge.i, label %.split.i

bb.p:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.07.132.i, i64 noundef range(i64 0, 9) %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #22, !noalias !274
  unreachable

.split.i:                                         ; preds = %bb.o
  %i.bd = getelementptr i8, ptr %i.ba, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !274, !noundef !5
  %i.bf = icmp ne i8 %i.be, 13
  %i.bg = icmp ne i8 %i.bb, 10
  %i.bh = or i1 %i.bg, %i.bf
  br i1 %i.bh, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.thread.i, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.backedge.i

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.backedge.i: ; preds = %.split.i, %bb.o
  %.sroa.07.1.i = add nsw i64 %.sroa.07.132.i, -1 ; 2 uses
  %i.bi = icmp eq i64 %.sroa.07.1.i, 0
  br i1 %i.bi, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.thread.i, label %.lr.ph.i

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.thread.i: ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.backedge.i, %.split.i, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.preheader.i, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.i
  %.sroa.07.2.i = phi i64 [ %..i, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.i ], [ %.sroa.07.130.i, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.preheader.i ], [ 0, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.backedge.i ], [ %.sroa.07.132.i, %.split.i ] ; 2 uses
  br i1 %i.ak, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.thread.i, label %bb.n

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.thread.i: ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.backedge.i, %.split27.i, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.thread.i, %bb.n
  %.sroa.07.3.i = phi i64 [ %.sroa.07.2.i, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.thread.i ], [ %.sroa.07.0.i, %bb.n ], [ %.sroa.07.0.i, %.split27.i ], [ %.sroa.07.0.i, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.backedge.i ] ; 3 uses
  %.sroa.0.0.i56 = phi i64 [ %..i, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit19.thread.i ], [ %i.af, %bb.n ], [ %i.af, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.backedge.i ], [ %.sroa.0.137.i, %.split27.i ] ; 4 uses
  %i.bj = icmp eq i64 %.sroa.07.3.i, 0
  br i1 %i.bj, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf22nearest_internal_break.exit, label %bb.s

.lr.ph38.i:                                       ; preds = %bb.n, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.backedge.i
  %.sroa.0.137.i = phi i64 [ %.sroa.0.1.i, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.backedge.i ], [ %.sroa.0.134.i, %bb.n ] ; 5 uses
  %.sroa.0.1.in36.i = phi i64 [ %.sroa.0.137.i, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.backedge.i ], [ %..i, %bb.n ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.bk = icmp ult i64 %.sroa.0.137.i, %i.af
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph38.i
  %i.bl = getelementptr i8, ptr %i.b, i64 %.sroa.0.137.i
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !276, !noundef !5 ; 2 uses
  %i.bn = icmp slt i8 %i.bm, -64
  br i1 %i.bn, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.backedge.i, label %.split27.i

bb.r:                                             ; preds = %.lr.ph38.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, 9) %i.af, i64 %.sroa.0.134.i)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, 9) %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #22, !noalias !276
  unreachable

.split27.i:                                       ; preds = %bb.q
  %i.bo = getelementptr i8, ptr %i.b, i64 %.sroa.0.1.in36.i
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !276, !noundef !5
  %i.bq = icmp ne i8 %i.bp, 13
  %i.br = icmp ne i8 %i.bm, 10
  %i.bs = or i1 %i.br, %i.bq
  br i1 %i.bs, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.thread.i, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.backedge.i

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.backedge.i: ; preds = %.split27.i, %bb.q
  %.sroa.0.1.i = add nuw nsw i64 %.sroa.0.137.i, 1 ; 2 uses
  %i.bt = icmp eq i64 %.sroa.0.1.i, %i.af
  br i1 %i.bt, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.thread.i, label %.lr.ph38.i

bb.s:                                             ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.thread.i
  %.not.i = icmp eq i64 %.sroa.0.0.i56, %i.af
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = sub nsw i64 %..i, %.sroa.07.3.i
  %i.bv = sub nsw i64 %.sroa.0.0.i56, %..i
  %.not16.i = icmp ult i64 %i.bu, %i.bv
  br i1 %.not16.i, label %bb.u, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf22nearest_internal_break.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  br label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf22nearest_internal_break.exit

_RNvNtCs2wCc12Mnjqg_5ropey4crlf22nearest_internal_break.exit: ; preds = %bb.m, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.thread.i, %bb.t, %bb.u
  %.sroa.0.2.i = phi i64 [ %.sroa.0.0.i56, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit22.thread.i ], [ %.sroa.0.0.i56, %bb.t ], [ %.sroa.07.3.i, %bb.u ], [ 0, %bb.m ]
  %i.bw = add i64 %.sroa.0.2.i, %i.k              ; 18 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 8
  %.sroa.06.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 9 uses
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 992 ; 22 uses
  store i64 0, ptr %.sroa.47.0..sroa_idx, align 8
  %.not = icmp ugt i64 %i.bw, %2
  br i1 %.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf22nearest_internal_break.exit
  %.not48 = icmp ugt i64 %i.bw, %i.j
  br i1 %.not48, label %bb.x, label %bb.y

bb.w:                                             ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf22nearest_internal_break.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sink13.i.i57 = select i1 %i.e, ptr %i.by, ptr %i.cb ; 6 uses
  %.sink12.i.i58 = select i1 %i.e, i64 %i.ca, i64 %i.d ; 6 uses
  %i.cc = icmp ugt i64 %2, %.sink12.i.i58
  br i1 %i.cc, label %.invoke390, label %bb.at, !prof !277

bb.x:                                             ; preds = %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !5
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sink13.i.i60 = select i1 %i.e, ptr %i.ce, ptr %i.ch ; 4 uses
  %.sink12.i.i61 = select i1 %i.e, i64 %i.cg, i64 %i.d ; 7 uses
  %i.ci = sub i64 %i.bw, %4                       ; 11 uses
  %i.cj = icmp eq i64 %i.bw, %4                   ; 2 uses
  br i1 %i.cj, label %bb.ad, label %bb.ab

bb.y:                                             ; preds = %bb.v
  %i.ck = sub nuw i64 %i.bw, %2                   ; 15 uses
  %.not.i63 = icmp ult i64 %i.ck, %4              ; 2 uses
  br i1 %.not.i63, label %bb.z, label %.split.i64

.split.i64:                                       ; preds = %bb.y
  %i.cl = icmp eq i64 %i.ck, %4
  br i1 %i.cl, label %bb.ah, label %.invoke390

bb.z:                                             ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 %i.ck
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !278, !noundef !5
  %i.co = icmp sgt i8 %i.cn, -65
  br i1 %i.co, label %bb.ah, label %.invoke390

bb.aa:                                            ; preds = %.invoke390, %.invoke, %bb.bf, %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString8truncate.exit.i255, %.noexc246, %bb.bb, %.noexc214, %.split1.i.i185, %.noexc191, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, %.noexc168, %bb.aq, %bb.ao, %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString8truncate.exit.i140, %.noexc131, %bb.ak, %.noexc99, %bb.ah, %bb.ag, %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString8truncate.exit.i, %.noexc, %bb.ad, %bb.bg, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8truncate.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text8NodeTextEBH_.exit unwind label %bb.bh

bb.ab:                                            ; preds = %bb.x
  %.not.i66 = icmp ult i64 %i.ci, %.sink12.i.i61
  br i1 %.not.i66, label %bb.ac, label %.split.i67

.split.i67:                                       ; preds = %bb.ab
  %i.cq = icmp eq i64 %i.ci, %.sink12.i.i61
  br i1 %i.cq, label %bb.ad, label %.invoke390

bb.ac:                                            ; preds = %bb.ab
  %i.cr = getelementptr inbounds nuw i8, ptr %.sink13.i.i60, i64 %i.ci
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !279, !noundef !5
  %i.ct = icmp sgt i8 %i.cs, -65
  br i1 %i.ct, label %bb.ad, label %.invoke390

bb.ad:                                            ; preds = %bb.ac, %.split.i67, %bb.x
  %i.cu = sub nuw i64 %.sink12.i.i61, %i.ci       ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sink13.i.i60, i64 %i.ci
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.cx = invoke { i64, i64 } @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.cu)
          to label %.noexc unwind label %bb.aa    ; 2 uses

.noexc:                                           ; preds = %bb.ad
  %i.cy = extractvalue { i64, i64 } %i.cx, 0
  %i.cz = extractvalue { i64, i64 } %i.cx, 1
  invoke void @_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey(i64 noundef %i.cy, i64 %i.cz)
          to label %.split1.i.i unwind label %bb.aa

.split1.i.i:                                      ; preds = %.noexc
  %i.da = load i64, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !280, !noalias !281, !noundef !5 ; 2 uses
  %i.db = icmp ugt i64 %i.da, 984                 ; 2 uses
  %i.dc = load i64, ptr %i.cw, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !5
  %.sink12.i1517.i.i = select i1 %i.db, i64 %i.dc, i64 %i.da ; 2 uses
  %.sink12.i2.i.i = select i1 %i.db, ptr %i.de, ptr %.sroa.06.sroa.4.0..sroa_idx ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sink12.i2.i.i, i64 %i.cu
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull align 1 %.sink12.i2.i.i, i64 %.sink12.i1517.i.i, i1 false), !noalias !282
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink12.i2.i.i, ptr nonnull readonly align 1 %i.cv, i64 range(i64 0, -9223372036854775808) %i.cu, i1 false)
  %i.dg = load i64, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !283, !noalias !284, !noundef !5
  %i.dh = icmp ugt i64 %i.dg, 984
  %.sink11.i5.i.sink.i = select i1 %i.dh, ptr %i.cw, ptr %.sroa.47.0..sroa_idx
  %i.di = add i64 %.sink12.i1517.i.i, %i.cu
  store i64 %i.di, ptr %.sink11.i5.i.sink.i, align 8, !alias.scope !280, !noalias !281
  %i.dj = load i64, ptr %i.c, align 8, !alias.scope !285, !noalias !286, !noundef !5 ; 2 uses
  %i.dk = icmp ugt i64 %i.dj, 984                 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !5
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sink13.i.i74 = select i1 %i.dk, ptr %i.dm, ptr %i.dp
  %.sink12.i.i75 = select i1 %i.dk, i64 %i.do, i64 %i.dj ; 2 uses
  br i1 %i.cj, label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString8truncate.exit.i, label %bb.ae

bb.ae:                                            ; preds = %.split1.i.i
  %.not.i.i = icmp ult i64 %i.ci, %.sink12.i.i75
  br i1 %.not.i.i, label %bb.af, label %.split.i76

.split.i76:                                       ; preds = %bb.ae
  %i.dq = icmp eq i64 %i.ci, %.sink12.i.i75
  br i1 %i.dq, label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString8truncate.exit.i, label %.invoke, !prof !8

bb.af:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %.sink13.i.i74, i64 %i.ci
  %i.ds = load i8, ptr %i.dr, align 1, !noundef !5
  %i.dt = icmp sgt i8 %i.ds, -65
  br i1 %i.dt, label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString8truncate.exit.i, label %.invoke, !prof !8

_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString8truncate.exit.i: ; preds = %bb.af, %.split.i76, %.split1.i.i
  invoke void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE8truncateBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %1, i64 noundef %i.ci)
          to label %.noexc78 unwind label %bb.aa

.noexc78:                                         ; preds = %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString8truncate.exit.i
  %i.du = load i64, ptr %i.c, align 8, !alias.scope !287, !noundef !5
  %i.dv = icmp ugt i64 %i.du, 984
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = icmp ult i64 %i.dx, 985
  %or.cond = select i1 %i.dv, i1 %i.dy, i1 false
  br i1 %or.cond, label %bb.ag, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8truncate.exit

bb.ag:                                            ; preds = %.noexc78
  invoke void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE13shrink_to_fitBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %1)
          to label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8truncate.exit unwind label %bb.aa

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8truncate.exit: ; preds = %.noexc78, %bb.ag
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText10insert_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8truncate.exit260 unwind label %bb.aa

bb.ah:                                            ; preds = %bb.z, %.split.i64
  %i.dz = sub nuw i64 %4, %i.ck                   ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 %i.ck ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %i.ec = invoke { i64, i64 } @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.dz)
          to label %.noexc99 unwind label %bb.aa  ; 2 uses

.noexc99:                                         ; preds = %bb.ah
  %i.ed = extractvalue { i64, i64 } %i.ec, 0
  %i.ee = extractvalue { i64, i64 } %i.ec, 1
  invoke void @_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey(i64 noundef %i.ed, i64 %i.ee)
          to label %.split1.i.i93 unwind label %bb.aa

.split1.i.i93:                                    ; preds = %.noexc99
  %i.ef = load i64, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !288, !noalias !289, !noundef !5 ; 2 uses
  %i.eg = icmp ugt i64 %i.ef, 984                 ; 2 uses
  %i.eh = load i64, ptr %i.eb, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !nonnull !5
  %.sink12.i1517.i.i96 = select i1 %i.eg, i64 %i.eh, i64 %i.ef ; 2 uses
  %.sink12.i2.i.i97 = select i1 %i.eg, ptr %i.ej, ptr %.sroa.06.sroa.4.0..sroa_idx ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sink12.i2.i.i97, i64 %i.dz
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr nonnull align 1 %.sink12.i2.i.i97, i64 %.sink12.i1517.i.i96, i1 false), !noalias !290
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink12.i2.i.i97, ptr nonnull readonly align 1 %i.ea, i64 range(i64 0, -9223372036854775808) %i.dz, i1 false)
  %i.el = load i64, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !291, !noalias !292, !noundef !5
  %i.em = icmp ugt i64 %i.el, 984
  %.sink11.i5.i.sink.i90 = select i1 %i.em, ptr %i.eb, ptr %.sroa.47.0..sroa_idx
  %i.en = add i64 %.sink12.i1517.i.i96, %i.dz
  store i64 %i.en, ptr %.sink11.i5.i.sink.i90, align 8, !alias.scope !288, !noalias !289
  %i.eo = load i64, ptr %i.c, align 8, !alias.scope !293, !noalias !294, !noundef !5 ; 2 uses
  %i.ep = icmp ugt i64 %i.eo, 984                 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !nonnull !5
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.et = load i64, ptr %i.es, align 8
end_hunk_0
