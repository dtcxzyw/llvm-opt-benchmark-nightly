Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.13?download=true
inline.NumInlined: 1791
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAhEINtB1b_4LumatEEBa_:bb.a
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
  %i.u = udiv exact i64 %2, %..i
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %switch.lookup, label %bb.b, !prof !6

default.unreachable:                              ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #26, !noalias !1409
  unreachable

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1409
  %i.w = zext nneg i8 %5 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.x = mul nuw nsw i64 %i.u, %switch.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1410
  store i64 0, ptr %i.p, align 16, !noalias !1410
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.y, align 8, !noalias !1410
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 0, ptr %i.z, align 16, !noalias !1410
  %i.aa = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, i64 noundef 0, i64 noundef %i.x, i64 noundef 4, i64 noundef 4)
          to label %bb.d unwind label %bb.c, !noalias !1410 ; 2 uses

bb.c:                                             ; preds = %switch.lookup
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #20
          to label %common.resume unwind label %bb.h, !noalias !1410

bb.d:                                             ; preds = %switch.lookup
  %i.ac = extractvalue { i64, i64 } %i.aa, 0      ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, -1
  br i1 %.not.i.i, label %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i unwind label %bb.f, !noalias !1410

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.g, !noalias !1410

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1410
  unreachable

common.resume:                                    ; preds = %bb.ag, %bb.c, %bb.f, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.ab, %bb.c ], [ %i.ad, %bb.f ], [ %lpad.phi, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i: ; preds = %bb.e
  %i.af = extractvalue { i64, i64 } %i.aa, 1
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p), !noalias !1410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1410
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1410
  unreachable

_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i: ; preds = %bb.d
  %i.ah = load <2 x i64>, ptr %i.p, align 16, !noalias !1409 ; 3 uses
  %.sroa.8.0.copyload.i = load i64, ptr %i.z, align 16, !noalias !1409 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1410
  call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  %i.ai = extractelement <2 x i64> %i.ah, i64 0
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = extractelement <2 x i64> %i.ah, i64 1
  br i1 %i.aj, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i, !prof !7

bb.i:                                             ; preds = %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i
  %.sroa.6.010.i = phi i64 [ %i.ac, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i ], [ %i.ak, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i ]
  %.sroa.8.09.i = phi i64 [ %i.af, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.thread.i ], [ %.sroa.8.0.copyload.i, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1413
  store i64 %.sroa.6.010.i, ptr %i.o, align 8, !noalias !1413
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.8.09.i, ptr %i.al, align 8, !noalias !1413
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 54, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #26, !noalias !1413
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityfEB4_.exit.i
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store <2 x i64> %i.ah, ptr %i.q, align 16, !alias.scope !1414, !noalias !1409
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1414, !noalias !1409
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
          to label %bb.ae unwind label %bb.n, !noalias !1415

bb.m:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1409
  %i.an = udiv i64 %2, 3                          ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 2
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.ao, float noundef 0.000000e+00)
          to label %.noexc.i unwind label %bb.n, !noalias !1409

.noexc.i:                                         ; preds = %bb.m
  %i.ap = load ptr, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !1416, !noalias !1417, !nonnull !4, !noundef !4 ; 2 uses
  %i.aq = load i64, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1416, !noalias !1417, !noundef !4
  %i.ar = lshr i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.an
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ar
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.as, ptr noundef nonnull align 4 %i.ap, ptr noundef nonnull %i.at)
          to label %.noexc10.i unwind label %bb.n, !noalias !1415

