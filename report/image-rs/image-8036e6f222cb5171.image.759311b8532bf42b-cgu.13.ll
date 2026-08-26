Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.13?download=true
inline.NumInlined: 1791
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAhEINtB1b_4LumatEEBa_
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAhEINtB1b_4LumatEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouthtEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAhEINtB1b_4RgbafEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouthfEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAhEINtB1b_4RgbahEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouthhEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAhEINtB1b_4RgbatEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouthtEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAtEB18_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAtEIB19_fEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouttfEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAtEIB19_hEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutthEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAtEINtB1b_3RgbfEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouttfEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAtEINtB1b_3RgbhEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutthEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAtEINtB1b_3RgbtEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAtEINtB1b_4LumafEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouttfEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAtEINtB1b_4LumahEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutthEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAtEINtB1b_4LumatEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAtEINtB1b_4RgbafEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouttfEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAtEINtB1b_4RgbahEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutthEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAtEINtB1b_4RgbatEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val1 = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 %.val, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr %.val1, i8 noundef 3, i8 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutffEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i8 %.2.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noundef nonnull %3, ptr nofree readonly captures(none) %.40.val, i8 noundef range(i8 0, 2) %4, i8 noundef range(i8 0, 4) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [4096 x i8], align 4              ; 11 uses
  %i.j = alloca [4096 x i8], align 4              ; 12 uses
  %i.k = alloca [36 x i8], align 4                ; 5 uses
  %i.l = alloca [24 x i8], align 4                ; 15 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 16               ; 12 uses
  %i.q = alloca [24 x i8], align 16               ; 12 uses
  %i.r = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %trunc.i = trunc nuw i8 %4 to i1                ; 4 uses
  %..i = select i1 %trunc.i, i64 4, i64 3         ; 2 uses
  %i.t = urem i64 %2, %..i
  %i.u = udiv i64 %2, %..i
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %switch.lookup, label %bb.b, !prof !1329

default.unreachable:                              ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #26, !noalias !1330
  unreachable

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1330
  %i.w = zext nneg i8 %5 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.x = mul nuw nsw i64 %i.u, %switch.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1334
  store i64 0, ptr %i.p, align 16, !noalias !1334
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.y, align 8, !noalias !1334
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 0, ptr %i.z, align 16, !noalias !1334
  %i.aa = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, i64 noundef 0, i64 noundef %i.x, i64 noundef 4, i64 noundef 4)
          to label %bb.d unwind label %bb.c, !noalias !1334 ; 2 uses

bb.c:                                             ; preds = %switch.lookup
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #20
          to label %common.resume unwind label %bb.h, !noalias !1334

bb.d:                                             ; preds = %switch.lookup
  %i.ac = extractvalue { i64, i64 } %i.aa, 0      ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, -1
  br i1 %.not.i.i, label %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i unwind label %bb.f, !noalias !1334

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.g, !noalias !1334

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1334
  unreachable

common.resume:                                    ; preds = %bb.ag, %bb.c, %bb.f, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %bb.n ], [ %i.ab, %bb.c ], [ %i.ad, %bb.f ], [ %lpad.phi, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i: ; preds = %bb.e
  %i.af = extractvalue { i64, i64 } %i.aa, 1
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p), !noalias !1334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1334
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1334
  unreachable

_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i: ; preds = %bb.d
  %i.ah = load <2 x i64>, ptr %i.p, align 16, !noalias !1330 ; 3 uses
  %.sroa.8.0.copyload.i = load i64, ptr %i.z, align 16, !noalias !1330 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1334
  call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  %i.ai = extractelement <2 x i64> %i.ah, i64 0
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = extractelement <2 x i64> %i.ah, i64 1
  br i1 %i.aj, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i, !prof !1342

bb.i:                                             ; preds = %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i
  %.sroa.6.010.i = phi i64 [ %i.ac, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i ], [ %i.ak, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i ]
  %.sroa.8.09.i = phi i64 [ %i.af, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i ], [ %.sroa.8.0.copyload.i, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1343
  store i64 %.sroa.6.010.i, ptr %i.o, align 8, !noalias !1343
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.8.09.i, ptr %i.al, align 8, !noalias !1343
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 54, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #26, !noalias !1343
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store <2 x i64> %i.ah, ptr %i.q, align 16, !alias.scope !1344, !noalias !1330
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1344, !noalias !1330
  br i1 %trunc.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i
  switch i8 %5, label %bb.q [
    i8 0, label %bb.l
    i8 1, label %bb.m
  ]

bb.k:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i
  switch i8 %5, label %bb.q [
    i8 0, label %bb.o
    i8 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  invoke void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4IterfEENvYfINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivefE14from_primitiveEE11spec_extendB32_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.am)
          to label %bb.ae unwind label %bb.n, !noalias !1345

bb.m:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1330
  %6 = udiv i64 %2, 3                             ; 2 uses
  %i.an = shl nuw nsw i64 %6, 2
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.an, float noundef 0.000000e+00)
          to label %.noexc.i unwind label %bb.n, !noalias !1330

.noexc.i:                                         ; preds = %bb.m
  %i.ao = load ptr, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !1346, !noalias !1349, !nonnull !7, !noundef !7 ; 2 uses
  %i.ap = load i64, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1346, !noalias !1349, !noundef !7
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %6
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.aq
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.ar, ptr noundef nonnull align 4 %i.ao, ptr noundef nonnull %i.as)
          to label %.noexc10.i unwind label %bb.n, !noalias !1345

.noexc10.i:                                       ; preds = %.noexc.i
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.n, align 8, !noalias !1351 ; 4 uses
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.410.0.copyload.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !1351 ; 4 uses
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.511.0.copyload.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !1351 ; 7 uses
  %.sroa.712.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.712.0.copyload.i.i = load i64, ptr %.sroa.712.0..sroa_idx.i.i, align 8, !noalias !1351 ; 4 uses
  %i.at = icmp ult i64 %.sroa.511.0.copyload.i.i, %.sroa.712.0.copyload.i.i
  br i1 %i.at, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaffEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc10.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i) ]
  %i.au = sub nuw i64 %.sroa.712.0.copyload.i.i, %.sroa.511.0.copyload.i.i
  %.neg = add i64 %.sroa.511.0.copyload.i.i, 1
  %xtraiter = and i64 %i.au, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %.sroa.08.0.copyload.i.i, i64 %.sroa.511.0.copyload.i.i ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i, i64 %.sroa.511.0.copyload.i.i ; 3 uses
  %i.ax = add nuw i64 %.sroa.511.0.copyload.i.i, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load float, ptr %i.ay, align 4, !noalias !1345, !noundef !7
  %i.ba = load <2 x float>, ptr %i.av, align 4, !noalias !1345
  store <2 x float> %i.ba, ptr %i.aw, align 4, !noalias !1345
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store float %i.az, ptr %i.bb, align 4, !noalias !1345
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store float 1.000000e+00, ptr %i.bc, align 4, !noalias !1345
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %.sroa.511.017.i.i.unr = phi i64 [ %.sroa.511.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.ax, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.bd = icmp eq i64 %.sroa.712.0.copyload.i.i, %.neg
  br i1 %i.bd, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaffEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.511.017.i.i = phi i64 [ %i.bo, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.511.017.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %.sroa.08.0.copyload.i.i, i64 %.sroa.511.017.i.i ; 2 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i, i64 %.sroa.511.017.i.i ; 3 uses
  %i.bg = add nuw i64 %.sroa.511.017.i.i, 1       ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load float, ptr %i.bh, align 4, !noalias !1345, !noundef !7
  %i.bj = load <2 x float>, ptr %i.be, align 4, !noalias !1345
  store <2 x float> %i.bj, ptr %i.bf, align 4, !noalias !1345
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store float %i.bi, ptr %i.bk, align 4, !noalias !1345
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store float 1.000000e+00, ptr %i.bl, align 4, !noalias !1345
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %.sroa.08.0.copyload.i.i, i64 %i.bg ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i, i64 %i.bg ; 3 uses
  %i.bo = add nuw i64 %.sroa.511.017.i.i, 2       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = load float, ptr %i.bp, align 4, !noalias !1345, !noundef !7
  %i.br = load <2 x float>, ptr %i.bm, align 4, !noalias !1345
  store <2 x float> %i.br, ptr %i.bn, align 4, !noalias !1345
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store float %i.bq, ptr %i.bs, align 4, !noalias !1345
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store float 1.000000e+00, ptr %i.bt, align 4, !noalias !1345
  %exitcond.not.i.i.1 = icmp eq i64 %i.bo, %.sroa.712.0.copyload.i.i
  br i1 %exitcond.not.i.i.1, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaffEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaffEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1330
  br label %bb.ae

bb.n:                                             ; preds = %.noexc20.i, %bb.o, %.noexc.i, %bb.m, %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #20
          to label %common.resume unwind label %bb.p, !noalias !1345

bb.o:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1330
  %7 = lshr i64 %2, 2                             ; 2 uses
  %i.bv = mul nuw nsw i64 %7, 3
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.bv, float noundef 0.000000e+00)
          to label %.noexc20.i unwind label %bb.n, !noalias !1330

.noexc20.i:                                       ; preds = %bb.o
  %i.bw = load ptr, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !1352, !noalias !1355, !nonnull !7, !noundef !7 ; 2 uses
  %i.bx = load i64, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1352, !noalias !1355, !noundef !7
  %i.by = udiv i64 %i.bx, 3
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %7
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.by
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.bz, ptr noundef nonnull align 4 %i.bw, ptr noundef nonnull %i.ca)
          to label %.noexc21.i unwind label %bb.n, !noalias !1345

.noexc21.i:                                       ; preds = %.noexc20.i
  %.sroa.08.0.copyload.i11.i = load ptr, ptr %i.m, align 8, !noalias !1357 ; 4 uses
  %.sroa.410.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.410.0.copyload.i13.i = load ptr, ptr %.sroa.410.0..sroa_idx.i12.i, align 8, !noalias !1357 ; 4 uses
  %.sroa.511.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.511.0.copyload.i15.i = load i64, ptr %.sroa.511.0..sroa_idx.i14.i, align 8, !noalias !1357 ; 7 uses
  %.sroa.712.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.712.0.copyload.i17.i = load i64, ptr %.sroa.712.0..sroa_idx.i16.i, align 8, !noalias !1357 ; 4 uses
  %i.cb = icmp ult i64 %.sroa.511.0.copyload.i15.i, %.sroa.712.0.copyload.i17.i
  br i1 %i.cb, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbffEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc21.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i11.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i13.i) ]
  %i.cc = sub nuw i64 %.sroa.712.0.copyload.i17.i, %.sroa.511.0.copyload.i15.i
  %.neg299 = add i64 %.sroa.511.0.copyload.i15.i, 1
  %xtraiter283 = and i64 %i.cc, 1
  %lcmp.mod284.not = icmp eq i64 %xtraiter283, 0
  br i1 %lcmp.mod284.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.08.0.copyload.i11.i, i64 %.sroa.511.0.copyload.i15.i ; 2 uses
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %.sroa.410.0.copyload.i13.i, i64 %.sroa.511.0.copyload.i15.i ; 2 uses
  %i.cf = add nuw i64 %.sroa.511.0.copyload.i15.i, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !noalias !1345, !noundef !7
  %i.ci = load <2 x float>, ptr %i.cd, align 4, !noalias !1345
  store <2 x float> %i.ci, ptr %i.ce, align 4, !noalias !1345
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store float %i.ch, ptr %i.cj, align 4, !noalias !1345
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %.sroa.511.017.i18.i.unr = phi i64 [ %.sroa.511.0.copyload.i15.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.cf, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.ck = icmp eq i64 %.sroa.712.0.copyload.i17.i, %.neg299
  br i1 %i.ck, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbffEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.511.017.i18.i = phi i64 [ %i.cu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.511.017.i18.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.08.0.copyload.i11.i, i64 %.sroa.511.017.i18.i ; 2 uses
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %.sroa.410.0.copyload.i13.i, i64 %.sroa.511.017.i18.i ; 2 uses
  %i.cn = add nuw i64 %.sroa.511.017.i18.i, 1     ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cp = load float, ptr %i.co, align 4, !noalias !1345, !noundef !7
  %i.cq = load <2 x float>, ptr %i.cl, align 4, !noalias !1345
  store <2 x float> %i.cq, ptr %i.cm, align 4, !noalias !1345
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store float %i.cp, ptr %i.cr, align 4, !noalias !1345
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.08.0.copyload.i11.i, i64 %i.cn ; 2 uses
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %.sroa.410.0.copyload.i13.i, i64 %i.cn ; 2 uses
  %i.cu = add nuw i64 %.sroa.511.017.i18.i, 2     ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cw = load float, ptr %i.cv, align 4, !noalias !1345, !noundef !7
  %i.cx = load <2 x float>, ptr %i.cs, align 4, !noalias !1345
  store <2 x float> %i.cx, ptr %i.ct, align 4, !noalias !1345
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store float %i.cw, ptr %i.cy, align 4, !noalias !1345
  %exitcond.not.i19.i.1 = icmp eq i64 %i.cu, %.sroa.712.0.copyload.i17.i
  br i1 %exitcond.not.i19.i.1, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbffEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbffEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %.noexc21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1330
  br label %bb.ae

bb.p:                                             ; preds = %bb.n
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1345
  unreachable

bb.q:                                             ; preds = %bb.j, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  switch i8 %.2.val, label %bb.r [
    i8 1, label %bb.s
    i8 2, label %bb.ai
    i8 4, label %bb.t
    i8 5, label %bb.u
    i8 6, label %bb.v
    i8 7, label %bb.w
    i8 8, label %bb.x
    i8 9, label %bb.y
    i8 10, label %bb.z
    i8 11, label %bb.aa
    i8 12, label %bb.ab
    i8 22, label %bb.ac
  ]

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @137, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.t:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @138, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.u:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @139, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.v:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.w:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.x:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @141, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.y:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @142, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.z:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @143, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.aa:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.ab:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.ac:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @145, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.sroa.12.0.i = phi float [ 3.290300e-01, %bb.s ], [ 3.160000e-01, %bb.t ], [ 3.290300e-01, %bb.u ], [ 3.290300e-01, %bb.v ], [ 3.290300e-01, %bb.w ], [ 3.160000e-01, %bb.x ], [ 3.290300e-01, %bb.y ], [ f0x3EAAAAAB, %bb.z ], [ 3.510000e-01, %bb.aa ], [ 3.290300e-01, %bb.ab ], [ 3.290300e-01, %bb.ac ]
  %.sroa.0.0.i = phi float [ 3.127200e-01, %bb.s ], [ 3.100000e-01, %bb.t ], [ 3.127200e-01, %bb.u ], [ 3.127200e-01, %bb.v ], [ 3.127200e-01, %bb.w ], [ 3.100000e-01, %bb.x ], [ 3.127200e-01, %bb.y ], [ f0x3EAAAAAB, %bb.z ], [ 3.140000e-01, %bb.aa ], [ 3.127200e-01, %bb.ab ], [ 3.127200e-01, %bb.ac ]
  invoke void @_RINvMs0_NtCshGoo8nsRtFZ_6moxcms4cicpNtB6_14ColorPrimaries16transform_to_xyzNtNtB8_12chromaticity12ChromaticityECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.l, float noundef %.sroa.0.0.i, float noundef %.sroa.12.0.i)
          to label %bb.ah unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbffEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaffEBa_.exit.i, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.af

bb.af:                                            ; preds = %.loopexit5, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

.loopexit:                                        ; preds = %bb.an, %bb.ao, %bb.aq, %bb.ar, %bb.aw, %bb.ay, %bb.az, %bb.ba
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %.invoke, %bb.ai, %bb.ad, %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #20
          to label %common.resume unwind label %bb.bb

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.da, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit

bb.ai:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void %.40.val(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.r, ptr noundef nonnull %3)
          to label %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit unwind label %.loopexit.split-lp

_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit: ; preds = %bb.ai, %bb.ah
  %i.db = icmp eq i8 %4, 0
  %spec.select = select i1 %i.db, i64 3, i64 4
  %8 = udiv i64 %2, %spec.select
  %i.dc = icmp eq i8 %5, 3
  %i.dd = zext i1 %i.dc to i64
  %i.de = shl nuw nsw i64 %8, %i.dd
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.de, float noundef 0.000000e+00)
          to label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit unwind label %.loopexit.split-lp

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit: ; preds = %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noundef !7 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1365
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.j, i8 0, i64 4096, i1 false), !noalias !1365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1365
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.i, i8 0, i64 4096, i1 false), !noalias !1365
  br i1 %trunc.i, label %.loopexit.loopexit.i, label %.loopexit.loopexit215.i

.loopexit.loopexit215.i:                          ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit
  %9 = udiv i64 %2, 3
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit
  %10 = lshr i64 %2, 2
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit.loopexit215.i
  %.sroa.017.0.i = phi i64 [ 4, %.loopexit.loopexit.i ], [ 3, %.loopexit.loopexit215.i ]
  %.sroa.0.2.i = phi i64 [ %10, %.loopexit.loopexit.i ], [ %9, %.loopexit.loopexit215.i ] ; 5 uses
  %11 = icmp eq i8 %5, 3                          ; 3 uses
  %.sroa.019.0.i = select i1 %11, i64 4, i64 3
  %12 = add nuw nsw i64 %.sroa.0.2.i, 255
  %.sroa.05.0.i.i.i = lshr i64 %12, 8             ; 2 uses
  %.not211.i = icmp eq i64 %.sroa.05.0.i.i.i, 0
  br i1 %.not211.i, label %.loopexit5, label %.lr.ph214.i

.lr.ph214.i:                                      ; preds = %.loopexit.i
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.44.0..sroa_idx.i87.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.55.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx.i91.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 4096
  %.sroa.021.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.021.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.021.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 4092
  %.sroa.025.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.025.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.025.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.722.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.525.sroa.0.0.copyload.pre.i.i = load float, ptr %i.r, align 4, !alias.scope !1362, !noalias !1368 ; 6 uses
  %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.dl = load <2 x float>, ptr %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i, align 4, !alias.scope !1362, !noalias !1368 ; 8 uses
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.717.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.43.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.54.0..sroa_idx.i110.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i112.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.0..sroa_idx.i102.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %broadcast.splatinsert236 = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat237 = shufflevector <4 x float> %broadcast.splatinsert236, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat239 = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat241 = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat215 = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat217 = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ax, %.lr.ph214.i
  %.sroa.041.0213.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph214.i ], [ %i.dn, %bb.ax ]
  %.sroa.038.0212.i = phi i64 [ 0, %.lr.ph214.i ], [ %i.dm, %bb.ax ] ; 12 uses
  %i.dm = add nuw nsw i64 %.sroa.038.0212.i, 256  ; 2 uses
  %i.dn = add nsw i64 %.sroa.041.0213.i, -1       ; 2 uses
  %..i.i = call noundef range(i64 0, -8589934590) i64 @llvm.umin.i64(i64 range(i64 0, -8589934590) %.sroa.0.2.i, i64 %i.dm) ; 9 uses
  %i.do = sub nsw i64 %..i.i, %.sroa.038.0212.i   ; 9 uses
  %i.dp = mul i64 %i.do, %.sroa.017.0.i           ; 8 uses
  %i.dq = icmp ult i64 %i.dp, 1025
  br i1 %i.dq, label %bb.ak, label %.invoke, !prof !1369

.invoke:                                          ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ap, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.am, %bb.al, %bb.aj
  %i.dr = phi i64 [ %.sroa.038.0212.i, %bb.au ], [ 0, %bb.aj ], [ %i.dv, %bb.al ], [ %i.dy, %bb.am ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %bb.ap ], [ %i.if, %bb.as ], [ %i.ii, %bb.at ], [ %i.im, %bb.av ]
  %i.ds = phi i64 [ %..i.i, %bb.au ], [ %i.dp, %bb.aj ], [ %i.dw, %bb.al ], [ %i.dz, %bb.am ], [ %i.hm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.id, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gv, %bb.ap ], [ %i.ig, %bb.as ], [ %i.ij, %bb.at ], [ %i.in, %bb.av ]
  %i.dt = phi i64 [ %i.di, %bb.au ], [ 1024, %bb.aj ], [ %2, %bb.al ], [ %2, %bb.am ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.dp, %bb.ap ], [ %i.di, %bb.as ], [ %i.di, %bb.at ], [ %i.di, %bb.av ]
  %i.du = phi ptr [ @44, %bb.au ], [ @48, %bb.aj ], [ @37, %bb.al ], [ @38, %bb.am ], [ @40, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @41, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @46, %bb.ap ], [ @42, %bb.as ], [ @43, %bb.at ], [ @45, %bb.av ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dr, i64 noundef %i.ds, i64 noundef %i.dt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.aj
  br i1 %trunc.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = mul nuw nsw i64 %.sroa.038.0212.i, 3    ; 2 uses
  %i.dw = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.dx = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0212.i
  %.not73.i = icmp samesign ugt i64 %i.dw, %2
  %or.cond.i = or i1 %i.dx, %.not73.i
  br i1 %or.cond.i, label %.invoke, label %bb.an, !prof !1370

bb.am:                                            ; preds = %bb.ak
  %i.dy = shl nuw nsw i64 %.sroa.038.0212.i, 2    ; 3 uses
  %i.dz = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.ea = icmp samesign ult i64 %i.dz, %i.dy
  %.not72.i = icmp samesign ugt i64 %i.dz, %2
  %or.cond81.i = or i1 %i.ea, %.not72.i
  br i1 %or.cond81.i, label %.invoke, label %bb.ao, !prof !1370

bb.an:                                            ; preds = %bb.al
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1365
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dw
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dp
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull readonly align 4 %i.eb, ptr noundef nonnull readonly %i.ec, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.ed)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %bb.an
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8, !noalias !1371 ; 8 uses
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !1371 ; 8 uses
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !1371 ; 5 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1371 ; 5 uses
  %i.ee = icmp ult i64 %.sroa.55.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.ee, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %.loopexit289.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc9
  %.sroa.44.0.copyload.i.i265 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i to i64
  %.sroa.0.0.copyload.i.i266 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i) ]
  %i.ef = sub nuw i64 %.sroa.7.0.copyload.i.i, %.sroa.55.0.copyload.i.i ; 3 uses
  %min.iters.check269 = icmp ult i64 %i.ef, 8
  %i.eg = sub i64 %.sroa.0.0.copyload.i.i266, %.sroa.44.0.copyload.i.i265
  %diff.check267 = icmp ugt i64 %i.eg, -32
  %or.cond = select i1 %min.iters.check269, i1 true, i1 %diff.check267
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph270

