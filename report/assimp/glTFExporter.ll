begin_hunk_0
; Function Attrs: mustprogress uwtable
define hidden void @_Z10ExportSkinRN4glTF5AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EE(ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %4, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
end_hunk_0
begin_hunk_1
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.f, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.at, i64 1056
  %.sroa.0141.0.copyload = load float, ptr %i.dg, align 4 ; 2 uses
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1060
  %.sroa.6144.0.copyload = load <4 x float>, ptr %.sroa.6144.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1076
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1080
  %.sroa.8153.0.copyload = load <4 x float>, ptr %.sroa.8151.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1096
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1100
  %.sroa.10.0.copyload = load <4 x float>, ptr %.sroa.10.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1116
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %i.dh = load ptr, ptr %i.o, align 8             ; 11 uses
end_hunk_1
begin_hunk_2
bb.j:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit
  store float %.sroa.0141.0.copyload, ptr %i.dh, align 4
  %.sroa.6144.0..sroa_idx145 = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store <4 x float> %.sroa.6144.0.copyload, ptr %.sroa.6144.0..sroa_idx145, align 4
  %.sroa.7.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  store float %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx147, align 4
  %.sroa.8151.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store <4 x float> %.sroa.8153.0.copyload, ptr %.sroa.8151.0..sroa_idx152, align 4
  %.sroa.9.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store float %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx154, align 4
  %.sroa.10.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.dh, i64 44
  store <4 x float> %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx158, align 4
  %.sroa.11.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.dh, i64 60
  store float %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx160, align 4
  %i.dj = load ptr, ptr %i.o, align 8
end_hunk_2
begin_hunk_3
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.do ; 7 uses
  store float %.sroa.0141.0.copyload, ptr %i.dx, align 4
  %.sroa.6144.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store <4 x float> %.sroa.6144.0.copyload, ptr %.sroa.6144.0..sroa_idx146, align 4
  %.sroa.7.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  store float %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx149, align 4
  %.sroa.8151.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store <4 x float> %.sroa.8153.0.copyload, ptr %.sroa.8151.0..sroa_idx153, align 4
  %.sroa.9.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  store float %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx156, align 4
  %.sroa.10.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %i.dx, i64 44
  store <4 x float> %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx159, align 4
  %.sroa.11.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.dx, i64 60
  store float %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx162, align 4
  %.not10.i.i.i.i.i95 = icmp eq ptr %i.dl, %i.dh
end_hunk_3
begin_hunk_4
  %i.eh = lshr exact i64 %i.eg, 6
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = add i32 %i.ei, -1
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit, %._crit_edge
end_hunk_4