.noexc10.i:                                       ; preds = %.noexc.i
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.n, align 8, !noalias !1418 ; 4 uses
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.410.0.copyload.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !1418 ; 4 uses
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.511.0.copyload.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !1418 ; 7 uses
  %.sroa.712.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.712.0.copyload.i.i = load i64, ptr %.sroa.712.0..sroa_idx.i.i, align 8, !noalias !1418 ; 4 uses
  %i.au = icmp ult i64 %.sroa.511.0.copyload.i.i, %.sroa.712.0.copyload.i.i
  br i1 %i.au, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaffEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc10.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i) ]
  %i.av = sub nuw i64 %.sroa.712.0.copyload.i.i, %.sroa.511.0.copyload.i.i
  %.neg = add i64 %.sroa.511.0.copyload.i.i, 1
  %xtraiter = and i64 %i.av, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %.sroa.08.0.copyload.i.i, i64 %.sroa.511.0.copyload.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i, i64 %.sroa.511.0.copyload.i.i ; 3 uses
  %i.ay = add nuw i64 %.sroa.511.0.copyload.i.i, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load float, ptr %i.az, align 4, !noalias !1415, !noundef !4
  %i.bb = load <2 x float>, ptr %i.aw, align 4, !noalias !1415
  store <2 x float> %i.bb, ptr %i.ax, align 4, !noalias !1415
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store float %i.ba, ptr %i.bc, align 4, !noalias !1415
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store float 1.000000e+00, ptr %i.bd, align 4, !noalias !1415
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %.sroa.511.017.i.i.unr = phi i64 [ %.sroa.511.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.ay, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.be = icmp eq i64 %.sroa.712.0.copyload.i.i, %.neg
  br i1 %i.be, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaffEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.511.017.i.i = phi i64 [ %i.bp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.511.017.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %.sroa.08.0.copyload.i.i, i64 %.sroa.511.017.i.i ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i, i64 %.sroa.511.017.i.i ; 3 uses
  %i.bh = add nuw i64 %.sroa.511.017.i.i, 1       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load float, ptr %i.bi, align 4, !noalias !1415, !noundef !4
  %i.bk = load <2 x float>, ptr %i.bf, align 4, !noalias !1415
  store <2 x float> %i.bk, ptr %i.bg, align 4, !noalias !1415
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store float %i.bj, ptr %i.bl, align 4, !noalias !1415
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store float 1.000000e+00, ptr %i.bm, align 4, !noalias !1415
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %.sroa.08.0.copyload.i.i, i64 %i.bh ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i, i64 %i.bh ; 3 uses
  %i.bp = add nuw i64 %.sroa.511.017.i.i, 2       ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = load float, ptr %i.bq, align 4, !noalias !1415, !noundef !4
  %i.bs = load <2 x float>, ptr %i.bn, align 4, !noalias !1415
  store <2 x float> %i.bs, ptr %i.bo, align 4, !noalias !1415
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store float %i.br, ptr %i.bt, align 4, !noalias !1415
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store float 1.000000e+00, ptr %i.bu, align 4, !noalias !1415
  %exitcond.not.i.i.1 = icmp eq i64 %i.bp, %.sroa.712.0.copyload.i.i
  br i1 %exitcond.not.i.i.1, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaffEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaffEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1409
  br label %bb.ae
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutffEBa_:bb.a
  %i.pc = load <2 x float>, ptr %.ptr36.1.i.i.1, align 4, !noalias !1433
  %i.pd = fmul <2 x float> %i.ds, %i.pc           ; 2 uses
  %i.pe = extractelement <2 x float> %i.pd, i64 0
  %i.pf = fadd float %i.pb, %i.pe
  %i.pg = extractelement <2 x float> %i.pd, i64 1
  %i.ph = fadd float %i.pf, %i.pg
  store float %i.ph, ptr %i.ox, align 4, !noalias !1433
  %exitcond.not.i118.i.1 = icmp eq i64 %i.ow, %.sroa.717.0.copyload.i.i
  br i1 %exitcond.not.i118.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumafEBa_.exit.i, label %.thread.i.i, !llvm.loop !1399

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumafEBa_.exit.i: ; preds = %.thread.i.i.prol.loopexit, %.thread.i.i, %middle.block207, %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1425
  br label %bb.ax

bb.ba:                                            ; preds = %bb.av
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.is ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1425
  %i.pj = lshr i64 %.sroa.7.0.i, 2
  %i.pk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.031.0.i, i64 %i.pj
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.dv
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj2_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.pk, ptr noundef nonnull align 4 %i.pi, ptr noundef nonnull %i.pl)
          to label %.noexc23 unwind label %.loopexit

.noexc23:                                         ; preds = %bb.ba
  %.sroa.018.0.copyload.i.i = load ptr, ptr %i.a, align 8, !noalias !1436 ; 8 uses
  %.sroa.420.0.copyload.i.i = load ptr, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !1436 ; 5 uses
  %.sroa.521.0.copyload.i.i = load i64, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !1436 ; 8 uses
  %.sroa.722.0.copyload.i.i = load i64, ptr %.sroa.722.0..sroa_idx.i.i, align 8, !noalias !1436 ; 5 uses
  %i.pm = icmp ult i64 %.sroa.521.0.copyload.i.i, %.sroa.722.0.copyload.i.i
  br i1 %i.pm, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumafEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc23
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.420.0.copyload.i.i) ]
  %i.pn = sub nuw i64 %.sroa.722.0.copyload.i.i, %.sroa.521.0.copyload.i.i ; 3 uses
  %min.iters.check219 = icmp ult i64 %i.pn, 4
  br i1 %min.iters.check219, label %.thread.i119.i.preheader, label %vector.memcheck210

vector.memcheck210:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.po = shl i64 %.sroa.521.0.copyload.i.i, 3
  %scevgep211 = getelementptr i8, ptr %.sroa.420.0.copyload.i.i, i64 %i.po
  %i.pp = shl i64 %.sroa.722.0.copyload.i.i, 3
  %scevgep212 = getelementptr i8, ptr %.sroa.420.0.copyload.i.i, i64 %i.pp
  %i.pq = shl i64 %.sroa.521.0.copyload.i.i, 4
  %scevgep213 = getelementptr i8, ptr %.sroa.018.0.copyload.i.i, i64 %i.pq
  %i.pr = shl i64 %.sroa.722.0.copyload.i.i, 4
  %scevgep214 = getelementptr i8, ptr %.sroa.018.0.copyload.i.i, i64 %i.pr
  %bound0215 = icmp ult ptr %scevgep211, %scevgep214
  %bound1216 = icmp ult ptr %scevgep213, %scevgep212
  %found.conflict217 = and i1 %bound0215, %bound1216
  br i1 %found.conflict217, label %.thread.i119.i.preheader, label %vector.ph220