vector.ph270:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %n.vec271 = and i64 %i.ef, -8                   ; 3 uses
  %i.eh = add i64 %.sroa.55.0.copyload.i.i, %n.vec271
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph270
  %index273 = phi i64 [ 0, %vector.ph270 ], [ %index.next276, %vector.body272 ] ; 2 uses
  %i.ei = add nuw i64 %.sroa.55.0.copyload.i.i, %index273 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.ei ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load274 = load <4 x float>, ptr %i.ej, align 4, !noalias !1362
  %wide.load275 = load <4 x float>, ptr %i.el, align 4, !noalias !1362
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <4 x float> %wide.load274, ptr %i.ek, align 4, !noalias !1362
  store <4 x float> %wide.load275, ptr %i.em, align 4, !noalias !1362
  %index.next276 = add nuw i64 %index273, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next276, %n.vec271
  br i1 %i.en, label %middle.block277, label %vector.body272, !llvm.loop !1375

middle.block277:                                  ; preds = %vector.body272
  %cmp.n278 = icmp eq i64 %i.ef, %n.vec271
  br i1 %cmp.n278, label %.loopexit289.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block277
  %.sroa.55.010.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.eh, %middle.block277 ] ; 4 uses
  %i.eo = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.010.i.i.ph
  %xtraiter285 = and i64 %i.eo, 3                 ; 2 uses
  %lcmp.mod286.not = icmp eq i64 %xtraiter285, 0
  br i1 %lcmp.mod286.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.55.010.i.i.prol = phi i64 [ %i.er, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.er = add nuw i64 %.sroa.55.010.i.i.prol, 1   ; 2 uses
  %i.es = load float, ptr %i.ep, align 4, !noalias !1362, !noundef !7
  store float %i.es, ptr %i.eq, align 4, !noalias !1362
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter285
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !1378

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.55.010.i.i.unr = phi i64 [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.er, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.et = sub i64 %.sroa.55.010.i.i.ph, %.sroa.7.0.copyload.i.i
  %i.eu = icmp ugt i64 %i.et, -4
  br i1 %i.eu, label %.loopexit289.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.55.010.i.i = phi i64 [ %i.fj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.55.010.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ex = add nuw i64 %.sroa.55.010.i.i, 1        ; 2 uses
  %i.ey = load float, ptr %i.ev, align 4, !noalias !1362, !noundef !7
  store float %i.ey, ptr %i.ew, align 4, !noalias !1362
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ex
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.ex
  %i.fb = add nuw i64 %.sroa.55.010.i.i, 2        ; 2 uses
  %i.fc = load float, ptr %i.ez, align 4, !noalias !1362, !noundef !7
  store float %i.fc, ptr %i.fa, align 4, !noalias !1362
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.fb
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.fb
  %i.ff = add nuw i64 %.sroa.55.010.i.i, 3        ; 2 uses
  %i.fg = load float, ptr %i.fd, align 4, !noalias !1362, !noundef !7
  store float %i.fg, ptr %i.fe, align 4, !noalias !1362
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ff
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.ff
  %i.fj = add nuw i64 %.sroa.55.010.i.i, 4        ; 2 uses
  %i.fk = load float, ptr %i.fh, align 4, !noalias !1362, !noundef !7
  store float %i.fk, ptr %i.fi, align 4, !noalias !1362
  %exitcond.not.i.i6.3 = icmp eq i64 %i.fj, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i6.3, label %.loopexit289.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1380

bb.ao:                                            ; preds = %bb.am
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1365
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dz
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dp
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %i.fl, ptr noundef nonnull readonly %i.fm, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.fn)
          to label %.noexc11 unwind label %.loopexit

.noexc11:                                         ; preds = %bb.ao
  %.sroa.0.0.copyload.i86.i = load ptr, ptr %i.e, align 8, !noalias !1381 ; 8 uses
  %.sroa.44.0.copyload.i88.i = load ptr, ptr %.sroa.44.0..sroa_idx.i87.i, align 8, !noalias !1381 ; 8 uses
  %.sroa.55.0.copyload.i90.i = load i64, ptr %.sroa.55.0..sroa_idx.i89.i, align 8, !noalias !1381 ; 5 uses
  %.sroa.7.0.copyload.i92.i = load i64, ptr %.sroa.7.0..sroa_idx.i91.i, align 8, !noalias !1381 ; 5 uses
  %i.fo = icmp ult i64 %.sroa.55.0.copyload.i90.i, %.sroa.7.0.copyload.i92.i
  br i1 %i.fo, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, label %.loopexit288.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i: ; preds = %.noexc11
  %.sroa.44.0.copyload.i88.i249 = ptrtoaddr ptr %.sroa.44.0.copyload.i88.i to i64
  %.sroa.0.0.copyload.i86.i250 = ptrtoaddr ptr %.sroa.0.0.copyload.i86.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i86.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i88.i) ]
  %i.fp = sub nuw i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.0.copyload.i90.i ; 3 uses
  %min.iters.check253 = icmp ult i64 %i.fp, 8
  %i.fq = sub i64 %.sroa.0.0.copyload.i86.i250, %.sroa.44.0.copyload.i88.i249
  %diff.check251 = icmp ugt i64 %i.fq, -32
  %or.cond280 = select i1 %min.iters.check253, i1 true, i1 %diff.check251
  br i1 %or.cond280, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, label %vector.ph254

vector.ph254:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i
  %n.vec255 = and i64 %i.fp, -8                   ; 3 uses
  %i.fr = add i64 %.sroa.55.0.copyload.i90.i, %n.vec255
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next260, %vector.body256 ] ; 2 uses
  %i.fs = add nuw i64 %.sroa.55.0.copyload.i90.i, %index257 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fs ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load258 = load <4 x float>, ptr %i.ft, align 4, !noalias !1362
  %wide.load259 = load <4 x float>, ptr %i.fv, align 4, !noalias !1362
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store <4 x float> %wide.load258, ptr %i.fu, align 4, !noalias !1362
  store <4 x float> %wide.load259, ptr %i.fw, align 4, !noalias !1362
  %index.next260 = add nuw i64 %index257, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next260, %n.vec255
  br i1 %i.fx, label %middle.block261, label %vector.body256, !llvm.loop !1385

middle.block261:                                  ; preds = %vector.body256
  %cmp.n262 = icmp eq i64 %i.fp, %n.vec255
  br i1 %cmp.n262, label %.loopexit288.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, %middle.block261
  %.sroa.55.010.i95.i.ph = phi i64 [ %.sroa.55.0.copyload.i90.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i ], [ %i.fr, %middle.block261 ] ; 4 uses
  %i.fy = sub i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.010.i95.i.ph
  %xtraiter287 = and i64 %i.fy, 3                 ; 2 uses
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol
  %.sroa.55.010.i95.i.prol = phi i64 [ %i.gb, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ] ; 3 uses
  %prol.iter289 = phi i64 [ %prol.iter289.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i.prol
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i.prol
  %i.gb = add nuw i64 %.sroa.55.010.i95.i.prol, 1 ; 2 uses
  %i.gc = load float, ptr %i.fz, align 4, !noalias !1362, !noundef !7
  store float %i.gc, ptr %i.ga, align 4, !noalias !1362
  %prol.iter289.next = add i64 %prol.iter289, 1   ; 2 uses
  %prol.iter289.cmp.not = icmp eq i64 %prol.iter289.next, %xtraiter287
  br i1 %prol.iter289.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, !llvm.loop !1386

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader
  %.sroa.55.010.i95.i.unr = phi i64 [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ], [ %i.gb, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ]
  %i.gd = sub i64 %.sroa.55.010.i95.i.ph, %.sroa.7.0.copyload.i92.i
  %i.ge = icmp ugt i64 %i.gd, -4
  br i1 %i.ge, label %.loopexit288.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i
  %.sroa.55.010.i95.i = phi i64 [ %i.gt, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i ], [ %.sroa.55.010.i95.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit ] ; 6 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i
  %i.gh = add nuw i64 %.sroa.55.010.i95.i, 1      ; 2 uses
  %i.gi = load float, ptr %i.gf, align 4, !noalias !1362, !noundef !7
  store float %i.gi, ptr %i.gg, align 4, !noalias !1362
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.gh
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.gh
  %i.gl = add nuw i64 %.sroa.55.010.i95.i, 2      ; 2 uses
  %i.gm = load float, ptr %i.gj, align 4, !noalias !1362, !noundef !7
  store float %i.gm, ptr %i.gk, align 4, !noalias !1362
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.gl
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.gl
  %i.gp = add nuw i64 %.sroa.55.010.i95.i, 3      ; 2 uses
  %i.gq = load float, ptr %i.gn, align 4, !noalias !1362, !noundef !7
  store float %i.gq, ptr %i.go, align 4, !noalias !1362
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.gp
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.gp
  %i.gt = add nuw i64 %.sroa.55.010.i95.i, 4      ; 2 uses
  %i.gu = load float, ptr %i.gr, align 4, !noalias !1362, !noundef !7
  store float %i.gu, ptr %i.gs, align 4, !noalias !1362
  %exitcond.not.i96.i.3 = icmp eq i64 %i.gt, %.sroa.7.0.copyload.i92.i
  br i1 %exitcond.not.i96.i.3, label %.loopexit288.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, !llvm.loop !1387

bb.ap:                                            ; preds = %.loopexit288.i, %.loopexit289.i
  %i.gv = mul i64 %i.do, %.sroa.019.0.i           ; 3 uses
  %.not75.i = icmp ugt i64 %i.gv, %i.dp
  br i1 %.not75.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !1370

.loopexit289.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block277, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1365
  br i1 %11, label %bb.aq, label %bb.ap

.loopexit288.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, %middle.block261, %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1365
  br i1 %11, label %bb.ap, label %bb.ar

bb.aq:                                            ; preds = %.loopexit289.i
  %.lhs.trunc157.i = trunc nuw nsw i64 %i.dp to i16
  %i.gw = udiv i16 %.lhs.trunc157.i, 3
  %.zext158.i = zext nneg i16 %i.gw to i64
  %i.gx = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.zext158.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1365
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gx, ptr noundef nonnull %i.i, ptr noundef nonnull %i.dj)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.aq
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !noalias !1365 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !1365 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !1365 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !1365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1365
  %i.gy = icmp eq i64 %i.do, 0
  br i1 %i.gy, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc12
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8133.0205.i = phi i64 [ %i.gz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.do, %.lr.ph.preheader.i ]
  %.sroa.5131.0204.i = phi i64 [ %i.hc, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5131.0204.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.gz = add i64 %.sroa.8133.0205.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.ha = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5131.0204.i ; 3 uses
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5131.0204.i ; 3 uses
  %i.hc = add i64 %.sroa.5131.0204.i, 1
  %i.hd = load float, ptr %i.ha, align 4, !noalias !1362, !noundef !7
  store float %i.hd, ptr %i.hb, align 4, !noalias !1362
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hf = load float, ptr %i.he, align 4, !noalias !1362, !noundef !7
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store float %i.hf, ptr %i.hg, align 4, !noalias !1362
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hi = load float, ptr %i.hh, align 4, !noalias !1362, !noundef !7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hk = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.hi, i64 0
  store <2 x float> %i.hk, ptr %i.hj, align 4, !noalias !1362
  %i.hl = icmp eq i64 %i.gz, 0
  br i1 %i.hl, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.hm = shl i64 %i.do, 2                        ; 3 uses
  %i.hn = icmp ult i64 %i.hm, 1025
  br i1 %i.hn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !1388

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc14, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc12, %bb.ap
  %.sroa.031.0.i = phi ptr [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.j, %bb.ap ], [ %i.i, %.noexc12 ], [ %i.i, %.noexc14 ] ; 8 uses
  %.sroa.7.0.i = phi i64 [ %i.id, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.hm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gv, %bb.ap ], [ 0, %.noexc12 ], [ 0, %.noexc14 ] ; 4 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.as
    i8 1, label %bb.at
    i8 2, label %bb.au
    i8 3, label %bb.av
  ]

bb.ar:                                            ; preds = %.loopexit288.i
  %i.ho = lshr i64 %i.dp, 2
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1365
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hp, ptr noundef nonnull %i.i, ptr noundef nonnull %i.dk)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %bb.ar
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !noalias !1365 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !1365 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !1365 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !1365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1365
  %i.hq = icmp eq i64 %i.do, 0
  br i1 %i.hq, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph209.preheader.i

.lr.ph209.preheader.i:                            ; preds = %.noexc14
  %umax264.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph209.i

.lr.ph209.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph209.preheader.i
  %.sroa.8148.0208.i = phi i64 [ %i.hr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.do, %.lr.ph209.preheader.i ]
  %.sroa.5146.0207.i = phi i64 [ %i.hu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph209.preheader.i ] ; 4 uses
  %exitcond265.not.i = icmp eq i64 %.sroa.5146.0207.i, %umax264.i
  br i1 %exitcond265.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph209.i
  %i.hr = add i64 %.sroa.8148.0208.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5146.0207.i ; 3 uses
  %i.ht = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5146.0207.i ; 3 uses
  %i.hu = add i64 %.sroa.5146.0207.i, 1
  %i.hv = load float, ptr %i.hs, align 4, !noalias !1362, !noundef !7
  store float %i.hv, ptr %i.ht, align 4, !noalias !1362
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hx = load float, ptr %i.hw, align 4, !noalias !1362, !noundef !7
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  store float %i.hx, ptr %i.hy, align 4, !noalias !1362
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.ia = load float, ptr %i.hz, align 4, !noalias !1362, !noundef !7
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store float %i.ia, ptr %i.ib, align 4, !noalias !1362
  %i.ic = icmp eq i64 %i.hr, 0
  br i1 %i.ic, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph209.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph209.i
  %i.id = mul i64 %i.do, 3                        ; 3 uses
  %i.ie = icmp ult i64 %i.id, 1025
  br i1 %i.ie, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !1388

bb.as:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.if = mul nuw nsw i64 %.sroa.038.0212.i, 3    ; 2 uses
  %i.ig = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.ih = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0212.i
  %.not80.i = icmp samesign ugt i64 %i.ig, %i.di
  %or.cond82.i = or i1 %i.ih, %.not80.i
  br i1 %or.cond82.i, label %.invoke, label %bb.aw, !prof !1370

bb.at:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.ii = shl nuw nsw i64 %.sroa.038.0212.i, 2    ; 3 uses
  %i.ij = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.ik = icmp samesign ult i64 %i.ij, %i.ii
  %.not79.i = icmp samesign ugt i64 %i.ij, %i.di
  %or.cond83.i = or i1 %i.ik, %.not79.i
  br i1 %or.cond83.i, label %.invoke, label %bb.ay, !prof !1370

bb.au:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.il = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0212.i
  %.not78.i = icmp samesign ugt i64 %..i.i, %i.di
  %or.cond84.i = or i1 %i.il, %.not78.i
  br i1 %or.cond84.i, label %.invoke, label %bb.az, !prof !1370

bb.av:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.im = shl nuw nsw i64 %.sroa.038.0212.i, 1    ; 3 uses
  %i.in = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %i.io = icmp samesign ult i64 %i.in, %i.im
  %.not77.i = icmp samesign ugt i64 %i.in, %i.di
  %or.cond85.i = or i1 %i.io, %.not77.i
  br i1 %or.cond85.i, label %.invoke, label %bb.ba, !prof !1370

bb.aw:                                            ; preds = %bb.as
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1365
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.ig
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.iq, ptr noundef nonnull align 4 %i.ip, ptr noundef nonnull %i.ir)
          to label %.noexc17 unwind label %.loopexit

.noexc17:                                         ; preds = %bb.aw
  %.sroa.0.0.copyload.i101.i = load ptr, ptr %i.d, align 8, !noalias !1389 ; 8 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1389 ; 8 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1389 ; 5 uses
  %.sroa.7.0.copyload.i103.i = load i64, ptr %.sroa.7.0..sroa_idx.i102.i, align 8, !noalias !1389 ; 5 uses
  %i.is = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i103.i
  br i1 %i.is, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i: ; preds = %.noexc17
  %.sroa.43.0.copyload.i.i187 = ptrtoaddr ptr %.sroa.43.0.copyload.i.i to i64
  %.sroa.0.0.copyload.i101.i188 = ptrtoaddr ptr %.sroa.0.0.copyload.i101.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i101.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.it = sub nuw i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  %i.iu = sub i64 %.sroa.0.0.copyload.i101.i188, %.sroa.43.0.copyload.i.i187
  %diff.check = icmp ugt i64 %i.iu, -32
  %or.cond281 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond281, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  %i.iv = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iw = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.iw ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.load = load <4 x float>, ptr %i.ix, align 4, !noalias !1362
  %wide.load189 = load <4 x float>, ptr %i.iz, align 4, !noalias !1362
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store <4 x float> %wide.load, ptr %i.iy, align 4, !noalias !1362
  store <4 x float> %wide.load189, ptr %i.ja, align 4, !noalias !1362
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %middle.block, label %vector.body, !llvm.loop !1393

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i ], [ %i.iv, %middle.block ] ; 4 uses
  %i.jc = sub i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.09.i.i.ph
  %xtraiter296 = and i64 %i.jc, 3                 ; 2 uses
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol
  %.sroa.54.09.i.i.prol = phi i64 [ %i.jf, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol ], [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader ] ; 3 uses
  %prol.iter298 = phi i64 [ %prol.iter298.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader ]
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i.prol
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.prol
  %i.jf = add nuw i64 %.sroa.54.09.i.i.prol, 1    ; 2 uses
  %i.jg = load float, ptr %i.jd, align 4, !noalias !1362, !noundef !7
  store float %i.jg, ptr %i.je, align 4, !noalias !1362
  %prol.iter298.next = add i64 %prol.iter298, 1   ; 2 uses
  %prol.iter298.cmp.not = icmp eq i64 %prol.iter298.next, %xtraiter296
  br i1 %prol.iter298.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol, !llvm.loop !1394

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader ], [ %i.jf, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol ]
  %i.jh = sub i64 %.sroa.54.09.i.i.ph, %.sroa.7.0.copyload.i103.i
  %i.ji = icmp ugt i64 %i.jh, -4
  br i1 %i.ji, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i
  %.sroa.54.09.i.i = phi i64 [ %i.jx, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.jl = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.jm = load float, ptr %i.jj, align 4, !noalias !1362, !noundef !7
  store float %i.jm, ptr %i.jk, align 4, !noalias !1362
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.jl
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.jl
  %i.jp = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.jq = load float, ptr %i.jn, align 4, !noalias !1362, !noundef !7
  store float %i.jq, ptr %i.jo, align 4, !noalias !1362
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.jp
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.jp
  %i.jt = add nuw i64 %.sroa.54.09.i.i, 3         ; 2 uses
  %i.ju = load float, ptr %i.jr, align 4, !noalias !1362, !noundef !7
  store float %i.ju, ptr %i.js, align 4, !noalias !1362
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.jt
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.jt
  %i.jx = add nuw i64 %.sroa.54.09.i.i, 4         ; 2 uses
  %i.jy = load float, ptr %i.jv, align 4, !noalias !1362, !noundef !7
  store float %i.jy, ptr %i.jw, align 4, !noalias !1362
  %exitcond.not.i106.i.3 = icmp eq i64 %i.jx, %.sroa.7.0.copyload.i103.i
  br i1 %exitcond.not.i106.i.3, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i, !llvm.loop !1395

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i, %middle.block, %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1365
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i
  %.not.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i, label %.loopexit5, label %bb.aj

bb.ay:                                            ; preds = %bb.at
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1365
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.ij
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.ka, ptr noundef nonnull align 4 %i.jz, ptr noundef nonnull %i.kb)
          to label %.noexc19 unwind label %.loopexit

.noexc19:                                         ; preds = %bb.ay
  %.sroa.0.0.copyload.i107.i = load ptr, ptr %i.c, align 8, !noalias !1396 ; 8 uses
  %.sroa.43.0.copyload.i109.i = load ptr, ptr %.sroa.43.0..sroa_idx.i108.i, align 8, !noalias !1396 ; 8 uses
  %.sroa.54.0.copyload.i111.i = load i64, ptr %.sroa.54.0..sroa_idx.i110.i, align 8, !noalias !1396 ; 5 uses
  %.sroa.7.0.copyload.i113.i = load i64, ptr %.sroa.7.0..sroa_idx.i112.i, align 8, !noalias !1396 ; 5 uses
  %i.kc = icmp ult i64 %.sroa.54.0.copyload.i111.i, %.sroa.7.0.copyload.i113.i
  br i1 %i.kc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i114.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbafEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i114.i: ; preds = %.noexc19
  %.sroa.43.0.copyload.i109.i191 = ptrtoaddr ptr %.sroa.43.0.copyload.i109.i to i64
  %.sroa.0.0.copyload.i107.i192 = ptrtoaddr ptr %.sroa.0.0.copyload.i107.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i107.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i109.i) ]
  %i.kd = sub nuw i64 %.sroa.7.0.copyload.i113.i, %.sroa.54.0.copyload.i111.i ; 3 uses
  %min.iters.check195 = icmp ult i64 %i.kd, 8
  %i.ke = sub i64 %.sroa.0.0.copyload.i107.i192, %.sroa.43.0.copyload.i109.i191
  %diff.check193 = icmp ugt i64 %i.ke, -32
  %or.cond282 = select i1 %min.iters.check195, i1 true, i1 %diff.check193
  br i1 %or.cond282, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.preheader, label %vector.ph196

vector.ph196:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i114.i
  %n.vec197 = and i64 %i.kd, -8                   ; 3 uses
  %i.kf = add i64 %.sroa.54.0.copyload.i111.i, %n.vec197
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next202, %vector.body198 ] ; 2 uses
  %i.kg = add nuw i64 %.sroa.54.0.copyload.i111.i, %index199 ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i107.i, i64 %i.kg ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i109.i, i64 %i.kg ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %wide.load200 = load <4 x float>, ptr %i.kh, align 4, !noalias !1362
  %wide.load201 = load <4 x float>, ptr %i.kj, align 4, !noalias !1362
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store <4 x float> %wide.load200, ptr %i.ki, align 4, !noalias !1362
  store <4 x float> %wide.load201, ptr %i.kk, align 4, !noalias !1362
  %index.next202 = add nuw i64 %index199, 8       ; 2 uses
  %i.kl = icmp eq i64 %index.next202, %n.vec197
  br i1 %i.kl, label %middle.block203, label %vector.body198, !llvm.loop !1400

middle.block203:                                  ; preds = %vector.body198
  %cmp.n204 = icmp eq i64 %i.kd, %n.vec197
  br i1 %cmp.n204, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbafEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i114.i, %middle.block203
  %.sroa.54.09.i116.i.ph = phi i64 [ %.sroa.54.0.copyload.i111.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i114.i ], [ %i.kf, %middle.block203 ] ; 4 uses
  %i.km = sub i64 %.sroa.7.0.copyload.i113.i, %.sroa.54.09.i116.i.ph
  %xtraiter293 = and i64 %i.km, 3                 ; 2 uses
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.prol
  %.sroa.54.09.i116.i.prol = phi i64 [ %i.kp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.prol ], [ %.sroa.54.09.i116.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.preheader ] ; 3 uses
  %prol.iter295 = phi i64 [ %prol.iter295.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.preheader ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i107.i, i64 %.sroa.54.09.i116.i.prol
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i109.i, i64 %.sroa.54.09.i116.i.prol
  %i.kp = add nuw i64 %.sroa.54.09.i116.i.prol, 1 ; 2 uses
  %i.kq = load float, ptr %i.kn, align 4, !noalias !1362, !noundef !7
  store float %i.kq, ptr %i.ko, align 4, !noalias !1362
  %prol.iter295.next = add i64 %prol.iter295, 1   ; 2 uses
  %prol.iter295.cmp.not = icmp eq i64 %prol.iter295.next, %xtraiter293
  br i1 %prol.iter295.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.prol, !llvm.loop !1401

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.preheader
  %.sroa.54.09.i116.i.unr = phi i64 [ %.sroa.54.09.i116.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.preheader ], [ %i.kp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.prol ]
  %i.kr = sub i64 %.sroa.54.09.i116.i.ph, %.sroa.7.0.copyload.i113.i
  %i.ks = icmp ugt i64 %i.kr, -4
  br i1 %i.ks, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbafEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutffEBa_:bb.a
  %i.nu = load float, ptr %i.nt, align 4, !noalias !1411, !noundef !7
  %i.nv = fmul float %.sroa.525.sroa.0.0.copyload.pre.i.i, %i.nu
  %i.nw = fadd float %i.nv, 0.000000e+00
  %.ptr36.1.i.i.prol = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  %i.nx = load <2 x float>, ptr %.ptr36.1.i.i.prol, align 4, !noalias !1411
  %i.ny = fmul <2 x float> %i.dl, %i.nx           ; 2 uses
  %i.nz = extractelement <2 x float> %i.ny, i64 0
  %i.oa = fadd float %i.nw, %i.nz
  %i.ob = extractelement <2 x float> %i.ny, i64 1
  %i.oc = fadd float %i.oa, %i.ob
  store float %i.oc, ptr %i.ns, align 4, !noalias !1411
  br label %.thread.i.i.prol.loopexit

.thread.i.i.prol.loopexit:                        ; preds = %.thread.i.i.prol, %.thread.i.i.preheader
  %.sroa.516.037.i.i.unr = phi i64 [ %.sroa.516.037.i.i.ph, %.thread.i.i.preheader ], [ %i.nr, %.thread.i.i.prol ]
  %i.od = icmp eq i64 %.sroa.717.0.copyload.i.i, %.neg300
  br i1 %i.od, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumafEBa_.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.i.i.prol.loopexit, %.thread.i.i
  %.sroa.516.037.i.i = phi i64 [ %i.oq, %.thread.i.i ], [ %.sroa.516.037.i.i.unr, %.thread.i.i.prol.loopexit ] ; 4 uses
  %i.oe = add nuw i64 %.sroa.516.037.i.i, 1       ; 2 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.sroa.415.0.copyload.i.i, i64 %.sroa.516.037.i.i
  %i.og = getelementptr inbounds nuw [12 x i8], ptr %.sroa.013.0.copyload.i.i, i64 %.sroa.516.037.i.i ; 2 uses
  %i.oh = load float, ptr %i.og, align 4, !noalias !1411, !noundef !7
  %i.oi = fmul float %.sroa.525.sroa.0.0.copyload.pre.i.i, %i.oh
  %i.oj = fadd float %i.oi, 0.000000e+00
  %.ptr36.1.i.i = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  %i.ok = load <2 x float>, ptr %.ptr36.1.i.i, align 4, !noalias !1411
  %i.ol = fmul <2 x float> %i.dl, %i.ok           ; 2 uses
  %i.om = extractelement <2 x float> %i.ol, i64 0
  %i.on = fadd float %i.oj, %i.om
  %i.oo = extractelement <2 x float> %i.ol, i64 1
  %i.op = fadd float %i.on, %i.oo
  store float %i.op, ptr %i.of, align 4, !noalias !1411
  %i.oq = add nuw i64 %.sroa.516.037.i.i, 2       ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.sroa.415.0.copyload.i.i, i64 %i.oe
  %i.os = getelementptr inbounds nuw [12 x i8], ptr %.sroa.013.0.copyload.i.i, i64 %i.oe ; 2 uses
  %i.ot = load float, ptr %i.os, align 4, !noalias !1411, !noundef !7
  %i.ou = fmul float %.sroa.525.sroa.0.0.copyload.pre.i.i, %i.ot
  %i.ov = fadd float %i.ou, 0.000000e+00
  %.ptr36.1.i.i.1 = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.ow = load <2 x float>, ptr %.ptr36.1.i.i.1, align 4, !noalias !1411
  %i.ox = fmul <2 x float> %i.dl, %i.ow           ; 2 uses
  %i.oy = extractelement <2 x float> %i.ox, i64 0
  %i.oz = fadd float %i.ov, %i.oy
  %i.pa = extractelement <2 x float> %i.ox, i64 1
  %i.pb = fadd float %i.oz, %i.pa
  store float %i.pb, ptr %i.or, align 4, !noalias !1411
  %exitcond.not.i118.i.1 = icmp eq i64 %i.oq, %.sroa.717.0.copyload.i.i
  br i1 %exitcond.not.i118.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumafEBa_.exit.i, label %.thread.i.i, !llvm.loop !1416

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumafEBa_.exit.i: ; preds = %.thread.i.i.prol.loopexit, %.thread.i.i, %middle.block221, %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1365
  br label %bb.ax

bb.ba:                                            ; preds = %bb.av
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.im ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1365
  %i.pd = lshr i64 %.sroa.7.0.i, 2
  %i.pe = getelementptr inbounds nuw [16 x i8], ptr %.sroa.031.0.i, i64 %i.pd
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.do
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj2_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.pe, ptr noundef nonnull align 4 %i.pc, ptr noundef nonnull %i.pf)
          to label %.noexc23 unwind label %.loopexit

.noexc23:                                         ; preds = %bb.ba
  %.sroa.018.0.copyload.i.i = load ptr, ptr %i.a, align 8, !noalias !1417 ; 8 uses
  %.sroa.420.0.copyload.i.i = load ptr, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !1417 ; 5 uses
  %.sroa.521.0.copyload.i.i = load i64, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !1417 ; 8 uses
  %.sroa.722.0.copyload.i.i = load i64, ptr %.sroa.722.0..sroa_idx.i.i, align 8, !noalias !1417 ; 5 uses
  %i.pg = icmp ult i64 %.sroa.521.0.copyload.i.i, %.sroa.722.0.copyload.i.i
  br i1 %i.pg, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumafEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc23
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.420.0.copyload.i.i) ]
  %i.ph = sub nuw i64 %.sroa.722.0.copyload.i.i, %.sroa.521.0.copyload.i.i ; 3 uses
  %min.iters.check233 = icmp ult i64 %i.ph, 4
  br i1 %min.iters.check233, label %.thread.i119.i.preheader, label %vector.memcheck224

vector.memcheck224:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.pi = shl i64 %.sroa.521.0.copyload.i.i, 3
  %scevgep225 = getelementptr i8, ptr %.sroa.420.0.copyload.i.i, i64 %i.pi
  %i.pj = shl i64 %.sroa.722.0.copyload.i.i, 3
  %scevgep226 = getelementptr i8, ptr %.sroa.420.0.copyload.i.i, i64 %i.pj
  %i.pk = shl i64 %.sroa.521.0.copyload.i.i, 4
  %scevgep227 = getelementptr i8, ptr %.sroa.018.0.copyload.i.i, i64 %i.pk
  %i.pl = shl i64 %.sroa.722.0.copyload.i.i, 4
  %scevgep228 = getelementptr i8, ptr %.sroa.018.0.copyload.i.i, i64 %i.pl
  %bound0229 = icmp ult ptr %scevgep225, %scevgep228
  %bound1230 = icmp ult ptr %scevgep227, %scevgep226
  %found.conflict231 = and i1 %bound0229, %bound1230
  br i1 %found.conflict231, label %.thread.i119.i.preheader, label %vector.ph234

vector.ph234:                                     ; preds = %vector.memcheck224
  %n.vec235 = and i64 %i.ph, -4                   ; 3 uses
  %i.pm = add i64 %.sroa.521.0.copyload.i.i, %n.vec235
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph234
  %index243 = phi i64 [ 0, %vector.ph234 ], [ %index.next244, %vector.body242 ] ; 2 uses
  %i.pn = add nuw i64 %.sroa.521.0.copyload.i.i, %index243 ; 5 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %.sroa.420.0.copyload.i.i, i64 %i.pn
  %i.pp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.pn ; 4 uses
  %i.pq = getelementptr [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.pn ; 4 uses
  %i.pr = getelementptr i8, ptr %i.pq, i64 16
  %i.ps = getelementptr [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.pn ; 4 uses
  %i.pt = getelementptr i8, ptr %i.ps, i64 32
  %i.pu = getelementptr [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.pn ; 4 uses
  %i.pv = getelementptr i8, ptr %i.pu, i64 48
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pp, i64 12
  %i.px = getelementptr i8, ptr %i.pq, i64 28
  %i.py = getelementptr i8, ptr %i.ps, i64 44
  %i.pz = getelementptr i8, ptr %i.pu, i64 60
  %i.qa = load float, ptr %i.pp, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.qb = load float, ptr %i.pr, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.qc = load float, ptr %i.pt, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.qd = load float, ptr %i.pv, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.qe = insertelement <4 x float> poison, float %i.qa, i64 0
  %i.qf = insertelement <4 x float> %i.qe, float %i.qb, i64 1
  %i.qg = insertelement <4 x float> %i.qf, float %i.qc, i64 2
  %i.qh = insertelement <4 x float> %i.qg, float %i.qd, i64 3
  %i.qi = fmul <4 x float> %broadcast.splat237, %i.qh
  %i.qj = fadd <4 x float> %i.qi, zeroinitializer
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  %i.ql = getelementptr i8, ptr %i.pq, i64 20
  %i.qm = getelementptr i8, ptr %i.ps, i64 36
  %i.qn = getelementptr i8, ptr %i.pu, i64 52
  %i.qo = load float, ptr %i.qk, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.qp = load float, ptr %i.ql, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.qq = load float, ptr %i.qm, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.qr = load float, ptr %i.qn, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.qs = insertelement <4 x float> poison, float %i.qo, i64 0
  %i.qt = insertelement <4 x float> %i.qs, float %i.qp, i64 1
  %i.qu = insertelement <4 x float> %i.qt, float %i.qq, i64 2
  %i.qv = insertelement <4 x float> %i.qu, float %i.qr, i64 3
  %i.qw = fmul <4 x float> %broadcast.splat239, %i.qv
  %i.qx = fadd <4 x float> %i.qj, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.qz = getelementptr i8, ptr %i.pq, i64 24
  %i.ra = getelementptr i8, ptr %i.ps, i64 40
  %i.rb = getelementptr i8, ptr %i.pu, i64 56
  %i.rc = load float, ptr %i.qy, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.rd = load float, ptr %i.qz, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.re = load float, ptr %i.ra, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.rf = load float, ptr %i.rb, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.rg = insertelement <4 x float> poison, float %i.rc, i64 0
  %i.rh = insertelement <4 x float> %i.rg, float %i.rd, i64 1
  %i.ri = insertelement <4 x float> %i.rh, float %i.re, i64 2
  %i.rj = insertelement <4 x float> %i.ri, float %i.rf, i64 3
  %i.rk = fmul <4 x float> %broadcast.splat241, %i.rj
  %i.rl = fadd <4 x float> %i.qx, %i.rk
  %i.rm = load float, ptr %i.pw, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.rn = load float, ptr %i.px, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.ro = load float, ptr %i.py, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.rp = load float, ptr %i.pz, align 4, !alias.scope !1422, !noalias !1425, !noundef !7
  %i.rq = insertelement <4 x float> poison, float %i.rm, i64 0
  %i.rr = insertelement <4 x float> %i.rq, float %i.rn, i64 1
  %i.rs = insertelement <4 x float> %i.rr, float %i.ro, i64 2
  %i.rt = insertelement <4 x float> %i.rs, float %i.rp, i64 3
  %interleaved.vec = shufflevector <4 x float> %i.rl, <4 x float> %i.rt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.po, align 4, !alias.scope !1426, !noalias !1425
  %index.next244 = add nuw i64 %index243, 4       ; 2 uses
  %i.ru = icmp eq i64 %index.next244, %n.vec235
  br i1 %i.ru, label %middle.block245, label %vector.body242, !llvm.loop !1428

middle.block245:                                  ; preds = %vector.body242
  %cmp.n246 = icmp eq i64 %i.ph, %n.vec235
  br i1 %cmp.n246, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumafEBa_.exit.i, label %.thread.i119.i.preheader

.thread.i119.i.preheader:                         ; preds = %vector.memcheck224, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block245
  %.sroa.521.040.i.i.ph = phi i64 [ %.sroa.521.0.copyload.i.i, %vector.memcheck224 ], [ %.sroa.521.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.pm, %middle.block245 ]
  br label %.thread.i119.i

.thread.i119.i:                                   ; preds = %.thread.i119.i.preheader, %.thread.i119.i
  %.sroa.521.040.i.i = phi i64 [ %i.rv, %.thread.i119.i ], [ %.sroa.521.040.i.i.ph, %.thread.i119.i.preheader ] ; 3 uses
  %i.rv = add nuw i64 %.sroa.521.040.i.i, 1       ; 2 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.420.0.copyload.i.i, i64 %.sroa.521.040.i.i ; 2 uses
  %i.rx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %.sroa.521.040.i.i ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 12
  %i.rz = load float, ptr %i.rx, align 4, !noalias !1425, !noundef !7
  %i.sa = fmul float %.sroa.525.sroa.0.0.copyload.pre.i.i, %i.rz
  %i.sb = fadd float %i.sa, 0.000000e+00
  %.ptr39.1.i.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  %i.sc = load <2 x float>, ptr %.ptr39.1.i.i, align 4, !noalias !1425
  %i.sd = fmul <2 x float> %i.dl, %i.sc           ; 2 uses
  %i.se = extractelement <2 x float> %i.sd, i64 0
  %i.sf = fadd float %i.sb, %i.se
  %i.sg = extractelement <2 x float> %i.sd, i64 1
  %i.sh = fadd float %i.sf, %i.sg
  store float %i.sh, ptr %i.rw, align 4, !noalias !1425
  %i.si = load float, ptr %i.ry, align 4, !noalias !1425, !noundef !7
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  store float %i.si, ptr %i.sj, align 4, !noalias !1425
  %exitcond.not.i120.i = icmp eq i64 %i.rv, %.sroa.722.0.copyload.i.i
  br i1 %exitcond.not.i120.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumafEBa_.exit.i, label %.thread.i119.i, !llvm.loop !1429

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumafEBa_.exit.i: ; preds = %.thread.i119.i, %middle.block245, %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1365
  br label %bb.ax

.loopexit5:                                       ; preds = %bb.ax, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  br label %bb.af

bb.bb:                                            ; preds = %bb.ag
  %i.sk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutfhEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i8 %.2.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noundef nonnull %3, ptr nofree readonly captures(none) %.40.val, i8 noundef range(i8 0, 2) %4, i8 noundef range(i8 0, 4) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [4096 x i8], align 4              ; 11 uses
  %i.j = alloca [4096 x i8], align 4              ; 12 uses
  %i.k = alloca [36 x i8], align 4                ; 5 uses
  %i.l = alloca [24 x i8], align 4                ; 15 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 16               ; 12 uses
  %i.q = alloca [24 x i8], align 16               ; 12 uses
  %i.r = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %trunc.i = trunc nuw i8 %4 to i1                ; 4 uses
  %..i = select i1 %trunc.i, i64 4, i64 3         ; 2 uses
  %i.t = urem i64 %2, %..i
  %i.u = udiv i64 %2, %..i
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %switch.lookup, label %bb.b, !prof !1329

default.unreachable:                              ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #26, !noalias !1430
  unreachable

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1430
  %i.w = zext nneg i8 %5 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.x = mul nuw nsw i64 %i.u, %switch.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1434
  store i64 0, ptr %i.p, align 16, !noalias !1434
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.y, align 8, !noalias !1434
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 0, ptr %i.z, align 16, !noalias !1434
  %i.aa = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, i64 noundef 0, i64 noundef %i.x, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.c, !noalias !1434 ; 2 uses

bb.c:                                             ; preds = %switch.lookup
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #20
          to label %common.resume unwind label %bb.h, !noalias !1434

bb.d:                                             ; preds = %switch.lookup
  %i.ac = extractvalue { i64, i64 } %i.aa, 0      ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, -1
  br i1 %.not.i.i, label %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.thread.i unwind label %bb.f, !noalias !1434

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.g, !noalias !1434

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1434
  unreachable

common.resume:                                    ; preds = %bb.af, %bb.c, %bb.f, %.loopexit.split-lp.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.ab, %bb.c ], [ %i.ad, %bb.f ], [ %lpad.phi, %bb.af ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.thread.i: ; preds = %bb.e
  %i.af = extractvalue { i64, i64 } %i.aa, 1
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p), !noalias !1434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1434
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1434
  unreachable

_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.i: ; preds = %bb.d
  %i.ah = load <2 x i64>, ptr %i.p, align 16, !noalias !1430 ; 3 uses
  %.sroa.8.0.copyload.i = load i64, ptr %i.z, align 16, !noalias !1430 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1434
  call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %i.ai = extractelement <2 x i64> %i.ah, i64 0
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = extractelement <2 x i64> %i.ah, i64 1
  br i1 %i.aj, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i, !prof !1342

bb.i:                                             ; preds = %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.i, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.thread.i
  %.sroa.6.010.i = phi i64 [ %i.ac, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.thread.i ], [ %i.ak, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.i ]
  %.sroa.8.09.i = phi i64 [ %i.af, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.thread.i ], [ %.sroa.8.0.copyload.i, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1442
  store i64 %.sroa.6.010.i, ptr %i.o, align 8, !noalias !1442
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.8.09.i, ptr %i.al, align 8, !noalias !1442
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 54, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #26, !noalias !1442
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.i
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store <2 x i64> %i.ah, ptr %i.q, align 16, !alias.scope !1443, !noalias !1430
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1443, !noalias !1430
  br i1 %trunc.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i
  switch i8 %5, label %bb.p [
    i8 0, label %bb.l
    i8 1, label %bb.m
  ]

bb.k:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i
  switch i8 %5, label %bb.p [
    i8 0, label %bb.n
    i8 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  invoke void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4IterfEENvYhINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivefE14from_primitiveEE11spec_extendB32_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.am)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1444

bb.m:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1430
  %6 = udiv i64 %2, 3                             ; 2 uses
  %i.an = shl nuw nsw i64 %6, 2
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.an, i8 noundef 0)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1430

.noexc.i:                                         ; preds = %bb.m
  %i.ao = load ptr, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !1445, !noalias !1448, !nonnull !7, !noundef !7 ; 2 uses
  %i.ap = load i64, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1445, !noalias !1448, !noundef !7
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %6
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.aq
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.ar, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.as)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1444

.noexc10.i:                                       ; preds = %.noexc.i
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.n, align 8, !noalias !1450 ; 2 uses
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.410.0.copyload.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !1450 ; 2 uses
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.511.0.copyload.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !1450 ; 2 uses
  %.sroa.712.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.712.0.copyload.i.i = load i64, ptr %.sroa.712.0..sroa_idx.i.i, align 8, !noalias !1450 ; 2 uses
  %i.at = icmp ult i64 %.sroa.511.0.copyload.i.i, %.sroa.712.0.copyload.i.i
  br i1 %i.at, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbafhEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc10.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.noexc13.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %.sroa.511.017.i.i = phi i64 [ %.sroa.511.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.aw, %.noexc13.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %.sroa.08.0.copyload.i.i, i64 %.sroa.511.017.i.i ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.410.0.copyload.i.i, i64 %.sroa.511.017.i.i ; 4 uses
  %i.aw = add i64 %.sroa.511.017.i.i, 1           ; 2 uses
  %i.ax = load float, ptr %i.au, align 4, !noalias !1444, !noundef !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.az = load float, ptr %i.ay, align 4, !noalias !1444, !noundef !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !noalias !1444, !noundef !7
  %i.bc = invoke noundef i8 @_RNvXs3_NtCsa5QsYiPB8Gl_5image5colorhINtB5_13FromPrimitivefE14from_primitive(float noundef %i.ax)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1444

.noexc11.i:                                       ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %i.bd = invoke noundef i8 @_RNvXs3_NtCsa5QsYiPB8Gl_5image5colorhINtB5_13FromPrimitivefE14from_primitive(float noundef %i.az)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1444

.noexc12.i:                                       ; preds = %.noexc11.i
  %i.be = invoke noundef i8 @_RNvXs3_NtCsa5QsYiPB8Gl_5image5colorhINtB5_13FromPrimitivefE14from_primitive(float noundef %i.bb)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1444

.noexc13.i:                                       ; preds = %.noexc12.i
  store i8 %i.bc, ptr %i.av, align 1, !noalias !1444
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %i.bd, ptr %i.bf, align 1, !noalias !1444
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 %i.be, ptr %i.bg, align 1, !noalias !1444
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  store i8 -1, ptr %i.bh, align 1, !noalias !1444
  %exitcond.not.i.i = icmp eq i64 %i.aw, %.sroa.712.0.copyload.i.i
  br i1 %exitcond.not.i.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbafhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbafhEBa_.exit.i: ; preds = %.noexc13.i, %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1430
  br label %bb.ad

.loopexit.i:                                      ; preds = %.noexc26.i, %.noexc25.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc12.i, %.noexc11.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %lpad.loopexit11.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.noexc23.i, %bb.n, %.noexc.i, %bb.m, %bb.l
  %lpad.loopexit.split-lp12.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit11.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp12.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #20
          to label %common.resume unwind label %bb.o, !noalias !1444

bb.n:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1430
  %7 = lshr i64 %2, 2                             ; 2 uses
  %i.bi = mul nuw nsw i64 %7, 3
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.bi, i8 noundef 0)
          to label %.noexc23.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1430

.noexc23.i:                                       ; preds = %bb.n
  %i.bj = load ptr, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !1451, !noalias !1454, !nonnull !7, !noundef !7 ; 2 uses
  %i.bk = load i64, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1451, !noalias !1454, !noundef !7
  %i.bl = udiv i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %7
  %i.bn = getelementptr inbounds nuw [3 x i8], ptr %i.bj, i64 %i.bl
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.bm, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bn)
          to label %.noexc24.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1444