vector.ph220:                                     ; preds = %vector.memcheck210
  %n.vec221 = and i64 %i.pn, -4                   ; 3 uses
  %i.ps = add i64 %.sroa.521.0.copyload.i.i, %n.vec221
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph220
  %index229 = phi i64 [ 0, %vector.ph220 ], [ %index.next230, %vector.body228 ] ; 2 uses
  %i.pt = add nuw i64 %.sroa.521.0.copyload.i.i, %index229 ; 5 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.420.0.copyload.i.i, i64 %i.pt
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.pt ; 4 uses
  %i.pw = getelementptr [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.pt ; 4 uses
  %i.px = getelementptr i8, ptr %i.pw, i64 16
  %i.py = getelementptr [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.pt ; 4 uses
  %i.pz = getelementptr i8, ptr %i.py, i64 32
  %i.qa = getelementptr [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %i.pt ; 4 uses
  %i.qb = getelementptr i8, ptr %i.qa, i64 48
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pv, i64 12
  %i.qd = getelementptr i8, ptr %i.pw, i64 28
  %i.qe = getelementptr i8, ptr %i.py, i64 44
  %i.qf = getelementptr i8, ptr %i.qa, i64 60
  %i.qg = load float, ptr %i.pv, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.qh = load float, ptr %i.px, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.qi = load float, ptr %i.pz, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.qj = load float, ptr %i.qb, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.qk = insertelement <4 x float> poison, float %i.qg, i64 0
  %i.ql = insertelement <4 x float> %i.qk, float %i.qh, i64 1
  %i.qm = insertelement <4 x float> %i.ql, float %i.qi, i64 2
  %i.qn = insertelement <4 x float> %i.qm, float %i.qj, i64 3
  %i.qo = fmul <4 x float> %broadcast.splat223, %i.qn
  %i.qp = fadd <4 x float> %i.qo, zeroinitializer
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  %i.qr = getelementptr i8, ptr %i.pw, i64 20
  %i.qs = getelementptr i8, ptr %i.py, i64 36
  %i.qt = getelementptr i8, ptr %i.qa, i64 52
  %i.qu = load float, ptr %i.qq, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.qv = load float, ptr %i.qr, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.qw = load float, ptr %i.qs, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.qx = load float, ptr %i.qt, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.qy = insertelement <4 x float> poison, float %i.qu, i64 0
  %i.qz = insertelement <4 x float> %i.qy, float %i.qv, i64 1
  %i.ra = insertelement <4 x float> %i.qz, float %i.qw, i64 2
  %i.rb = insertelement <4 x float> %i.ra, float %i.qx, i64 3
  %i.rc = fmul <4 x float> %broadcast.splat225, %i.rb
  %i.rd = fadd <4 x float> %i.qp, %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.rf = getelementptr i8, ptr %i.pw, i64 24
  %i.rg = getelementptr i8, ptr %i.py, i64 40
  %i.rh = getelementptr i8, ptr %i.qa, i64 56
  %i.ri = load float, ptr %i.re, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.rj = load float, ptr %i.rf, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.rk = load float, ptr %i.rg, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.rl = load float, ptr %i.rh, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.rm = insertelement <4 x float> poison, float %i.ri, i64 0
  %i.rn = insertelement <4 x float> %i.rm, float %i.rj, i64 1
  %i.ro = insertelement <4 x float> %i.rn, float %i.rk, i64 2
  %i.rp = insertelement <4 x float> %i.ro, float %i.rl, i64 3
  %i.rq = fmul <4 x float> %broadcast.splat227, %i.rp
  %i.rr = fadd <4 x float> %i.rd, %i.rq
  %i.rs = load float, ptr %i.qc, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.rt = load float, ptr %i.qd, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.ru = load float, ptr %i.qe, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.rv = load float, ptr %i.qf, align 4, !alias.scope !1437, !noalias !1438, !noundef !4
  %i.rw = insertelement <4 x float> poison, float %i.rs, i64 0
  %i.rx = insertelement <4 x float> %i.rw, float %i.rt, i64 1
  %i.ry = insertelement <4 x float> %i.rx, float %i.ru, i64 2
  %i.rz = insertelement <4 x float> %i.ry, float %i.rv, i64 3
  %interleaved.vec = shufflevector <4 x float> %i.rr, <4 x float> %i.rz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.pu, align 4, !alias.scope !1439, !noalias !1438
  %index.next230 = add nuw i64 %index229, 4       ; 2 uses
  %i.sa = icmp eq i64 %index.next230, %n.vec221
  br i1 %i.sa, label %middle.block231, label %vector.body228, !llvm.loop !1407

middle.block231:                                  ; preds = %vector.body228
  %cmp.n232 = icmp eq i64 %i.pn, %n.vec221
  br i1 %cmp.n232, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumafEBa_.exit.i, label %.thread.i119.i.preheader

.thread.i119.i.preheader:                         ; preds = %vector.memcheck210, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block231
  %.sroa.521.040.i.i.ph = phi i64 [ %.sroa.521.0.copyload.i.i, %vector.memcheck210 ], [ %.sroa.521.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.ps, %middle.block231 ]
  br label %.thread.i119.i

.thread.i119.i:                                   ; preds = %.thread.i119.i.preheader, %.thread.i119.i
  %.sroa.521.040.i.i = phi i64 [ %i.sb, %.thread.i119.i ], [ %.sroa.521.040.i.i.ph, %.thread.i119.i.preheader ] ; 3 uses
  %i.sb = add nuw i64 %.sroa.521.040.i.i, 1       ; 2 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.420.0.copyload.i.i, i64 %.sroa.521.040.i.i ; 2 uses
  %i.sd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %.sroa.521.040.i.i ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 12
  %i.sf = load float, ptr %i.sd, align 4, !noalias !1438, !noundef !4
  %i.sg = fmul float %.sroa.525.sroa.0.0.copyload.pre.i.i, %i.sf
  %i.sh = fadd float %i.sg, 0.000000e+00
  %.ptr39.1.i.i = getelementptr inbounds nuw i8, ptr %i.sd, i64 4
  %i.si = load <2 x float>, ptr %.ptr39.1.i.i, align 4, !noalias !1438
  %i.sj = fmul <2 x float> %i.ds, %i.si           ; 2 uses
  %i.sk = extractelement <2 x float> %i.sj, i64 0
  %i.sl = fadd float %i.sh, %i.sk
  %i.sm = extractelement <2 x float> %i.sj, i64 1
  %i.sn = fadd float %i.sl, %i.sm
  store float %i.sn, ptr %i.sc, align 4, !noalias !1438
  %i.so = load float, ptr %i.se, align 4, !noalias !1438, !noundef !4
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  store float %i.so, ptr %i.sp, align 4, !noalias !1438
  %exitcond.not.i120.i = icmp eq i64 %i.sb, %.sroa.722.0.copyload.i.i
  br i1 %exitcond.not.i120.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumafEBa_.exit.i, label %.thread.i119.i, !llvm.loop !1408

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumafEBa_.exit.i: ; preds = %.thread.i119.i, %middle.block231, %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1425
  br label %bb.ax

.loopexit5:                                       ; preds = %bb.ax, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  br label %bb.af

bb.bb:                                            ; preds = %bb.ag
  %i.sq = landingpad { ptr, i32 }
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
  %i.u = udiv exact i64 %2, %..i
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %switch.lookup, label %bb.b, !prof !6

default.unreachable:                              ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #26, !noalias !1506
  unreachable

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1506
  %i.w = zext nneg i8 %5 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.x = mul nuw nsw i64 %i.u, %switch.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1507
  store i64 0, ptr %i.p, align 16, !noalias !1507
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.y, align 8, !noalias !1507
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 0, ptr %i.z, align 16, !noalias !1507
  %i.aa = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, i64 noundef 0, i64 noundef %i.x, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.c, !noalias !1507 ; 2 uses

bb.c:                                             ; preds = %switch.lookup
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #20
          to label %common.resume unwind label %bb.h, !noalias !1507

bb.d:                                             ; preds = %switch.lookup
  %i.ac = extractvalue { i64, i64 } %i.aa, 0      ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, -1
  br i1 %.not.i.i, label %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.thread.i unwind label %bb.f, !noalias !1507

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.g, !noalias !1507

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1507
  unreachable

common.resume:                                    ; preds = %bb.af, %bb.c, %bb.f, %.loopexit.split-lp.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.ab, %bb.c ], [ %i.ad, %bb.f ], [ %lpad.phi, %bb.af ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.thread.i: ; preds = %bb.e
  %i.af = extractvalue { i64, i64 } %i.aa, 1
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p), !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1507
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1507
  unreachable

_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.i: ; preds = %bb.d
  %i.ah = load <2 x i64>, ptr %i.p, align 16, !noalias !1506 ; 3 uses
  %.sroa.8.0.copyload.i = load i64, ptr %i.z, align 16, !noalias !1506 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1507
  call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  %i.ai = extractelement <2 x i64> %i.ah, i64 0
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = extractelement <2 x i64> %i.ah, i64 1
  br i1 %i.aj, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i, !prof !7

bb.i:                                             ; preds = %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.i, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.thread.i
  %.sroa.6.010.i = phi i64 [ %i.ac, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.thread.i ], [ %i.ak, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.i ]
  %.sroa.8.09.i = phi i64 [ %i.af, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.thread.i ], [ %.sroa.8.0.copyload.i, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1510
  store i64 %.sroa.6.010.i, ptr %i.o, align 8, !noalias !1510
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.8.09.i, ptr %i.al, align 8, !noalias !1510
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 54, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #26, !noalias !1510
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacityhEB4_.exit.i
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store <2 x i64> %i.ah, ptr %i.q, align 16, !alias.scope !1511, !noalias !1506
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1511, !noalias !1506
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
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1512

bb.m:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1506
  %i.an = udiv i64 %2, 3                          ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 2
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.ao, i8 noundef 0)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1506

.noexc.i:                                         ; preds = %bb.m
  %i.ap = load ptr, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !1513, !noalias !1514, !nonnull !4, !noundef !4 ; 2 uses
  %i.aq = load i64, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1513, !noalias !1514, !noundef !4
  %i.ar = lshr i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.an
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ar
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.as, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.at)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1512

.noexc10.i:                                       ; preds = %.noexc.i
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.n, align 8, !noalias !1515 ; 2 uses
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.410.0.copyload.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !1515 ; 2 uses
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.511.0.copyload.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !1515 ; 2 uses
  %.sroa.712.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.712.0.copyload.i.i = load i64, ptr %.sroa.712.0..sroa_idx.i.i, align 8, !noalias !1515 ; 2 uses
  %i.au = icmp ult i64 %.sroa.511.0.copyload.i.i, %.sroa.712.0.copyload.i.i
  br i1 %i.au, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbafhEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc10.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.noexc13.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %.sroa.511.017.i.i = phi i64 [ %.sroa.511.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.ax, %.noexc13.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %.sroa.08.0.copyload.i.i, i64 %.sroa.511.017.i.i ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.410.0.copyload.i.i, i64 %.sroa.511.017.i.i ; 4 uses
  %i.ax = add i64 %.sroa.511.017.i.i, 1           ; 2 uses
  %i.ay = load float, ptr %i.av, align 4, !noalias !1512, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ba = load float, ptr %i.az, align 4, !noalias !1512, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !noalias !1512, !noundef !4
  %i.bd = invoke noundef i8 @_RNvXs3_NtCsa5QsYiPB8Gl_5image5colorhINtB5_13FromPrimitivefE14from_primitive(float noundef %i.ay)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1512

.noexc11.i:                                       ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %i.be = invoke noundef i8 @_RNvXs3_NtCsa5QsYiPB8Gl_5image5colorhINtB5_13FromPrimitivefE14from_primitive(float noundef %i.ba)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1512

.noexc12.i:                                       ; preds = %.noexc11.i
  %i.bf = invoke noundef i8 @_RNvXs3_NtCsa5QsYiPB8Gl_5image5colorhINtB5_13FromPrimitivefE14from_primitive(float noundef %i.bc)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1512

.noexc13.i:                                       ; preds = %.noexc12.i
  store i8 %i.bd, ptr %i.aw, align 1, !noalias !1512
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.be, ptr %i.bg, align 1, !noalias !1512
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i8 %i.bf, ptr %i.bh, align 1, !noalias !1512
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  store i8 -1, ptr %i.bi, align 1, !noalias !1512
  %exitcond.not.i.i = icmp eq i64 %i.ax, %.sroa.712.0.copyload.i.i
  br i1 %exitcond.not.i.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbafhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAhj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbafhEBa_.exit.i: ; preds = %.noexc13.i, %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1506
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
end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutfhEBa_:bb.a
_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumahEBa_.exit.i: ; preds = %.thread.i.i, %middle.block214, %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1522
  br label %bb.aw

bb.az:                                            ; preds = %bb.au
  %i.nv = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.hx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1522
  %i.nw = lshr i64 %.sroa.7.0.i, 2
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.031.0.i, i64 %i.nw
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %i.nv, i64 %i.da
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj2_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.nx, ptr noundef nonnull %i.nv, ptr noundef nonnull %i.ny)
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.az
  %.sroa.018.0.copyload.i.i = load ptr, ptr %i.a, align 8, !noalias !1539 ; 8 uses
  %.sroa.420.0.copyload.i.i = load ptr, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !1539 ; 5 uses
  %.sroa.521.0.copyload.i.i = load i64, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !1539 ; 8 uses
  %.sroa.722.0.copyload.i.i = load i64, ptr %.sroa.722.0..sroa_idx.i.i, align 8, !noalias !1539 ; 5 uses
  %i.nz = icmp ult i64 %.sroa.521.0.copyload.i.i, %.sroa.722.0.copyload.i.i
  br i1 %i.nz, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumahEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.420.0.copyload.i.i) ]
  %i.oa = sub nuw i64 %.sroa.722.0.copyload.i.i, %.sroa.521.0.copyload.i.i ; 3 uses
  %min.iters.check226 = icmp ult i64 %i.oa, 4
  br i1 %min.iters.check226, label %.thread.i117.i.preheader, label %vector.memcheck217