.noexc24.i:                                       ; preds = %.noexc23.i
  %.sroa.08.0.copyload.i14.i = load ptr, ptr %i.m, align 8, !noalias !1456 ; 2 uses
  %.sroa.410.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.410.0.copyload.i16.i = load ptr, ptr %.sroa.410.0..sroa_idx.i15.i, align 8, !noalias !1456 ; 2 uses
  %.sroa.511.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.511.0.copyload.i18.i = load i64, ptr %.sroa.511.0..sroa_idx.i17.i, align 8, !noalias !1456 ; 2 uses
  %.sroa.712.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.712.0.copyload.i20.i = load i64, ptr %.sroa.712.0..sroa_idx.i19.i, align 8, !noalias !1456 ; 2 uses
  %i.bo = icmp ult i64 %.sroa.511.0.copyload.i18.i, %.sroa.712.0.copyload.i20.i
  br i1 %i.bo, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbfhEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc24.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i14.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i16.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.noexc27.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %.sroa.511.017.i21.i = phi i64 [ %.sroa.511.0.copyload.i18.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.br, %.noexc27.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.08.0.copyload.i14.i, i64 %.sroa.511.017.i21.i ; 3 uses
  %i.bq = getelementptr inbounds nuw [3 x i8], ptr %.sroa.410.0.copyload.i16.i, i64 %.sroa.511.017.i21.i ; 3 uses
  %i.br = add i64 %.sroa.511.017.i21.i, 1         ; 2 uses
  %i.bs = load float, ptr %i.bp, align 4, !noalias !1444, !noundef !7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !noalias !1444, !noundef !7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !noalias !1444, !noundef !7
  %i.bx = invoke noundef i8 @_RNvXs3_NtCsa5QsYiPB8Gl_5image5colorhINtB5_13FromPrimitivefE14from_primitive(float noundef %i.bs)
          to label %.noexc25.i unwind label %.loopexit.i, !noalias !1444

.noexc25.i:                                       ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %i.by = invoke noundef i8 @_RNvXs3_NtCsa5QsYiPB8Gl_5image5colorhINtB5_13FromPrimitivefE14from_primitive(float noundef %i.bu)
          to label %.noexc26.i unwind label %.loopexit.i, !noalias !1444

.noexc26.i:                                       ; preds = %.noexc25.i
  %i.bz = invoke noundef i8 @_RNvXs3_NtCsa5QsYiPB8Gl_5image5colorhINtB5_13FromPrimitivefE14from_primitive(float noundef %i.bw)
          to label %.noexc27.i unwind label %.loopexit.i, !noalias !1444

.noexc27.i:                                       ; preds = %.noexc26.i
  store i8 %i.bx, ptr %i.bq, align 1, !noalias !1444
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 %i.by, ptr %i.ca, align 1, !noalias !1444
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i8 %i.bz, ptr %i.cb, align 1, !noalias !1444
  %exitcond.not.i22.i = icmp eq i64 %i.br, %.sroa.712.0.copyload.i20.i
  br i1 %exitcond.not.i22.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbfhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbfhEBa_.exit.i: ; preds = %.noexc27.i, %.noexc24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1430
  br label %bb.ad

bb.o:                                             ; preds = %.loopexit.split-lp.i
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1444
  unreachable

bb.p:                                             ; preds = %bb.j, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  switch i8 %.2.val, label %bb.q [
    i8 1, label %bb.r
    i8 2, label %bb.ah
    i8 4, label %bb.s
    i8 5, label %bb.t
    i8 6, label %bb.u
    i8 7, label %bb.v
    i8 8, label %bb.w
    i8 9, label %bb.x
    i8 10, label %bb.y
    i8 11, label %bb.z
    i8 12, label %bb.aa
    i8 22, label %bb.ab
  ]

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @137, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.s:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @138, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @139, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.u:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.v:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.w:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @141, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.x:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @142, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.y:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @143, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.z:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.aa:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.ab:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @145, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.sroa.12.0.i = phi float [ 3.290300e-01, %bb.r ], [ 3.160000e-01, %bb.s ], [ 3.290300e-01, %bb.t ], [ 3.290300e-01, %bb.u ], [ 3.290300e-01, %bb.v ], [ 3.160000e-01, %bb.w ], [ 3.290300e-01, %bb.x ], [ f0x3EAAAAAB, %bb.y ], [ 3.510000e-01, %bb.z ], [ 3.290300e-01, %bb.aa ], [ 3.290300e-01, %bb.ab ]
  %.sroa.0.0.i = phi float [ 3.127200e-01, %bb.r ], [ 3.100000e-01, %bb.s ], [ 3.127200e-01, %bb.t ], [ 3.127200e-01, %bb.u ], [ 3.127200e-01, %bb.v ], [ 3.100000e-01, %bb.w ], [ 3.127200e-01, %bb.x ], [ f0x3EAAAAAB, %bb.y ], [ 3.140000e-01, %bb.z ], [ 3.127200e-01, %bb.aa ], [ 3.127200e-01, %bb.ab ]
  invoke void @_RINvMs0_NtCshGoo8nsRtFZ_6moxcms4cicpNtB6_14ColorPrimaries16transform_to_xyzNtNtB8_12chromaticity12ChromaticityECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.l, float noundef %.sroa.0.0.i, float noundef %.sroa.12.0.i)
          to label %bb.ag unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbfhEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbafhEBa_.exit.i, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit5, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

.loopexit:                                        ; preds = %bb.am, %bb.an, %bb.ap, %bb.aq, %bb.av, %bb.ax, %bb.ay, %bb.az
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp:                               ; preds = %.invoke, %bb.ah, %bb.ac, %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #20
          to label %common.resume unwind label %bb.ba

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.cd, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit

bb.ah:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void %.40.val(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.r, ptr noundef nonnull %3)
          to label %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit unwind label %.loopexit.split-lp

_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit: ; preds = %bb.ah, %bb.ag
  %i.ce = icmp eq i8 %4, 0
  %spec.select = select i1 %i.ce, i64 3, i64 4
  %8 = udiv i64 %2, %spec.select
  %i.cf = icmp eq i8 %5, 3
  %i.cg = zext i1 %i.cf to i64
  %i.ch = shl nuw nsw i64 %8, %i.cg
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.ch, i8 noundef 0)
          to label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit unwind label %.loopexit.split-lp

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit: ; preds = %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !7 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.j, i8 0, i64 4096, i1 false), !noalias !1464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.i, i8 0, i64 4096, i1 false), !noalias !1464
  br i1 %trunc.i, label %.loopexit.loopexit.i, label %.loopexit.loopexit213.i

.loopexit.loopexit213.i:                          ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit
  %9 = udiv i64 %2, 3
  br label %.loopexit.i6

.loopexit.loopexit.i:                             ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit
  %10 = lshr i64 %2, 2
  br label %.loopexit.i6

.loopexit.i6:                                     ; preds = %.loopexit.loopexit.i, %.loopexit.loopexit213.i
  %.sroa.017.0.i = phi i64 [ 4, %.loopexit.loopexit.i ], [ 3, %.loopexit.loopexit213.i ]
  %.sroa.0.2.i = phi i64 [ %10, %.loopexit.loopexit.i ], [ %9, %.loopexit.loopexit213.i ] ; 5 uses
  %11 = icmp eq i8 %5, 3                          ; 3 uses
  %.sroa.019.0.i = select i1 %11, i64 4, i64 3
  %12 = add nuw nsw i64 %.sroa.0.2.i, 255
  %.sroa.05.0.i.i.i = lshr i64 %12, 8             ; 2 uses
  %.not209.i = icmp eq i64 %.sroa.05.0.i.i.i, 0
  br i1 %.not209.i, label %.loopexit5, label %.lr.ph212.i

.lr.ph212.i:                                      ; preds = %.loopexit.i6
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.44.0..sroa_idx.i87.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.55.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx.i91.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 4096
  %.sroa.021.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.021.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.021.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 4092
  %.sroa.025.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.025.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.025.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.722.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.525.sroa.0.0.copyload.pre.i.i = load float, ptr %i.r, align 4, !alias.scope !1461, !noalias !1467 ; 4 uses
  %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.co = load <2 x float>, ptr %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i, align 4, !alias.scope !1461, !noalias !1467 ; 7 uses
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.717.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.43.0..sroa_idx.i106.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.54.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i110.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.0..sroa_idx.i102.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %broadcast.splatinsert243 = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat244 = shufflevector <4 x float> %broadcast.splatinsert243, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat246 = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat248 = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cp = extractelement <2 x float> %i.co, i64 0
  %i.cq = extractelement <2 x float> %i.co, i64 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat222 = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat224 = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aw, %.lr.ph212.i
  %.sroa.041.0211.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph212.i ], [ %i.cs, %bb.aw ]
  %.sroa.038.0210.i = phi i64 [ 0, %.lr.ph212.i ], [ %i.cr, %bb.aw ] ; 12 uses
  %i.cr = add nuw nsw i64 %.sroa.038.0210.i, 256  ; 2 uses
  %i.cs = add nsw i64 %.sroa.041.0211.i, -1       ; 2 uses
  %..i.i = call noundef range(i64 0, -8589934590) i64 @llvm.umin.i64(i64 range(i64 0, -8589934590) %.sroa.0.2.i, i64 %i.cr) ; 9 uses
  %i.ct = sub nsw i64 %..i.i, %.sroa.038.0210.i   ; 9 uses
  %i.cu = mul i64 %i.ct, %.sroa.017.0.i           ; 8 uses
  %i.cv = icmp ult i64 %i.cu, 1025
  br i1 %i.cv, label %bb.aj, label %.invoke, !prof !1369

.invoke:                                          ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ao, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.al, %bb.ak, %bb.ai
  %i.cw = phi i64 [ %.sroa.038.0210.i, %bb.at ], [ 0, %bb.ai ], [ %i.da, %bb.ak ], [ %i.dd, %bb.al ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %bb.ao ], [ %i.hk, %bb.ar ], [ %i.hn, %bb.as ], [ %i.hr, %bb.au ]
  %i.cx = phi i64 [ %..i.i, %bb.at ], [ %i.cu, %bb.ai ], [ %i.db, %bb.ak ], [ %i.de, %bb.al ], [ %i.gr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.hi, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.ga, %bb.ao ], [ %i.hl, %bb.ar ], [ %i.ho, %bb.as ], [ %i.hs, %bb.au ]
  %i.cy = phi i64 [ %i.cl, %bb.at ], [ 1024, %bb.ai ], [ %2, %bb.ak ], [ %2, %bb.al ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.cu, %bb.ao ], [ %i.cl, %bb.ar ], [ %i.cl, %bb.as ], [ %i.cl, %bb.au ]
  %i.cz = phi ptr [ @44, %bb.at ], [ @48, %bb.ai ], [ @37, %bb.ak ], [ @38, %bb.al ], [ @40, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @41, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @46, %bb.ao ], [ @42, %bb.ar ], [ @43, %bb.as ], [ @45, %bb.au ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef %i.cx, i64 noundef %i.cy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.aj:                                            ; preds = %bb.ai
  br i1 %trunc.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.da = mul nuw nsw i64 %.sroa.038.0210.i, 3    ; 2 uses
  %i.db = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.dc = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not73.i = icmp samesign ugt i64 %i.db, %2
  %or.cond.i = or i1 %i.dc, %.not73.i
  br i1 %or.cond.i, label %.invoke, label %bb.am, !prof !1370

bb.al:                                            ; preds = %bb.aj
  %i.dd = shl nuw nsw i64 %.sroa.038.0210.i, 2    ; 3 uses
  %i.de = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.df = icmp samesign ult i64 %i.de, %i.dd
  %.not72.i = icmp samesign ugt i64 %i.de, %2
  %or.cond81.i = or i1 %i.df, %.not72.i
  br i1 %or.cond81.i, label %.invoke, label %bb.an, !prof !1370

bb.am:                                            ; preds = %bb.ak
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1464
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.db
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cu
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull readonly align 4 %i.dg, ptr noundef nonnull readonly %i.dh, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.di)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %bb.am
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8, !noalias !1468 ; 8 uses
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !1468 ; 8 uses
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !1468 ; 5 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1468 ; 5 uses
  %i.dj = icmp ult i64 %.sroa.55.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.dj, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %.loopexit285.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc10
  %.sroa.44.0.copyload.i.i271 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i to i64
  %.sroa.0.0.copyload.i.i272 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i) ]
  %i.dk = sub nuw i64 %.sroa.7.0.copyload.i.i, %.sroa.55.0.copyload.i.i ; 3 uses
  %min.iters.check275 = icmp ult i64 %i.dk, 8
  %i.dl = sub i64 %.sroa.0.0.copyload.i.i272, %.sroa.44.0.copyload.i.i271
  %diff.check273 = icmp ugt i64 %i.dl, -32
  %or.cond = select i1 %min.iters.check275, i1 true, i1 %diff.check273
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %n.vec277 = and i64 %i.dk, -8                   ; 3 uses
  %i.dm = add i64 %.sroa.55.0.copyload.i.i, %n.vec277
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next282, %vector.body278 ] ; 2 uses
  %i.dn = add nuw i64 %.sroa.55.0.copyload.i.i, %index279 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.dn ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load280 = load <4 x float>, ptr %i.do, align 4, !noalias !1461
  %wide.load281 = load <4 x float>, ptr %i.dq, align 4, !noalias !1461
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <4 x float> %wide.load280, ptr %i.dp, align 4, !noalias !1461
  store <4 x float> %wide.load281, ptr %i.dr, align 4, !noalias !1461
  %index.next282 = add nuw i64 %index279, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next282, %n.vec277
  br i1 %i.ds, label %middle.block283, label %vector.body278, !llvm.loop !1472

middle.block283:                                  ; preds = %vector.body278
  %cmp.n284 = icmp eq i64 %i.dk, %n.vec277
  br i1 %cmp.n284, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block283
  %.sroa.55.010.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.dm, %middle.block283 ] ; 4 uses
  %i.dt = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.010.i.i.ph
  %xtraiter = and i64 %i.dt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.55.010.i.i.prol = phi i64 [ %i.dw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.dw = add nuw i64 %.sroa.55.010.i.i.prol, 1   ; 2 uses
  %i.dx = load float, ptr %i.du, align 4, !noalias !1461, !noundef !7
  store float %i.dx, ptr %i.dv, align 4, !noalias !1461
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !1473

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.55.010.i.i.unr = phi i64 [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.dw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.dy = sub i64 %.sroa.55.010.i.i.ph, %.sroa.7.0.copyload.i.i
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.55.010.i.i = phi i64 [ %i.eo, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.55.010.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ec = add nuw i64 %.sroa.55.010.i.i, 1        ; 2 uses
  %i.ed = load float, ptr %i.ea, align 4, !noalias !1461, !noundef !7
  store float %i.ed, ptr %i.eb, align 4, !noalias !1461
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ec
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.ec
  %i.eg = add nuw i64 %.sroa.55.010.i.i, 2        ; 2 uses
  %i.eh = load float, ptr %i.ee, align 4, !noalias !1461, !noundef !7
  store float %i.eh, ptr %i.ef, align 4, !noalias !1461
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.eg
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.eg
  %i.ek = add nuw i64 %.sroa.55.010.i.i, 3        ; 2 uses
  %i.el = load float, ptr %i.ei, align 4, !noalias !1461, !noundef !7
  store float %i.el, ptr %i.ej, align 4, !noalias !1461
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ek
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.ek
  %i.eo = add nuw i64 %.sroa.55.010.i.i, 4        ; 2 uses
  %i.ep = load float, ptr %i.em, align 4, !noalias !1461, !noundef !7
  store float %i.ep, ptr %i.en, align 4, !noalias !1461
  %exitcond.not.i.i7.3 = icmp eq i64 %i.eo, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i7.3, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1474

bb.an:                                            ; preds = %bb.al
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1464
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cu
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %i.eq, ptr noundef nonnull readonly %i.er, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.es)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.an
  %.sroa.0.0.copyload.i86.i = load ptr, ptr %i.e, align 8, !noalias !1475 ; 8 uses
  %.sroa.44.0.copyload.i88.i = load ptr, ptr %.sroa.44.0..sroa_idx.i87.i, align 8, !noalias !1475 ; 8 uses
  %.sroa.55.0.copyload.i90.i = load i64, ptr %.sroa.55.0..sroa_idx.i89.i, align 8, !noalias !1475 ; 5 uses
  %.sroa.7.0.copyload.i92.i = load i64, ptr %.sroa.7.0..sroa_idx.i91.i, align 8, !noalias !1475 ; 5 uses
  %i.et = icmp ult i64 %.sroa.55.0.copyload.i90.i, %.sroa.7.0.copyload.i92.i
  br i1 %i.et, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, label %.loopexit284.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i: ; preds = %.noexc12
  %.sroa.44.0.copyload.i88.i256 = ptrtoaddr ptr %.sroa.44.0.copyload.i88.i to i64
  %.sroa.0.0.copyload.i86.i257 = ptrtoaddr ptr %.sroa.0.0.copyload.i86.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i86.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i88.i) ]
  %i.eu = sub nuw i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.0.copyload.i90.i ; 3 uses
  %min.iters.check259 = icmp ult i64 %i.eu, 8
  %i.ev = sub i64 %.sroa.0.0.copyload.i86.i257, %.sroa.44.0.copyload.i88.i256
  %diff.check = icmp ugt i64 %i.ev, -32
  %or.cond286 = select i1 %min.iters.check259, i1 true, i1 %diff.check
  br i1 %or.cond286, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, label %vector.ph260

vector.ph260:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i
  %n.vec261 = and i64 %i.eu, -8                   ; 3 uses
  %i.ew = add i64 %.sroa.55.0.copyload.i90.i, %n.vec261
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next266, %vector.body262 ] ; 2 uses
  %i.ex = add nuw i64 %.sroa.55.0.copyload.i90.i, %index263 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.ex ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load264 = load <4 x float>, ptr %i.ey, align 4, !noalias !1461
  %wide.load265 = load <4 x float>, ptr %i.fa, align 4, !noalias !1461
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <4 x float> %wide.load264, ptr %i.ez, align 4, !noalias !1461
  store <4 x float> %wide.load265, ptr %i.fb, align 4, !noalias !1461
  %index.next266 = add nuw i64 %index263, 8       ; 2 uses
  %i.fc = icmp eq i64 %index.next266, %n.vec261
  br i1 %i.fc, label %middle.block267, label %vector.body262, !llvm.loop !1479

middle.block267:                                  ; preds = %vector.body262
  %cmp.n268 = icmp eq i64 %i.eu, %n.vec261
  br i1 %cmp.n268, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, %middle.block267
  %.sroa.55.010.i95.i.ph = phi i64 [ %.sroa.55.0.copyload.i90.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i ], [ %i.ew, %middle.block267 ] ; 4 uses
  %i.fd = sub i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.010.i95.i.ph
  %xtraiter287 = and i64 %i.fd, 3                 ; 2 uses
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol
  %.sroa.55.010.i95.i.prol = phi i64 [ %i.fg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ] ; 3 uses
  %prol.iter289 = phi i64 [ %prol.iter289.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i.prol
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i.prol
  %i.fg = add nuw i64 %.sroa.55.010.i95.i.prol, 1 ; 2 uses
  %i.fh = load float, ptr %i.fe, align 4, !noalias !1461, !noundef !7
  store float %i.fh, ptr %i.ff, align 4, !noalias !1461
  %prol.iter289.next = add i64 %prol.iter289, 1   ; 2 uses
  %prol.iter289.cmp.not = icmp eq i64 %prol.iter289.next, %xtraiter287
  br i1 %prol.iter289.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, !llvm.loop !1480

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader
  %.sroa.55.010.i95.i.unr = phi i64 [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ], [ %i.fg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ]
  %i.fi = sub i64 %.sroa.55.010.i95.i.ph, %.sroa.7.0.copyload.i92.i
  %i.fj = icmp ugt i64 %i.fi, -4
  br i1 %i.fj, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i
  %.sroa.55.010.i95.i = phi i64 [ %i.fy, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i ], [ %.sroa.55.010.i95.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit ] ; 6 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i
  %i.fm = add nuw i64 %.sroa.55.010.i95.i, 1      ; 2 uses
  %i.fn = load float, ptr %i.fk, align 4, !noalias !1461, !noundef !7
  store float %i.fn, ptr %i.fl, align 4, !noalias !1461
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fm
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fm
  %i.fq = add nuw i64 %.sroa.55.010.i95.i, 2      ; 2 uses
  %i.fr = load float, ptr %i.fo, align 4, !noalias !1461, !noundef !7
  store float %i.fr, ptr %i.fp, align 4, !noalias !1461
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fq
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fq
  %i.fu = add nuw i64 %.sroa.55.010.i95.i, 3      ; 2 uses
  %i.fv = load float, ptr %i.fs, align 4, !noalias !1461, !noundef !7
  store float %i.fv, ptr %i.ft, align 4, !noalias !1461
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fu
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fu
  %i.fy = add nuw i64 %.sroa.55.010.i95.i, 4      ; 2 uses
  %i.fz = load float, ptr %i.fw, align 4, !noalias !1461, !noundef !7
  store float %i.fz, ptr %i.fx, align 4, !noalias !1461
  %exitcond.not.i96.i.3 = icmp eq i64 %i.fy, %.sroa.7.0.copyload.i92.i
  br i1 %exitcond.not.i96.i.3, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, !llvm.loop !1481

bb.ao:                                            ; preds = %.loopexit284.i, %.loopexit285.i
  %i.ga = mul i64 %i.ct, %.sroa.019.0.i           ; 3 uses
  %.not75.i = icmp ugt i64 %i.ga, %i.cu
  br i1 %.not75.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !1370

.loopexit285.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block283, %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1464
  br i1 %11, label %bb.ap, label %bb.ao

.loopexit284.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, %middle.block267, %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1464
  br i1 %11, label %bb.ao, label %bb.aq

bb.ap:                                            ; preds = %.loopexit285.i
  %.lhs.trunc155.i = trunc nuw nsw i64 %i.cu to i16
  %i.gb = udiv i16 %.lhs.trunc155.i, 3
  %.zext156.i = zext nneg i16 %i.gb to i64
  %i.gc = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.zext156.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1464
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gc, ptr noundef nonnull %i.i, ptr noundef nonnull %i.cm)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.ap
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !noalias !1464 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !1464 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !1464 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1464
  %i.gd = icmp eq i64 %i.ct, 0
  br i1 %i.gd, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc13
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8131.0203.i = phi i64 [ %i.ge, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.ct, %.lr.ph.preheader.i ]
  %.sroa.5129.0202.i = phi i64 [ %i.gh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5129.0202.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.ge = add i64 %.sroa.8131.0203.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.gf = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5129.0202.i ; 3 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5129.0202.i ; 3 uses
  %i.gh = add i64 %.sroa.5129.0202.i, 1
  %i.gi = load float, ptr %i.gf, align 4, !noalias !1461, !noundef !7
  store float %i.gi, ptr %i.gg, align 4, !noalias !1461
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gk = load float, ptr %i.gj, align 4, !noalias !1461, !noundef !7
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store float %i.gk, ptr %i.gl, align 4, !noalias !1461
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gn = load float, ptr %i.gm, align 4, !noalias !1461, !noundef !7
  %i.go = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gp = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.gn, i64 0
  store <2 x float> %i.gp, ptr %i.go, align 4, !noalias !1461
  %i.gq = icmp eq i64 %i.ge, 0
  br i1 %i.gq, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.gr = shl i64 %i.ct, 2                        ; 3 uses
  %i.gs = icmp ult i64 %i.gr, 1025
  br i1 %i.gs, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !1388

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc15, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc13, %bb.ao
  %.sroa.031.0.i = phi ptr [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.j, %bb.ao ], [ %i.i, %.noexc13 ], [ %i.i, %.noexc15 ] ; 8 uses
  %.sroa.7.0.i = phi i64 [ %i.hi, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.ga, %bb.ao ], [ 0, %.noexc13 ], [ 0, %.noexc15 ] ; 4 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.au
  ]