vector.memcheck217:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.ob = shl i64 %.sroa.521.0.copyload.i.i, 1
  %scevgep218 = getelementptr i8, ptr %.sroa.420.0.copyload.i.i, i64 %i.ob
  %i.oc = shl i64 %.sroa.722.0.copyload.i.i, 1
  %scevgep219 = getelementptr i8, ptr %.sroa.420.0.copyload.i.i, i64 %i.oc
  %i.od = shl i64 %.sroa.521.0.copyload.i.i, 4
  %scevgep220 = getelementptr i8, ptr %.sroa.018.0.copyload.i.i, i64 %i.od
  %i.oe = shl i64 %.sroa.722.0.copyload.i.i, 4
  %scevgep221 = getelementptr i8, ptr %.sroa.018.0.copyload.i.i, i64 %i.oe
  %bound0222 = icmp ult ptr %scevgep218, %scevgep221
  %bound1223 = icmp ult ptr %scevgep220, %scevgep219
  %found.conflict224 = and i1 %bound0222, %bound1223
  br i1 %found.conflict224, label %.thread.i117.i.preheader, label %vector.ph227

vector.ph227:                                     ; preds = %vector.memcheck217
  %n.vec228 = and i64 %i.oa, -4                   ; 3 uses
  %i.of = add i64 %.sroa.521.0.copyload.i.i, %n.vec228
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph227
  %index236 = phi i64 [ 0, %vector.ph227 ], [ %index.next237, %vector.body235 ] ; 2 uses
  %i.og = add nuw i64 %.sroa.521.0.copyload.i.i, %index236 ; 5 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.420.0.copyload.i.i, i64 %i.og
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
  %i.ot = load float, ptr %i.oi, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.ou = load float, ptr %i.ok, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.ov = load float, ptr %i.om, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.ow = load float, ptr %i.oo, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.ox = insertelement <4 x float> poison, float %i.ot, i64 0
  %i.oy = insertelement <4 x float> %i.ox, float %i.ou, i64 1
  %i.oz = insertelement <4 x float> %i.oy, float %i.ov, i64 2
  %i.pa = insertelement <4 x float> %i.oz, float %i.ow, i64 3
  %i.pb = fmul <4 x float> %broadcast.splat230, %i.pa
  %i.pc = fadd <4 x float> %i.pb, zeroinitializer
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  %i.pe = getelementptr i8, ptr %i.oj, i64 20
  %i.pf = getelementptr i8, ptr %i.ol, i64 36
  %i.pg = getelementptr i8, ptr %i.on, i64 52
  %i.ph = load float, ptr %i.pd, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.pi = load float, ptr %i.pe, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.pj = load float, ptr %i.pf, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.pk = load float, ptr %i.pg, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.pl = insertelement <4 x float> poison, float %i.ph, i64 0
  %i.pm = insertelement <4 x float> %i.pl, float %i.pi, i64 1
  %i.pn = insertelement <4 x float> %i.pm, float %i.pj, i64 2
  %i.po = insertelement <4 x float> %i.pn, float %i.pk, i64 3
  %i.pp = fmul <4 x float> %broadcast.splat232, %i.po
  %i.pq = fadd <4 x float> %i.pc, %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.ps = getelementptr i8, ptr %i.oj, i64 24
  %i.pt = getelementptr i8, ptr %i.ol, i64 40
  %i.pu = getelementptr i8, ptr %i.on, i64 56
  %i.pv = load float, ptr %i.pr, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.pw = load float, ptr %i.ps, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.px = load float, ptr %i.pt, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.py = load float, ptr %i.pu, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.pz = insertelement <4 x float> poison, float %i.pv, i64 0
  %i.qa = insertelement <4 x float> %i.pz, float %i.pw, i64 1
  %i.qb = insertelement <4 x float> %i.qa, float %i.px, i64 2
  %i.qc = insertelement <4 x float> %i.qb, float %i.py, i64 3
  %i.qd = fmul <4 x float> %broadcast.splat234, %i.qc
  %i.qe = fadd <4 x float> %i.pq, %i.qd
  %i.qf = load float, ptr %i.op, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.qg = load float, ptr %i.oq, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.qh = load float, ptr %i.or, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.qi = load float, ptr %i.os, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.qj = insertelement <4 x float> poison, float %i.qf, i64 0
  %i.qk = insertelement <4 x float> %i.qj, float %i.qg, i64 1
  %i.ql = insertelement <4 x float> %i.qk, float %i.qh, i64 2
  %i.qm = insertelement <4 x float> %i.ql, float %i.qi, i64 3
  %i.qn = shufflevector <4 x float> %i.qe, <4 x float> %i.qm, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.qo = fmul <8 x float> %i.qn, splat (float 2.550000e+02)
  %i.qp = call <8 x float> @llvm.round.v8f32(<8 x float> %i.qo)
  %interleaved.vec = call <8 x i8> @llvm.fptoui.sat.v8i8.v8f32(<8 x float> %i.qp)
  store <8 x i8> %interleaved.vec, ptr %i.oh, align 1, !alias.scope !1542, !noalias !1541
  %index.next237 = add nuw i64 %index236, 4       ; 2 uses
  %i.qq = icmp eq i64 %index.next237, %n.vec228
  br i1 %i.qq, label %middle.block238, label %vector.body235, !llvm.loop !1504