bb.aq:                                            ; preds = %.loopexit284.i
  %i.gt = lshr i64 %i.cu, 2
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1464
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gu, ptr noundef nonnull %i.i, ptr noundef nonnull %i.cn)
          to label %.noexc15 unwind label %.loopexit

.noexc15:                                         ; preds = %bb.aq
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !noalias !1464 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !1464 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !1464 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1464
  %i.gv = icmp eq i64 %i.ct, 0
  br i1 %i.gv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph207.preheader.i

.lr.ph207.preheader.i:                            ; preds = %.noexc15
  %umax262.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph207.preheader.i
  %.sroa.8146.0206.i = phi i64 [ %i.gw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.ct, %.lr.ph207.preheader.i ]
  %.sroa.5144.0205.i = phi i64 [ %i.gz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph207.preheader.i ] ; 4 uses
  %exitcond263.not.i = icmp eq i64 %.sroa.5144.0205.i, %umax262.i
  br i1 %exitcond263.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph207.i
  %i.gw = add i64 %.sroa.8146.0206.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5144.0205.i ; 3 uses
  %i.gy = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5144.0205.i ; 3 uses
  %i.gz = add i64 %.sroa.5144.0205.i, 1
  %i.ha = load float, ptr %i.gx, align 4, !noalias !1461, !noundef !7
  store float %i.ha, ptr %i.gy, align 4, !noalias !1461
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.hc = load float, ptr %i.hb, align 4, !noalias !1461, !noundef !7
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  store float %i.hc, ptr %i.hd, align 4, !noalias !1461
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hf = load float, ptr %i.he, align 4, !noalias !1461, !noundef !7
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store float %i.hf, ptr %i.hg, align 4, !noalias !1461
  %i.hh = icmp eq i64 %i.gw, 0
  br i1 %i.hh, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph207.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph207.i
  %i.hi = mul i64 %i.ct, 3                        ; 3 uses
  %i.hj = icmp ult i64 %i.hi, 1025
  br i1 %i.hj, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !1388

bb.ar:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hk = mul nuw nsw i64 %.sroa.038.0210.i, 3    ; 2 uses
  %i.hl = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.hm = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not80.i = icmp samesign ugt i64 %i.hl, %i.cl
  %or.cond82.i = or i1 %i.hm, %.not80.i
  br i1 %or.cond82.i, label %.invoke, label %bb.av, !prof !1370

bb.as:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hn = shl nuw nsw i64 %.sroa.038.0210.i, 2    ; 3 uses
  %i.ho = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.hp = icmp samesign ult i64 %i.ho, %i.hn
  %.not79.i = icmp samesign ugt i64 %i.ho, %i.cl
  %or.cond83.i = or i1 %i.hp, %.not79.i
  br i1 %or.cond83.i, label %.invoke, label %bb.ax, !prof !1370

bb.at:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hq = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not78.i = icmp samesign ugt i64 %..i.i, %i.cl
  %or.cond84.i = or i1 %i.hq, %.not78.i
  br i1 %or.cond84.i, label %.invoke, label %bb.ay, !prof !1370

bb.au:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hr = shl nuw nsw i64 %.sroa.038.0210.i, 1    ; 3 uses
  %i.hs = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %i.ht = icmp samesign ult i64 %i.hs, %i.hr
  %.not77.i = icmp samesign ugt i64 %i.hs, %i.cl
  %or.cond85.i = or i1 %i.ht, %.not77.i
  br i1 %or.cond85.i, label %.invoke, label %bb.az, !prof !1370

bb.av:                                            ; preds = %bb.ar
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1464
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.hl
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.hv, ptr noundef nonnull %i.hu, ptr noundef nonnull %i.hw)
          to label %.noexc18 unwind label %.loopexit

.noexc18:                                         ; preds = %bb.av
  %.sroa.0.0.copyload.i101.i = load ptr, ptr %i.d, align 8, !noalias !1482 ; 7 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1482 ; 7 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1482 ; 8 uses
  %.sroa.7.0.copyload.i103.i = load i64, ptr %.sroa.7.0..sroa_idx.i102.i, align 8, !noalias !1482 ; 7 uses
  %i.hx = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i103.i
  br i1 %i.hx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc18
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i101.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.hy = sub nuw i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.hy, 4
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %scevgep = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.0.copyload.i.i
  %scevgep187 = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.7.0.copyload.i103.i
  %i.hz = shl i64 %.sroa.54.0.copyload.i.i, 2
  %scevgep188 = getelementptr i8, ptr %.sroa.0.0.copyload.i101.i, i64 %i.hz
  %i.ia = shl i64 %.sroa.7.0.copyload.i103.i, 2
  %scevgep189 = getelementptr i8, ptr %.sroa.0.0.copyload.i101.i, i64 %i.ia
  %bound0 = icmp ult ptr %scevgep, %scevgep189
  %bound1 = icmp ult ptr %scevgep188, %scevgep187
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hy, -4                      ; 3 uses
  %i.ib = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ic = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.ic
  %wide.load = load <4 x float>, ptr %i.id, align 4, !alias.scope !1486, !noalias !1461
  %i.if = fmul <4 x float> %wide.load, splat (float 2.550000e+02)
  %i.ig = call <4 x float> @llvm.round.v4f32(<4 x float> %i.if)
  %i.ih = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.ig)
  store <4 x i8> %i.ih, ptr %i.ie, align 1, !alias.scope !1489, !noalias !1491
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ii = icmp eq i64 %index.next, %n.vec
  br i1 %i.ii, label %middle.block, label %vector.body, !llvm.loop !1492

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %vector.memcheck ], [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.ib, %middle.block ] ; 6 uses
  %i.ij = sub i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.09.i.i.ph
  %.neg296 = add i64 %.sroa.54.09.i.i.ph, 1
  %xtraiter293 = and i64 %i.ij, 1
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i.ph
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.ph
  %i.im = add nuw i64 %.sroa.54.09.i.i.ph, 1
  %i.in = load float, ptr %i.ik, align 4, !noalias !1461, !noundef !7
  %i.io = fmul float %i.in, 2.550000e+02
  %i.ip = call float @llvm.round.f32(float %i.io)
  %i.iq = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.ip)
  store i8 %i.iq, ptr %i.il, align 1, !noalias !1461
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.im, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.ir = icmp eq i64 %.sroa.7.0.copyload.i103.i, %.neg296
  br i1 %i.ir, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.54.09.i.i = phi i64 [ %i.jb, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.iu = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.iv = load float, ptr %i.is, align 4, !noalias !1461, !noundef !7
  %i.iw = fmul float %i.iv, 2.550000e+02
  %i.ix = call float @llvm.round.f32(float %i.iw)
  %i.iy = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.ix)
  store i8 %i.iy, ptr %i.it, align 1, !noalias !1461
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.iu
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.iu
  %i.jb = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.jc = load float, ptr %i.iz, align 4, !noalias !1461, !noundef !7
  %i.jd = fmul float %i.jc, 2.550000e+02
  %i.je = call float @llvm.round.f32(float %i.jd)
  %i.jf = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.je)
  store i8 %i.jf, ptr %i.ja, align 1, !noalias !1461
  %exitcond.not.i104.i.1 = icmp eq i64 %i.jb, %.sroa.7.0.copyload.i103.i
  br i1 %exitcond.not.i104.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1493

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1464
  br label %bb.aw

bb.aw:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i
  %.not.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i, label %.loopexit5, label %bb.ai

bb.ax:                                            ; preds = %bb.as
  %i.jg = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1464
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ho
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.jh, ptr noundef nonnull %i.jg, ptr noundef nonnull %i.ji)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %bb.ax
  %.sroa.0.0.copyload.i105.i = load ptr, ptr %i.c, align 8, !noalias !1494 ; 7 uses
  %.sroa.43.0.copyload.i107.i = load ptr, ptr %.sroa.43.0..sroa_idx.i106.i, align 8, !noalias !1494 ; 7 uses
  %.sroa.54.0.copyload.i109.i = load i64, ptr %.sroa.54.0..sroa_idx.i108.i, align 8, !noalias !1494 ; 8 uses
  %.sroa.7.0.copyload.i111.i = load i64, ptr %.sroa.7.0..sroa_idx.i110.i, align 8, !noalias !1494 ; 7 uses
  %i.jj = icmp ult i64 %.sroa.54.0.copyload.i109.i, %.sroa.7.0.copyload.i111.i
  br i1 %i.jj, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbahEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i: ; preds = %.noexc20
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i105.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i107.i) ]
  %i.jk = sub nuw i64 %.sroa.7.0.copyload.i111.i, %.sroa.54.0.copyload.i109.i ; 3 uses
  %min.iters.check199 = icmp ult i64 %i.jk, 4
  br i1 %min.iters.check199, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i
  %scevgep191 = getelementptr i8, ptr %.sroa.43.0.copyload.i107.i, i64 %.sroa.54.0.copyload.i109.i
  %scevgep192 = getelementptr i8, ptr %.sroa.43.0.copyload.i107.i, i64 %.sroa.7.0.copyload.i111.i
  %i.jl = shl i64 %.sroa.54.0.copyload.i109.i, 2
  %scevgep193 = getelementptr i8, ptr %.sroa.0.0.copyload.i105.i, i64 %i.jl
  %i.jm = shl i64 %.sroa.7.0.copyload.i111.i, 2
  %scevgep194 = getelementptr i8, ptr %.sroa.0.0.copyload.i105.i, i64 %i.jm
  %bound0195 = icmp ult ptr %scevgep191, %scevgep194
  %bound1196 = icmp ult ptr %scevgep193, %scevgep192
  %found.conflict197 = and i1 %bound0195, %bound1196
  br i1 %found.conflict197, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader, label %vector.ph200

vector.ph200:                                     ; preds = %vector.memcheck190
  %n.vec201 = and i64 %i.jk, -4                   ; 3 uses
  %i.jn = add i64 %.sroa.54.0.copyload.i109.i, %n.vec201
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next205, %vector.body202 ] ; 2 uses
  %i.jo = add nuw i64 %.sroa.54.0.copyload.i109.i, %index203 ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i105.i, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i107.i, i64 %i.jo
  %wide.load204 = load <4 x float>, ptr %i.jp, align 4, !alias.scope !1498, !noalias !1461
  %i.jr = fmul <4 x float> %wide.load204, splat (float 2.550000e+02)
  %i.js = call <4 x float> @llvm.round.v4f32(<4 x float> %i.jr)
  %i.jt = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.js)
  store <4 x i8> %i.jt, ptr %i.jq, align 1, !alias.scope !1501, !noalias !1503
  %index.next205 = add nuw i64 %index203, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next205, %n.vec201
  br i1 %i.ju, label %middle.block206, label %vector.body202, !llvm.loop !1504

middle.block206:                                  ; preds = %vector.body202
  %cmp.n207 = icmp eq i64 %i.jk, %n.vec201
  br i1 %cmp.n207, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbahEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader: ; preds = %vector.memcheck190, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i, %middle.block206
  %.sroa.54.09.i114.i.ph = phi i64 [ %.sroa.54.0.copyload.i109.i, %vector.memcheck190 ], [ %.sroa.54.0.copyload.i109.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i ], [ %i.jn, %middle.block206 ] ; 6 uses
  %i.jv = sub i64 %.sroa.7.0.copyload.i111.i, %.sroa.54.09.i114.i.ph
  %.neg = add i64 %.sroa.54.09.i114.i.ph, 1
  %xtraiter290 = and i64 %i.jv, 1
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  br i1 %lcmp.mod291.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i105.i, i64 %.sroa.54.09.i114.i.ph
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i107.i, i64 %.sroa.54.09.i114.i.ph
  %i.jy = add nuw i64 %.sroa.54.09.i114.i.ph, 1
  %i.jz = load float, ptr %i.jw, align 4, !noalias !1461, !noundef !7
  %i.ka = fmul float %i.jz, 2.550000e+02
  %i.kb = call float @llvm.round.f32(float %i.ka)
  %i.kc = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.kb)
  store i8 %i.kc, ptr %i.jx, align 1, !noalias !1461
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.prol.loopexit

end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutfhEBa_:bb.a
  %i.mt = insertelement <4 x float> %i.ms, float %i.mp, i64 3
  %i.mu = fmul <4 x float> %broadcast.splat224, %i.mt
  %i.mv = fadd <4 x float> %i.mh, %i.mu
  %i.mw = fmul <4 x float> %i.mv, splat (float 2.550000e+02)
  %i.mx = call <4 x float> @llvm.round.v4f32(<4 x float> %i.mw)
  %i.my = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.mx)
  store <4 x i8> %i.my, ptr %i.lc, align 1, !alias.scope !1515, !noalias !1517
  %index.next227 = add nuw i64 %index226, 4       ; 2 uses
  %i.mz = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.mz, label %middle.block228, label %vector.body225, !llvm.loop !1518

middle.block228:                                  ; preds = %vector.body225
  %cmp.n229 = icmp eq i64 %i.kx, %n.vec220
  br i1 %cmp.n229, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumahEBa_.exit.i, label %.thread.i.i.preheader

.thread.i.i.preheader:                            ; preds = %vector.memcheck209, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block228
  %.sroa.516.037.i.i.ph = phi i64 [ %.sroa.516.0.copyload.i.i, %vector.memcheck209 ], [ %.sroa.516.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.la, %middle.block228 ]
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.i.i.preheader, %.thread.i.i
  %.sroa.516.037.i.i = phi i64 [ %i.na, %.thread.i.i ], [ %.sroa.516.037.i.i.ph, %.thread.i.i.preheader ] ; 3 uses
  %i.na = add nuw i64 %.sroa.516.037.i.i, 1       ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.415.0.copyload.i.i, i64 %.sroa.516.037.i.i
  %i.nc = getelementptr inbounds nuw [12 x i8], ptr %.sroa.013.0.copyload.i.i, i64 %.sroa.516.037.i.i ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !noalias !1514, !noundef !7
  %i.ne = fmul float %.sroa.525.sroa.0.0.copyload.pre.i.i, %i.nd
  %i.nf = fadd float %i.ne, 0.000000e+00
  %.ptr36.1.i.i = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ng = load <2 x float>, ptr %.ptr36.1.i.i, align 4, !noalias !1514
  %i.nh = fmul <2 x float> %i.co, %i.ng           ; 2 uses
  %i.ni = extractelement <2 x float> %i.nh, i64 0
  %i.nj = fadd float %i.nf, %i.ni
  %i.nk = extractelement <2 x float> %i.nh, i64 1
  %i.nl = fadd float %i.nj, %i.nk
  %i.nm = fmul float %i.nl, 2.550000e+02
  %i.nn = call float @llvm.round.f32(float %i.nm)
  %i.no = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.nn)
  store i8 %i.no, ptr %i.nb, align 1, !noalias !1514
  %exitcond.not.i116.i = icmp eq i64 %i.na, %.sroa.717.0.copyload.i.i
  br i1 %exitcond.not.i116.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumahEBa_.exit.i, label %.thread.i.i, !llvm.loop !1519

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumahEBa_.exit.i: ; preds = %.thread.i.i, %middle.block228, %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1464
  br label %bb.aw

bb.az:                                            ; preds = %bb.au
  %i.np = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.hr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1464
  %i.nq = lshr i64 %.sroa.7.0.i, 2
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.031.0.i, i64 %i.nq
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.np, i64 %i.ct
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj2_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.nr, ptr noundef nonnull %i.np, ptr noundef nonnull %i.ns)
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.az
  %.sroa.018.0.copyload.i.i = load ptr, ptr %i.a, align 8, !noalias !1520 ; 8 uses
  %.sroa.420.0.copyload.i.i = load ptr, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !1520 ; 5 uses
  %.sroa.521.0.copyload.i.i = load i64, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !1520 ; 8 uses
  %.sroa.722.0.copyload.i.i = load i64, ptr %.sroa.722.0..sroa_idx.i.i, align 8, !noalias !1520 ; 5 uses
  %i.nt = icmp ult i64 %.sroa.521.0.copyload.i.i, %.sroa.722.0.copyload.i.i
  br i1 %i.nt, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumahEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.420.0.copyload.i.i) ]
  %i.nu = sub nuw i64 %.sroa.722.0.copyload.i.i, %.sroa.521.0.copyload.i.i ; 3 uses
  %min.iters.check240 = icmp ult i64 %i.nu, 4
  br i1 %min.iters.check240, label %.thread.i117.i.preheader, label %vector.memcheck231

vector.memcheck231:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.nv = shl i64 %.sroa.521.0.copyload.i.i, 1
  %scevgep232 = getelementptr i8, ptr %.sroa.420.0.copyload.i.i, i64 %i.nv
  %i.nw = shl i64 %.sroa.722.0.copyload.i.i, 1
  %scevgep233 = getelementptr i8, ptr %.sroa.420.0.copyload.i.i, i64 %i.nw
  %i.nx = shl i64 %.sroa.521.0.copyload.i.i, 4
  %scevgep234 = getelementptr i8, ptr %.sroa.018.0.copyload.i.i, i64 %i.nx
  %i.ny = shl i64 %.sroa.722.0.copyload.i.i, 4
  %scevgep235 = getelementptr i8, ptr %.sroa.018.0.copyload.i.i, i64 %i.ny
  %bound0236 = icmp ult ptr %scevgep232, %scevgep235
  %bound1237 = icmp ult ptr %scevgep234, %scevgep233
  %found.conflict238 = and i1 %bound0236, %bound1237
  br i1 %found.conflict238, label %.thread.i117.i.preheader, label %vector.ph241