middle.block238:                                  ; preds = %vector.body235
  %cmp.n239 = icmp eq i64 %i.oa, %n.vec228
  br i1 %cmp.n239, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumahEBa_.exit.i, label %.thread.i117.i.preheader

.thread.i117.i.preheader:                         ; preds = %vector.memcheck217, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block238
  %.sroa.521.040.i.i.ph = phi i64 [ %.sroa.521.0.copyload.i.i, %vector.memcheck217 ], [ %.sroa.521.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAhj2_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.of, %middle.block238 ]
  br label %.thread.i117.i

.thread.i117.i:                                   ; preds = %.thread.i117.i.preheader, %.thread.i117.i
  %.sroa.521.040.i.i = phi i64 [ %i.qr, %.thread.i117.i ], [ %.sroa.521.040.i.i.ph, %.thread.i117.i.preheader ] ; 3 uses
  %i.qr = add nuw i64 %.sroa.521.040.i.i, 1       ; 2 uses
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.420.0.copyload.i.i, i64 %.sroa.521.040.i.i ; 2 uses
  %i.qt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.018.0.copyload.i.i, i64 %.sroa.521.040.i.i ; 4 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 12
  %i.qv = load float, ptr %i.qt, align 4, !noalias !1541, !noundef !4
  %i.qw = fmul float %.sroa.525.sroa.0.0.copyload.pre.i.i, %i.qv
  %i.qx = fadd float %i.qw, 0.000000e+00
  %.ptr39.1.i.i = getelementptr inbounds nuw i8, ptr %i.qt, i64 4
  %i.qy = load float, ptr %.ptr39.1.i.i, align 4, !noalias !1541, !noundef !4
  %i.qz = fmul float %i.cw, %i.qy
  %i.ra = fadd float %i.qx, %i.qz
  %.ptr39.2.i.i = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.rb = load float, ptr %.ptr39.2.i.i, align 4, !noalias !1541, !noundef !4
  %i.rc = fmul float %i.cx, %i.rb
  %i.rd = fadd float %i.ra, %i.rc
  %i.re = fmul float %i.rd, 2.550000e+02
  %i.rf = call float @llvm.round.f32(float %i.re)
  %i.rg = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.rf)
  store i8 %i.rg, ptr %i.qs, align 1, !noalias !1541
  %i.rh = load float, ptr %i.qu, align 4, !noalias !1541, !noundef !4
  %i.ri = fmul float %i.rh, 2.550000e+02
  %i.rj = call float @llvm.round.f32(float %i.ri)
  %i.rk = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.rj)
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qs, i64 1
  store i8 %i.rk, ptr %i.rl, align 1, !noalias !1541
  %exitcond.not.i118.i = icmp eq i64 %i.qr, %.sroa.722.0.copyload.i.i
  br i1 %exitcond.not.i118.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumahEBa_.exit.i, label %.thread.i117.i, !llvm.loop !1505

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumahEBa_.exit.i: ; preds = %.thread.i117.i, %middle.block238, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1522
  br label %bb.aw

.loopexit5:                                       ; preds = %bb.aw, %.loopexit.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  br label %bb.ae

bb.ba:                                            ; preds = %bb.af
  %i.rm = landingpad { ptr, i32 }
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
  %i.u = udiv exact i64 %2, %..i
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %switch.lookup, label %bb.b, !prof !6

default.unreachable:                              ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #26, !noalias !1609
  unreachable

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1609
  %i.w = zext nneg i8 %5 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.x = mul nuw nsw i64 %i.u, %switch.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1610
  store i64 0, ptr %i.p, align 16, !noalias !1610
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.y, align 8, !noalias !1610
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 0, ptr %i.z, align 16, !noalias !1610
  %i.aa = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, i64 noundef 0, i64 noundef %i.x, i64 noundef 2, i64 noundef 2)
          to label %bb.d unwind label %bb.c, !noalias !1610 ; 2 uses

bb.c:                                             ; preds = %switch.lookup
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #20
          to label %common.resume unwind label %bb.h, !noalias !1610

bb.d:                                             ; preds = %switch.lookup
  %i.ac = extractvalue { i64, i64 } %i.aa, 0      ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, -1
  br i1 %.not.i.i, label %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.thread.i unwind label %bb.f, !noalias !1610

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.g, !noalias !1610

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1610
  unreachable