vector.ph241:                                     ; preds = %vector.memcheck231
  %n.vec242 = and i64 %i.nu, -4                   ; 3 uses
  %i.nz = add i64 %.sroa.521.0.copyload.i.i, %n.vec242
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph241
  %index250 = phi i64 [ 0, %vector.ph241 ], [ %index.next251, %vector.body249 ] ; 2 uses
  %i.oa = add nuw i64 %.sroa.521.0.copyload.i.i, %index250 ; 5 uses
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %.sroa.420.0.copyload.i.i, i64 %i.oa
  %i.oc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.oa ; 4 uses
  %i.od = getelementptr [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.oa ; 4 uses
  %i.oe = getelementptr i8, ptr %i.od, i64 16
  %i.of = getelementptr [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.oa ; 4 uses
  %i.og = getelementptr i8, ptr %i.of, i64 32
  %i.oh = getelementptr [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.oa ; 4 uses
  %i.oi = getelementptr i8, ptr %i.oh, i64 48
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oc, i64 12
  %i.ok = getelementptr i8, ptr %i.od, i64 28
  %i.ol = getelementptr i8, ptr %i.of, i64 44
  %i.om = getelementptr i8, ptr %i.oh, i64 60
  %i.on = load float, ptr %i.oc, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.oo = load float, ptr %i.oe, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.op = load float, ptr %i.og, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.oq = load float, ptr %i.oi, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.or = insertelement <4 x float> poison, float %i.on, i64 0
  %i.os = insertelement <4 x float> %i.or, float %i.oo, i64 1
  %i.ot = insertelement <4 x float> %i.os, float %i.op, i64 2
  %i.ou = insertelement <4 x float> %i.ot, float %i.oq, i64 3
  %i.ov = fmul <4 x float> %broadcast.splat244, %i.ou
  %i.ow = fadd <4 x float> %i.ov, zeroinitializer
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.oy = getelementptr i8, ptr %i.od, i64 20
  %i.oz = getelementptr i8, ptr %i.of, i64 36
  %i.pa = getelementptr i8, ptr %i.oh, i64 52
  %i.pb = load float, ptr %i.ox, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.pc = load float, ptr %i.oy, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.pd = load float, ptr %i.oz, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.pe = load float, ptr %i.pa, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.pf = insertelement <4 x float> poison, float %i.pb, i64 0
  %i.pg = insertelement <4 x float> %i.pf, float %i.pc, i64 1
  %i.ph = insertelement <4 x float> %i.pg, float %i.pd, i64 2
  %i.pi = insertelement <4 x float> %i.ph, float %i.pe, i64 3
  %i.pj = fmul <4 x float> %broadcast.splat246, %i.pi
  %i.pk = fadd <4 x float> %i.ow, %i.pj
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.pm = getelementptr i8, ptr %i.od, i64 24
  %i.pn = getelementptr i8, ptr %i.of, i64 40
  %i.po = getelementptr i8, ptr %i.oh, i64 56
  %i.pp = load float, ptr %i.pl, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.pq = load float, ptr %i.pm, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.pr = load float, ptr %i.pn, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.ps = load float, ptr %i.po, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.pt = insertelement <4 x float> poison, float %i.pp, i64 0
  %i.pu = insertelement <4 x float> %i.pt, float %i.pq, i64 1
  %i.pv = insertelement <4 x float> %i.pu, float %i.pr, i64 2
  %i.pw = insertelement <4 x float> %i.pv, float %i.ps, i64 3
  %i.px = fmul <4 x float> %broadcast.splat248, %i.pw
  %i.py = fadd <4 x float> %i.pk, %i.px
  %i.pz = load float, ptr %i.oj, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.qa = load float, ptr %i.ok, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.qb = load float, ptr %i.ol, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.qc = load float, ptr %i.om, align 4, !alias.scope !1525, !noalias !1528, !noundef !7
  %i.qd = insertelement <4 x float> poison, float %i.pz, i64 0
  %i.qe = insertelement <4 x float> %i.qd, float %i.qa, i64 1
  %i.qf = insertelement <4 x float> %i.qe, float %i.qb, i64 2
  %i.qg = insertelement <4 x float> %i.qf, float %i.qc, i64 3
  %i.qh = shufflevector <4 x float> %i.py, <4 x float> %i.qg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.qi = fmul <8 x float> %i.qh, splat (float 2.550000e+02)
  %i.qj = call <8 x float> @llvm.round.v8f32(<8 x float> %i.qi)
  %interleaved.vec = call <8 x i8> @llvm.fptoui.sat.v8i8.v8f32(<8 x float> %i.qj)
  store <8 x i8> %interleaved.vec, ptr %i.ob, align 1, !alias.scope !1529, !noalias !1528
  %index.next251 = add nuw i64 %index250, 4       ; 2 uses
  %i.qk = icmp eq i64 %index.next251, %n.vec242
  br i1 %i.qk, label %middle.block252, label %vector.body249, !llvm.loop !1531

middle.block252:                                  ; preds = %vector.body249
  %cmp.n253 = icmp eq i64 %i.nu, %n.vec242
  br i1 %cmp.n253, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumahEBa_.exit.i, label %.thread.i117.i.preheader

.thread.i117.i.preheader:                         ; preds = %vector.memcheck231, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block252
  %.sroa.521.040.i.i.ph = phi i64 [ %.sroa.521.0.copyload.i.i, %vector.memcheck231 ], [ %.sroa.521.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.nz, %middle.block252 ]
  br label %.thread.i117.i

.thread.i117.i:                                   ; preds = %.thread.i117.i.preheader, %.thread.i117.i
  %.sroa.521.040.i.i = phi i64 [ %i.ql, %.thread.i117.i ], [ %.sroa.521.040.i.i.ph, %.thread.i117.i.preheader ] ; 3 uses
  %i.ql = add nuw i64 %.sroa.521.040.i.i, 1       ; 2 uses
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.420.0.copyload.i.i, i64 %.sroa.521.040.i.i ; 2 uses
  %i.qn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %.sroa.521.040.i.i ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 12
  %i.qp = load float, ptr %i.qn, align 4, !noalias !1528, !noundef !7
  %i.qq = fmul float %.sroa.525.sroa.0.0.copyload.pre.i.i, %i.qp
  %i.qr = fadd float %i.qq, 0.000000e+00
  %.ptr39.1.i.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  %i.qs = load float, ptr %.ptr39.1.i.i, align 4, !noalias !1528, !noundef !7
  %i.qt = fmul float %i.cp, %i.qs
  %i.qu = fadd float %i.qr, %i.qt
  %.ptr39.2.i.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qv = load float, ptr %.ptr39.2.i.i, align 4, !noalias !1528, !noundef !7
  %i.qw = fmul float %i.cq, %i.qv
  %i.qx = fadd float %i.qu, %i.qw
  %i.qy = fmul float %i.qx, 2.550000e+02
  %i.qz = call float @llvm.round.f32(float %i.qy)
  %i.ra = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.qz)
  store i8 %i.ra, ptr %i.qm, align 1, !noalias !1528
  %i.rb = load float, ptr %i.qo, align 4, !noalias !1528, !noundef !7
  %i.rc = fmul float %i.rb, 2.550000e+02
  %i.rd = call float @llvm.round.f32(float %i.rc)
  %i.re = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.rd)
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qm, i64 1
  store i8 %i.re, ptr %i.rf, align 1, !noalias !1528
  %exitcond.not.i118.i = icmp eq i64 %i.ql, %.sroa.722.0.copyload.i.i
  br i1 %exitcond.not.i118.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumahEBa_.exit.i, label %.thread.i117.i, !llvm.loop !1532

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumahEBa_.exit.i: ; preds = %.thread.i117.i, %middle.block252, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1464
  br label %bb.aw

.loopexit5:                                       ; preds = %bb.aw, %.loopexit.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  br label %bb.ae

bb.ba:                                            ; preds = %bb.af
  %i.rg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutftEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i8 %.2.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noundef nonnull %3, ptr nofree readonly captures(none) %.40.val, i8 noundef range(i8 0, 2) %4, i8 noundef range(i8 0, 4) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [4096 x i8], align 4              ; 11 uses
  %i.j = alloca [4096 x i8], align 4              ; 12 uses
  %i.k = alloca [36 x i8], align 4                ; 5 uses
  %i.l = alloca [24 x i8], align 4                ; 15 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 16               ; 12 uses
  %i.q = alloca [24 x i8], align 16               ; 12 uses
  %i.r = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %trunc.i = trunc nuw i8 %4 to i1                ; 4 uses
  %..i = select i1 %trunc.i, i64 4, i64 3         ; 2 uses
  %i.t = urem i64 %2, %..i
  %i.u = udiv i64 %2, %..i
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %switch.lookup, label %bb.b, !prof !1329

default.unreachable:                              ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #26, !noalias !1533
  unreachable

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1533
  %i.w = zext nneg i8 %5 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.x = mul nuw nsw i64 %i.u, %switch.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1537
  store i64 0, ptr %i.p, align 16, !noalias !1537
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.y, align 8, !noalias !1537
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 0, ptr %i.z, align 16, !noalias !1537
  %i.aa = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, i64 noundef 0, i64 noundef %i.x, i64 noundef 2, i64 noundef 2)
          to label %bb.d unwind label %bb.c, !noalias !1537 ; 2 uses

bb.c:                                             ; preds = %switch.lookup
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #20
          to label %common.resume unwind label %bb.h, !noalias !1537

bb.d:                                             ; preds = %switch.lookup
  %i.ac = extractvalue { i64, i64 } %i.aa, 0      ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, -1
  br i1 %.not.i.i, label %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.thread.i unwind label %bb.f, !noalias !1537

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.g, !noalias !1537

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1537
  unreachable

common.resume:                                    ; preds = %bb.af, %bb.c, %bb.f, %.loopexit.split-lp.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.ab, %bb.c ], [ %i.ad, %bb.f ], [ %lpad.phi, %bb.af ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.thread.i: ; preds = %bb.e
  %i.af = extractvalue { i64, i64 } %i.aa, 1
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p), !noalias !1537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1537
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1537
  unreachable

_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.i: ; preds = %bb.d
  %i.ah = load <2 x i64>, ptr %i.p, align 16, !noalias !1533 ; 3 uses
  %.sroa.8.0.copyload.i = load i64, ptr %i.z, align 16, !noalias !1533 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1537
  call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  %i.ai = extractelement <2 x i64> %i.ah, i64 0
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = extractelement <2 x i64> %i.ah, i64 1
  br i1 %i.aj, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VectENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i, !prof !1342

bb.i:                                             ; preds = %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.i, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.thread.i
  %.sroa.6.010.i = phi i64 [ %i.ac, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.thread.i ], [ %i.ak, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.i ]
  %.sroa.8.09.i = phi i64 [ %i.af, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.thread.i ], [ %.sroa.8.0.copyload.i, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1545
  store i64 %.sroa.6.010.i, ptr %i.o, align 8, !noalias !1545
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.8.09.i, ptr %i.al, align 8, !noalias !1545
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 54, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #26, !noalias !1545
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VectENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.i
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store <2 x i64> %i.ah, ptr %i.q, align 16, !alias.scope !1546, !noalias !1533
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1546, !noalias !1533
  br i1 %trunc.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VectENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i
  switch i8 %5, label %bb.p [
    i8 0, label %bb.l
    i8 1, label %bb.m
  ]

bb.k:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VectENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i
  switch i8 %5, label %bb.p [
    i8 0, label %bb.n
    i8 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  invoke void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VectEINtB4_10SpecExtendtINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4IterfEENvYtINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivefE14from_primitiveEE11spec_extendB32_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.am)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1547

bb.m:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1533
  %6 = udiv i64 %2, 3                             ; 2 uses
  %i.an = shl nuw nsw i64 %6, 2
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.an, i16 noundef 0)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1533

.noexc.i:                                         ; preds = %bb.m
  %i.ao = load ptr, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !1548, !noalias !1551, !nonnull !7, !noundef !7 ; 2 uses
  %i.ap = load i64, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1548, !noalias !1551, !noundef !7
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.ar, ptr noundef nonnull align 2 %i.ao, ptr noundef nonnull %i.as)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1547

.noexc10.i:                                       ; preds = %.noexc.i
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.n, align 8, !noalias !1553 ; 2 uses
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.410.0.copyload.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !1553 ; 2 uses
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.511.0.copyload.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !1553 ; 2 uses
  %.sroa.712.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.712.0.copyload.i.i = load i64, ptr %.sroa.712.0..sroa_idx.i.i, align 8, !noalias !1553 ; 2 uses
  %i.at = icmp ult i64 %.sroa.511.0.copyload.i.i, %.sroa.712.0.copyload.i.i
  br i1 %i.at, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaftEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc10.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.noexc13.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %.sroa.511.017.i.i = phi i64 [ %.sroa.511.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.aw, %.noexc13.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %.sroa.08.0.copyload.i.i, i64 %.sroa.511.017.i.i ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.410.0.copyload.i.i, i64 %.sroa.511.017.i.i ; 4 uses
  %i.aw = add i64 %.sroa.511.017.i.i, 1           ; 2 uses
  %i.ax = load float, ptr %i.au, align 4, !noalias !1547, !noundef !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.az = load float, ptr %i.ay, align 4, !noalias !1547, !noundef !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !noalias !1547, !noundef !7
  %i.bc = invoke noundef i16 @_RNvXs4_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivefE14from_primitive(float noundef %i.ax)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1547

.noexc11.i:                                       ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %i.bd = invoke noundef i16 @_RNvXs4_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivefE14from_primitive(float noundef %i.az)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1547

.noexc12.i:                                       ; preds = %.noexc11.i
  %i.be = invoke noundef i16 @_RNvXs4_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivefE14from_primitive(float noundef %i.bb)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1547

.noexc13.i:                                       ; preds = %.noexc12.i
  store i16 %i.bc, ptr %i.av, align 2, !noalias !1547
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.bd, ptr %i.bf, align 2, !noalias !1547
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i16 %i.be, ptr %i.bg, align 2, !noalias !1547
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  store i16 -1, ptr %i.bh, align 2, !noalias !1547
  %exitcond.not.i.i = icmp eq i64 %i.aw, %.sroa.712.0.copyload.i.i
  br i1 %exitcond.not.i.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaftEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaftEBa_.exit.i: ; preds = %.noexc13.i, %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1533
  br label %bb.ad

.loopexit.i:                                      ; preds = %.noexc26.i, %.noexc25.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc12.i, %.noexc11.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %lpad.loopexit11.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.noexc23.i, %bb.n, %.noexc.i, %bb.m, %bb.l
  %lpad.loopexit.split-lp12.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit11.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp12.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #20
          to label %common.resume unwind label %bb.o, !noalias !1547

bb.n:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1533
  %7 = lshr i64 %2, 2                             ; 2 uses
  %i.bi = mul nuw nsw i64 %7, 3
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.bi, i16 noundef 0)
          to label %.noexc23.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1533

.noexc23.i:                                       ; preds = %bb.n
  %i.bj = load ptr, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !1554, !noalias !1557, !nonnull !7, !noundef !7 ; 2 uses
  %i.bk = load i64, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1554, !noalias !1557, !noundef !7
  %i.bl = udiv i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %7
  %i.bn = getelementptr inbounds nuw [6 x i8], ptr %i.bj, i64 %i.bl
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.bm, ptr noundef nonnull align 2 %i.bj, ptr noundef nonnull %i.bn)
          to label %.noexc24.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1547

.noexc24.i:                                       ; preds = %.noexc23.i
  %.sroa.08.0.copyload.i14.i = load ptr, ptr %i.m, align 8, !noalias !1559 ; 2 uses
  %.sroa.410.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.410.0.copyload.i16.i = load ptr, ptr %.sroa.410.0..sroa_idx.i15.i, align 8, !noalias !1559 ; 2 uses
  %.sroa.511.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.511.0.copyload.i18.i = load i64, ptr %.sroa.511.0..sroa_idx.i17.i, align 8, !noalias !1559 ; 2 uses
  %.sroa.712.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.712.0.copyload.i20.i = load i64, ptr %.sroa.712.0..sroa_idx.i19.i, align 8, !noalias !1559 ; 2 uses
  %i.bo = icmp ult i64 %.sroa.511.0.copyload.i18.i, %.sroa.712.0.copyload.i20.i
  br i1 %i.bo, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbftEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc24.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i14.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i16.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.noexc27.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %.sroa.511.017.i21.i = phi i64 [ %.sroa.511.0.copyload.i18.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.br, %.noexc27.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.08.0.copyload.i14.i, i64 %.sroa.511.017.i21.i ; 3 uses
  %i.bq = getelementptr inbounds nuw [6 x i8], ptr %.sroa.410.0.copyload.i16.i, i64 %.sroa.511.017.i21.i ; 3 uses
  %i.br = add i64 %.sroa.511.017.i21.i, 1         ; 2 uses
  %i.bs = load float, ptr %i.bp, align 4, !noalias !1547, !noundef !7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !noalias !1547, !noundef !7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !noalias !1547, !noundef !7
  %i.bx = invoke noundef i16 @_RNvXs4_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivefE14from_primitive(float noundef %i.bs)
          to label %.noexc25.i unwind label %.loopexit.i, !noalias !1547

.noexc25.i:                                       ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %i.by = invoke noundef i16 @_RNvXs4_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivefE14from_primitive(float noundef %i.bu)
          to label %.noexc26.i unwind label %.loopexit.i, !noalias !1547

.noexc26.i:                                       ; preds = %.noexc25.i
  %i.bz = invoke noundef i16 @_RNvXs4_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivefE14from_primitive(float noundef %i.bw)
          to label %.noexc27.i unwind label %.loopexit.i, !noalias !1547

.noexc27.i:                                       ; preds = %.noexc26.i
  store i16 %i.bx, ptr %i.bq, align 2, !noalias !1547
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i16 %i.by, ptr %i.ca, align 2, !noalias !1547
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i16 %i.bz, ptr %i.cb, align 2, !noalias !1547
  %exitcond.not.i22.i = icmp eq i64 %i.br, %.sroa.712.0.copyload.i20.i
  br i1 %exitcond.not.i22.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbftEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbftEBa_.exit.i: ; preds = %.noexc27.i, %.noexc24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1533
  br label %bb.ad

bb.o:                                             ; preds = %.loopexit.split-lp.i
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1547
  unreachable

bb.p:                                             ; preds = %bb.j, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  switch i8 %.2.val, label %bb.q [
    i8 1, label %bb.r
    i8 2, label %bb.ah
    i8 4, label %bb.s
    i8 5, label %bb.t
    i8 6, label %bb.u
    i8 7, label %bb.v
    i8 8, label %bb.w
    i8 9, label %bb.x
    i8 10, label %bb.y
    i8 11, label %bb.z
    i8 12, label %bb.aa
    i8 22, label %bb.ab
  ]

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @137, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.s:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @138, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @139, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.u:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.v:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.w:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @141, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.x:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @142, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.y:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @143, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.z:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.aa:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.ab:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @145, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.sroa.12.0.i = phi float [ 3.290300e-01, %bb.r ], [ 3.160000e-01, %bb.s ], [ 3.290300e-01, %bb.t ], [ 3.290300e-01, %bb.u ], [ 3.290300e-01, %bb.v ], [ 3.160000e-01, %bb.w ], [ 3.290300e-01, %bb.x ], [ f0x3EAAAAAB, %bb.y ], [ 3.510000e-01, %bb.z ], [ 3.290300e-01, %bb.aa ], [ 3.290300e-01, %bb.ab ]
  %.sroa.0.0.i = phi float [ 3.127200e-01, %bb.r ], [ 3.100000e-01, %bb.s ], [ 3.127200e-01, %bb.t ], [ 3.127200e-01, %bb.u ], [ 3.127200e-01, %bb.v ], [ 3.100000e-01, %bb.w ], [ 3.127200e-01, %bb.x ], [ f0x3EAAAAAB, %bb.y ], [ 3.140000e-01, %bb.z ], [ 3.127200e-01, %bb.aa ], [ 3.127200e-01, %bb.ab ]
  invoke void @_RINvMs0_NtCshGoo8nsRtFZ_6moxcms4cicpNtB6_14ColorPrimaries16transform_to_xyzNtNtB8_12chromaticity12ChromaticityECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.l, float noundef %.sroa.0.0.i, float noundef %.sroa.12.0.i)
          to label %bb.ag unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbftEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaftEBa_.exit.i, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit5, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

.loopexit:                                        ; preds = %bb.am, %bb.an, %bb.ap, %bb.aq, %bb.av, %bb.ax, %bb.ay, %bb.az
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp:                               ; preds = %.invoke, %bb.ah, %bb.ac, %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #20
          to label %common.resume unwind label %bb.ba

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.cd, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit

bb.ah:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void %.40.val(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.r, ptr noundef nonnull %3)
          to label %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit unwind label %.loopexit.split-lp

_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit: ; preds = %bb.ah, %bb.ag
  %i.ce = icmp eq i8 %4, 0
  %spec.select = select i1 %i.ce, i64 3, i64 4
  %8 = udiv i64 %2, %spec.select
  %i.cf = icmp eq i8 %5, 3
  %i.cg = zext i1 %i.cf to i64
  %i.ch = shl nuw nsw i64 %8, %i.cg
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.ch, i16 noundef 0)
          to label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit unwind label %.loopexit.split-lp

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit: ; preds = %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !7 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1567
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.j, i8 0, i64 4096, i1 false), !noalias !1567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1567
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.i, i8 0, i64 4096, i1 false), !noalias !1567
  br i1 %trunc.i, label %.loopexit.loopexit.i, label %.loopexit.loopexit213.i

.loopexit.loopexit213.i:                          ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit
  %9 = udiv i64 %2, 3
  br label %.loopexit.i6

.loopexit.loopexit.i:                             ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit
  %10 = lshr i64 %2, 2
  br label %.loopexit.i6

.loopexit.i6:                                     ; preds = %.loopexit.loopexit.i, %.loopexit.loopexit213.i
  %.sroa.017.0.i = phi i64 [ 4, %.loopexit.loopexit.i ], [ 3, %.loopexit.loopexit213.i ]
  %.sroa.0.2.i = phi i64 [ %10, %.loopexit.loopexit.i ], [ %9, %.loopexit.loopexit213.i ] ; 5 uses
  %11 = icmp eq i8 %5, 3                          ; 3 uses
  %.sroa.019.0.i = select i1 %11, i64 4, i64 3
  %12 = add nuw nsw i64 %.sroa.0.2.i, 255
  %.sroa.05.0.i.i.i = lshr i64 %12, 8             ; 2 uses
  %.not209.i = icmp eq i64 %.sroa.05.0.i.i.i, 0
  br i1 %.not209.i, label %.loopexit5, label %.lr.ph212.i

.lr.ph212.i:                                      ; preds = %.loopexit.i6
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.44.0..sroa_idx.i87.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.55.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx.i91.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 4096
  %.sroa.021.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.021.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.021.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 4092
  %.sroa.025.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.025.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.025.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.722.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.525.sroa.0.0.copyload.pre.i.i = load float, ptr %i.r, align 4, !alias.scope !1564, !noalias !1570 ; 4 uses
  %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.co = load <2 x float>, ptr %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i, align 4, !alias.scope !1564, !noalias !1570 ; 7 uses
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.717.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.43.0..sroa_idx.i106.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.54.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i110.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.0..sroa_idx.i102.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %broadcast.splatinsert243 = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat244 = shufflevector <4 x float> %broadcast.splatinsert243, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat246 = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat248 = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cp = extractelement <2 x float> %i.co, i64 0
  %i.cq = extractelement <2 x float> %i.co, i64 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat222 = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat224 = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aw, %.lr.ph212.i
  %.sroa.041.0211.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph212.i ], [ %i.cs, %bb.aw ]
  %.sroa.038.0210.i = phi i64 [ 0, %.lr.ph212.i ], [ %i.cr, %bb.aw ] ; 12 uses
  %i.cr = add nuw nsw i64 %.sroa.038.0210.i, 256  ; 2 uses
  %i.cs = add nsw i64 %.sroa.041.0211.i, -1       ; 2 uses
  %..i.i = call noundef range(i64 0, -8589934590) i64 @llvm.umin.i64(i64 range(i64 0, -8589934590) %.sroa.0.2.i, i64 %i.cr) ; 9 uses
  %i.ct = sub nsw i64 %..i.i, %.sroa.038.0210.i   ; 9 uses
  %i.cu = mul i64 %i.ct, %.sroa.017.0.i           ; 8 uses
  %i.cv = icmp ult i64 %i.cu, 1025
  br i1 %i.cv, label %bb.aj, label %.invoke, !prof !1369