common.resume:                                    ; preds = %bb.af, %bb.c, %bb.f, %.loopexit.split-lp.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.ab, %bb.c ], [ %i.ad, %bb.f ], [ %lpad.phi, %bb.af ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.thread.i: ; preds = %bb.e
  %i.af = extractvalue { i64, i64 } %i.aa, 1
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p), !noalias !1610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1610
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1610
  unreachable

_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.i: ; preds = %bb.d
  %i.ah = load <2 x i64>, ptr %i.p, align 16, !noalias !1609 ; 3 uses
  %.sroa.8.0.copyload.i = load i64, ptr %i.z, align 16, !noalias !1609 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1610
  call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %i.ai = extractelement <2 x i64> %i.ah, i64 0
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = extractelement <2 x i64> %i.ah, i64 1
  br i1 %i.aj, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VectENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i, !prof !7

bb.i:                                             ; preds = %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.i, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.thread.i
  %.sroa.6.010.i = phi i64 [ %i.ac, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.thread.i ], [ %i.ak, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.i ]
  %.sroa.8.09.i = phi i64 [ %i.af, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.thread.i ], [ %.sroa.8.0.copyload.i, %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1613
  store i64 %.sroa.6.010.i, ptr %i.o, align 8, !noalias !1613
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.8.09.i, ptr %i.al, align 8, !noalias !1613
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 54, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #26, !noalias !1613
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs4wP2HXfJTCR_5alloc3vec3VectENtNtBM_11collections15TryReserveErrorE6expectCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsa5QsYiPB8Gl_5image5utils21vec_try_with_capacitytEB4_.exit.i
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store <2 x i64> %i.ah, ptr %i.q, align 16, !alias.scope !1614, !noalias !1609
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1614, !noalias !1609
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
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1615

bb.m:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1609
  %i.an = udiv i64 %2, 3                          ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 2
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.ao, i16 noundef 0)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1609