.invoke:                                          ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ao, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.al, %bb.ak, %bb.ai
  %i.cw = phi i64 [ %.sroa.038.0210.i, %bb.at ], [ 0, %bb.ai ], [ %i.da, %bb.ak ], [ %i.dd, %bb.al ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %bb.ao ], [ %i.hk, %bb.ar ], [ %i.hn, %bb.as ], [ %i.hr, %bb.au ]
  %i.cx = phi i64 [ %..i.i, %bb.at ], [ %i.cu, %bb.ai ], [ %i.db, %bb.ak ], [ %i.de, %bb.al ], [ %i.gr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.hi, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.ga, %bb.ao ], [ %i.hl, %bb.ar ], [ %i.ho, %bb.as ], [ %i.hs, %bb.au ]
  %i.cy = phi i64 [ %i.cl, %bb.at ], [ 1024, %bb.ai ], [ %2, %bb.ak ], [ %2, %bb.al ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.cu, %bb.ao ], [ %i.cl, %bb.ar ], [ %i.cl, %bb.as ], [ %i.cl, %bb.au ]
  %i.cz = phi ptr [ @44, %bb.at ], [ @48, %bb.ai ], [ @37, %bb.ak ], [ @38, %bb.al ], [ @40, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @41, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @46, %bb.ao ], [ @42, %bb.ar ], [ @43, %bb.as ], [ @45, %bb.au ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef %i.cx, i64 noundef %i.cy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.aj:                                            ; preds = %bb.ai
  br i1 %trunc.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.da = mul nuw nsw i64 %.sroa.038.0210.i, 3    ; 2 uses
  %i.db = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.dc = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not73.i = icmp samesign ugt i64 %i.db, %2
  %or.cond.i = or i1 %i.dc, %.not73.i
  br i1 %or.cond.i, label %.invoke, label %bb.am, !prof !1370

bb.al:                                            ; preds = %bb.aj
  %i.dd = shl nuw nsw i64 %.sroa.038.0210.i, 2    ; 3 uses
  %i.de = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.df = icmp samesign ult i64 %i.de, %i.dd
  %.not72.i = icmp samesign ugt i64 %i.de, %2
  %or.cond81.i = or i1 %i.df, %.not72.i
  br i1 %or.cond81.i, label %.invoke, label %bb.an, !prof !1370

bb.am:                                            ; preds = %bb.ak
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1567
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.db
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cu
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull readonly align 4 %i.dg, ptr noundef nonnull readonly %i.dh, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.di)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %bb.am
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8, !noalias !1571 ; 8 uses
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !1571 ; 8 uses
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !1571 ; 5 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1571 ; 5 uses
  %i.dj = icmp ult i64 %.sroa.55.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.dj, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %.loopexit285.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc10
  %.sroa.44.0.copyload.i.i271 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i to i64
  %.sroa.0.0.copyload.i.i272 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i) ]
  %i.dk = sub nuw i64 %.sroa.7.0.copyload.i.i, %.sroa.55.0.copyload.i.i ; 3 uses
  %min.iters.check275 = icmp ult i64 %i.dk, 8
  %i.dl = sub i64 %.sroa.0.0.copyload.i.i272, %.sroa.44.0.copyload.i.i271
  %diff.check273 = icmp ugt i64 %i.dl, -32
  %or.cond = select i1 %min.iters.check275, i1 true, i1 %diff.check273
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %n.vec277 = and i64 %i.dk, -8                   ; 3 uses
  %i.dm = add i64 %.sroa.55.0.copyload.i.i, %n.vec277
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next282, %vector.body278 ] ; 2 uses
  %i.dn = add nuw i64 %.sroa.55.0.copyload.i.i, %index279 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.dn ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load280 = load <4 x float>, ptr %i.do, align 4, !noalias !1564
  %wide.load281 = load <4 x float>, ptr %i.dq, align 4, !noalias !1564
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <4 x float> %wide.load280, ptr %i.dp, align 4, !noalias !1564
  store <4 x float> %wide.load281, ptr %i.dr, align 4, !noalias !1564
  %index.next282 = add nuw i64 %index279, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next282, %n.vec277
  br i1 %i.ds, label %middle.block283, label %vector.body278, !llvm.loop !1575

middle.block283:                                  ; preds = %vector.body278
  %cmp.n284 = icmp eq i64 %i.dk, %n.vec277
  br i1 %cmp.n284, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block283
  %.sroa.55.010.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.dm, %middle.block283 ] ; 4 uses
  %i.dt = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.010.i.i.ph
  %xtraiter = and i64 %i.dt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.55.010.i.i.prol = phi i64 [ %i.dw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.dw = add nuw i64 %.sroa.55.010.i.i.prol, 1   ; 2 uses
  %i.dx = load float, ptr %i.du, align 4, !noalias !1564, !noundef !7
  store float %i.dx, ptr %i.dv, align 4, !noalias !1564
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !1576

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.55.010.i.i.unr = phi i64 [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.dw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.dy = sub i64 %.sroa.55.010.i.i.ph, %.sroa.7.0.copyload.i.i
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.55.010.i.i = phi i64 [ %i.eo, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.55.010.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ec = add nuw i64 %.sroa.55.010.i.i, 1        ; 2 uses
  %i.ed = load float, ptr %i.ea, align 4, !noalias !1564, !noundef !7
  store float %i.ed, ptr %i.eb, align 4, !noalias !1564
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ec
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.ec
  %i.eg = add nuw i64 %.sroa.55.010.i.i, 2        ; 2 uses
  %i.eh = load float, ptr %i.ee, align 4, !noalias !1564, !noundef !7
  store float %i.eh, ptr %i.ef, align 4, !noalias !1564
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.eg
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.eg
  %i.ek = add nuw i64 %.sroa.55.010.i.i, 3        ; 2 uses
  %i.el = load float, ptr %i.ei, align 4, !noalias !1564, !noundef !7
  store float %i.el, ptr %i.ej, align 4, !noalias !1564
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ek
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.ek
  %i.eo = add nuw i64 %.sroa.55.010.i.i, 4        ; 2 uses
  %i.ep = load float, ptr %i.em, align 4, !noalias !1564, !noundef !7
  store float %i.ep, ptr %i.en, align 4, !noalias !1564
  %exitcond.not.i.i7.3 = icmp eq i64 %i.eo, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i7.3, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1577

bb.an:                                            ; preds = %bb.al
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1567
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cu
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %i.eq, ptr noundef nonnull readonly %i.er, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.es)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.an
  %.sroa.0.0.copyload.i86.i = load ptr, ptr %i.e, align 8, !noalias !1578 ; 8 uses
  %.sroa.44.0.copyload.i88.i = load ptr, ptr %.sroa.44.0..sroa_idx.i87.i, align 8, !noalias !1578 ; 8 uses
  %.sroa.55.0.copyload.i90.i = load i64, ptr %.sroa.55.0..sroa_idx.i89.i, align 8, !noalias !1578 ; 5 uses
  %.sroa.7.0.copyload.i92.i = load i64, ptr %.sroa.7.0..sroa_idx.i91.i, align 8, !noalias !1578 ; 5 uses
  %i.et = icmp ult i64 %.sroa.55.0.copyload.i90.i, %.sroa.7.0.copyload.i92.i
  br i1 %i.et, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, label %.loopexit284.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i: ; preds = %.noexc12
  %.sroa.44.0.copyload.i88.i256 = ptrtoaddr ptr %.sroa.44.0.copyload.i88.i to i64
  %.sroa.0.0.copyload.i86.i257 = ptrtoaddr ptr %.sroa.0.0.copyload.i86.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i86.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i88.i) ]
  %i.eu = sub nuw i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.0.copyload.i90.i ; 3 uses
  %min.iters.check259 = icmp ult i64 %i.eu, 8
  %i.ev = sub i64 %.sroa.0.0.copyload.i86.i257, %.sroa.44.0.copyload.i88.i256
  %diff.check = icmp ugt i64 %i.ev, -32
  %or.cond286 = select i1 %min.iters.check259, i1 true, i1 %diff.check
  br i1 %or.cond286, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, label %vector.ph260

vector.ph260:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i
  %n.vec261 = and i64 %i.eu, -8                   ; 3 uses
  %i.ew = add i64 %.sroa.55.0.copyload.i90.i, %n.vec261
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next266, %vector.body262 ] ; 2 uses
  %i.ex = add nuw i64 %.sroa.55.0.copyload.i90.i, %index263 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.ex ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load264 = load <4 x float>, ptr %i.ey, align 4, !noalias !1564
  %wide.load265 = load <4 x float>, ptr %i.fa, align 4, !noalias !1564
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <4 x float> %wide.load264, ptr %i.ez, align 4, !noalias !1564
  store <4 x float> %wide.load265, ptr %i.fb, align 4, !noalias !1564
  %index.next266 = add nuw i64 %index263, 8       ; 2 uses
  %i.fc = icmp eq i64 %index.next266, %n.vec261
  br i1 %i.fc, label %middle.block267, label %vector.body262, !llvm.loop !1582

middle.block267:                                  ; preds = %vector.body262
  %cmp.n268 = icmp eq i64 %i.eu, %n.vec261
  br i1 %cmp.n268, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, %middle.block267
  %.sroa.55.010.i95.i.ph = phi i64 [ %.sroa.55.0.copyload.i90.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i ], [ %i.ew, %middle.block267 ] ; 4 uses
  %i.fd = sub i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.010.i95.i.ph
  %xtraiter287 = and i64 %i.fd, 3                 ; 2 uses
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol
  %.sroa.55.010.i95.i.prol = phi i64 [ %i.fg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ] ; 3 uses
  %prol.iter289 = phi i64 [ %prol.iter289.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i.prol
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i.prol
  %i.fg = add nuw i64 %.sroa.55.010.i95.i.prol, 1 ; 2 uses
  %i.fh = load float, ptr %i.fe, align 4, !noalias !1564, !noundef !7
  store float %i.fh, ptr %i.ff, align 4, !noalias !1564
  %prol.iter289.next = add i64 %prol.iter289, 1   ; 2 uses
  %prol.iter289.cmp.not = icmp eq i64 %prol.iter289.next, %xtraiter287
  br i1 %prol.iter289.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, !llvm.loop !1583

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader
  %.sroa.55.010.i95.i.unr = phi i64 [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ], [ %i.fg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ]
  %i.fi = sub i64 %.sroa.55.010.i95.i.ph, %.sroa.7.0.copyload.i92.i
  %i.fj = icmp ugt i64 %i.fi, -4
  br i1 %i.fj, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i
  %.sroa.55.010.i95.i = phi i64 [ %i.fy, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i ], [ %.sroa.55.010.i95.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit ] ; 6 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i
  %i.fm = add nuw i64 %.sroa.55.010.i95.i, 1      ; 2 uses
  %i.fn = load float, ptr %i.fk, align 4, !noalias !1564, !noundef !7
  store float %i.fn, ptr %i.fl, align 4, !noalias !1564
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fm
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fm
  %i.fq = add nuw i64 %.sroa.55.010.i95.i, 2      ; 2 uses
  %i.fr = load float, ptr %i.fo, align 4, !noalias !1564, !noundef !7
  store float %i.fr, ptr %i.fp, align 4, !noalias !1564
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fq
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fq
  %i.fu = add nuw i64 %.sroa.55.010.i95.i, 3      ; 2 uses
  %i.fv = load float, ptr %i.fs, align 4, !noalias !1564, !noundef !7
  store float %i.fv, ptr %i.ft, align 4, !noalias !1564
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fu
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fu
  %i.fy = add nuw i64 %.sroa.55.010.i95.i, 4      ; 2 uses
  %i.fz = load float, ptr %i.fw, align 4, !noalias !1564, !noundef !7
  store float %i.fz, ptr %i.fx, align 4, !noalias !1564
  %exitcond.not.i96.i.3 = icmp eq i64 %i.fy, %.sroa.7.0.copyload.i92.i
  br i1 %exitcond.not.i96.i.3, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, !llvm.loop !1584

bb.ao:                                            ; preds = %.loopexit284.i, %.loopexit285.i
  %i.ga = mul i64 %i.ct, %.sroa.019.0.i           ; 3 uses
  %.not75.i = icmp ugt i64 %i.ga, %i.cu
  br i1 %.not75.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !1370

.loopexit285.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block283, %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1567
  br i1 %11, label %bb.ap, label %bb.ao

.loopexit284.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, %middle.block267, %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1567
  br i1 %11, label %bb.ao, label %bb.aq

bb.ap:                                            ; preds = %.loopexit285.i
  %.lhs.trunc155.i = trunc nuw nsw i64 %i.cu to i16
  %i.gb = udiv i16 %.lhs.trunc155.i, 3
  %.zext156.i = zext nneg i16 %i.gb to i64
  %i.gc = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.zext156.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1567
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gc, ptr noundef nonnull %i.i, ptr noundef nonnull %i.cm)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.ap
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !noalias !1567 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !1567 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !1567 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !1567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1567
  %i.gd = icmp eq i64 %i.ct, 0
  br i1 %i.gd, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc13
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8131.0203.i = phi i64 [ %i.ge, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.ct, %.lr.ph.preheader.i ]
  %.sroa.5129.0202.i = phi i64 [ %i.gh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5129.0202.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.ge = add i64 %.sroa.8131.0203.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.gf = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5129.0202.i ; 3 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5129.0202.i ; 3 uses
  %i.gh = add i64 %.sroa.5129.0202.i, 1
  %i.gi = load float, ptr %i.gf, align 4, !noalias !1564, !noundef !7
  store float %i.gi, ptr %i.gg, align 4, !noalias !1564
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gk = load float, ptr %i.gj, align 4, !noalias !1564, !noundef !7
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store float %i.gk, ptr %i.gl, align 4, !noalias !1564
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gn = load float, ptr %i.gm, align 4, !noalias !1564, !noundef !7
  %i.go = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gp = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.gn, i64 0
  store <2 x float> %i.gp, ptr %i.go, align 4, !noalias !1564
  %i.gq = icmp eq i64 %i.ge, 0
  br i1 %i.gq, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.gr = shl i64 %i.ct, 2                        ; 3 uses
  %i.gs = icmp ult i64 %i.gr, 1025
  br i1 %i.gs, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !1388

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc15, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc13, %bb.ao
  %.sroa.031.0.i = phi ptr [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.j, %bb.ao ], [ %i.i, %.noexc13 ], [ %i.i, %.noexc15 ] ; 8 uses
  %.sroa.7.0.i = phi i64 [ %i.hi, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.ga, %bb.ao ], [ 0, %.noexc13 ], [ 0, %.noexc15 ] ; 4 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.au
  ]

bb.aq:                                            ; preds = %.loopexit284.i
  %i.gt = lshr i64 %i.cu, 2
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1567
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gu, ptr noundef nonnull %i.i, ptr noundef nonnull %i.cn)
          to label %.noexc15 unwind label %.loopexit

.noexc15:                                         ; preds = %bb.aq
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !noalias !1567 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !1567 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !1567 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !1567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1567
  %i.gv = icmp eq i64 %i.ct, 0
  br i1 %i.gv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph207.preheader.i

.lr.ph207.preheader.i:                            ; preds = %.noexc15
  %umax262.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph207.preheader.i
  %.sroa.8146.0206.i = phi i64 [ %i.gw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.ct, %.lr.ph207.preheader.i ]
  %.sroa.5144.0205.i = phi i64 [ %i.gz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph207.preheader.i ] ; 4 uses
  %exitcond263.not.i = icmp eq i64 %.sroa.5144.0205.i, %umax262.i
  br i1 %exitcond263.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph207.i
  %i.gw = add i64 %.sroa.8146.0206.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5144.0205.i ; 3 uses
  %i.gy = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5144.0205.i ; 3 uses
  %i.gz = add i64 %.sroa.5144.0205.i, 1
  %i.ha = load float, ptr %i.gx, align 4, !noalias !1564, !noundef !7
  store float %i.ha, ptr %i.gy, align 4, !noalias !1564
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.hc = load float, ptr %i.hb, align 4, !noalias !1564, !noundef !7
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  store float %i.hc, ptr %i.hd, align 4, !noalias !1564
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hf = load float, ptr %i.he, align 4, !noalias !1564, !noundef !7
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store float %i.hf, ptr %i.hg, align 4, !noalias !1564
  %i.hh = icmp eq i64 %i.gw, 0
  br i1 %i.hh, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph207.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph207.i
  %i.hi = mul i64 %i.ct, 3                        ; 3 uses
  %i.hj = icmp ult i64 %i.hi, 1025
  br i1 %i.hj, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !1388

bb.ar:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hk = mul nuw nsw i64 %.sroa.038.0210.i, 3    ; 2 uses
  %i.hl = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.hm = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not80.i = icmp samesign ugt i64 %i.hl, %i.cl
  %or.cond82.i = or i1 %i.hm, %.not80.i
  br i1 %or.cond82.i, label %.invoke, label %bb.av, !prof !1370

bb.as:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hn = shl nuw nsw i64 %.sroa.038.0210.i, 2    ; 3 uses
  %i.ho = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.hp = icmp samesign ult i64 %i.ho, %i.hn
  %.not79.i = icmp samesign ugt i64 %i.ho, %i.cl
  %or.cond83.i = or i1 %i.hp, %.not79.i
  br i1 %or.cond83.i, label %.invoke, label %bb.ax, !prof !1370

bb.at:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hq = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not78.i = icmp samesign ugt i64 %..i.i, %i.cl
  %or.cond84.i = or i1 %i.hq, %.not78.i
  br i1 %or.cond84.i, label %.invoke, label %bb.ay, !prof !1370

bb.au:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hr = shl nuw nsw i64 %.sroa.038.0210.i, 1    ; 3 uses
  %i.hs = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %i.ht = icmp samesign ult i64 %i.hs, %i.hr
  %.not77.i = icmp samesign ugt i64 %i.hs, %i.cl
  %or.cond85.i = or i1 %i.ht, %.not77.i
  br i1 %or.cond85.i, label %.invoke, label %bb.az, !prof !1370

bb.av:                                            ; preds = %bb.ar
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1567
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.hl
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.hv, ptr noundef nonnull align 2 %i.hu, ptr noundef nonnull %i.hw)
          to label %.noexc18 unwind label %.loopexit

.noexc18:                                         ; preds = %bb.av
  %.sroa.0.0.copyload.i101.i = load ptr, ptr %i.d, align 8, !noalias !1585 ; 7 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1585 ; 7 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1585 ; 8 uses
  %.sroa.7.0.copyload.i103.i = load i64, ptr %.sroa.7.0..sroa_idx.i102.i, align 8, !noalias !1585 ; 7 uses
  %i.hx = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i103.i
  br i1 %i.hx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc18
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i101.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.hy = sub nuw i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.hy, 4
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.hz = shl i64 %.sroa.54.0.copyload.i.i, 1
  %scevgep = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.hz
  %i.ia = shl i64 %.sroa.7.0.copyload.i103.i, 1
  %scevgep187 = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.ia
  %i.ib = shl i64 %.sroa.54.0.copyload.i.i, 2
  %scevgep188 = getelementptr i8, ptr %.sroa.0.0.copyload.i101.i, i64 %i.ib
  %i.ic = shl i64 %.sroa.7.0.copyload.i103.i, 2
  %scevgep189 = getelementptr i8, ptr %.sroa.0.0.copyload.i101.i, i64 %i.ic
  %bound0 = icmp ult ptr %scevgep, %scevgep189
  %bound1 = icmp ult ptr %scevgep188, %scevgep187
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hy, -4                      ; 3 uses
  %i.id = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ie = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.ie
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.ie
  %wide.load = load <4 x float>, ptr %i.if, align 4, !alias.scope !1589, !noalias !1564
  %i.ih = fmul <4 x float> %wide.load, splat (float 6.553500e+04)
  %i.ii = call <4 x float> @llvm.round.v4f32(<4 x float> %i.ih)
  %i.ij = call <4 x i16> @llvm.fptoui.sat.v4i16.v4f32(<4 x float> %i.ii)
  store <4 x i16> %i.ij, ptr %i.ig, align 2, !alias.scope !1592, !noalias !1594
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %middle.block, label %vector.body, !llvm.loop !1595

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %vector.memcheck ], [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.id, %middle.block ] ; 6 uses
  %i.il = sub i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.09.i.i.ph
  %.neg296 = add i64 %.sroa.54.09.i.i.ph, 1
  %xtraiter293 = and i64 %i.il, 1
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i.ph
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.ph
  %i.io = add nuw i64 %.sroa.54.09.i.i.ph, 1
  %i.ip = load float, ptr %i.im, align 4, !noalias !1564, !noundef !7
  %i.iq = fmul float %i.ip, 6.553500e+04
  %i.ir = call float @llvm.round.f32(float %i.iq)
  %i.is = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.ir)
  store i16 %i.is, ptr %i.in, align 2, !noalias !1564
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.io, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.it = icmp eq i64 %.sroa.7.0.copyload.i103.i, %.neg296
  br i1 %i.it, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.54.09.i.i = phi i64 [ %i.jd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.iw = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.ix = load float, ptr %i.iu, align 4, !noalias !1564, !noundef !7
  %i.iy = fmul float %i.ix, 6.553500e+04
  %i.iz = call float @llvm.round.f32(float %i.iy)
  %i.ja = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.iz)
  store i16 %i.ja, ptr %i.iv, align 2, !noalias !1564
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.iw
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.iw
  %i.jd = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.je = load float, ptr %i.jb, align 4, !noalias !1564, !noundef !7
  %i.jf = fmul float %i.je, 6.553500e+04
  %i.jg = call float @llvm.round.f32(float %i.jf)
  %i.jh = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.jg)
  store i16 %i.jh, ptr %i.jc, align 2, !noalias !1564
  %exitcond.not.i104.i.1 = icmp eq i64 %i.jd, %.sroa.7.0.copyload.i103.i
  br i1 %exitcond.not.i104.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1596

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1567
  br label %bb.aw

bb.aw:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i
  %.not.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i, label %.loopexit5, label %bb.ai

bb.ax:                                            ; preds = %bb.as
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1567
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.ho
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.jj, ptr noundef nonnull align 2 %i.ji, ptr noundef nonnull %i.jk)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %bb.ax
  %.sroa.0.0.copyload.i105.i = load ptr, ptr %i.c, align 8, !noalias !1597 ; 7 uses
  %.sroa.43.0.copyload.i107.i = load ptr, ptr %.sroa.43.0..sroa_idx.i106.i, align 8, !noalias !1597 ; 7 uses
  %.sroa.54.0.copyload.i109.i = load i64, ptr %.sroa.54.0..sroa_idx.i108.i, align 8, !noalias !1597 ; 8 uses
  %.sroa.7.0.copyload.i111.i = load i64, ptr %.sroa.7.0..sroa_idx.i110.i, align 8, !noalias !1597 ; 7 uses
  %i.jl = icmp ult i64 %.sroa.54.0.copyload.i109.i, %.sroa.7.0.copyload.i111.i
  br i1 %i.jl, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbatEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i: ; preds = %.noexc20
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i105.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i107.i) ]
  %i.jm = sub nuw i64 %.sroa.7.0.copyload.i111.i, %.sroa.54.0.copyload.i109.i ; 3 uses
  %min.iters.check199 = icmp ult i64 %i.jm, 4
  br i1 %min.iters.check199, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i
  %i.jn = shl i64 %.sroa.54.0.copyload.i109.i, 1
  %scevgep191 = getelementptr i8, ptr %.sroa.43.0.copyload.i107.i, i64 %i.jn
  %i.jo = shl i64 %.sroa.7.0.copyload.i111.i, 1
  %scevgep192 = getelementptr i8, ptr %.sroa.43.0.copyload.i107.i, i64 %i.jo
  %i.jp = shl i64 %.sroa.54.0.copyload.i109.i, 2
  %scevgep193 = getelementptr i8, ptr %.sroa.0.0.copyload.i105.i, i64 %i.jp
  %i.jq = shl i64 %.sroa.7.0.copyload.i111.i, 2
  %scevgep194 = getelementptr i8, ptr %.sroa.0.0.copyload.i105.i, i64 %i.jq
  %bound0195 = icmp ult ptr %scevgep191, %scevgep194
  %bound1196 = icmp ult ptr %scevgep193, %scevgep192
  %found.conflict197 = and i1 %bound0195, %bound1196
  br i1 %found.conflict197, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader, label %vector.ph200

vector.ph200:                                     ; preds = %vector.memcheck190
  %n.vec201 = and i64 %i.jm, -4                   ; 3 uses
  %i.jr = add i64 %.sroa.54.0.copyload.i109.i, %n.vec201
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next205, %vector.body202 ] ; 2 uses
  %i.js = add nuw i64 %.sroa.54.0.copyload.i109.i, %index203 ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i105.i, i64 %i.js
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i107.i, i64 %i.js
  %wide.load204 = load <4 x float>, ptr %i.jt, align 4, !alias.scope !1601, !noalias !1564
  %i.jv = fmul <4 x float> %wide.load204, splat (float 6.553500e+04)
  %i.jw = call <4 x float> @llvm.round.v4f32(<4 x float> %i.jv)
  %i.jx = call <4 x i16> @llvm.fptoui.sat.v4i16.v4f32(<4 x float> %i.jw)
  store <4 x i16> %i.jx, ptr %i.ju, align 2, !alias.scope !1604, !noalias !1606
  %index.next205 = add nuw i64 %index203, 4       ; 2 uses
  %i.jy = icmp eq i64 %index.next205, %n.vec201
  br i1 %i.jy, label %middle.block206, label %vector.body202, !llvm.loop !1607

middle.block206:                                  ; preds = %vector.body202
  %cmp.n207 = icmp eq i64 %i.jm, %n.vec201
  br i1 %cmp.n207, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbatEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader: ; preds = %vector.memcheck190, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i, %middle.block206
  %.sroa.54.09.i114.i.ph = phi i64 [ %.sroa.54.0.copyload.i109.i, %vector.memcheck190 ], [ %.sroa.54.0.copyload.i109.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i ], [ %i.jr, %middle.block206 ] ; 6 uses
  %i.jz = sub i64 %.sroa.7.0.copyload.i111.i, %.sroa.54.09.i114.i.ph
  %.neg = add i64 %.sroa.54.09.i114.i.ph, 1
  %xtraiter290 = and i64 %i.jz, 1
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  br i1 %lcmp.mod291.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i105.i, i64 %.sroa.54.09.i114.i.ph
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i107.i, i64 %.sroa.54.09.i114.i.ph
  %i.kc = add nuw i64 %.sroa.54.09.i114.i.ph, 1
  %i.kd = load float, ptr %i.ka, align 4, !noalias !1564, !noundef !7
  %i.ke = fmul float %i.kd, 6.553500e+04
  %i.kf = call float @llvm.round.f32(float %i.ke)
end_hunk_2
begin_hunk_3_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutftEBa_:bb.a
  %i.mz = insertelement <4 x float> %i.my, float %i.mv, i64 3
  %i.na = fmul <4 x float> %broadcast.splat224, %i.mz
  %i.nb = fadd <4 x float> %i.mn, %i.na
  %i.nc = fmul <4 x float> %i.nb, splat (float 6.553500e+04)
  %i.nd = call <4 x float> @llvm.round.v4f32(<4 x float> %i.nc)
  %i.ne = call <4 x i16> @llvm.fptoui.sat.v4i16.v4f32(<4 x float> %i.nd)
  store <4 x i16> %i.ne, ptr %i.li, align 2, !alias.scope !1618, !noalias !1620
  %index.next227 = add nuw i64 %index226, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.nf, label %middle.block228, label %vector.body225, !llvm.loop !1621

middle.block228:                                  ; preds = %vector.body225
  %cmp.n229 = icmp eq i64 %i.lb, %n.vec220
  br i1 %cmp.n229, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumatEBa_.exit.i, label %.thread.i.i.preheader

.thread.i.i.preheader:                            ; preds = %vector.memcheck209, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block228
  %.sroa.516.037.i.i.ph = phi i64 [ %.sroa.516.0.copyload.i.i, %vector.memcheck209 ], [ %.sroa.516.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.lg, %middle.block228 ]
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.i.i.preheader, %.thread.i.i
  %.sroa.516.037.i.i = phi i64 [ %i.ng, %.thread.i.i ], [ %.sroa.516.037.i.i.ph, %.thread.i.i.preheader ] ; 3 uses
  %i.ng = add nuw i64 %.sroa.516.037.i.i, 1       ; 2 uses
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.415.0.copyload.i.i, i64 %.sroa.516.037.i.i
  %i.ni = getelementptr inbounds nuw [12 x i8], ptr %.sroa.013.0.copyload.i.i, i64 %.sroa.516.037.i.i ; 2 uses
  %i.nj = load float, ptr %i.ni, align 4, !noalias !1617, !noundef !7
  %i.nk = fmul float %.sroa.525.sroa.0.0.copyload.pre.i.i, %i.nj
  %i.nl = fadd float %i.nk, 0.000000e+00
  %.ptr36.1.i.i = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.nm = load <2 x float>, ptr %.ptr36.1.i.i, align 4, !noalias !1617
  %i.nn = fmul <2 x float> %i.co, %i.nm           ; 2 uses
  %i.no = extractelement <2 x float> %i.nn, i64 0
  %i.np = fadd float %i.nl, %i.no
  %i.nq = extractelement <2 x float> %i.nn, i64 1
  %i.nr = fadd float %i.np, %i.nq
  %i.ns = fmul float %i.nr, 6.553500e+04
  %i.nt = call float @llvm.round.f32(float %i.ns)
  %i.nu = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.nt)
  store i16 %i.nu, ptr %i.nh, align 2, !noalias !1617
  %exitcond.not.i116.i = icmp eq i64 %i.ng, %.sroa.717.0.copyload.i.i
  br i1 %exitcond.not.i116.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumatEBa_.exit.i, label %.thread.i.i, !llvm.loop !1622

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumatEBa_.exit.i: ; preds = %.thread.i.i, %middle.block228, %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1567
  br label %bb.aw

bb.az:                                            ; preds = %bb.au
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.hr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1567
  %i.nw = lshr i64 %.sroa.7.0.i, 2
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.031.0.i, i64 %i.nw
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.ct
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj2_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.nx, ptr noundef nonnull align 2 %i.nv, ptr noundef nonnull %i.ny)
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.az
  %.sroa.018.0.copyload.i.i = load ptr, ptr %i.a, align 8, !noalias !1623 ; 8 uses
  %.sroa.420.0.copyload.i.i = load ptr, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !1623 ; 5 uses
  %.sroa.521.0.copyload.i.i = load i64, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !1623 ; 8 uses
  %.sroa.722.0.copyload.i.i = load i64, ptr %.sroa.722.0..sroa_idx.i.i, align 8, !noalias !1623 ; 5 uses
  %i.nz = icmp ult i64 %.sroa.521.0.copyload.i.i, %.sroa.722.0.copyload.i.i
  br i1 %i.nz, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumatEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.420.0.copyload.i.i) ]
  %i.oa = sub nuw i64 %.sroa.722.0.copyload.i.i, %.sroa.521.0.copyload.i.i ; 3 uses
  %min.iters.check240 = icmp ult i64 %i.oa, 4
  br i1 %min.iters.check240, label %.thread.i117.i.preheader, label %vector.memcheck231

vector.memcheck231:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.ob = shl i64 %.sroa.521.0.copyload.i.i, 2
  %scevgep232 = getelementptr i8, ptr %.sroa.420.0.copyload.i.i, i64 %i.ob
  %i.oc = shl i64 %.sroa.722.0.copyload.i.i, 2
  %scevgep233 = getelementptr i8, ptr %.sroa.420.0.copyload.i.i, i64 %i.oc
  %i.od = shl i64 %.sroa.521.0.copyload.i.i, 4
  %scevgep234 = getelementptr i8, ptr %.sroa.018.0.copyload.i.i, i64 %i.od
  %i.oe = shl i64 %.sroa.722.0.copyload.i.i, 4
  %scevgep235 = getelementptr i8, ptr %.sroa.018.0.copyload.i.i, i64 %i.oe
  %bound0236 = icmp ult ptr %scevgep232, %scevgep235
  %bound1237 = icmp ult ptr %scevgep234, %scevgep233
  %found.conflict238 = and i1 %bound0236, %bound1237
  br i1 %found.conflict238, label %.thread.i117.i.preheader, label %vector.ph241

vector.ph241:                                     ; preds = %vector.memcheck231
  %n.vec242 = and i64 %i.oa, -4                   ; 3 uses
  %i.of = add i64 %.sroa.521.0.copyload.i.i, %n.vec242
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph241
  %index250 = phi i64 [ 0, %vector.ph241 ], [ %index.next251, %vector.body249 ] ; 2 uses
  %i.og = add nuw i64 %.sroa.521.0.copyload.i.i, %index250 ; 5 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.420.0.copyload.i.i, i64 %i.og
  %i.oi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.og ; 4 uses
  %i.oj = getelementptr [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.og ; 4 uses
  %i.ok = getelementptr i8, ptr %i.oj, i64 16
  %i.ol = getelementptr [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.og ; 4 uses
  %i.om = getelementptr i8, ptr %i.ol, i64 32
  %i.on = getelementptr [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.og ; 4 uses
  %i.oo = getelementptr i8, ptr %i.on, i64 48
  %i.op = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  %i.oq = getelementptr i8, ptr %i.oj, i64 28
  %i.or = getelementptr i8, ptr %i.ol, i64 44
  %i.os = getelementptr i8, ptr %i.on, i64 60
  %i.ot = load float, ptr %i.oi, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.ou = load float, ptr %i.ok, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.ov = load float, ptr %i.om, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.ow = load float, ptr %i.oo, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.ox = insertelement <4 x float> poison, float %i.ot, i64 0
  %i.oy = insertelement <4 x float> %i.ox, float %i.ou, i64 1
  %i.oz = insertelement <4 x float> %i.oy, float %i.ov, i64 2
  %i.pa = insertelement <4 x float> %i.oz, float %i.ow, i64 3
  %i.pb = fmul <4 x float> %broadcast.splat244, %i.pa
  %i.pc = fadd <4 x float> %i.pb, zeroinitializer
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  %i.pe = getelementptr i8, ptr %i.oj, i64 20
  %i.pf = getelementptr i8, ptr %i.ol, i64 36
  %i.pg = getelementptr i8, ptr %i.on, i64 52
  %i.ph = load float, ptr %i.pd, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.pi = load float, ptr %i.pe, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.pj = load float, ptr %i.pf, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.pk = load float, ptr %i.pg, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.pl = insertelement <4 x float> poison, float %i.ph, i64 0
  %i.pm = insertelement <4 x float> %i.pl, float %i.pi, i64 1
  %i.pn = insertelement <4 x float> %i.pm, float %i.pj, i64 2
  %i.po = insertelement <4 x float> %i.pn, float %i.pk, i64 3
  %i.pp = fmul <4 x float> %broadcast.splat246, %i.po
  %i.pq = fadd <4 x float> %i.pc, %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.ps = getelementptr i8, ptr %i.oj, i64 24
  %i.pt = getelementptr i8, ptr %i.ol, i64 40
  %i.pu = getelementptr i8, ptr %i.on, i64 56
  %i.pv = load float, ptr %i.pr, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.pw = load float, ptr %i.ps, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.px = load float, ptr %i.pt, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.py = load float, ptr %i.pu, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.pz = insertelement <4 x float> poison, float %i.pv, i64 0
  %i.qa = insertelement <4 x float> %i.pz, float %i.pw, i64 1
  %i.qb = insertelement <4 x float> %i.qa, float %i.px, i64 2
  %i.qc = insertelement <4 x float> %i.qb, float %i.py, i64 3
  %i.qd = fmul <4 x float> %broadcast.splat248, %i.qc
  %i.qe = fadd <4 x float> %i.pq, %i.qd
  %i.qf = load float, ptr %i.op, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.qg = load float, ptr %i.oq, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.qh = load float, ptr %i.or, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.qi = load float, ptr %i.os, align 4, !alias.scope !1628, !noalias !1631, !noundef !7
  %i.qj = insertelement <4 x float> poison, float %i.qf, i64 0
  %i.qk = insertelement <4 x float> %i.qj, float %i.qg, i64 1
  %i.ql = insertelement <4 x float> %i.qk, float %i.qh, i64 2
  %i.qm = insertelement <4 x float> %i.ql, float %i.qi, i64 3
  %i.qn = shufflevector <4 x float> %i.qe, <4 x float> %i.qm, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.qo = fmul <8 x float> %i.qn, splat (float 6.553500e+04)
  %i.qp = call <8 x float> @llvm.round.v8f32(<8 x float> %i.qo)
  %interleaved.vec = call <8 x i16> @llvm.fptoui.sat.v8i16.v8f32(<8 x float> %i.qp)
  store <8 x i16> %interleaved.vec, ptr %i.oh, align 2, !alias.scope !1632, !noalias !1631
  %index.next251 = add nuw i64 %index250, 4       ; 2 uses
  %i.qq = icmp eq i64 %index.next251, %n.vec242
  br i1 %i.qq, label %middle.block252, label %vector.body249, !llvm.loop !1634

middle.block252:                                  ; preds = %vector.body249
  %cmp.n253 = icmp eq i64 %i.oa, %n.vec242
  br i1 %cmp.n253, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumatEBa_.exit.i, label %.thread.i117.i.preheader

.thread.i117.i.preheader:                         ; preds = %vector.memcheck231, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block252
  %.sroa.521.040.i.i.ph = phi i64 [ %.sroa.521.0.copyload.i.i, %vector.memcheck231 ], [ %.sroa.521.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAtj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.of, %middle.block252 ]
  br label %.thread.i117.i

.thread.i117.i:                                   ; preds = %.thread.i117.i.preheader, %.thread.i117.i
  %.sroa.521.040.i.i = phi i64 [ %i.qr, %.thread.i117.i ], [ %.sroa.521.040.i.i.ph, %.thread.i117.i.preheader ] ; 3 uses
  %i.qr = add nuw i64 %.sroa.521.040.i.i, 1       ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.420.0.copyload.i.i, i64 %.sroa.521.040.i.i ; 2 uses
  %i.qt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %.sroa.521.040.i.i ; 4 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 12
  %i.qv = load float, ptr %i.qt, align 4, !noalias !1631, !noundef !7
  %i.qw = fmul float %.sroa.525.sroa.0.0.copyload.pre.i.i, %i.qv
  %i.qx = fadd float %i.qw, 0.000000e+00
  %.ptr39.1.i.i = getelementptr inbounds nuw i8, ptr %i.qt, i64 4
  %i.qy = load float, ptr %.ptr39.1.i.i, align 4, !noalias !1631, !noundef !7
  %i.qz = fmul float %i.cp, %i.qy
  %i.ra = fadd float %i.qx, %i.qz
  %.ptr39.2.i.i = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.rb = load float, ptr %.ptr39.2.i.i, align 4, !noalias !1631, !noundef !7
  %i.rc = fmul float %i.cq, %i.rb
  %i.rd = fadd float %i.ra, %i.rc
  %i.re = fmul float %i.rd, 6.553500e+04
  %i.rf = call float @llvm.round.f32(float %i.re)
  %i.rg = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.rf)
  store i16 %i.rg, ptr %i.qs, align 2, !noalias !1631
  %i.rh = load float, ptr %i.qu, align 4, !noalias !1631, !noundef !7
  %i.ri = fmul float %i.rh, 6.553500e+04
  %i.rj = call float @llvm.round.f32(float %i.ri)
  %i.rk = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.rj)
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qs, i64 2
  store i16 %i.rk, ptr %i.rl, align 2, !noalias !1631
  %exitcond.not.i118.i = icmp eq i64 %i.qr, %.sroa.722.0.copyload.i.i
  br i1 %exitcond.not.i118.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumatEBa_.exit.i, label %.thread.i117.i, !llvm.loop !1635

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumatEBa_.exit.i: ; preds = %.thread.i117.i, %middle.block252, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1567
  br label %bb.aw

.loopexit5:                                       ; preds = %bb.aw, %.loopexit.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  br label %bb.ae

bb.ba:                                            ; preds = %bb.af
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouthfEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i8 %.2.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noundef nonnull %3, ptr nofree readonly captures(none) %.40.val, i8 noundef range(i8 0, 4) %4, i8 noundef range(i8 0, 4) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [4096 x i8], align 4              ; 11 uses
  %i.m = alloca [4096 x i8], align 4              ; 16 uses
  %i.n = alloca [36 x i8], align 4                ; 5 uses
  %i.o = alloca [24 x i8], align 4                ; 15 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [88 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 16               ; 12 uses
  %i.v = alloca [24 x i8], align 16               ; 14 uses
  %i.w = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.y = zext nneg i8 %4 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.y
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.z = urem i64 %2, %switch.ext
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %switch.lookup341, label %bb.a, !prof !1329

default.unreachable:                              ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, %bb.ao, %.loopexit.i6, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i
  unreachable

bb.a:                                             ; preds = %switch.lookup
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #26, !noalias !1636
  unreachable

switch.lookup341:                                 ; preds = %switch.lookup
  %i.ab = zext nneg i8 %4 to i64
  %switch.gep342 = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.ab
  %switch.load343 = load i8, ptr %switch.gep342, align 1
  %switch.ext344 = zext i8 %switch.load343 to i64
  %i.ac = udiv i64 %2, %switch.ext344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1636
  %i.ad = zext nneg i8 %5 to i64
  %switch.gep351 = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.ad
  %switch.load352 = load i8, ptr %switch.gep351, align 1
  %switch.ext353 = zext i8 %switch.load352 to i64
  %i.ae = mul i64 %i.ac, %switch.ext353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1640
  store i64 0, ptr %i.u, align 16, !noalias !1640
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.af, align 8, !noalias !1640
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store i64 0, ptr %i.ag, align 16, !noalias !1640
  %i.ah = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u, i64 noundef 0, i64 noundef %i.ae, i64 noundef 4, i64 noundef 4)
          to label %bb.c unwind label %bb.b, !noalias !1640 ; 2 uses

bb.b:                                             ; preds = %switch.lookup341
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #20
          to label %common.resume unwind label %bb.g, !noalias !1640

bb.c:                                             ; preds = %switch.lookup341
  %i.aj = extractvalue { i64, i64 } %i.ah, 0      ; 2 uses
  %.not.i.i = icmp eq i64 %i.aj, -1
  br i1 %.not.i.i, label %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i unwind label %bb.e, !noalias !1640

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume unwind label %bb.f, !noalias !1640

bb.f:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1640
  unreachable

common.resume:                                    ; preds = %bb.ai, %bb.b, %bb.e, %.loopexit.split-lp.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.ai, %bb.b ], [ %i.ak, %bb.e ], [ %lpad.phi, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i: ; preds = %bb.d
  %i.am = extractvalue { i64, i64 } %i.ah, 1
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u), !noalias !1640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1640
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1640
  unreachable

_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i: ; preds = %bb.c
  %i.ao = load <2 x i64>, ptr %i.u, align 16, !noalias !1636 ; 3 uses
  %.sroa.8.0.copyload.i = load i64, ptr %i.ag, align 16, !noalias !1636 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1640
  call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  %i.ap = extractelement <2 x i64> %i.ao, i64 0
  %i.aq = icmp eq i64 %i.ap, -1
  %i.ar = extractelement <2 x i64> %i.ao, i64 1
  br i1 %i.aq, label %bb.h, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i, !prof !1342

bb.h:                                             ; preds = %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i
  %.sroa.6.011.i = phi i64 [ %i.aj, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i ], [ %i.ar, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i ]
  %.sroa.8.010.i = phi i64 [ %i.am, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i ], [ %.sroa.8.0.copyload.i, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1648
  store i64 %.sroa.6.011.i, ptr %i.t, align 8, !noalias !1648
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sroa.8.010.i, ptr %i.as, align 8, !noalias !1648
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 54, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #26, !noalias !1648
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store <2 x i64> %i.ao, ptr %i.v, align 16, !alias.scope !1649, !noalias !1636
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1649, !noalias !1636
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

bb.i:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i
  switch i8 %5, label %bb.s [
    i8 0, label %bb.m
    i8 1, label %bb.n
  ]

bb.j:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i
  switch i8 %5, label %bb.s [
    i8 0, label %bb.o
    i8 1, label %bb.m
  ]

bb.k:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i
  switch i8 %5, label %bb.s [
    i8 2, label %bb.m
    i8 3, label %bb.p
  ]

bb.l:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i
  switch i8 %5, label %bb.s [
    i8 2, label %bb.q
    i8 3, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4IterhEENvYfINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivehE14from_primitiveEE11spec_extendB32_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %i.at)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1650

bb.n:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1636
  %i.au = udiv i64 %2, 3                          ; 2 uses
  %i.av = shl nuw i64 %i.au, 2
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.av, float noundef 0.000000e+00)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1636

.noexc.i:                                         ; preds = %bb.n
  %i.aw = load ptr, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !1651, !noalias !1654, !nonnull !7, !noundef !7 ; 2 uses
  %i.ax = load i64, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1651, !noalias !1654, !noundef !7
  %i.ay = lshr i64 %i.ax, 2
  %i.az = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.au
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ay
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %i.az, ptr noundef nonnull align 4 %i.aw, ptr noundef nonnull %i.ba)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1650

end_hunk_3