.noexc.i:                                         ; preds = %bb.m
  %i.ap = load ptr, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !1616, !noalias !1617, !nonnull !4, !noundef !4 ; 2 uses
  %i.aq = load i64, ptr %.sroa.8.0..sroa_idx4.i, align 16, !alias.scope !1616, !noalias !1617, !noundef !4
  %i.ar = lshr i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.an
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.as, ptr noundef nonnull align 2 %i.ap, ptr noundef nonnull %i.at)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1615

.noexc10.i:                                       ; preds = %.noexc.i
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.n, align 8, !noalias !1618 ; 2 uses
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.410.0.copyload.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !1618 ; 2 uses
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.511.0.copyload.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !1618 ; 2 uses
  %.sroa.712.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.712.0.copyload.i.i = load i64, ptr %.sroa.712.0..sroa_idx.i.i, align 8, !noalias !1618 ; 2 uses
  %i.au = icmp ult i64 %.sroa.511.0.copyload.i.i, %.sroa.712.0.copyload.i.i
  br i1 %i.au, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaftEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc10.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.noexc13.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %.sroa.511.017.i.i = phi i64 [ %.sroa.511.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.ax, %.noexc13.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %.sroa.08.0.copyload.i.i, i64 %.sroa.511.017.i.i ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.410.0.copyload.i.i, i64 %.sroa.511.017.i.i ; 4 uses
  %i.ax = add i64 %.sroa.511.017.i.i, 1           ; 2 uses
  %i.ay = load float, ptr %i.av, align 4, !noalias !1615, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ba = load float, ptr %i.az, align 4, !noalias !1615, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !noalias !1615, !noundef !4
  %i.bd = invoke noundef i16 @_RNvXs4_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivefE14from_primitive(float noundef %i.ay)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1615

.noexc11.i:                                       ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %i.be = invoke noundef i16 @_RNvXs4_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivefE14from_primitive(float noundef %i.ba)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1615

.noexc12.i:                                       ; preds = %.noexc11.i
  %i.bf = invoke noundef i16 @_RNvXs4_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivefE14from_primitive(float noundef %i.bc)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1615

.noexc13.i:                                       ; preds = %.noexc12.i
  store i16 %i.bd, ptr %i.aw, align 2, !noalias !1615
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i16 %i.be, ptr %i.bg, align 2, !noalias !1615
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i16 %i.bf, ptr %i.bh, align 2, !noalias !1615
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  store i16 -1, ptr %i.bi, align 2, !noalias !1615
  %exitcond.not.i.i = icmp eq i64 %i.ax, %.sroa.712.0.copyload.i.i
  br i1 %exitcond.not.i.i, label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaftEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAtj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaftEBa_.exit.i: ; preds = %.noexc13.i, %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1609
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
end_hunk_2
