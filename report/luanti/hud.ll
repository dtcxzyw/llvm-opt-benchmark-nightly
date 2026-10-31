Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/hud?download=true
inline.NumInlined: 2250
inline.NumDeleted: 686
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@__cxa_begin_catch
; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Hud8drawItemERK9ItemStackRKN4core4rectIiEEb(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.core::rect", align 16       ; 6 uses
  %5 = alloca %"class.core::rect", align 8        ; 5 uses
  %6 = alloca %"class.core::rect", align 8        ; 5 uses
  %7 = alloca %"class.core::rect", align 8        ; 5 uses
  %8 = alloca %"class.core::rect", align 8        ; 5 uses
  %9 = alloca %"class.core::rect", align 8        ; 5 uses
  br i1 %3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i8, ptr %i.a, align 8, !tbaa !56, !range !122, !noundef !123
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !124
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.e = load i32, ptr %i.d, align 4, !tbaa !118
  %i.f = shl nsw i32 %i.e, 1
  %i.g = load <4 x i32>, ptr %4, align 16, !tbaa !78 ; 2 uses
  %i.h = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %i.i = shufflevector <4 x i32> %i.h, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.j = sub nsw <4 x i32> %i.g, %i.i
  %i.k = add nsw <4 x i32> %i.g, %i.i
  %i.l = shufflevector <4 x i32> %i.j, <4 x i32> %i.k, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.l, ptr %4, align 16, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef null) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store i64 0, ptr %5, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load <2 x i32>, ptr %i.t, align 4, !tbaa !78
  store <2 x i32> %i.x, ptr %i.w, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.v, ptr noundef nonnull %i.s, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef null, ptr noundef nonnull %i.y, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.z = load i32, ptr %2, align 4, !tbaa !126    ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !127 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !128 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !129 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !118 ; 3 uses
  %i.ak = sub nsw i32 %i.z, %i.aj
  %i.al = sub nsw i32 %i.ab, %i.aj
  %i.am = add nsw i32 %i.aj, %i.ad
  %.sroa.446.0.insert.ext = zext i32 %i.al to i64
  %.sroa.446.0.insert.shift = shl nuw i64 %.sroa.446.0.insert.ext, 32
  %.sroa.045.0.insert.ext = zext i32 %i.ak to i64
  %.sroa.045.0.insert.insert = or disjoint i64 %.sroa.446.0.insert.shift, %.sroa.045.0.insert.ext
  store i64 %.sroa.045.0.insert.insert, ptr %6, align 8, !tbaa !78
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.444.0.insert.ext = zext i32 %i.ab to i64
  %.sroa.444.0.insert.shift = shl nuw i64 %.sroa.444.0.insert.ext, 32 ; 3 uses
  %.sroa.043.0.insert.ext = zext i32 %i.am to i64
  %.sroa.043.0.insert.insert = or disjoint i64 %.sroa.444.0.insert.shift, %.sroa.043.0.insert.ext
  store i64 %.sroa.043.0.insert.insert, ptr %i.an, align 8, !tbaa !78
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 424
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 -65536, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !118 ; 3 uses
  %i.at = sub nsw i32 %i.z, %i.as
  %i.au = add nsw i32 %i.as, %i.ad
  %i.av = add nsw i32 %i.as, %i.af
  %.sroa.442.0.insert.ext = zext i32 %i.af to i64
  %.sroa.442.0.insert.shift = shl nuw i64 %.sroa.442.0.insert.ext, 32 ; 3 uses
  %.sroa.041.0.insert.ext = zext i32 %i.at to i64
  %.sroa.041.0.insert.insert = or disjoint i64 %.sroa.442.0.insert.shift, %.sroa.041.0.insert.ext
  store i64 %.sroa.041.0.insert.insert, ptr %7, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.440.0.insert.ext = zext i32 %i.av to i64
  %.sroa.440.0.insert.shift = shl nuw i64 %.sroa.440.0.insert.ext, 32
  %.sroa.039.0.insert.ext = zext i32 %i.au to i64
  %.sroa.039.0.insert.insert = or disjoint i64 %.sroa.440.0.insert.shift, %.sroa.039.0.insert.ext
  store i64 %.sroa.039.0.insert.insert, ptr %i.aw, align 8, !tbaa !78
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 424
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i32 -65536, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.ba = load ptr, ptr %i.ag, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !118
  %i.bc = sub nsw i32 %i.z, %i.bb
  %.sroa.037.0.insert.ext = zext i32 %i.bc to i64
  %.sroa.037.0.insert.insert = or disjoint i64 %.sroa.444.0.insert.shift, %.sroa.037.0.insert.ext
  store i64 %.sroa.037.0.insert.insert, ptr %8, align 8, !tbaa !78
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.035.0.insert.ext = zext i32 %i.z to i64
  %.sroa.035.0.insert.insert = or disjoint i64 %.sroa.442.0.insert.shift, %.sroa.035.0.insert.ext
  store i64 %.sroa.035.0.insert.insert, ptr %i.bd, align 8, !tbaa !78
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 424
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 -65536, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.bh = load ptr, ptr %i.ag, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.bi = load i32, ptr %i.ai, align 4, !tbaa !118
  %i.bj = add nsw i32 %i.bi, %i.ad
  %.sroa.033.0.insert.ext = zext i32 %i.ad to i64
  %.sroa.033.0.insert.insert = or disjoint i64 %.sroa.444.0.insert.shift, %.sroa.033.0.insert.ext
  store i64 %.sroa.033.0.insert.insert, ptr %9, align 8, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.032.0.insert.ext = zext i32 %i.bj to i64
  %.sroa.032.0.insert.insert = or disjoint i64 %.sroa.442.0.insert.shift, %.sroa.032.0.insert.ext
  store i64 %.sroa.032.0.insert.insert, ptr %i.bk, align 8, !tbaa !78
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !69
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 424
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i32 -65536, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !55, !range !122, !noundef !123
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !70 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !69
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 424
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i32 -2147483648, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !70
  %i.by = load ptr, ptr @g_fontengine, align 8, !tbaa !131 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1324
  %i.ca = load i16, ptr %i.bz, align 4
  %i.cb = zext i16 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 40
  %.sroa.0.0.insert.insert.i = or disjoint i64 %i.cc, 72057615512764415
  %i.cd = call noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.by, i64 %.sroa.0.0.insert.insert.i)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !71
  %i.cg = select i1 %3, i32 0, i32 4
  call void @_Z13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKind(ptr noundef %i.bx, ptr noundef %i.cd, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef null, ptr noundef %i.cf, i32 noundef %i.cg)
  ret void
}

declare void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_Z13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKind(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(296), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Hud9drawItemsEN4core8vector2dIiEES2_iNS1_IfEEiP13InventoryListttb(ptr noundef nonnull align 8 dereferenceable(572) %0, i64 %1, i64 %2, i32 noundef %3, <2 x float> %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, i16 noundef zeroext %7, i16 noundef zeroext %8, i1 noundef zeroext %9) local_unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %"class.core::rect", align 8       ; 5 uses
  %11 = alloca %"class.core::rect", align 8       ; 5 uses
  %12 = alloca %"class.core::rect", align 8       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !118
  %i.e = shl nsw i32 %i.d, 1
  %i.f = add nsw i32 %i.e, %i.b                   ; 3 uses
  %i.g = sub nsw i32 %3, %5
  %i.h = mul nsw i32 %i.f, %i.g                   ; 2 uses
  %i.i = and i16 %8, -2
  %or.cond = icmp eq i16 %i.i, 2                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.k = load <1 x float>, ptr %i.j, align 4
  %i.l = bitcast i64 %1 to <2 x i32>
  %i.m = bitcast i64 %2 to <2 x i32>
  %spec.select = select i1 %or.cond, i32 %i.f, i32 %i.h ; 2 uses
  %spec.select49 = select i1 %or.cond, i32 %i.h, i32 %i.f ; 2 uses
  %i.n = sitofp <2 x i32> %i.m to <2 x float>
  %i.o = shufflevector <1 x float> %i.k, <1 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul nsz <2 x float> %i.o, %i.n
  %i.q = fptosi <2 x float> %i.p to <2 x i32>
  %i.r = add nsw <2 x i32> %i.q, %i.l
  %i.s = fadd nsz <2 x float> %4, splat (float -1.000000e+00)
  %i.t = insertelement <2 x i32> poison, i32 %spec.select, i64 0
  %i.u = insertelement <2 x i32> %i.t, i32 %spec.select49, i64 1
  %i.v = sitofp <2 x i32> %i.u to <2 x float>
  %i.w = fmul nnan nsz <2 x float> %i.v, splat (float 5.000000e-01)
  %i.x = sitofp <2 x i32> %i.r to <2 x float>
  %i.y = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.w, <2 x float> %i.x) ; 2 uses
  %i.z = extractelement <2 x float> %i.y, i64 0
  %i.aa = fptosi float %i.z to i32                ; 5 uses
  %i.ab = extractelement <2 x float> %i.y, i64 1
  %i.ac = fptosi float %i.ab to i32               ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 496 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !22 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 504
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !22
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.am = icmp eq i64 %i.ai, 0
  br i1 %i.am, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread129, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !77
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !77
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ao, ptr %i.an, i64 %i.ai)
  %.not131 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not131, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread129, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
  %i.ap = load i64, ptr %i.ah, align 8, !tbaa !22
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = zext i1 %i.aq to i8
  store i8 %i.as, ptr %i.ar, align 8, !tbaa !55
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !72
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread129

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread129: ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.at = phi ptr [ %i.af, %bb.b ], [ %.pre, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %i.af, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 528 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !22 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 536
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !22
  %i.ba = icmp eq i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread129
  %i.bb = icmp eq i64 %i.ax, 0
  br i1 %i.bb, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread130, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51: ; preds = %bb.c
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !77
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !77
  %bcmp.i.i50 = tail call i32 @bcmp(ptr %i.bd, ptr %i.bc, i64 %i.ax)
  %.not132 = icmp eq i32 %bcmp.i.i50, 0
  br i1 %.not132, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread130, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread129, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !22
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = zext i1 %i.bf to i8
  store i8 %i.bh, ptr %i.bg, align 8, !tbaa !56
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread130

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread130: ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !55, !range !122, !noundef !123
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread130
  %i.bl = load i32, ptr %i.c, align 4, !tbaa !118 ; 2 uses
  %i.bm = sdiv i32 %i.bl, -2                      ; 2 uses
  %i.bn = sdiv i32 %i.bl, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.bo = add nsw i32 %i.bm, %i.aa
  %i.bp = add nsw i32 %i.bm, %i.ac
  %i.bq = add i32 %spec.select, %i.aa
  %i.br = add i32 %i.bq, %i.bn
  %.sroa.8.8.insert.ext.i = zext i32 %i.br to i64
  %i.bs = add i32 %spec.select49, %i.ac
  %i.bt = add i32 %i.bs, %i.bn
  %.sroa.8.12.insert.ext.i = zext i32 %i.bt to i64
  %.sroa.8.12.insert.shift.i = shl nuw i64 %.sroa.8.12.insert.ext.i, 32
  %.sroa.8.12.insert.insert.i = or disjoint i64 %.sroa.8.12.insert.shift.i, %.sroa.8.8.insert.ext.i
  %.sroa.0.sroa.6.0.insert.ext.i = zext i32 %i.bp to i64
  %.sroa.0.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %i.bo to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %10, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.sroa.8.12.insert.insert.i, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !79 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !69
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef null) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  store i64 0, ptr %11, align 8, !tbaa !78
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cf = load <2 x i32>, ptr %i.cb, align 4, !tbaa !78
  store <2 x i32> %i.cf, ptr %i.ce, align 8, !tbaa !78
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.cd, ptr noundef nonnull %i.ca, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef null, ptr noundef nonnull %i.cg, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread130
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !436
  %i.ck = load ptr, ptr %6, align 8, !tbaa !437
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 296
  %i.cp = trunc i64 %i.co to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.cq = phi i32 [ %i.cp, %bb.f ], [ 0, %bb.e ]
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.cq, i32 %3) ; 4 uses
  %i.cr = icmp slt i32 %5, %.sroa.speculated
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.cs = sub i32 %.sroa.speculated, %5           ; 4 uses
  %i.ct = add nsw i32 %i.ch, %i.aa                ; 2 uses
  %i.cu = add nsw i32 %i.ch, %i.ac                ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cw = zext i16 %7 to i32                      ; 2 uses
  br i1 %9, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.l
  %.0133.us = phi i32 [ %i.dw, %bb.l ], [ %5, %.lr.ph ] ; 6 uses
  %i.cx = load i32, ptr %i.a, align 8, !tbaa !117
  %i.cy = load i32, ptr %i.c, align 4, !tbaa !118 ; 9 uses
  %i.cz = shl nsw i32 %i.cy, 1
  %i.da = add nsw i32 %i.cz, %i.cx                ; 4 uses
  switch i16 %8, label %bb.k [
    i16 1, label %bb.j
    i16 2, label %bb.i
    i16 3, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.db = xor i32 %.0133.us, -1
  %i.dc = add i32 %i.cs, %i.db
  %i.dd = mul nsw i32 %i.da, %i.dc
  %i.de = add nsw i32 %i.dd, %i.cy
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.df = sub nsw i32 %.0133.us, %5
  %i.dg = mul nsw i32 %i.da, %i.df
  %i.dh = add nsw i32 %i.dg, %i.cy
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.di = xor i32 %.0133.us, -1
  %i.dj = add i32 %i.cs, %i.di
  %i.dk = mul nsw i32 %i.da, %i.dj
  %i.dl = add nsw i32 %i.dk, %i.cy
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us
  %i.dm = sub nsw i32 %.0133.us, %5
  %i.dn = mul nsw i32 %i.da, %i.dm
  %i.do = add nsw i32 %i.dn, %i.cy
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.098.0.us = phi i32 [ %i.do, %bb.k ], [ %i.dl, %bb.j ], [ %i.cy, %bb.i ], [ %i.cy, %bb.h ] ; 2 uses
  %.sroa.8.0.us = phi i32 [ %i.cy, %bb.k ], [ %i.cy, %bb.j ], [ %i.dh, %bb.i ], [ %i.de, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.dp = add nsw i32 %.sroa.098.0.us, %i.aa
  %i.dq = add nsw i32 %.sroa.8.0.us, %i.ac
  %i.dr = add nsw i32 %i.ct, %.sroa.098.0.us
  %.sroa.8.8.insert.ext.i78.us = zext i32 %i.dr to i64
  %i.ds = add nsw i32 %i.cu, %.sroa.8.0.us
  %.sroa.8.12.insert.ext.i81.us = zext i32 %i.ds to i64
  %.sroa.8.12.insert.shift.i82.us = shl nuw i64 %.sroa.8.12.insert.ext.i81.us, 32
  %.sroa.8.12.insert.insert.i83.us = or disjoint i64 %.sroa.8.12.insert.shift.i82.us, %.sroa.8.8.insert.ext.i78.us
  %.sroa.0.sroa.6.0.insert.ext.i84.us = zext i32 %i.dq to i64
  %.sroa.0.sroa.6.0.insert.shift.i85.us = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext.i84.us, 32
  %.sroa.0.sroa.0.0.insert.ext.i86.us = zext i32 %i.dp to i64
  %.sroa.0.sroa.0.0.insert.insert.i87.us = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift.i85.us, %.sroa.0.sroa.0.0.insert.ext.i86.us
end_hunk_0
begin_hunk_1_@_ZN3Hud16hasElementOfTypeE14HudElementType:bb.a

.critedge:                                        ; preds = %bb.b, %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.011.017, i64 8 ; 2 uses
  %.not15.not = icmp eq ptr %i.j, %i.f
  br i1 %.not15.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.critedge, %bb.a
  %.not15.lcssa = phi i1 [ false, %bb.a ], [ false, %.critedge ], [ true, %bb.b ]
  ret i1 %.not15.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3Hud18calculateScreenPosERKN4core8vector3dIsEEP10HudElementPNS0_8vector2dIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(572) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.b = load float, ptr %i.a, align 4, !tbaa !142
  %i.c = fmul nsz float %i.b, 1.000000e+01
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.e = load float, ptr %i.d, align 4, !tbaa !143
  %i.f = fmul nsz float %i.e, 1.000000e+01
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.h = load float, ptr %i.g, align 4, !tbaa !144
  %i.i = fmul nsz float %i.h, 1.000000e+01
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.l = tail call noundef ptr @_ZN6Client15getSceneManagerEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.k) ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 4 uses
  %.sroa.02.0.copyload = load i48, ptr %1, align 2, !tbaa !110 ; 3 uses
  %.sroa.013.0.extract.trunc.i = trunc i48 %.sroa.02.0.copyload to i16
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.02.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.02.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.q = sitofp nsz i16 %.sroa.013.0.extract.trunc.i to float
  %i.r = sitofp nsz i16 %.sroa.2.0.extract.trunc.i to float
  %i.s = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.t = fmul nnan nsz float %i.q, 1.000000e+01
  %i.u = fmul nnan nsz float %i.r, 1.000000e+01
  %i.v = fmul nnan nsz float %i.s, 1.000000e+01
  %i.w = fsub nsz float %i.c, %i.t
  %i.x = fsub nsz float %i.f, %i.u                ; 3 uses
  %i.y = fsub nsz float %i.i, %i.v                ; 2 uses
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 296
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(233) %i.p) ; 12 uses
  %.sroa.019.0.copyload = load float, ptr %i.ac, align 4 ; 4 uses
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.sroa.621.0.copyload = load float, ptr %.sroa.621.0..sroa_idx, align 4 ; 4 uses
  %.sroa.1026.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.sroa.1026.0.copyload = load float, ptr %.sroa.1026.0..sroa_idx, align 4 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4 ; 4 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx, align 4 ; 4 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 4 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4 ; 4 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %.sroa.28.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx45, align 4 ; 4 uses
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %.sroa.30.0.copyload = load float, ptr %.sroa.30.0..sroa_idx, align 4 ; 4 uses
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 304
  %i.af = load ptr, ptr %i.ae, align 8
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4 ; 4 uses
  %.sroa.34.0.copyload = load float, ptr %.sroa.34.0..sroa_idx, align 4, !tbaa !23 ; 4 uses
  %i.ag = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(233) %i.p) ; 15 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !58 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !58 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.am = fmul nsz float %.sroa.18.0.copyload, %i.aj
  %i.an = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1026.0.copyload, float %i.ah, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !58 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !58 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.at = load float, ptr %i.as, align 4, !tbaa !58 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.av = load float, ptr %i.au, align 4, !tbaa !58 ; 3 uses
  %i.aw = fmul nsz float %.sroa.18.0.copyload, %i.ar
  %i.ax = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1026.0.copyload, float %i.ap, float %i.aw)
  %i.ay = tail call nsz float @llvm.fmuladd.f32(float %.sroa.26.0.copyload, float %i.at, float %i.ax)
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %.sroa.34.0.copyload, float %i.av, float %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !58 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !58 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.bg = fmul nsz float %.sroa.18.0.copyload, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 52
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !58 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.bl = load float, ptr %i.ak, align 4, !tbaa !58 ; 3 uses
  %i.bm = load float, ptr %i.al, align 4, !tbaa !58 ; 3 uses
  %i.bn = tail call nsz float @llvm.fmuladd.f32(float %.sroa.26.0.copyload, float %i.bl, float %i.an)
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %.sroa.34.0.copyload, float %i.bm, float %i.bn)
  %i.bp = load float, ptr %i.be, align 4, !tbaa !58 ; 3 uses
  %i.bq = load <2 x float>, ptr %i.bj, align 4, !tbaa !58 ; 2 uses
  %i.br = load float, ptr %i.bk, align 4, !tbaa !58
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1026.0.copyload, float %i.bb, float %i.bg)
  %i.bt = load <2 x float>, ptr %i.bf, align 4, !tbaa !58 ; 3 uses
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %.sroa.26.0.copyload, float %i.bp, float %i.bs)
  %i.bv = fmul nsz float %.sroa.18.0.copyload, %i.bi
  %i.bw = insertelement <2 x float> poison, float %.sroa.34.0.copyload, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %.sroa.1026.0.copyload, i64 1
  %i.by = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bv, i64 1
  %i.ca = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bt, <2 x float> %i.bz) ; 2 uses
  %i.cb = fmul nsz float %i.x, %i.az
  %i.cc = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %.sroa.26.0.copyload, i64 1
  %i.ce = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cf = insertelement <2 x float> %i.ce, float %i.w, i64 0 ; 3 uses
  %i.cg = insertelement <2 x float> %i.ca, float %i.cb, i64 0
  %i.ch = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.cf, <2 x float> %i.cg)
  %i.ci = insertelement <2 x float> %i.ca, float %.sroa.34.0.copyload, i64 1
  %i.cj = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.br, i64 1 ; 2 uses
  %i.cl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.ck, <2 x float> %i.ch)
  %i.cm = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.cl) ; 3 uses
  %i.cn = fcmp nsz uge float %i.cm, 0.000000e+00  ; 2 uses
  br i1 %i.cn, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.co = fmul nsz float %.sroa.14.0.copyload, %i.bi
  %i.cp = extractelement <2 x float> %i.bt, i64 1 ; 2 uses
  %i.cq = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.cp, float %i.co)
  %i.cr = fmul nsz float %.sroa.14.0.copyload, %i.bd
  %i.cs = fmul nsz float %.sroa.14.0.copyload, %i.aj
  %i.ct = fmul nsz float %.sroa.14.0.copyload, %i.ar
  %i.cu = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.ap, float %i.ct)
  %i.cv = tail call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %i.at, float %i.cu)
  %i.cw = tail call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.av, float %i.cv)
  %i.cx = fmul nsz float %i.x, %i.cw
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.bb, float %i.cr)
  %i.cz = tail call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %i.bp, float %i.cy)
  %i.da = extractelement <2 x float> %i.bt, i64 0 ; 2 uses
  %i.db = tail call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.da, float %i.cz)
  %i.dc = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.ah, float %i.cs)
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %i.bl, float %i.dc)
  %i.de = tail call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.bm, float %i.dd)
  %i.df = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dg = insertelement <2 x float> %i.df, float %.sroa.22.0.copyload, i64 1
  %i.dh = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %i.cq, i64 1
  %i.dj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.cf, <2 x float> %i.di)
  %i.dk = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %.sroa.30.0.copyload, i64 1
  %i.dm = insertelement <2 x float> %i.bq, float %i.y, i64 0
  %i.dn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dm, <2 x float> %i.dj)
  %i.do = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.dn)
  %i.dp = fmul nsz float %.sroa.12.0.copyload, %i.bi
  %i.dq = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.cp, float %i.dp)
  %i.dr = fmul nsz float %.sroa.12.0.copyload, %i.bd
  %i.ds = fmul nsz float %.sroa.12.0.copyload, %i.aj
  %i.dt = fmul nsz float %.sroa.12.0.copyload, %i.ar
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.ap, float %i.dt)
  %i.dv = tail call nsz float @llvm.fmuladd.f32(float %.sroa.20.0.copyload, float %i.at, float %i.du)
  %i.dw = tail call nsz float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float %i.av, float %i.dv)
  %i.dx = fmul nsz float %i.x, %i.dw
  %i.dy = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.bb, float %i.dr)
  %i.dz = tail call nsz float @llvm.fmuladd.f32(float %.sroa.20.0.copyload, float %i.bp, float %i.dy)
  %i.ea = tail call nsz float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float %i.da, float %i.dz)
  %i.eb = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.ah, float %i.ds)
  %i.ec = tail call nsz float @llvm.fmuladd.f32(float %.sroa.20.0.copyload, float %i.bl, float %i.eb)
  %i.ed = tail call nsz float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float %i.bm, float %i.ec)
  %i.ee = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %.sroa.20.0.copyload, i64 1
  %i.eg = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.dq, i64 1
  %i.ei = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.cf, <2 x float> %i.eh)
  %i.ej = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %.sroa.28.0.copyload, i64 1
  %i.el = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.ck, <2 x float> %i.ei)
  %i.em = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.el)
  %i.en = fcmp nsz oeq float %i.cm, 0.000000e+00
  %i.eo = fdiv nsz float 1.000000e+00, %i.cm
  %i.ep = select nsz i1 %i.en, float 1.000000e+00, float %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.er = fpext nsz float %i.em to double
  %i.es = fmul nsz double %i.er, 5.000000e-01
  %i.et = fpext nsz float %i.ep to double
  %i.eu = fmul nsz float %i.do, %i.ep
  %i.ev = fpext nsz float %i.eu to double
  %i.ew = fneg nsz double %i.ev
  %i.ex = load <2 x i32>, ptr %i.eq, align 8, !tbaa !78
  %i.ey = uitofp <2 x i32> %i.ex to <2 x double>
  %i.ez = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.ew, i64 1
  %i.fb = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.et, i64 0
  %i.fc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fb, <2 x double> splat (double 5.000000e-01))
  %i.fd = fmul nsz <2 x double> %i.fc, %i.ey
  %i.fe = fptosi <2 x double> %i.fd to <2 x i32>
  store <2 x i32> %i.fe, ptr %3, align 4, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.cn
}

declare noundef ptr @_ZN6Client15getSceneManagerEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN3Hud15drawLuaElementsERKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.FontSpec, align 4           ; 8 uses
  %5 = alloca %struct.HudElement, align 8         ; 19 uses
  %6 = alloca %struct.HudElement, align 8         ; 19 uses
  %7 = alloca %struct.HudElement, align 8         ; 23 uses
  %8 = alloca %struct.HudElement, align 8         ; 20 uses
  %9 = alloca %"class.core::vector2d.0", align 8  ; 14 uses
  %10 = alloca %"class.video::SColor", align 4    ; 6 uses
  %11 = alloca %class.EnrichedString, align 8     ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 9 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %14 = alloca %class.EnrichedString, align 8     ; 12 uses
  %15 = alloca %"class.core::rect", align 8       ; 6 uses
  %16 = alloca %"class.core::string.460", align 8 ; 11 uses
  %17 = alloca %"class.core::rect", align 8       ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 16 uses
  %19 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 9 uses
  %20 = alloca %"class.core::string.460", align 8 ; 11 uses
  %21 = alloca %"class.core::rect", align 8       ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 16 uses
  %23 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.core::string.460", align 8 ; 11 uses
  %27 = alloca %"class.core::rect", align 8       ; 6 uses
  %28 = alloca [4 x %"class.video::SColor"], align 16 ; 5 uses
  %29 = alloca %"class.core::rect", align 8       ; 6 uses
  %30 = alloca %"class.core::rect", align 8       ; 7 uses
  %31 = alloca %"class.core::rect", align 8       ; 7 uses
  %i.e = load ptr, ptr @g_fontengine, align 8, !tbaa !131 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1324
  %i.g = load i8, ptr %i.f, align 4, !tbaa !460, !range !122, !noundef !123
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1325
  %i.i = load i8, ptr %i.h, align 1, !tbaa !461, !range !122, !noundef !123
  store i32 -1, ptr %4, align 4, !tbaa !464
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 4, ptr %i.j, align 4, !tbaa !465
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %i.g, ptr %i.k, align 1, !tbaa !466
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %i.i, ptr %i.l, align 2, !tbaa !467
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 7
  store i8 1, ptr %i.m, align 1, !tbaa !468
  %i.n = call noundef i32 @_ZN10FontEngine13getTextHeightERK8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %4) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.o = load ptr, ptr @g_fontengine, align 8, !tbaa !131 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1324
  %i.q = load i16, ptr %i.p, align 4
  %i.r = zext i16 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 40
  %.sroa.0.0.insert.insert.i = or disjoint i64 %i.s, 72057615512764415
  %i.t = call noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.o, i64 %.sroa.0.0.insert.insert.i) ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 392
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 400
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !470  ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !471  ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #33
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not1006 = icmp eq ptr %i.y, %i.z
  br i1 %.not1006, label %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.ae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #37 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !72  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 392
  %.pre1158 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !135
  %.phi.trans.insert1159 = getelementptr inbounds nuw i8, ptr %.pre, i64 400
  %.pre1160 = load ptr, ptr %.phi.trans.insert1159, align 8, !tbaa !135
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.ag = phi ptr [ %.pre1160, %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i ], [ %i.y, %bb.b ] ; 2 uses
  %i.ah = phi ptr [ %.pre1158, %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i ], [ %i.z, %bb.b ] ; 2 uses
  %.sroa.31.6 = phi ptr [ %i.af, %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 2 uses
  %.sroa.17.4 = phi ptr [ %i.ae, %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 4 uses
  %.not10071136 = icmp eq ptr %i.ah, %i.ag
  br i1 %.not10071136, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit
  %.sroa.0966.01140 = phi ptr [ %.sroa.0966.1, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.17.4, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ] ; 7 uses
  %.sroa.17.01139 = phi ptr [ %.sroa.17.1, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.17.4, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ] ; 6 uses
  %.sroa.31.01138 = phi ptr [ %.sroa.31.1, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.31.6, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ] ; 3 uses
  %.sroa.0963.01137 = phi ptr [ %i.az, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ], [ %i.ah, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.0963.01137, align 8, !tbaa !137 ; 3 uses
  %.not333 = icmp eq ptr %i.ai, null
  br i1 %.not333, label %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.17.01139, %.sroa.31.01138
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ai, ptr %.sroa.17.01139, align 8, !tbaa !137
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.17.01139, i64 8
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.ak = ptrtoint ptr %.sroa.17.01139 to i64
  %i.al = ptrtoint ptr %.sroa.0966.01140 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 6 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.f, label %_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #33
          to label %.noexc337 unwind label %.loopexit.split-lp1016.loopexit.split-lp

.noexc337:                                        ; preds = %bb.f
  unreachable

_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ao = ashr exact i64 %i.am, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #37
          to label %.noexc338 unwind label %.loopexit.split-lp1016.loopexit.split-lp ; 4 uses

.noexc338:                                        ; preds = %_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.am ; 2 uses
  store ptr %i.ai, ptr %i.av, align 8, !tbaa !137
  %i.aw = icmp sgt i64 %i.am, 0
  br i1 %i.aw, label %bb.g, label %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.g:                                             ; preds = %.noexc338
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %.sroa.0966.01140, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.g, %.noexc338
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0966.01140, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0966.01140, i64 noundef %i.am) #35
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit

.loopexit.split-lp1016.loopexit.split-lp:         ; preds = %_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.d, %.lr.ph
  %.sroa.31.1 = phi ptr [ %.sroa.31.01138, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.31.01138, %bb.d ] ; 2 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.01139, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.aj, %bb.d ] ; 2 uses
  %.sroa.0966.1 = phi ptr [ %.sroa.0966.01140, %.lr.ph ], [ %i.au, %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0966.01140, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0963.01137, i64 8 ; 2 uses
  %.not1007 = icmp eq ptr %i.az, %i.ag
  br i1 %.not1007, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit
  %.sroa.31.0.lcssa = phi ptr [ %.sroa.31.6, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ], [ %.sroa.31.1, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ] ; 6 uses
  %.sroa.17.0.lcssa = phi ptr [ %.sroa.17.4, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ], [ %.sroa.17.1, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %.sroa.0966.0.lcssa = phi ptr [ %.sroa.17.4, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ], [ %.sroa.0966.1, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
end_hunk_1
begin_hunk_2_@_ZN3Hud15drawLuaElementsERKN4core8vector3dIsEE:bb.a
  %i.fq = ptrtoint ptr %.sroa.31.2 to i64
  %i.fr = ptrtoint ptr %.sroa.0966.2 to i64
  %i.fs = sub i64 %i.fq, %i.fr                    ; 6 uses
  %i.ft = icmp eq i64 %i.fs, 9223372036854775800
  br i1 %i.ft, label %bb.s, label %_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i375

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #33
          to label %.noexc381 unwind label %bb.v

.noexc381:                                        ; preds = %bb.s
  unreachable

_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i375: ; preds = %bb.r
  %i.fu = ashr exact i64 %i.fs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i376 = call i64 @llvm.umax.i64(i64 %i.fu, i64 1)
  %i.fv = add nsw i64 %.sroa.speculated.i.i.i.i376, %i.fu ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.fu
  %i.fx = call i64 @llvm.umin.i64(i64 %i.fv, i64 1152921504606846975)
  %i.fy = select i1 %i.fw, i64 1152921504606846975, i64 %i.fx ; 3 uses
  %.not.i.i.i.i377 = icmp ne i64 %i.fy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i377)
  %i.fz = shl nuw nsw i64 %i.fy, 3
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #37
          to label %.noexc382 unwind label %bb.v  ; 4 uses

.noexc382:                                        ; preds = %_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i375
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 %i.fs ; 2 uses
  store ptr %6, ptr %i.gb, align 8, !tbaa !137
  %i.gc = icmp sgt i64 %i.fs, 0
  br i1 %i.gc, label %bb.t, label %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i378

bb.t:                                             ; preds = %.noexc382
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ga, ptr align 8 %.sroa.0966.2, i64 %i.fs, i1 false)
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i378

_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i378: ; preds = %bb.t, %.noexc382
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.not.i17.i.i.i379 = icmp eq ptr %.sroa.0966.2, null
  br i1 %.not.i17.i.i.i379, label %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i380, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i378
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0966.2, i64 noundef %i.fs) #35
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i380

_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i380: ; preds = %bb.u, %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i378
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fy
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backEOS1_.exit383

bb.v:                                             ; preds = %_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i375, %bb.s
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIP10HudElementSaIS1_EE9push_backEOS1_.exit383: ; preds = %bb.q, %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i380, %bb.p, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backEOS1_.exit
  %.sroa.31.3 = phi ptr [ %.sroa.31.2, %bb.p ], [ %.sroa.31.2, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backEOS1_.exit ], [ %i.ge, %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i380 ], [ %.sroa.31.2, %bb.q ] ; 3 uses
  %.sroa.17.3 = phi ptr [ %.sroa.17.2, %bb.p ], [ %.sroa.17.2, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backEOS1_.exit ], [ %i.gd, %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i380 ], [ %i.fp, %bb.q ] ; 7 uses
  %.sroa.0966.3 = phi ptr [ %.sroa.0966.2, %bb.p ], [ %.sroa.0966.2, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backEOS1_.exit ], [ %i.ga, %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i380 ], [ %.sroa.0966.2, %bb.q ] ; 13 uses
  %i.gg = icmp eq ptr %.sroa.0966.3, %.sroa.17.3
  br i1 %i.gg, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backEOS1_.exit383
  %i.gh = ptrtoint ptr %.sroa.17.3 to i64         ; 2 uses
  %i.gi = ptrtoint ptr %.sroa.0966.3 to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = ashr exact i64 %i.gj, 3                 ; 2 uses
  %i.gl = add nsw i64 %i.gk, 1
  %i.gm = sdiv i64 %i.gl, 2                       ; 4 uses
  %i.gn = icmp sgt i64 %i.gk, 0
  br i1 %i.gn, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEES3_EC2ES8_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.gs, %select.unfold.i.i.i.i ], [ %i.gm, %bb.w ] ; 4 uses
  %i.go = shl nuw nsw i64 %.010.i.i.i.i, 3
  %i.gp = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.go, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #38 ; 2 uses
  %.not.i.i.i.i390 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i390, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEES3_EC2ES8_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.gq = icmp eq i64 %.010.i.i.i.i, 1
  %i.gr = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.gs = lshr i64 %i.gr, 1
  br i1 %i.gq, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEES3_EC2ES8_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !438

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEES3_EC2ES8_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %.lr.ph.i.i.i.i, %bb.w
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.w ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 4 uses
  %.sroa.12.0.i.i = phi ptr [ null, %bb.w ], [ %i.gp, %.lr.ph.i.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 7 uses
  %i.gt = icmp eq i64 %i.gm, %.sroa.5.0.i.i
  br i1 %i.gt, label %bb.x, label %bb.z, !prof !328

bb.x:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEES3_EC2ES8_l.exit.i.i
  %i.gu = getelementptr inbounds [8 x i8], ptr %.sroa.0966.3, i64 %i.gm ; 4 uses
  call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN3Hud15drawLuaElementsERKN4core8vector3dIsEEE3$_0EEEvT_SJ_T0_T1_"(ptr %.sroa.0966.3, ptr %i.gu, ptr noundef %.sroa.12.0.i.i)
  call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN3Hud15drawLuaElementsERKN4core8vector3dIsEEE3$_0EEEvT_SJ_T0_T1_"(ptr %i.gu, ptr %.sroa.17.3, ptr noundef %.sroa.12.0.i.i)
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = sub i64 %i.gh, %i.gv
  %i.gx = ashr exact i64 %i.gw, 3
  call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN3Hud15drawLuaElementsERKN4core8vector3dIsEEE3$_0EEEvT_SJ_SJ_T0_SK_T1_T2_"(ptr %.sroa.0966.3, ptr %i.gu, ptr %.sroa.17.3, i64 noundef %i.gm, i64 noundef %i.gx, ptr noundef %.sroa.12.0.i.i)
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEEZN3Hud15drawLuaElementsERKN4core8vector3dIsEEE3$_0EvT_SG_T0_.exit"

bb.y:                                             ; preds = %bb.ab, %bb.aa
  %i.gy = landingpad { ptr, i32 }
          cleanup
  %i.gz = shl i64 %.sroa.5.0.i.i, 3
  call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i, i64 noundef %i.gz) #34
  br label %.body

bb.z:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEES3_EC2ES8_l.exit.i.i
  %i.ha = icmp eq ptr %.sroa.12.0.i.i, null
  br i1 %i.ha, label %bb.aa, label %bb.ab, !prof !329

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3Hud15drawLuaElementsERKN4core8vector3dIsEEE3$_0EEEvT_SJ_T0_"(ptr %.sroa.0966.3, ptr %.sroa.17.3)
          to label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEEZN3Hud15drawLuaElementsERKN4core8vector3dIsEEE3$_0EvT_SG_T0_.exit" unwind label %bb.y

bb.ab:                                            ; preds = %bb.z
  invoke fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN3Hud15drawLuaElementsERKN4core8vector3dIsEEE3$_0EEEvT_SJ_T0_T1_T2_"(ptr %.sroa.0966.3, ptr %.sroa.17.3, ptr noundef nonnull %.sroa.12.0.i.i, i64 noundef %.sroa.5.0.i.i)
          to label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEEZN3Hud15drawLuaElementsERKN4core8vector3dIsEEE3$_0EvT_SG_T0_.exit" unwind label %bb.y

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEEZN3Hud15drawLuaElementsERKN4core8vector3dIsEEE3$_0EvT_SG_T0_.exit": ; preds = %bb.x, %bb.aa, %bb.ab
  %i.hb = shl i64 %.sroa.5.0.i.i, 3
  call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i, i64 noundef %i.hb) #34
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hj = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hl = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %30, i64 12
  %i.hn = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.hx = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.hy = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.hz = getelementptr inbounds nuw i8, ptr %22, i64 80 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  %i.if = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 6 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.il = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.im = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.in = getelementptr i8, ptr %i.il, i64 -24
  %i.io = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %22, i64 96 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.ir = getelementptr inbounds nuw i8, ptr %22, i64 112
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.not.i568 = icmp eq ptr @_ZTH13warningstream, null
  %i.it = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.iy = uitofp nsz i32 %i.n to float
  %i.iz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 8 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.jf = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.jg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ji = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.jj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.not.i736 = icmp eq ptr @_ZTH10infostream, null
  %i.jk = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEEZN3Hud15drawLuaElementsERKN4core8vector3dIsEEE3$_0EvT_SG_T0_.exit", %.critedge.thread
  %.sroa.0948.01148 = phi ptr [ %.sroa.0966.3, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEEZN3Hud15drawLuaElementsERKN4core8vector3dIsEEE3$_0EvT_SG_T0_.exit" ], [ %i.ani, %.critedge.thread ] ; 2 uses
  %i.jl = load ptr, ptr %.sroa.0948.01148, align 8, !tbaa !137 ; 62 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jn = load i32, ptr %i.hc, align 8, !tbaa !492 ; 2 uses
  %i.jo = uitofp nsz i32 %i.jn to float
  %i.jp = load <2 x float>, ptr %i.jm, align 4, !tbaa !58
  %i.jq = load i32, ptr %i.hd, align 4, !tbaa !493 ; 2 uses
  %i.jr = uitofp nsz i32 %i.jq to float
  %i.js = insertelement <2 x float> poison, float %i.jo, i64 0
  %i.jt = insertelement <2 x float> %i.js, float %i.jr, i64 1
  %i.ju = fmul nsz <2 x float> %i.jp, %i.jt
  %i.jv = fpext <2 x float> %i.ju to <2 x double>
  %i.jw = fadd nsz <2 x double> %i.jv, splat (double 5.000000e-01)
  %i.jx = call nsz <2 x double> @llvm.floor.v2f64(<2 x double> %i.jw)
  %i.jy = fptosi <2 x double> %i.jx to <2 x i32>  ; 5 uses
  store <2 x i32> %i.jy, ptr %9, align 8, !tbaa !78
  %i.jz = load i32, ptr %i.jl, align 8, !tbaa !141
  switch i32 %i.jz, label %bb.ew [
    i32 1, label %bb.ad
    i32 2, label %bb.bp
    i32 3, label %bb.bq
    i32 4, label %bb.cd
    i32 5, label %bb.do
    i32 0, label %bb.dq
    i32 6, label %bb.dz
    i32 7, label %bb.eo
    i32 8, label %bb.ev
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ka = load ptr, ptr @g_fontengine, align 8, !tbaa !131
  %i.kb = invoke noundef i32 @_ZN10FontEngine18getDefaultFontSizeEv(ptr noundef nonnull align 8 dereferenceable(1327) %i.ka)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jl, i64 128
  %i.kd = load float, ptr %i.kc, align 8, !tbaa !494 ; 2 uses
  %i.ke = fcmp nsz ogt float %i.kd, 0.000000e+00
  %i.kf = uitofp nsz i32 %i.kb to float
  %i.kg = fmul nsz float %i.kd, %i.kf
  %i.kh = fptoui float %i.kg to i32
  %.0256 = select i1 %i.ke, i32 %i.kh, i32 %i.kb
  %i.ki = load ptr, ptr @g_fontengine, align 8, !tbaa !131
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jl, i64 176
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !327 ; 3 uses
  %i.kl = and i32 %i.kk, 4
  %.not311 = icmp eq i32 %i.kl, 0
  %i.km = and i32 %i.kk, 1
  %.sroa.3.0.insert.ext = zext nneg i32 %i.km to i64
  %i.kn = lshr i32 %i.kk, 1
  %i.ko = and i32 %i.kn, 1
  %.sroa.4945.0.insert.ext = zext nneg i32 %i.ko to i64
  %.sroa.4945.0.insert.shift = shl nuw nsw i64 %.sroa.4945.0.insert.ext, 48
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 40
  %.sroa.4945.0.insert.insert = or disjoint i64 %.sroa.4945.0.insert.shift, %.sroa.3.0.insert.shift
  %.sroa.2944.0.insert.ext = select i1 %.not311, i64 17179869184, i64 4294967296
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.4945.0.insert.insert, %.sroa.2944.0.insert.ext
  %.sroa.0943.0.insert.ext = zext i32 %.0256 to i64
  %.sroa.2944.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, %.sroa.0943.0.insert.ext
  %.sroa.0943.0.insert.insert = or disjoint i64 %.sroa.2944.0.insert.insert, 72057594037927936
  %i.kp = invoke noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.ki, i64 %.sroa.0943.0.insert.insert)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

bb.af:                                            ; preds = %bb.ae
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !69
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = invoke noundef i32 %i.ks(ptr noundef nonnull align 8 dereferenceable(8) %i.kp)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %.not1010 = icmp eq i32 %i.kt, 3
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jl, i64 88
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !489 ; 3 uses
  %i.kw = icmp ult i32 %i.kv, 16777216
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.kx = and i32 %i.kv, -16777216
  %i.ky = select i1 %i.kw, i32 -16777216, i32 %i.kx
  %i.kz = and i32 %i.kv, 16777215
  %i.la = or disjoint i32 %i.ky, %i.kz
  store i32 %i.la, ptr %10, align 4, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !77
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jl, i64 64
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !22
  invoke void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.449") align 8 %13, i64 %i.le, ptr %i.lc)
          to label %bb.ah unwind label %bb.av

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  store ptr %i.iu, ptr %12, align 8, !tbaa !333, !alias.scope !495
  store i64 0, ptr %i.iv, align 8, !tbaa !335, !alias.scope !495
  store i32 0, ptr %i.iu, align 8, !tbaa !337, !alias.scope !495
  %i.lf = load i64, ptr %i.iw, align 8, !tbaa !335, !noalias !495
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.lf)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i:                                     ; preds = %bb.ah
  %i.lg = load i64, ptr %i.iw, align 8, !tbaa !335, !noalias !495 ; 2 uses
  %.not19.i = icmp eq i64 %i.lg, 0
  br i1 %.not19.i, label %_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.al
  %i.lh = phi i64 [ %i.lw, %bb.al ], [ %i.lg, %.preheader.i ] ; 2 uses
  %.017.i = phi i64 [ %i.ma, %bb.al ], [ 0, %.preheader.i ] ; 3 uses
  %i.li = load ptr, ptr %13, align 8, !tbaa !338, !noalias !495 ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %.017.i
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !337 ; 2 uses
  %i.ll = icmp eq i32 %i.lk, 92
  br i1 %i.ll, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i
  %i.lm = add nuw i64 %.017.i, 1                  ; 3 uses
  %.not.i392 = icmp ult i64 %i.lm, %i.lh
  br i1 %.not.i392, label %._crit_edge21.i, label %_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit

._crit_edge21.i:                                  ; preds = %bb.ai
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.lm
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !337
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge21.i, %.lr.ph.i
  %i.ln = phi i32 [ %.pre.i, %._crit_edge21.i ], [ %i.lk, %.lr.ph.i ]
  %.1.i = phi i64 [ %i.lm, %._crit_edge21.i ], [ %.017.i, %.lr.ph.i ]
  %i.lo = load i64, ptr %i.iv, align 8, !tbaa !335, !alias.scope !495 ; 4 uses
  %i.lp = add i64 %i.lo, 1                        ; 3 uses
  %i.lq = load ptr, ptr %12, align 8, !tbaa !338, !alias.scope !495 ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.iu
  br i1 %i.lr, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.aj
  %i.ls = icmp ult i64 %i.lo, 4
  call void @llvm.assume(i1 %i.ls)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aj
  %i.lt = load i64, ptr %i.iu, align 8, !tbaa !23, !alias.scope !495
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.lu = phi i64 [ %i.lt, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.lv = icmp ugt i64 %i.lp, %i.lu
  br i1 %i.lv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.lo, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i391 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i391:                                      ; preds = %bb.ak
  %.pre.i.i.i = load ptr, ptr %12, align 8, !tbaa !338, !alias.scope !495
  %.pre22.i = load i64, ptr %i.iw, align 8, !tbaa !335, !noalias !495
  br label %bb.al

bb.al:                                            ; preds = %.noexc.i391, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i
  %i.lw = phi i64 [ %.pre22.i, %.noexc.i391 ], [ %i.lh, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i ] ; 2 uses
  %i.lx = phi ptr [ %.pre.i.i.i, %.noexc.i391 ], [ %i.lq, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.lo
  store i32 %i.ln, ptr %i.ly, align 4, !tbaa !337
  store i64 %i.lp, ptr %i.iv, align 8, !tbaa !335, !alias.scope !495
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.lp
  store i32 0, ptr %i.lz, align 4, !tbaa !337
  %i.ma = add nuw i64 %.1.i, 1                    ; 2 uses
  %i.mb = icmp ult i64 %i.ma, %i.lw
  br i1 %i.mb, label %.lr.ph.i, label %_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, !llvm.loop !441

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ak, %bb.ah
  %lpad.loopexit.split-lp1322 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mc = load ptr, ptr %12, align 8, !tbaa !338, !alias.scope !495 ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.iu
  br i1 %i.md, label %.body393, label %.body393.sink.split

_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit: ; preds = %bb.al, %bb.ai, %.preheader.i
  %i.me = load ptr, ptr %12, align 8, !tbaa !338
  %i.mf = load i64, ptr %i.iv, align 8, !tbaa !335
  invoke void @_ZN14EnrichedStringC1ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %11, i64 %i.mf, ptr %i.me, ptr noundef nonnull align 4 dereferenceable(4) %10)
          to label %bb.am unwind label %bb.aw

bb.am:                                            ; preds = %_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit
  %i.mg = load ptr, ptr %12, align 8, !tbaa !338  ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.iu
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.am
  %i.mi = load i64, ptr %i.iu, align 8, !tbaa !23
  %i.mj = shl i64 %i.mi, 2
  %i.mk = add i64 %i.mj, 4
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mk) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.ml = load ptr, ptr %13, align 8, !tbaa !338  ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.ix
  br i1 %i.mm, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i397

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i397: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.mn = load i64, ptr %i.ix, align 8, !tbaa !23
  %i.mo = shl i64 %i.mn, 2
  %i.mp = add i64 %i.mo, 4
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mp) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit399

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit399: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i397
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.mq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK14EnrichedString9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(80) %11)
          to label %bb.an unwind label %bb.ax

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit399
end_hunk_2
begin_hunk_3_@_ZN3Hud15drawLuaElementsERKN4core8vector3dIsEE:bb.a
  %i.aci = add i64 %i.ach, 4
  call void @_ZdlPvm(ptr noundef %.sink1311, i64 noundef %i.aci) #35
  br label %.body595

.body595:                                         ; preds = %.body595.sink.split, %bb.de, %bb.cj
  %.pn298 = phi { ptr, i32 } [ %i.wq, %bb.cj ], [ %i.acd, %bb.de ], [ %.pn298.ph, %.body595.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %bb.dn

bb.df:                                            ; preds = %bb.cm
  %i.acj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dg:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ack = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694

bb.dh:                                            ; preds = %bb.cr
  %i.acl = landingpad { ptr, i32 }
          cleanup
  br label %.body642

.body642:                                         ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit7.i635, %bb.dh
  %eh.lpad-body643 = phi { ptr, i32 } [ %i.acl, %bb.dh ], [ %i.zg, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit7.i635 ] ; 2 uses
  %i.acm = load ptr, ptr %24, align 8, !tbaa !338 ; 2 uses
  %i.acn = icmp eq ptr %i.acm, %i.ih
  br i1 %i.acn, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i692

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i692: ; preds = %.body642
  %i.aco = load i64, ptr %i.ih, align 8, !tbaa !23
  %i.acp = shl i64 %i.aco, 2
  %i.acq = add i64 %i.acp, 4
  call void @_ZdlPvm(ptr noundef %i.acm, i64 noundef %i.acq) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694: ; preds = %.body642, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i692, %bb.dg
  %.pn300 = phi { ptr, i32 } [ %i.ack, %bb.dg ], [ %eh.lpad-body643, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i692 ], [ %eh.lpad-body643, %.body642 ] ; 2 uses
  %i.acr = load ptr, ptr %25, align 8, !tbaa !77  ; 2 uses
  %i.acs = icmp eq ptr %i.acr, %i.hu
  br i1 %i.acs, label %.body628, label %.body628.sink.split

.body628.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694, %bb.cp
  %.sink1315 = phi ptr [ %i.yt, %bb.cp ], [ %i.acr, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694 ]
  %.pn300.pn.ph = phi { ptr, i32 } [ %i.ys, %bb.cp ], [ %.pn300, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694 ]
  %i.act = load i64, ptr %i.hu, align 8, !tbaa !23
  %i.acu = add i64 %i.act, 1
  call void @_ZdlPvm(ptr noundef %.sink1315, i64 noundef %i.acu) #35
  br label %.body628

.body628:                                         ; preds = %.body628.sink.split, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694, %bb.cp
  %.pn300.pn = phi { ptr, i32 } [ %i.ys, %bb.cp ], [ %.pn300, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694 ], [ %.pn300.pn.ph, %.body628.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  br label %bb.dk

bb.di:                                            ; preds = %_ZNSolsEf.exit, %bb.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dj:                                            ; preds = %bb.cz
  %i.acw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #34
  %i.acx = load ptr, ptr %26, align 8, !tbaa !338 ; 2 uses
  %i.acy = icmp eq ptr %i.acx, %i.ii
  br i1 %i.acy, label %.body659, label %.body659.sink.split

.body659.sink.split:                              ; preds = %bb.dj, %bb.cy
  %.sink1318 = phi ptr [ %i.aaw, %bb.cy ], [ %i.acx, %bb.dj ]
  %.pn303.ph = phi { ptr, i32 } [ %i.aav, %bb.cy ], [ %i.acw, %bb.dj ]
  %i.acz = load i64, ptr %i.ii, align 8, !tbaa !23
  %i.ada = shl i64 %i.acz, 2
  %i.adb = add i64 %i.ada, 4
  call void @_ZdlPvm(ptr noundef %.sink1318, i64 noundef %i.adb) #35
  br label %.body659

.body659:                                         ; preds = %.body659.sink.split, %bb.dj, %bb.cy
  %.pn303 = phi { ptr, i32 } [ %i.aav, %bb.cy ], [ %i.acw, %bb.dj ], [ %.pn303.ph, %.body659.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #34
  br label %bb.dk

bb.dk:                                            ; preds = %.body628, %bb.di, %.body659
  %.pn303.pn.pn = phi { ptr, i32 } [ %.pn300.pn, %.body628 ], [ %.pn303, %.body659 ], [ %i.acv, %bb.di ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %22) #34
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.df
  %.pn303.pn.pn.pn = phi { ptr, i32 } [ %.pn303.pn.pn, %bb.dk ], [ %i.acj, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  br label %bb.dn

bb.dm:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZN4core6stringIwED2Ev.exit620
  %i.adc = load ptr, ptr %18, align 8, !tbaa !338 ; 2 uses
  %i.add = icmp eq ptr %i.adc, %i.id
  br i1 %i.add, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit704, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i702

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i702: ; preds = %bb.dm
  %i.ade = load i64, ptr %i.id, align 8, !tbaa !23
  %i.adf = shl i64 %i.ade, 2
  %i.adg = add i64 %i.adf, 4
  call void @_ZdlPvm(ptr noundef %i.adc, i64 noundef %i.adg) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit704

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit704: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i702
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %.critedge.thread

bb.dn:                                            ; preds = %bb.dl, %.body595, %bb.dd
  %.pn303.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn303.pn.pn.pn, %bb.dl ], [ %.pn298, %.body595 ], [ %i.acc, %bb.dd ] ; 2 uses
  %i.adh = load ptr, ptr %18, align 8, !tbaa !338 ; 2 uses
  %i.adi = icmp eq ptr %i.adh, %i.id
  br i1 %i.adi, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit707, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i705

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i705: ; preds = %bb.dn
  %i.adj = load i64, ptr %i.id, align 8, !tbaa !23
  %i.adk = shl i64 %i.adj, 2
  %i.adl = add i64 %i.adk, 4
  call void @_ZdlPvm(ptr noundef %i.adh, i64 noundef %i.adl) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit707

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit707: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i705, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit687
  %.pn303.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn296, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit687 ], [ %.pn303.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i705 ], [ %.pn303.pn.pn.pn.pn, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %.loopexit.split-lp

bb.do:                                            ; preds = %bb.ac
  %i.adm = invoke noundef zeroext i1 @_ZN3Hud18calculateScreenPosERKN4core8vector3dIsEEP10HudElementPNS0_8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull align 2 dereferenceable(6) %1, ptr noundef nonnull %i.jl, ptr noundef nonnull %9)
          to label %bb.dp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dp:                                            ; preds = %bb.do
  br i1 %i.adm, label %bb.dq, label %.critedge.thread

bb.dq:                                            ; preds = %bb.dp, %bb.ac
  %i.adn = load ptr, ptr %i.hg, align 8, !tbaa !79 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %i.adp = load ptr, ptr %i.adn, align 8, !tbaa !69
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 16
  %i.adr = load ptr, ptr %i.adq, align 8
  %i.ads = invoke noundef ptr %i.adr(ptr noundef nonnull align 8 dereferenceable(8) %i.adn, ptr noundef nonnull align 8 dereferenceable(32) %i.ado, ptr noundef null)
          to label %bb.dr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.dr:                                            ; preds = %bb.dq
  %.not290.not = icmp eq ptr %i.ads, null
  br i1 %.not290.not, label %.critedge.thread, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #34
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %28, i8 -1, i64 16, i1 false)
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !361 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ads, i64 76
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !362 ; 2 uses
  %i.adx = sitofp nsz i32 %i.adu to float
  %i.ady = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.adz = load float, ptr %i.ady, align 8, !tbaa !339 ; 3 uses
  %i.aea = fmul nsz float %i.adz, %i.adx
  %i.aeb = load float, ptr %i.hf, align 4, !tbaa !116 ; 3 uses
  %i.aec = fmul nsz float %i.aea, %i.aeb
  %i.aed = fptosi float %i.aec to i32
  %i.aee = sitofp nsz i32 %i.adw to float
  %i.aef = getelementptr inbounds nuw i8, ptr %i.jl, i64 52
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !340 ; 3 uses
  %i.aeh = fmul nsz float %i.aeg, %i.aee
  %i.aei = fmul nsz float %i.aeb, %i.aeh
  %i.aej = fptosi float %i.aei to i32
  %i.aek = fcmp nsz olt float %i.adz, 0.000000e+00
  br i1 %i.aek, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.ael = load i32, ptr %i.hc, align 8, !tbaa !492
  %i.aem = uitofp nsz i32 %i.ael to double
  %i.aen = fpext nnan nsz float %i.adz to double
  %i.aeo = fmul nnan nsz double %i.aen, -1.000000e-02
  %i.aep = fmul nsz double %i.aeo, %i.aem
  %i.aeq = fptosi double %i.aep to i32
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.sroa.0850.0 = phi i32 [ %i.aeq, %bb.dt ], [ %i.aed, %bb.ds ]
  %i.aer = fcmp nsz olt float %i.aeg, 0.000000e+00
  br i1 %i.aer, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.aes = load i32, ptr %i.hd, align 4, !tbaa !493
  %i.aet = uitofp nsz i32 %i.aes to double
  %i.aeu = fpext nnan nsz float %i.aeg to double
  %i.aev = fmul nnan nsz double %i.aeu, -1.000000e-02
  %i.aew = fmul nsz double %i.aev, %i.aet
  %i.aex = fptosi double %i.aew to i32
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.sroa.7852.0 = phi i32 [ %i.aex, %bb.dv ], [ %i.aej, %bb.du ]
  %i.aey = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  %i.aez = insertelement <2 x i32> poison, i32 %.sroa.0850.0, i64 0
  %i.afa = insertelement <2 x i32> %i.aez, i32 %.sroa.7852.0, i64 1 ; 2 uses
  %i.afb = sitofp <2 x i32> %i.afa to <2 x double>
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #34
  %i.afc = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %i.afd = load <2 x float>, ptr %i.aey, align 4, !tbaa !58
  %i.afe = fpext <2 x float> %i.afd to <2 x double>
  %i.aff = fadd nsz <2 x double> %i.afe, splat (double -1.000000e+00)
  %i.afg = fmul nsz <2 x double> %i.aff, %i.afb
  %i.afh = fmul nsz <2 x double> %i.afg, splat (double 5.000000e-01)
  %i.afi = fptosi <2 x double> %i.afh to <2 x i32>
  %i.afj = load <2 x i32>, ptr %9, align 8, !tbaa !78
  %i.afk = add nsw <2 x i32> %i.afj, %i.afi
  %i.afl = load <2 x float>, ptr %i.afc, align 4, !tbaa !58
  %i.afm = insertelement <2 x float> poison, float %i.aeb, i64 0
  %i.afn = shufflevector <2 x float> %i.afm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afo = fmul nsz <2 x float> %i.afn, %i.afl
  %i.afp = fptosi <2 x float> %i.afo to <2 x i32>
  %i.afq = add nsw <2 x i32> %i.afk, %i.afp       ; 2 uses
  store <2 x i32> %i.afq, ptr %29, align 8, !tbaa !78
  %i.afr = add nsw <2 x i32> %i.afq, %i.afa
  store <2 x i32> %i.afr, ptr %i.hj, align 8, !tbaa !78
  %i.afs = load ptr, ptr %i.hk, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #34
  store i64 0, ptr %30, align 8, !tbaa !78
  store i32 %i.adu, ptr %i.hl, align 8, !tbaa !358
  store i32 %i.adw, ptr %i.hm, align 4, !tbaa !359
  invoke void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.afs, ptr noundef nonnull %i.ads, ptr noundef nonnull align 4 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %30, ptr noundef null, ptr noundef nonnull %28, i1 noundef zeroext true)
          to label %bb.dx unwind label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #34
  br label %.critedge.thread

bb.dy:                                            ; preds = %bb.dw
  %i.aft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #34
  br label %.loopexit.split-lp

bb.dz:                                            ; preds = %bb.ac
  %i.afu = load ptr, ptr %i.hg, align 8, !tbaa !79 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %i.afw = load ptr, ptr %i.afu, align 8, !tbaa !69
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 16
  %i.afy = load ptr, ptr %i.afx, align 8
  %i.afz = invoke noundef ptr %i.afy(ptr noundef nonnull align 8 dereferenceable(8) %i.afu, ptr noundef nonnull align 8 dereferenceable(32) %i.afv, ptr noundef null)
          to label %bb.ea unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ea:                                            ; preds = %bb.dz
  %.not281 = icmp eq ptr %i.afz, null
  br i1 %.not281, label %.critedge.thread, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aga = getelementptr inbounds nuw i8, ptr %i.jl, i64 128
  %i.agb = load float, ptr %i.aga, align 8, !tbaa !494 ; 3 uses
  %i.agc = fptosi float %i.agb to i32
  %i.agd = getelementptr inbounds nuw i8, ptr %i.jl, i64 132
  %i.age = load float, ptr %i.agd, align 4, !tbaa !528 ; 3 uses
  %i.agf = fptosi float %i.age to i32
  %i.agg = fcmp nsz olt float %i.agb, 0.000000e+00
  br i1 %i.agg, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.agh = load i32, ptr %i.hc, align 8, !tbaa !492
  %i.agi = uitofp nsz i32 %i.agh to double
  %i.agj = fpext nnan nsz float %i.agb to double
  %i.agk = fmul nnan nsz double %i.agj, -1.000000e-02
  %i.agl = fmul nsz double %i.agk, %i.agi
  %i.agm = fptosi double %i.agl to i32
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.sroa.0832.0 = phi i32 [ %i.agm, %bb.ec ], [ %i.agc, %bb.eb ] ; 3 uses
  %i.agn = fcmp nsz olt float %i.age, 0.000000e+00
  br i1 %i.agn, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.ago = load i32, ptr %i.hd, align 4, !tbaa !493
  %i.agp = uitofp nsz i32 %i.ago to double
  %i.agq = fpext nnan nsz float %i.age to double
  %i.agr = fmul nnan nsz double %i.agq, -1.000000e-02
  %i.ags = fmul nsz double %i.agr, %i.agp
  %i.agt = fptosi double %i.ags to i32
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.sroa.8.0 = phi i32 [ %i.agt, %bb.ee ], [ %i.agf, %bb.ed ] ; 3 uses
  %i.agu = icmp slt i32 %.sroa.0832.0, 1
  %i.agv = icmp slt i32 %.sroa.8.0, 1
  %or.cond = select i1 %i.agu, i1 true, i1 %i.agv
  br i1 %or.cond, label %.loopexit.sink.split, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.agw = load ptr, ptr %i.by, align 8, !tbaa !71
  %i.agx = invoke noundef ptr @_ZN6Client15getSceneManagerEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.agw)
          to label %bb.eh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.eh:                                            ; preds = %bb.eg
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !69
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 112
  %i.aha = load ptr, ptr %i.agz, align 8
  %i.ahb = invoke noundef ptr %i.aha(ptr noundef nonnull align 8 dereferenceable(8) %i.agx)
          to label %bb.ei unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ei:                                            ; preds = %bb.eh
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !69
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 80
  %i.ahe = load ptr, ptr %i.ahd, align 8
  %i.ahf = invoke noundef nonnull align 4 dereferenceable(64) ptr %i.ahe(ptr noundef nonnull align 8 dereferenceable(218) %i.ahb)
          to label %bb.ej unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.ej:                                            ; preds = %bb.ei
  %i.ahg = load <2 x float>, ptr %i.ahf, align 4
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16
  %i.ahi = load <2 x float>, ptr %i.ahh, align 4
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahf, i64 32
  %i.ahk = load <2 x float>, ptr %i.ahj, align 4
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !58
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahf, i64 24
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !58
  %i.ahp = insertelement <2 x float> %i.ahi, float %i.aho, i64 1
  %i.ahq = fmul nsz <2 x float> %i.ahp, zeroinitializer
  %i.ahr = insertelement <2 x float> %i.ahg, float %i.ahm, i64 1
  %i.ahs = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahr, <2 x float> zeroinitializer, <2 x float> %i.ahq)
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahf, i64 40
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !58
  %i.ahv = insertelement <2 x float> %i.ahk, float %i.ahu, i64 1
  %i.ahw = fadd nsz <2 x float> %i.ahv, %i.ahs
  %i.ahx = fpext <2 x float> %i.ahw to <2 x double> ; 2 uses
  %i.ahy = extractelement <2 x double> %i.ahx, i64 0
  %i.ahz = extractelement <2 x double> %i.ahx, i64 1
  %i.aia = call nsz double @llvm.atan2.f64(double %i.ahy, double %i.ahz)
  %i.aib = fmul nsz double %i.aia, f0x404CA5DC1A63C1F8 ; 2 uses
  %i.aic = fptrunc nsz double %i.aib to float     ; 2 uses
  %i.aid = fcmp nsz olt double %i.aib, f0xB690000000000000
  %i.aie = fadd nsz float %i.aic, 3.600000e+02
  %storemerge.i = select i1 %i.aid, float %i.aie, float %i.aic ; 3 uses
  %i.aif = fcmp nsz ult float %storemerge.i, 3.600000e+02
  %i.aig = fadd nsz float %storemerge.i, -3.600000e+02
  %storemerge7.i = select i1 %i.aif, float %storemerge.i, float %i.aig
  %i.aih = fneg nsz float %storemerge7.i
  %i.aii = fptosi float %i.aih to i32
  %i.aij = getelementptr inbounds nuw i8, ptr %i.jl, i64 88
  %i.aik = load i32, ptr %i.aij, align 8, !tbaa !489
  %i.ail = add nsw i32 %i.aik, %i.aii
  %i.aim = srem i32 %i.ail, 360                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #34
  %i.ain = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  %i.aio = uitofp nneg i32 %.sroa.0832.0 to double
  %i.aip = uitofp nneg i32 %.sroa.8.0 to double
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %i.air = load <1 x float>, ptr %i.hi, align 8
  %i.ais = load <2 x float>, ptr %i.ain, align 4, !tbaa !58
  %i.ait = fpext <2 x float> %i.ais to <2 x double>
  %i.aiu = fadd nsz <2 x double> %i.ait, splat (double -1.000000e+00)
  %i.aiv = insertelement <2 x double> poison, double %i.aio, i64 0
  %i.aiw = insertelement <2 x double> %i.aiv, double %i.aip, i64 1
  %i.aix = fmul nsz <2 x double> %i.aiu, %i.aiw
  %i.aiy = fmul nsz <2 x double> %i.aix, splat (double 5.000000e-01)
  %i.aiz = fptosi <2 x double> %i.aiy to <2 x i32>
  %i.aja = add nsw <2 x i32> %i.aiz, %i.jy
  %i.ajb = load <2 x float>, ptr %i.aiq, align 4, !tbaa !58
  %i.ajc = shufflevector <1 x float> %i.air, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ajd = fmul nsz <2 x float> %i.ajc, %i.ajb
  %i.aje = fptosi <2 x float> %i.ajd to <2 x i32>
  %i.ajf = add nsw <2 x i32> %i.aja, %i.aje       ; 2 uses
  store <2 x i32> %i.ajf, ptr %31, align 8, !tbaa !78
  %i.ajg = insertelement <2 x i32> poison, i32 %.sroa.0832.0, i64 0
  %i.ajh = insertelement <2 x i32> %i.ajg, i32 %.sroa.8.0, i64 1
  %i.aji = add nsw <2 x i32> %i.ajf, %i.ajh
  store <2 x i32> %i.aji, ptr %i.hh, align 8, !tbaa !78
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.jl, i64 96
  %i.ajk = load i32, ptr %i.ajj, align 8, !tbaa !491
  switch i32 %i.ajk, label %bb.en [
    i32 0, label %.invoke1299
    i32 1, label %bb.el
    i32 2, label %.invoke
    i32 3, label %bb.em
  ]

bb.ek:                                            ; preds = %.invoke1299, %.invoke
  %i.ajl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #34
  br label %.loopexit.split-lp

bb.el:                                            ; preds = %bb.ej
  %i.ajm = sub nsw i32 0, %i.aim
  br label %.invoke1299

.invoke1299:                                      ; preds = %bb.ej, %bb.el
  %i.ajn = phi i32 [ %i.ajm, %bb.el ], [ %i.aim, %bb.ej ]
  invoke void @_ZN3Hud17drawCompassRotateEP10HudElementPN5video8ITextureERKN4core4rectIiEEi(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr nonnull poison, ptr noundef nonnull %i.afz, ptr noundef nonnull align 4 dereferenceable(16) %31, i32 noundef %i.ajn)
          to label %bb.en unwind label %bb.ek

bb.em:                                            ; preds = %bb.ej
  %i.ajo = sub nsw i32 0, %i.aim
  br label %.invoke

.invoke:                                          ; preds = %bb.ej, %bb.em
  %i.ajp = phi i32 [ %i.ajo, %bb.em ], [ %i.aim, %bb.ej ]
  invoke void @_ZN3Hud20drawCompassTranslateEP10HudElementPN5video8ITextureERKN4core4rectIiEEi(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull %i.jl, ptr noundef nonnull %i.afz, ptr noundef nonnull align 4 dereferenceable(16) %31, i32 noundef %i.ajp)
          to label %bb.en unwind label %bb.ek

bb.en:                                            ; preds = %.invoke1299, %.invoke, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #34
  br label %.critedge.thread

bb.eo:                                            ; preds = %bb.ac
  %i.ajq = load ptr, ptr %i.by, align 8, !tbaa !71
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 632
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !529 ; 2 uses
  %.not274 = icmp eq ptr %i.ajs, null
  br i1 %.not274, label %.critedge.thread, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.jl, i64 128
  %i.aju = load float, ptr %i.hf, align 4, !tbaa !116 ; 2 uses
  %i.ajv = load <2 x float>, ptr %i.ajt, align 8, !tbaa !58 ; 3 uses
  %i.ajw = extractelement <2 x float> %i.ajv, i64 0 ; 2 uses
  %i.ajx = fcmp nsz olt float %i.ajw, 0.000000e+00
  br i1 %i.ajx, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.ajy = uitofp nsz i32 %i.jn to double
  %i.ajz = fpext nnan nsz float %i.ajw to double
  %i.aka = fmul nnan nsz double %i.ajz, -1.000000e-02
  %i.akb = fmul nsz double %i.aka, %i.ajy
  %i.akc = fptosi double %i.akb to i32
  %i.akd = insertelement <2 x i32> poison, i32 %i.akc, i64 0
  %i.ake = shufflevector <2 x i32> %i.akd, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.et

bb.er:                                            ; preds = %bb.ep
  %i.akf = insertelement <2 x float> poison, float %i.aju, i64 0
  %i.akg = shufflevector <2 x float> %i.akf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akh = fmul nsz <2 x float> %i.akg, %i.ajv
  %i.aki = fptosi <2 x float> %i.akh to <2 x i32>
  %i.akj = extractelement <2 x float> %i.ajv, i64 1 ; 2 uses
  %i.akk = fcmp nsz olt float %i.akj, 0.000000e+00
  br i1 %i.akk, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.akl = uitofp nsz i32 %i.jq to double
  %i.akm = fpext nnan nsz float %i.akj to double
  %i.akn = fmul nnan nsz double %i.akm, -1.000000e-02
  %i.ako = fmul nsz double %i.akn, %i.akl
  %i.akp = fptosi double %i.ako to i32
  %i.akq = insertelement <2 x i32> poison, i32 %i.akp, i64 0
  %i.akr = shufflevector <2 x i32> %i.akq, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.et

bb.et:                                            ; preds = %bb.er, %bb.es, %bb.eq
  %i.aks = phi <2 x i32> [ %i.ake, %bb.eq ], [ %i.akr, %bb.es ], [ %i.aki, %bb.er ] ; 4 uses
  %i.akt = extractelement <2 x i32> %i.aks, i64 0
  %i.aku = icmp sgt i32 %i.akt, 0
  %i.akv = extractelement <2 x i32> %i.aks, i64 1
  %i.akw = icmp sgt i32 %i.akv, 0
  %or.cond9.not = select i1 %i.aku, i1 %i.akw, i1 false
  br i1 %or.cond9.not, label %bb.eu, label %.loopexit.sink.split

bb.eu:                                            ; preds = %bb.et
  %i.akx = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  %i.aky = uitofp <2 x i32> %i.aks to <2 x double>
  %i.akz = load <2 x float>, ptr %i.akx, align 4, !tbaa !58
  %i.ala = fpext <2 x float> %i.akz to <2 x double>
  %i.alb = fadd nsz <2 x double> %i.ala, splat (double -1.000000e+00)
  %i.alc = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %i.ald = load <2 x float>, ptr %i.alc, align 4, !tbaa !58
  %i.ale = insertelement <2 x float> poison, float %i.aju, i64 0
  %i.alf = shufflevector <2 x float> %i.ale, <2 x float> poison, <2 x i32> zeroinitializer
  %i.alg = fmul nsz <2 x float> %i.alf, %i.ald
  %i.alh = fmul nsz <2 x double> %i.alb, %i.aky
  %i.ali = fmul nsz <2 x double> %i.alh, splat (double 5.000000e-01)
  %i.alj = fptosi <2 x double> %i.ali to <2 x i32>
  %i.alk = fptosi <2 x float> %i.alg to <2 x i32>
  %i.all = add <2 x i32> %i.alk, %i.jy
  %i.alm = add <2 x i32> %i.all, %i.alj           ; 2 uses
  %.sroa.0793.4.insert.insert800 = bitcast <2 x i32> %i.alm to i64
  %i.aln = add nsw <2 x i32> %i.alm, %i.aks
  %.sroa.10.12.insert.insert810 = bitcast <2 x i32> %i.aln to i64
  invoke void @_ZN7Minimap11drawMinimapEN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(192) %i.ajs, i64 %.sroa.0793.4.insert.insert800, i64 %.sroa.10.12.insert.insert810)
          to label %.critedge.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ei, %bb.eg, %bb.eh, %bb.dz, %bb.bq, %_ZN11StreamProxylsEPFRSoS0_E.exit, %bb.ev, %bb.do, %bb.cd, %bb.ad, %bb.ae, %bb.af, %bb.dq, %_ZTW13warningstream.exit, %.noexc569, %bb.bw, %bb.bx, %bb.bz, %_ZTW10infostream.exit, %.noexc738, %bb.fa, %bb.fb, %_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit, %bb.fe, %bb.cc, %.noexc773, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc775, %bb.fh, %.noexc783, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i780, %.noexc785, %bb.bp, %bb.eu, %.invoke1300
  %lpad.loopexit.split-lp1324 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ev:                                            ; preds = %bb.ac
  %i.alo = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %i.alp = getelementptr inbounds nuw i8, ptr %i.jl, i64 96
  %i.alq = load i32, ptr %i.alp, align 8, !tbaa !491
  %i.alr = trunc i32 %i.alq to i16
  %i.als = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  invoke void @_ZN3Hud10drawHotbarERKN4core8vector2dIiEERKNS1_IfEEtS7_(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.alo, i16 noundef zeroext %i.alr, ptr noundef nonnull align 4 dereferenceable(8) %i.als)
          to label %.critedge.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ew:                                            ; preds = %bb.ac
  br i1 %.not.i736, label %_ZTW10infostream.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.ew, %bb.ex
  %i.alt = load ptr, ptr %i.jk, align 8, !tbaa !508, !nonnull !123, !align !509 ; 2 uses
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !69
  %i.alv = load ptr, ptr %i.alu, align 8
  %i.alw = invoke noundef zeroext i1 %i.alv(ptr noundef nonnull align 8 dereferenceable(8) %i.alt)
          to label %.noexc738 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !453

.noexc738:                                        ; preds = %_ZTW10infostream.exit
  %.v.i737 = select i1 %i.alw, i64 976, i64 984
  %i.alx = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.v.i737 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.16, ptr %i.b, align 8, !tbaa !349
  %i.aly = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.alx, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ey unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ey:                                            ; preds = %.noexc738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.alz = load ptr, ptr %i.alx, align 8, !tbaa !350 ; 5 uses
  %.not.i740 = icmp eq ptr %i.alz, null
  br i1 %.not.i740, label %_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ama = load ptr, ptr %i.alz, align 8, !tbaa !69
  %i.amb = getelementptr i8, ptr %i.ama, i64 -24
  %i.amc = load i64, ptr %i.amb, align 8
  %i.amd = getelementptr inbounds i8, ptr %i.alz, i64 %i.amc
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 32
  %i.amf = load i32, ptr %i.ame, align 8, !tbaa !357
  %i.amg = icmp eq i32 %i.amf, 0
  br i1 %i.amg, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.alz)
          to label %.noexc742 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc742:                                        ; preds = %bb.fa
  %.pre.i741 = load ptr, ptr %i.alx, align 8, !tbaa !350
  br label %bb.fb

bb.fb:                                            ; preds = %.noexc742, %bb.ez
  %i.amh = phi ptr [ %.pre.i741, %.noexc742 ], [ %i.alz, %bb.ez ]
  %i.ami = load i32, ptr %i.jl, align 8, !tbaa !530
  %i.amj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.amh, i32 noundef %i.ami)
          to label %_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit: ; preds = %bb.ey, %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.17, ptr %i.a, align 8, !tbaa !349
  %i.amk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.alx, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.fc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.fc:                                            ; preds = %_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !350 ; 5 uses
  %.not.i745 = icmp eq ptr %i.aml, null
  br i1 %.not.i745, label %.critedge.thread, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !69
  %i.amn = getelementptr i8, ptr %i.amm, i64 -24
  %i.amo = load i64, ptr %i.amn, align 8          ; 2 uses
  %i.amp = getelementptr inbounds i8, ptr %i.aml, i64 %i.amo
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 32
  %i.amr = load i32, ptr %i.amq, align 8, !tbaa !357
  %i.ams = icmp eq i32 %i.amr, 0
  br i1 %i.ams, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.aml)
          to label %.noexc747 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc747:                                        ; preds = %bb.fe
  %.pre.i746 = load ptr, ptr %i.amk, align 8, !tbaa !350 ; 2 uses
  %.pre1164 = load ptr, ptr %.pre.i746, align 8, !tbaa !69
  %.phi.trans.insert1165 = getelementptr i8, ptr %.pre1164, i64 -24
  %.pre1166 = load i64, ptr %.phi.trans.insert1165, align 8
  br label %bb.ff

bb.ff:                                            ; preds = %.noexc747, %bb.fd
  %i.amt = phi i64 [ %.pre1166, %.noexc747 ], [ %i.amo, %bb.fd ]
  %i.amu = phi ptr [ %.pre.i746, %.noexc747 ], [ %i.aml, %bb.fd ] ; 2 uses
  %i.amv = getelementptr inbounds i8, ptr %i.amu, i64 %i.amt
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 240
  %i.amx = load ptr, ptr %i.amw, align 8, !tbaa !515 ; 6 uses
  %.not.i.i.i777 = icmp eq ptr %i.amx, null
  br i1 %.not.i.i.i777, label %.invoke1300, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i778

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i778: ; preds = %bb.ff
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 56
  %i.amz = load i8, ptr %i.amy, align 8, !tbaa !520
  %.not.i1.i.i779 = icmp eq i8 %i.amz, 0
  br i1 %.not.i1.i.i779, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i778
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amx, i64 67
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !23
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i780

bb.fh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i778
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.amx)
          to label %.noexc783 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc783:                                        ; preds = %bb.fh
  %i.anc = load ptr, ptr %i.amx, align 8, !tbaa !69
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 48
  %i.ane = load ptr, ptr %i.and, align 8
  %i.anf = invoke noundef signext i8 %i.ane(ptr noundef nonnull align 8 dereferenceable(570) %i.amx, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i780 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !444

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i780: ; preds = %.noexc783, %bb.fg
  %.0.i.i.i781 = phi i8 [ %i.anb, %bb.fg ], [ %i.anf, %.noexc783 ]
  %i.ang = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.amu, i8 noundef signext %.0.i.i.i781)
          to label %.noexc785 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc785:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i780
  %i.anh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ang)
          to label %.critedge.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge.thread:                                 ; preds = %bb.ea, %bb.eu, %_ZN14EnrichedStringD2Ev.exit567, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit704, %bb.ce, %bb.dp, %bb.eo, %bb.ev, %_ZN11StreamProxylsEPFRSoS0_E.exit, %bb.bp, %bb.dx, %bb.en, %.noexc785, %bb.fc, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.ani = getelementptr inbounds nuw i8, ptr %.sroa.0948.01148, i64 8 ; 2 uses
  %.not1008 = icmp eq ptr %i.ani, %.sroa.17.3
  br i1 %.not1008, label %.loopexit, label %bb.ac

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ek, %bb.dy, %bb.bo, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit707
  %.pn328 = phi { ptr, i32 } [ %i.ajl, %bb.ek ], [ %.pn318.pn.pn.pn.pn.pn, %bb.bo ], [ %.pn303.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit707 ], [ %i.aft, %bb.dy ], [ %lpad.loopexit.split-lp1324, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %.body

.loopexit.sink.split:                             ; preds = %bb.et, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.thread, %.loopexit.sink.split, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backEOS1_.exit383
  %i.anj = load ptr, ptr %i.bv, align 8, !tbaa !77 ; 2 uses
  %i.ank = icmp eq ptr %i.anj, %i.bw
  br i1 %i.ank, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i751, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i750

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i750: ; preds = %.loopexit
  %i.anl = load i64, ptr %i.bw, align 8, !tbaa !23
  %i.anm = add i64 %i.anl, 1
  call void @_ZdlPvm(ptr noundef %i.anj, i64 noundef %i.anm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i751

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i751: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i750
  %i.ann = load ptr, ptr %i.br, align 8, !tbaa !77 ; 2 uses
  %i.ano = icmp eq ptr %i.ann, %i.bs
  br i1 %i.ano, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i753, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i752

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i752: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i751
  %i.anp = load i64, ptr %i.bs, align 8, !tbaa !23
  %i.anq = add i64 %i.anp, 1
  call void @_ZdlPvm(ptr noundef %i.ann, i64 noundef %i.anq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i753

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i753: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i751, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i752
  %i.anr = load ptr, ptr %i.bn, align 8, !tbaa !77 ; 2 uses
  %i.ans = icmp eq ptr %i.anr, %i.bo
  br i1 %i.ans, label %_ZN10HudElementD2Ev.exit758, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i754

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i754: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i753
end_hunk_3
begin_hunk_4_@_ZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEE:bb.a
  %i.dc = add nsw i32 %.sroa.0198.1.lcssa, %.sroa.0.sroa.0.0.extract.trunc.i
  %i.dd = add nsw i32 %.sroa.20.1.lcssa, %.sroa.0.sroa.6.0.extract.trunc.i
  %.sroa.8.8.extract.trunc.i = trunc i64 %.sroa.6.0 to i32
  %i.de = add nsw i32 %.sroa.0198.1.lcssa, %.sroa.8.8.extract.trunc.i
  %.sroa.8.8.insert.ext.i = zext i32 %i.de to i64
  %.sroa.8.12.extract.shift.i = lshr i64 %.sroa.6.0, 32
  %.sroa.8.12.extract.trunc.i = trunc nuw i64 %.sroa.8.12.extract.shift.i to i32
  %i.df = add nsw i32 %.sroa.20.1.lcssa, %.sroa.8.12.extract.trunc.i
  %.sroa.8.12.insert.ext.i = zext i32 %i.df to i64
  %.sroa.8.12.insert.shift.i = shl nuw i64 %.sroa.8.12.insert.ext.i, 32
  %.sroa.8.12.insert.insert.i = or disjoint i64 %.sroa.8.12.insert.shift.i, %.sroa.8.8.insert.ext.i
  %.sroa.0.sroa.6.0.insert.ext.i = zext i32 %i.dd to i64
  %.sroa.0.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %i.dc to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %15, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %.sroa.8.12.insert.insert.i, ptr %i.dg, align 8
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.db, ptr noundef nonnull %i.f, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef null, ptr noundef nonnull %10, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  %.not54 = icmp ne ptr %.049, null
  %i.dh = icmp sgt i32 %7, %6
  %or.cond57 = and i1 %i.dh, %.not54
  br i1 %or.cond57, label %bb.ab, label %._crit_edge._crit_edge

bb.ab:                                            ; preds = %bb.aa
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %.sroa.0.sroa.0.0.extract.trunc.i123 = trunc i64 %.sroa.0.0 to i32
  %.sroa.0.sroa.6.0.extract.shift.i124 = lshr i64 %.sroa.0.0, 32
  %.sroa.0.sroa.6.0.extract.trunc.i125 = trunc nuw i64 %.sroa.0.sroa.6.0.extract.shift.i124 to i32
  %i.dj = add nsw i32 %.sroa.0198.1.lcssa, %.sroa.0.sroa.0.0.extract.trunc.i123
  %i.dk = add nsw i32 %.sroa.20.1.lcssa, %.sroa.0.sroa.6.0.extract.trunc.i125
  %.sroa.8.8.extract.trunc.i128 = trunc i64 %.sroa.5.0 to i32
  %i.dl = add nsw i32 %.sroa.0198.1.lcssa, %.sroa.8.8.extract.trunc.i128
  %.sroa.8.8.insert.ext.i129 = zext i32 %i.dl to i64
  %.sroa.8.12.extract.shift.i130 = lshr i64 %.sroa.5.0, 32
  %.sroa.8.12.extract.trunc.i131 = trunc nuw i64 %.sroa.8.12.extract.shift.i130 to i32
  %i.dm = add nsw i32 %.sroa.20.1.lcssa, %.sroa.8.12.extract.trunc.i131
  %.sroa.8.12.insert.ext.i132 = zext i32 %i.dm to i64
  %.sroa.8.12.insert.shift.i133 = shl nuw i64 %.sroa.8.12.insert.ext.i132, 32
  %.sroa.8.12.insert.insert.i134 = or disjoint i64 %.sroa.8.12.insert.shift.i133, %.sroa.8.8.insert.ext.i129
  %.sroa.0.sroa.6.0.insert.ext.i135 = zext i32 %i.dk to i64
  %.sroa.0.sroa.6.0.insert.shift.i136 = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext.i135, 32
  %.sroa.0.sroa.0.0.insert.ext.i137 = zext i32 %i.dj to i64
  %.sroa.0.sroa.0.0.insert.insert.i138 = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift.i136, %.sroa.0.sroa.0.0.insert.ext.i137
  store i64 %.sroa.0.sroa.0.0.insert.insert.i138, ptr %16, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %.sroa.8.12.insert.insert.i134, ptr %i.dn, align 8
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.di, ptr noundef nonnull %.049, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef null, ptr noundef nonnull %10, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  %i.do = add nsw i32 %.sroa.0198.1.lcssa, %i.ck
  %i.dp = add nsw i32 %.sroa.20.1.lcssa, %i.cl
  br label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.aa, %bb.ab
  %.sroa.0198.2 = phi i32 [ %i.do, %bb.ab ], [ %.sroa.0198.1.lcssa, %bb.aa ], [ %.sroa.0198.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.20.2 = phi i32 [ %i.dp, %bb.ab ], [ %.sroa.20.1.lcssa, %bb.aa ], [ %.sroa.20.1.lcssa, %._crit_edge ] ; 2 uses
  %.not55 = icmp ne ptr %.049, null
  %i.dq = icmp sgt i32 %7, %6
  %or.cond58 = and i1 %i.dq, %.not55
  br i1 %or.cond58, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %._crit_edge._crit_edge
  %i.dr = zext i1 %i.ar to i32
  %.047 = add nuw nsw i32 %i.cm, %i.dr            ; 2 uses
  %i.ds = sdiv i32 %7, 2                          ; 2 uses
  %i.dt = icmp slt i32 %.047, %i.ds
  br i1 %i.dt, label %.lr.ph279, label %._crit_edge280

.lr.ph279:                                        ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dy = shufflevector <2 x i32> %i.q, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x i32> %i.dy, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  br label %bb.ad

._crit_edge280:                                   ; preds = %bb.ad, %bb.ac
  %.sroa.0198.3.lcssa = phi i32 [ %.sroa.0198.2, %bb.ac ], [ %i.ed, %bb.ad ] ; 2 uses
  %.sroa.20.3.lcssa = phi i32 [ %.sroa.20.2, %bb.ac ], [ %i.ee, %bb.ad ] ; 2 uses
  br i1 %i.at, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %.lr.ph279, %bb.ad
  %.0277 = phi i32 [ %.047, %.lr.ph279 ], [ %i.ef, %bb.ad ]
  %.sroa.20.3276 = phi i32 [ %.sroa.20.2, %.lr.ph279 ], [ %i.ee, %bb.ad ] ; 3 uses
  %.sroa.0198.3275 = phi i32 [ %.sroa.0198.2, %.lr.ph279 ], [ %i.ed, %bb.ad ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  store <4 x i32> %i.dz, ptr %17, align 16, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  store i32 %.sroa.0198.3275, ptr %18, align 4, !tbaa !358
  store i32 %.sroa.20.3276, ptr %i.du, align 4, !tbaa !359
  %i.ea = add nsw i32 %.sroa.0198.3275, %.sroa.0223.0
  store i32 %i.ea, ptr %i.dv, align 4, !tbaa !358
  %i.eb = add nsw i32 %.sroa.20.3276, %.sroa.12.0
  store i32 %i.eb, ptr %i.dw, align 4, !tbaa !359
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !70
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.ec, ptr noundef nonnull %.049, ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef null, ptr noundef nonnull %10, i1 noundef zeroext true)
  %i.ed = add nsw i32 %.sroa.0198.3275, %i.ck     ; 2 uses
  %i.ee = add nsw i32 %.sroa.20.3276, %i.cl       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  %i.ef = add nsw i32 %.0277, 1                   ; 2 uses
  %exitcond286.not = icmp eq i32 %i.ef, %i.ds
  br i1 %exitcond286.not, label %._crit_edge280, label %bb.ad, !llvm.loop !532

bb.ae:                                            ; preds = %._crit_edge280
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  %.sroa.0.sroa.0.0.extract.trunc.i142 = trunc i64 %.sroa.0160.0 to i32
  %.sroa.0.sroa.6.0.extract.shift.i143 = lshr i64 %.sroa.0160.0, 32
  %.sroa.0.sroa.6.0.extract.trunc.i144 = trunc nuw i64 %.sroa.0.sroa.6.0.extract.shift.i143 to i32
  %i.ei = add nsw i32 %.sroa.0198.3.lcssa, %.sroa.0.sroa.0.0.extract.trunc.i142
  %i.ej = add nsw i32 %.sroa.20.3.lcssa, %.sroa.0.sroa.6.0.extract.trunc.i144
  %.sroa.8.8.extract.trunc.i147 = trunc i64 %.sroa.6.0 to i32
  %i.ek = add nsw i32 %.sroa.0198.3.lcssa, %.sroa.8.8.extract.trunc.i147
  %.sroa.8.8.insert.ext.i148 = zext i32 %i.ek to i64
  %.sroa.8.12.extract.shift.i149 = lshr i64 %.sroa.6.0, 32
  %.sroa.8.12.extract.trunc.i150 = trunc nuw i64 %.sroa.8.12.extract.shift.i149 to i32
  %i.el = add nsw i32 %.sroa.20.3.lcssa, %.sroa.8.12.extract.trunc.i150
  %.sroa.8.12.insert.ext.i151 = zext i32 %i.el to i64
  %.sroa.8.12.insert.shift.i152 = shl nuw i64 %.sroa.8.12.insert.ext.i151, 32
  %.sroa.8.12.insert.insert.i153 = or disjoint i64 %.sroa.8.12.insert.shift.i152, %.sroa.8.8.insert.ext.i148
  %.sroa.0.sroa.6.0.insert.ext.i154 = zext i32 %i.ej to i64
  %.sroa.0.sroa.6.0.insert.shift.i155 = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext.i154, 32
  %.sroa.0.sroa.0.0.insert.ext.i156 = zext i32 %i.ei to i64
  %.sroa.0.sroa.0.0.insert.insert.i157 = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift.i155, %.sroa.0.sroa.0.0.insert.ext.i156
  store i64 %.sroa.0.sroa.0.0.insert.insert.i157, ptr %19, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %.sroa.8.12.insert.insert.i153, ptr %i.em, align 8
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.eh, ptr noundef nonnull %.049, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef null, ptr noundef nonnull %10, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge280, %bb.ae, %._crit_edge._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  ret void
}

declare noundef ptr @_ZN9Inventory7getListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Hud17drawCompassRotateEP10HudElementPN5video8ITextureERKN4core4rectIiEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(572) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.core::rect", align 4        ; 4 uses
  %6 = alloca %"class.core::CMatrix4", align 4    ; 4 uses
  %7 = alloca %"class.core::CMatrix4", align 4    ; 4 uses
  %8 = alloca %"class.core::CMatrix4", align 8    ; 10 uses
  %9 = alloca %"class.core::CMatrix4", align 4    ; 8 uses
  %10 = alloca %"class.core::CMatrix4", align 4   ; 8 uses
  %11 = alloca %"class.core::CMatrix4", align 4   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 4 dereferenceable(16) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !124
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef 2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(64) %i.k, i64 64, i1 false), !tbaa.struct !363
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(64) %i.p, i64 64, i1 false), !tbaa.struct !363
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.s, i8 0, i64 48, i1 false)
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !58
  %i.t = sitofp nsz i32 %4 to float
  %i.u = fmul nnan nsz float %i.t, f0x3C8EFA35
  %i.v = fpext nsz float %i.u to double
  %sincos39.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.v) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 3 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 3 uses
  %i.w = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.x = insertelement <2 x double> %i.w, double %sin40.i.i, i64 1 ; 2 uses
  %i.y = fptrunc <2 x double> %i.x to <2 x float>
  store <2 x float> %i.y, ptr %8, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float -0.000000e+00, ptr %i.z, align 8, !tbaa !58
  %i.aa = fneg nsz double %sin40.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ac = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %cos41.i.i, i64 1
  %i.ae = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> zeroinitializer, <2 x double> %i.ad)
  %i.af = fptrunc <2 x double> %i.ae to <2 x float>
  store <2 x float> %i.af, ptr %i.ab, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ah = insertelement <2 x double> poison, double %sin40.i.i, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %cos41.i.i, i64 1 ; 2 uses
  %i.aj = fmul nsz <2 x double> %i.ai, <double 0.000000e+00, double -0.000000e+00>
  %i.ak = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.al = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> zeroinitializer, <2 x double> %i.aj)
  %i.am = fptrunc <2 x double> %i.al to <2 x float>
  store <2 x float> %i.am, ptr %i.ag, align 8, !tbaa !58
  store float 1.000000e+00, ptr %i.r, align 8, !tbaa !58
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 344
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.as, i8 0, i64 56, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 60
  store float 1.000000e+00, ptr %i.at, align 4, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 40
  store float 1.000000e+00, ptr %i.au, align 4, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 20
  store float 1.000000e+00, ptr %i.av, align 4, !tbaa !58
  store float 1.000000e+00, ptr %9, align 4, !tbaa !58
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(64) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ba, i8 0, i64 56, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 60
  store float 1.000000e+00, ptr %i.bb, align 4, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40
  store float 1.000000e+00, ptr %i.bc, align 4, !tbaa !58
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 20
  store float 1.000000e+00, ptr %i.bd, align 4, !tbaa !58
  store float 1.000000e+00, ptr %10, align 4, !tbaa !58
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(64) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !69
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %8)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !65
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  store ptr %2, ptr %i.bn, align 8, !tbaa !64
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !69
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(127) %i.bn)
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !65
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !69
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 448
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef %i.bt)
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.by, i8 0, i64 56, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 60
  store float 1.000000e+00, ptr %i.bz, align 4, !tbaa !58
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 40
  store float 1.000000e+00, ptr %i.ca, align 4, !tbaa !58
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 20
  store float 1.000000e+00, ptr %i.cb, align 4, !tbaa !58
  store float 1.000000e+00, ptr %11, align 4, !tbaa !58
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !69
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !69
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(64) %7)
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !69
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(64) %6)
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !69
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 344
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Hud20drawCompassTranslateEP10HudElementPN5video8ITextureERKN4core4rectIiEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(572) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca [4 x %"class.video::SColor"], align 16 ; 5 uses
  %6 = alloca %"class.core::rect", align 4        ; 8 uses
  %7 = alloca %"class.core::rect", align 4        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 -1, i64 16, i1 false)
  %i.b = load i32, ptr %i.a, align 4, !tbaa !361  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !362  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i32 0, ptr %6, align 4, !tbaa !358
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !359
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.b, ptr %i.f, align 4, !tbaa !358
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.d, ptr %i.g, align 4, !tbaa !359
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !129
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !127  ; 2 uses
  %i.l = sub nsw i32 %i.i, %i.k                   ; 2 uses
  %i.m = sitofp nsz i32 %i.l to float             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load float, ptr %i.n, align 8, !tbaa !339
  %i.p = fmul nsz float %i.o, %i.m
  %i.q = sitofp nsz i32 %i.b to float
  %i.r = fmul nsz float %i.p, %i.q
  %i.s = sitofp nsz i32 %i.d to float
  %i.t = fdiv nsz float %i.r, %i.s
  %i.u = fptosi float %i.t to i32                 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.w = load float, ptr %i.v, align 4, !tbaa !340
  %i.x = fmul nsz float %i.w, %i.m
  %i.y = fptosi float %i.x to i32                 ; 3 uses
  %i.z = icmp slt i32 %i.u, 1
  %i.aa = icmp slt i32 %i.y, 1
  %or.cond = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !128
  %i.ag = load i32, ptr %3, align 4, !tbaa !126   ; 4 uses
  %i.ah = add i32 %i.ag, %i.u
  %i.ai = sub i32 %i.af, %i.ah
  %i.aj = sdiv i32 %i.ai, 2
  %i.ak = sub nsw i32 %i.l, %i.y
  %i.al = sdiv i32 %i.ak, 2
  %i.am = add nsw i32 %i.aj, %i.ag                ; 2 uses
  %i.an = add nsw i32 %i.al, %i.k                 ; 2 uses
  %i.ao = add nsw i32 %i.am, %i.u
  %i.ap = add nsw i32 %i.an, %i.y
  %i.aq = mul nsw i32 %4, %i.u
  %i.ar = sdiv i32 %i.aq, 360                     ; 2 uses
  %i.as = add nsw i32 %i.am, %i.ar                ; 3 uses
  store i32 %i.an, ptr %i.ab, align 4, !tbaa !359
  %i.at = add nsw i32 %i.ao, %i.ar                ; 2 uses
  store i32 %i.ap, ptr %i.ad, align 4, !tbaa !359
  %i.au = icmp sgt i32 %i.as, %i.ag
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.av = phi i32 [ %i.ax, %.lr.ph ], [ %i.as, %bb.b ]
  %i.aw = phi i32 [ %i.ay, %.lr.ph ], [ %i.at, %bb.b ]
  %i.ax = sub nsw i32 %i.av, %i.u                 ; 3 uses
  %i.ay = sub nsw i32 %i.aw, %i.u                 ; 2 uses
  %i.az = icmp sgt i32 %i.ax, %i.ag
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !533

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.lcssa55 = phi i32 [ %i.at, %bb.b ], [ %i.ay, %.lr.ph ]
  %.lcssa = phi i32 [ %i.as, %bb.b ], [ %i.ax, %.lr.ph ]
  store i32 %.lcssa, ptr %7, align 4
  store i32 %.lcssa55, ptr %i.ac, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !70
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.bb, ptr noundef nonnull %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull %3, ptr noundef nonnull %5, i1 noundef zeroext true)
  %i.bc = load i32, ptr %7, align 4, !tbaa !358
  %i.bd = add nsw i32 %i.bc, %i.u                 ; 2 uses
  store i32 %i.bd, ptr %7, align 4, !tbaa !358
  %i.be = load i32, ptr %i.ac, align 4, !tbaa !358
  %storemerge57 = add nsw i32 %i.be, %i.u
  store i32 %storemerge57, ptr %i.ac, align 4, !tbaa !358
  %i.bf = load i32, ptr %i.ae, align 4, !tbaa !128
  %i.bg = icmp slt i32 %i.bd, %i.bf
  br i1 %i.bg, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %._crit_edge, %.lr.ph59
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !70
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.bh, ptr noundef nonnull %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull %3, ptr noundef nonnull %5, i1 noundef zeroext true)
  %i.bi = load i32, ptr %7, align 4, !tbaa !358
  %i.bj = add nsw i32 %i.bi, %i.u                 ; 2 uses
  store i32 %i.bj, ptr %7, align 4, !tbaa !358
  %i.bk = load i32, ptr %i.ac, align 4, !tbaa !358
  %storemerge = add nsw i32 %i.bk, %i.u
end_hunk_4
begin_hunk_5_@_ZN3Hud13drawCrosshairEv:bb.a
  %.sroa.0.0.insert.insert.i42 = or disjoint i64 %.sroa.2.0.insert.shift.i40, %.sroa.0.0.insert.ext.i41
  store i64 %.sroa.0.0.insert.insert.i42, ptr %11, align 8
  %.sroa.05.0.copyload = load i32, ptr %i.bw, align 4, !tbaa !78
  %i.ch = load ptr, ptr %i.ca, align 8, !tbaa !69
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 440
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11, i32 %.sroa.05.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !80, !range !122, !noundef !123
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %._crit_edge.i.i43, label %bb.l

._crit_edge.i.i43:                                ; preds = %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !79 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.cp, ptr %12, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.cp, ptr noundef nonnull align 1 dereferenceable(13) @.str.7, i64 13, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 13, ptr %i.cq, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 29
  store i8 0, ptr %i.cr, align 1, !tbaa !23
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !69
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef null)
          to label %bb.i unwind label %bb.k       ; 3 uses

bb.i:                                             ; preds = %._crit_edge.i.i43
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !361 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 76
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !362 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.db = load float, ptr %i.da, align 4, !tbaa !116
  %i.dc = call nsz noundef float @llvm.floor.f32(float %i.db) ; 2 uses
  %i.dd = fcmp nsz olt float %i.dc, 1.000000e+00
  %.sroa.speculated.i47 = select i1 %i.dd, float 1.000000e+00, float %i.dc
  %i.de = fptosi float %.sroa.speculated.i47 to i32 ; 2 uses
  %i.df = mul nsw i32 %i.cx, %i.de                ; 2 uses
  %i.dg = mul nsw i32 %i.cz, %i.de                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  store i32 0, ptr %1, align 4, !tbaa !358
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.dh, align 4, !tbaa !359
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.cx, ptr %i.di, align 4, !tbaa !358
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.cz, ptr %i.dj, align 4, !tbaa !359
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !538
  %.neg.i48 = sdiv i32 %i.df, -2
  %i.dm = add i32 %.neg.i48, %i.dl                ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !539
  %.neg3.i49 = sdiv i32 %i.dg, -2
  %i.dp = add i32 %i.do, %.neg3.i49               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %.sroa.5.0.insert.ext.i50 = zext i32 %i.dp to i64
  %.sroa.5.0.insert.shift.i51 = shl nuw i64 %.sroa.5.0.insert.ext.i50, 32
  %.sroa.0.0.insert.ext.i52 = zext i32 %i.dm to i64
  %.sroa.0.0.insert.insert.i53 = or disjoint i64 %.sroa.5.0.insert.shift.i51, %.sroa.0.0.insert.ext.i52
  store i64 %.sroa.0.0.insert.insert.i53, ptr %2, align 8, !tbaa !78
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dr = add nsw i32 %i.dm, %i.df
  %i.ds = add nsw i32 %i.dp, %i.dg
  store i32 %i.dr, ptr %i.dq, align 8, !tbaa !358
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !359
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dv = load <1 x i32>, ptr %i.du, align 4
  %i.dw = shufflevector <1 x i32> %i.dv, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.dw, ptr %3, align 16, !tbaa !78
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !70
  invoke void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.dy, ptr noundef nonnull %i.cv, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.dz = load ptr, ptr %12, align 8, !tbaa !77   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.cp
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.j
  %i.eb = load i64, ptr %i.cp, align 8, !tbaa !23
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.m

bb.k:                                             ; preds = %bb.i, %._crit_edge.i.i43
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %12, align 8, !tbaa !77   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.cp
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.k
  %i.eg = load i64, ptr %i.cp, align 8, !tbaa !23
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !116
  %i.ek = fmul nsz float %i.ej, 1.000000e+01
  %i.el = fadd nsz float %i.ek, 5.000000e-01
  %i.em = tail call nsz noundef float @llvm.floor.f32(float %i.el)
  %i.en = fptosi float %i.em to i32               ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !358 ; 2 uses
  %i.es = sub nsw i32 %i.er, %i.en
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !359
  %.sroa.2.0.insert.ext.i62 = zext i32 %i.eu to i64
  %.sroa.2.0.insert.shift.i63 = shl nuw i64 %.sroa.2.0.insert.ext.i62, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i64 = zext i32 %i.es to i64
  %.sroa.0.0.insert.insert.i65 = or disjoint i64 %.sroa.2.0.insert.shift.i63, %.sroa.0.0.insert.ext.i64
  store i64 %.sroa.0.0.insert.insert.i65, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.ev = add nsw i32 %i.er, %i.en
  %.sroa.0.0.insert.ext.i68 = zext i32 %i.ev to i64
  %.sroa.0.0.insert.insert.i69 = or disjoint i64 %.sroa.2.0.insert.shift.i63, %.sroa.0.0.insert.ext.i68
  store i64 %.sroa.0.0.insert.insert.i69, ptr %14, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %i.ew, align 4, !tbaa !78
  %i.ex = load ptr, ptr %i.ep, align 8, !tbaa !69
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 440
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 %.sroa.01.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.fa = load ptr, ptr %i.eo, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %i.fb = load i32, ptr %i.eq, align 8, !tbaa !358
  %i.fc = load i32, ptr %i.et, align 4, !tbaa !359 ; 2 uses
  %i.fd = sub nsw i32 %i.fc, %i.en
  %.sroa.2.0.insert.ext.i70 = zext i32 %i.fd to i64
  %.sroa.2.0.insert.shift.i71 = shl nuw i64 %.sroa.2.0.insert.ext.i70, 32
  %.sroa.0.0.insert.ext.i72 = zext i32 %i.fb to i64 ; 2 uses
  %.sroa.0.0.insert.insert.i73 = or disjoint i64 %.sroa.2.0.insert.shift.i71, %.sroa.0.0.insert.ext.i72
  store i64 %.sroa.0.0.insert.insert.i73, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %i.fe = add nsw i32 %i.fc, %i.en
  %.sroa.2.0.insert.ext.i74 = zext i32 %i.fe to i64
  %.sroa.2.0.insert.shift.i75 = shl nuw i64 %.sroa.2.0.insert.ext.i74, 32
  %.sroa.0.0.insert.insert.i77 = or disjoint i64 %.sroa.2.0.insert.shift.i75, %.sroa.0.0.insert.ext.i72
  store i64 %.sroa.0.0.insert.insert.i77, ptr %16, align 8
  %.sroa.0.0.copyload = load i32, ptr %i.ew, align 4, !tbaa !78
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !69
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 440
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %16, i32 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3Hud15setSelectionPosERKN4core8vector3dIfEERKNS1_IsEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(572) initializes((144, 150), (240, 264)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 2 dereferenceable(6) %2, i64 6, i1 false), !tbaa.struct !364
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !365
  %.sroa.05.0.copyload = load i48, ptr %2, align 2, !tbaa !110 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.05.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.c = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.d = fmul nnan nsz float %i.c, 1.000000e+01
  %i.e = bitcast i48 %.sroa.05.0.copyload to <3 x i16>
  %i.f = shufflevector <3 x i16> %i.e, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.g = sitofp <2 x i16> %i.f to <2 x float>
  %i.h = fmul nnan nsz <2 x float> %i.g, splat (float 1.000000e+01)
  %i.i = load <2 x float>, ptr %1, align 4, !tbaa !58
  %i.j = fsub nsz <2 x float> %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !144
  %i.m = fsub nsz float %i.l, %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 252
  store <2 x float> %i.j, ptr %i.n, align 4, !tbaa !58
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 260
  store float %i.m, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Hud17drawSelectionMeshEv(ptr noundef nonnull align 8 dereferenceable(572) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.core::CMatrix4", align 4    ; 4 uses
  %2 = alloca %"class.core::CMatrix4", align 16   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84
  switch i32 %i.b, label %bb.c [
    i32 2, label %bb.h
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(127) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %i.o, i64 64, i1 false), !tbaa.struct !363
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.r = load float, ptr %i.q, align 4, !tbaa !144 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.t = load float, ptr %i.s, align 8, !tbaa !142
  %i.u = fpext nsz float %i.t to double
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.u) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 3 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = load <2 x float>, ptr %i.p, align 4, !tbaa !58 ; 2 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ad = insertelement <4 x float> %i.ac, float %i.r, i64 2 ; 3 uses
  %i.ae = load float, ptr %i.v, align 4, !tbaa !143
  %i.af = fpext nsz float %i.ae to double
  %sincos36.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.af) ; 2 uses
  %sin37.i = extractvalue { double, double } %sincos36.i, 0 ; 3 uses
  %cos38.i = extractvalue { double, double } %sincos36.i, 1 ; 4 uses
  %i.ag = load float, ptr %i.w, align 8, !tbaa !144
  %i.ah = fpext nsz float %i.ag to double
  %sincos39.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.ah) ; 2 uses
  %sin40.i = extractvalue { double, double } %sincos39.i, 0 ; 4 uses
  %cos41.i = extractvalue { double, double } %sincos39.i, 1 ; 4 uses
  %i.ai = fmul nsz double %cos38.i, %cos41.i
  %i.aj = fptrunc nsz double %i.ai to float       ; 2 uses
  %i.ak = fmul nsz double %cos38.i, %sin40.i
  %i.al = fptrunc nsz double %i.ak to float       ; 2 uses
  %i.am = fptrunc nsz double %sin37.i to float    ; 2 uses
  %i.an = fneg nsz float %i.am                    ; 2 uses
  %i.ao = fmul nsz double %sin.i, %sin37.i
  %i.ap = fmul nsz double %cos.i, %sin37.i
  %i.aq = fneg nsz double %sin40.i
  %i.ar = fmul nsz double %sin.i, %cos38.i
  %i.as = fptrunc nsz double %i.ar to float       ; 3 uses
  %i.at = fneg nsz double %cos41.i
  %i.au = fmul nsz double %cos.i, %cos38.i
  %i.av = fptrunc nsz double %i.au to float       ; 3 uses
  %i.aw = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %cos41.i, i64 1
  %i.bc = fmul nsz <2 x double> %i.az, %i.bb
  %i.bd = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = insertelement <2 x double> poison, double %cos41.i, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %sin40.i, i64 1 ; 2 uses
  %i.bh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.bg, <2 x double> %i.bc)
  %i.bi = fptrunc <2 x double> %i.bh to <2 x float> ; 3 uses
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = fmul nsz <2 x float> %i.bj, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> zeroinitializer, <2 x float> %i.bk) ; 3 uses
  %i.bn = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = insertelement <2 x double> poison, double %sin.i, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = insertelement <2 x double> poison, double %sin40.i, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.at, i64 1
  %i.bt = fmul nsz <2 x double> %i.bq, %i.bs
  %i.bu = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bg, <2 x double> %i.bt)
  %i.bx = fptrunc <2 x double> %i.bw to <2 x float> ; 3 uses
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = fmul nsz <2 x float> %i.by, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ca = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> zeroinitializer, <2 x float> %i.bz) ; 3 uses
  %i.cc = shufflevector <2 x float> %i.bk, <2 x float> %i.bm, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cd = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cf = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cg = shufflevector <4 x float> %i.ce, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ch = shufflevector <2 x float> %i.bi, <2 x float> %i.bx, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.ci = insertelement <4 x float> %i.ch, float %i.as, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.av, i64 3
  %i.ck = fadd nsz <4 x float> %i.cg, %i.cj       ; 4 uses
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.cn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> zeroinitializer, <2 x float> %i.cm)
  %i.co = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> %i.cb, <2 x i32> <i32 0, i32 2>
  %i.cq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> zeroinitializer, <2 x float> %i.cp)
  %.scalar = fmul float %i.al, 0.000000e+00
  %i.cr = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.cs = tail call nsz float @llvm.fmuladd.f32(float %i.aj, float 0.000000e+00, float %i.al)
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.cu = insertelement <4 x float> %i.ct, float %i.aj, i64 0 ; 2 uses
  %i.cv = insertelement <4 x float> %i.cu, float %i.cs, i64 1
  %i.cw = fadd nsz <4 x float> %i.cr, %i.cv
  %i.cx = shufflevector <4 x float> %i.cu, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cy = insertelement <2 x float> %i.cx, float %i.an, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.da = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> zeroinitializer, <4 x float> %i.cw)
  %i.db = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.am, i64 2
  %i.dc = fsub nsz <4 x float> %i.da, %i.db
  %i.dd = insertelement <4 x float> %i.ad, float %i.an, i64 3
  %i.de = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> zeroinitializer, <4 x float> %i.dc)
  store <4 x float> %i.de, ptr %2, align 16, !tbaa !58, !alias.scope !543
  %i.df = insertelement <4 x float> %i.ad, float %i.as, i64 3
  %i.dg = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.di = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> zeroinitializer, <4 x float> %i.dj)
  store <4 x float> %i.dk, ptr %i.y, align 16, !tbaa !58, !alias.scope !543
  %i.dl = insertelement <4 x float> %i.ad, float %i.av, i64 3
  %i.dm = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.do = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> zeroinitializer, <4 x float> %i.dp)
  store <4 x float> %i.dq, ptr %i.z, align 16, !tbaa !58, !alias.scope !543
  store <2 x float> %i.ab, ptr %i.aa, align 16, !tbaa !58, !alias.scope !543
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 56
  store float %i.r, ptr %i.dr, align 8, !tbaa !58, !alias.scope !543
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 60
  store float 1.000000e+00, ptr %i.ds, align 4, !tbaa !58, !alias.scope !543
  %i.dt = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.dw = load i32, ptr %i.a, align 8, !tbaa !84
  switch i32 %i.dw, label %.loopexit [
    i32 0, label %bb.d
    i32 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !366 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !366 ; 2 uses
  %.not3740 = icmp eq ptr %i.dy, %i.ea
  br i1 %.not3740, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.d
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph42, %bb.e
  %.sroa.021.041 = phi ptr [ %i.dy, %.lr.ph42 ], [ %i.ff, %bb.e ] ; 2 uses
  %i.ed = load i32, ptr %i.eb, align 8, !tbaa !330 ; 3 uses
  %i.ee = lshr i32 %i.ed, 16
  %i.ef = and i32 %i.ee, 255
  %i.eg = load i32, ptr %i.ec, align 8, !tbaa !330 ; 3 uses
  %i.eh = lshr i32 %i.eg, 16
  %i.ei = and i32 %i.eh, 255
  %i.ej = mul nuw nsw i32 %i.ei, %i.ef
  %.lhs.trunc = trunc nuw i32 %i.ej to i16
  %i.ek = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.ek to i32
  %i.el = lshr i32 %i.ed, 8
  %i.em = and i32 %i.el, 255
  %i.en = lshr i32 %i.eg, 8
  %i.eo = and i32 %i.en, 255
  %i.ep = mul nuw nsw i32 %i.eo, %i.em
  %.lhs.trunc30 = trunc nuw i32 %i.ep to i16
  %i.eq = udiv i16 %.lhs.trunc30, 255
  %.zext31 = zext nneg i16 %i.eq to i32
  %i.er = and i32 %i.ed, 255
  %i.es = and i32 %i.eg, 255
  %i.et = mul nuw nsw i32 %i.es, %i.er
  %.lhs.trunc32 = trunc nuw i32 %i.et to i16
  %i.eu = udiv i16 %.lhs.trunc32, 255
  %.zext33 = zext nneg i16 %i.eu to i32
  %i.ev = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.ew = shl nuw nsw i32 %.zext, 16
  %i.ex = shl nuw nsw i32 %.zext31, 8
  %i.ey = and i32 %i.ex, 65280
  %i.ez = or disjoint i32 %i.ey, %i.ew
  %i.fa = add nuw nsw i32 %i.ez, %.zext33
  %i.fb = or i32 %i.fa, -16777216
  %i.fc = load ptr, ptr %i.ev, align 8, !tbaa !69
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 384
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.021.041, i32 %i.fb)
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.021.041, i64 24 ; 2 uses
  %.not37 = icmp eq ptr %i.ff, %i.ea
  br i1 %.not37, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.c
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !121 ; 2 uses
  %.not18 = icmp eq ptr %i.fh, null
  br i1 %.not18, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.sroa.07.0.copyload = load i32, ptr %i.fi, align 8, !tbaa !78
  call void @_Z12setMeshColorPN5scene5IMeshEN5video6SColorE(ptr noundef nonnull %i.fh, i32 %.sroa.07.0.copyload)
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !330 ; 3 uses
  %i.fk = and i32 %i.fj, 255
  %i.fl = uitofp nsz nneg i32 %i.fk to double
  %i.fm = fmul nnan nsz double %i.fl, 1.500000e+00 ; 2 uses
  %.inv36 = fcmp nsz oge double %i.fm, 2.550000e+02
  %i.fn = select i1 %.inv36, double 2.550000e+02, double %i.fm
  %i.fo = fptoui double %i.fn to i32
  %i.fp = lshr i32 %i.fj, 16
  %i.fq = and i32 %i.fp, 255
  %i.fr = uitofp nsz nneg i32 %i.fq to double
  %i.fs = lshr i32 %i.fj, 8
  %i.ft = and i32 %i.fs, 255
  %i.fu = uitofp nsz nneg i32 %i.ft to double
  %i.fv = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.fr, i64 1
  %i.fx = fmul nnan nsz <2 x double> %i.fw, splat (double 1.500000e+00) ; 2 uses
  %i.fy = fcmp nsz oge <2 x double> %i.fx, splat (double 2.550000e+02)
  %i.fz = select <2 x i1> %i.fy, <2 x double> splat (double 2.550000e+02), <2 x double> %i.fx
  %i.ga = fptoui <2 x double> %i.fz to <2 x i32>
  %i.gb = shl <2 x i32> %i.ga, <i32 8, i32 16>
  %i.gc = and <2 x i32> %i.gb, <i32 65280, i32 16711680> ; 2 uses
  %i.gd = and i32 %i.fo, 255
  %i.ge = extractelement <2 x i32> %i.gc, i64 0
  %i.gf = or disjoint i32 %i.ge, %i.gd
  %i.gg = extractelement <2 x i32> %i.gc, i64 1
  %i.gh = or disjoint i32 %i.gf, %i.gg
  %i.gi = load ptr, ptr %i.fg, align 8, !tbaa !121
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 292
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.gj, align 4, !tbaa !58
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 300
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !58
  call void @_Z20setMeshColorByNormalPN5scene5IMeshEN4core8vector3dIfEEN5video6SColorE(ptr noundef %i.gi, <2 x float> %.sroa.05.0.copyload, float %.sroa.26.0.copyload, i32 %i.gh)
  %i.gk = load ptr, ptr %i.fg, align 8, !tbaa !121 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !69
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = call noundef i32 %i.gm(ptr noundef nonnull align 8 dereferenceable(8) %i.gk) ; 2 uses
  %.not43 = icmp eq i32 %i.gn, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.039 = phi i32 [ %i.gx, %.lr.ph ], [ 0, %bb.g ] ; 2 uses
  %i.go = load ptr, ptr %i.fg, align 8, !tbaa !121 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !69
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = call noundef ptr %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.go, i32 noundef %.039)
  %i.gt = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !69
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 448
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef %i.gs)
  %i.gx = add nuw i32 %.039, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.gx, %i.gn
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !542

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.g, %bb.d, %bb.c, %bb.f
  %i.gy = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !69
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %.loopexit
  ret void
}

declare void @_Z12setMeshColorPN5scene5IMeshEN5video6SColorE(ptr noundef, i32) local_unnamed_addr #3

declare void @_Z20setMeshColorByNormalPN5scene5IMeshEN4core8vector3dIfEEN5video6SColorE(ptr noundef, <2 x float>, float, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_ZN3Hud17toggleBlockBoundsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(572) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !367    ; 2 uses
  %i.b = add nsw i32 %i.a, 1
  %i.c = icmp sgt i32 %i.a, 1
  %spec.select = select i1 %i.c, i32 0, i32 %i.b  ; 2 uses
  store i32 %spec.select, ptr %0, align 8, !tbaa !367
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3Hud18disableBlockBoundsEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(572) initializes((0, 4)) %0) local_unnamed_addr #16 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !367
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Hud15drawBlockBoundsEv(ptr noundef nonnull align 8 dereferenceable(572) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.core::vector3d.4", align 8  ; 5 uses
  %4 = alloca %"class.core::vector3d.4", align 8  ; 5 uses
  %5 = alloca %"class.core::vector3d.4", align 8  ; 5 uses
  %6 = alloca %"class.core::vector3d.4", align 8  ; 5 uses
  %7 = alloca %"class.core::vector3d.4", align 8  ; 5 uses
  %8 = alloca %"class.core::vector3d.4", align 8  ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !367
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(127) %i.g)
  %i.k = load ptr, ptr @g_settings, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 17, ptr %i.b, align 8, !tbaa !76
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.m, ptr %1, align 8, !tbaa !77
  %i.n = load i64, ptr %i.b, align 8, !tbaa !76   ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.m, ptr noundef nonnull align 1 dereferenceable(17) @.str.20, i64 17, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !22
  %i.p = load ptr, ptr %1, align 8, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.r = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  %.sroa.speculated = call i16 @llvm.umax.i16(i16 %i.r, i16 1)
  %i.s = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.l
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.u = load i64, ptr %i.l, align 8, !tbaa !23
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.y = call i48 @_ZN11LocalPlayer18getStandingNodePosEv(ptr noundef nonnull align 8 dereferenceable(864) %i.x) ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i48 %i.y to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i48 %i.y, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16 ; 2 uses
  %i.z = sext i16 %.sroa.0.0.extract.trunc.i to i32 ; 2 uses
  %i.aa = add nsw i32 %i.z, -15
  %i.ab = icmp slt i16 %.sroa.0.0.extract.trunc.i, 0
  %i.ac = select i1 %i.ab, i32 %i.aa, i32 %i.z
  %i.ad = sdiv i32 %i.ac, 16                      ; 2 uses
  %i.ae = sext i16 %.sroa.2.0.extract.trunc.i to i32 ; 2 uses
  %i.af = icmp slt i16 %.sroa.2.0.extract.trunc.i, 0
  %i.ag = ashr i48 %i.y, 32
  %i.ah = trunc nsw i48 %i.ag to i32              ; 2 uses
  %i.ai = icmp slt i48 %i.y, 0
  %.sroa.0268.0.extract.trunc = trunc nsw i32 %i.ad to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 624
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !546
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 84
  %.sroa.0.0.copyload.i = load i48, ptr %i.an, align 4, !tbaa !110 ; 2 uses
  %.sroa.013.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload.i to i16
  %i.ao = sitofp nsz i16 %.sroa.013.0.extract.trunc.i to float
  %i.ap = fmul nnan nsz float %i.ao, 1.000000e+01
  %i.aq = shl nsw i16 %.sroa.0268.0.extract.trunc, 4
  %i.ar = sitofp nsz i16 %i.aq to float
  %i.as = fmul nnan nsz float %i.ar, 1.000000e+01
  %i.at = fsub nsz float %i.as, %i.ap
  %i.au = add nsw i32 %i.ae, -15
  %i.av = select i1 %i.af, i32 %i.au, i32 %i.ae
  %i.aw = sdiv i32 %i.av, 16                      ; 3 uses
  %i.ax = add nsw i32 %i.ah, -15
  %i.ay = select i1 %i.ai, i32 %i.ax, i32 %i.ah
  %i.az = sdiv i32 %i.ay, 16                      ; 3 uses
  %.sroa.7.0.extract.trunc = trunc nsw i32 %i.aw to i16
  %.sroa.10273.0.extract.trunc = trunc nsw i32 %i.az to i16
  %i.ba = bitcast i48 %.sroa.0.0.copyload.i to <3 x i16>
  %i.bb = shufflevector <3 x i16> %i.ba, <3 x i16> poison, <2 x i32> <i32 2, i32 1>
  %i.bc = sitofp <2 x i16> %i.bb to <2 x float>
  %i.bd = fmul nnan nsz <2 x float> %i.bc, splat (float 1.000000e+01)
  %i.be = insertelement <2 x i16> poison, i16 %.sroa.10273.0.extract.trunc, i64 0
  %i.bf = insertelement <2 x i16> %i.be, i16 %.sroa.7.0.extract.trunc, i64 1
  %i.bg = shl nsw <2 x i16> %i.bf, splat (i16 4)
  %i.bh = sitofp <2 x i16> %i.bg to <2 x float>
  %i.bi = fmul nnan nsz <2 x float> %i.bh, splat (float 1.000000e+01)
  %i.bj = fsub nsz <2 x float> %i.bi, %i.bd
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bl = fadd nsz float %i.at, -5.000000e+00     ; 3 uses
  %i.bm = fadd nsz <4 x float> %i.bk, splat (float -5.000000e+00) ; 3 uses
  %i.bn = load i32, ptr %0, align 8, !tbaa !367
  %i.bo = icmp eq i32 %i.bn, 2
  br i1 %i.bo, label %.noexc.i123, label %.preheader.lr.ph

.noexc.i123:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = load ptr, ptr @g_settings, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.bq, ptr %2, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 29, ptr %i.a, align 8, !tbaa !76
  %i.br = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc124 unwind label %bb.e  ; 2 uses

.noexc124:                                        ; preds = %.noexc.i123
  store ptr %i.br, ptr %2, align 8, !tbaa !77
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !76  ; 3 uses
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.br, ptr noundef nonnull align 1 dereferenceable(29) @.str.21, i64 29, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !22
  %i.bu = load ptr, ptr %2, align 8, !tbaa !77
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  store i8 0, ptr %i.bv, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.bw = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.critedge unwind label %bb.f

.critedge:                                        ; preds = %.noexc124
  %spec.select.i = call i16 @llvm.umin.i16(i16 %i.bw, i16 1000)
  %i.bx = zext nneg i16 %spec.select.i to i32
  %i.by = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bq
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %.critedge
  %i.ca = load i64, ptr %i.bq, align 8, !tbaa !23
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cc = phi i32 [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.cd = sub nsw i32 0, %i.cc                    ; 4 uses
  %i.ce = trunc nsw i32 %i.cd to i16              ; 2 uses
  %i.cf = add nuw nsw i32 %i.cc, 1                ; 3 uses
  %i.cg = sitofp nsz i32 %i.cd to float
  %i.ch = fmul nnan nsz float %i.cg, 1.600000e+01
  %i.ci = fmul nnan nsz float %i.ch, 1.000000e+01 ; 2 uses
  %i.cj = mul nuw nsw i32 %i.cf, 160
  %i.ck = uitofp nneg i32 %i.cj to float          ; 2 uses
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cl = zext i16 %.sroa.speculated to i32       ; 5 uses
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.cn = insertelement <4 x float> %i.cm, float %i.ck, i64 1
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cp = fadd nsz <4 x float> %i.bm, %i.co       ; 4 uses
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cq = fadd nsz float %i.bl, %i.ci
  %.sroa.0.0.vec.insert.i169 = insertelement <2 x float> poison, float %i.cq, i64 0
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cr = fadd nsz float %i.bl, %i.ck
  %.sroa.0.0.vec.insert.i173 = insertelement <2 x float> poison, float %i.cr, i64 0
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cs = extractelement <4 x float> %i.bm, i64 1 ; 2 uses
  %i.ct = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cu = extractelement <4 x float> %i.cp, i64 0
  %i.cv = extractelement <4 x float> %i.cp, i64 2
  %i.cw = extractelement <4 x float> %i.bm, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.cx = phi i32 [ %i.cd, %.preheader.lr.ph ], [ %i.dx, %._crit_edge ] ; 2 uses
  %storemerge298 = phi i16 [ %i.ce, %.preheader.lr.ph ], [ %i.dw, %._crit_edge ] ; 2 uses
  %i.cy = sitofp nsz i16 %storemerge298 to float
  %i.cz = fmul nnan nsz float %i.cy, 1.600000e+01
  %i.da = fmul nnan nsz float %i.cz, 1.000000e+01 ; 2 uses
  %i.db = fadd nsz float %i.bl, %i.da             ; 2 uses
  %.sroa.0.0.vec.insert.i151 = insertelement <2 x float> poison, float %i.db, i64 0 ; 2 uses
  %i.dc = add nsw i32 %i.cx, %i.ad
  %i.dd = srem i32 %i.dc, %i.cl
  %i.de = icmp eq i32 %i.dd, 0                    ; 2 uses
  %i.df = shufflevector <2 x float> %.sroa.0.0.vec.insert.i151, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> %i.cp, <2 x i32> <i32 0, i32 5>
  %i.dh = insertelement <2 x float> %i.ct, float %i.db, i64 0
  %i.di = fadd nsz float %i.cs, %i.da             ; 2 uses
  %.sroa.0.4.vec.insert.i170 = insertelement <2 x float> %.sroa.0.0.vec.insert.i169, float %i.di, i64 1
  %.sroa.0.4.vec.insert.i174 = insertelement <2 x float> %.sroa.0.0.vec.insert.i173, float %i.di, i64 1
  %i.dj = add nsw i32 %i.cx, %i.aw
  br label %bb.g

bb.c:                                             ; preds = %.noexc.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.d:                                             ; preds = %.noexc
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.l
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.d
  %i.do = load i64, ptr %i.l, align 8, !tbaa !23
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.c
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.c ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %i.dl, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.n

bb.e:                                             ; preds = %.noexc.i123
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.f:                                             ; preds = %.noexc124
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.bq
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.f
  %i.du = load i64, ptr %i.bq, align 8, !tbaa !23
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.e
  %.pn90 = phi { ptr, i32 } [ %i.dq, %bb.e ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %i.dr, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.n

._crit_edge:                                      ; preds = %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178"
  %i.dw = add i16 %storemerge298, 1               ; 2 uses
  %i.dx = sext i16 %i.dw to i32                   ; 2 uses
  %.not = icmp slt i32 %i.cf, %i.dx
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !544

bb.g:                                             ; preds = %.preheader, %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178"
  %i.dy = phi i32 [ %i.cd, %.preheader ], [ %i.fc, %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178" ] ; 3 uses
  %storemerge93296 = phi i16 [ %i.ce, %.preheader ], [ %i.fb, %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178" ] ; 2 uses
  %i.dz = sitofp nsz i16 %storemerge93296 to float
  %i.ea = fmul nnan nsz float %i.dz, 1.600000e+01
  %i.eb = fmul nnan nsz float %i.ea, 1.000000e+01 ; 2 uses
  %i.ec = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.ed = fadd nsz float %i.cs, %i.eb
  %.sroa.0.4.vec.insert.i152 = insertelement <2 x float> %.sroa.0.0.vec.insert.i151, float %i.ed, i64 1 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i152, ptr %3, align 8
  store float %i.cu, ptr %.sroa.223.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store <2 x float> %.sroa.0.4.vec.insert.i152, ptr %4, align 8
  store float %i.cv, ptr %.sroa.219.0..sroa_idx, align 8
  br i1 %i.de, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ee = add nsw i32 %i.dy, %i.aw
  %i.ef = srem i32 %i.ee, %i.cl
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit", label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit"

"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit":   ; preds = %bb.h, %bb.i
  %.sroa.0.0.i = phi i32 [ -256, %bb.i ], [ -65536, %bb.h ]
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !69
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 376
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, i32 %.sroa.0.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ek = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.el = fadd nsz float %i.cw, %i.eb             ; 4 uses
  store <2 x float> %i.dg, ptr %5, align 8
  store float %i.el, ptr %.sroa.214.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store <2 x float> %i.dh, ptr %6, align 8
  store float %i.el, ptr %.sroa.210.0..sroa_idx, align 8
  br i1 %i.de, label %bb.j, label %bb.k

bb.j:                                             ; preds = %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit"
  %i.em = add nsw i32 %i.dy, %i.az
end_hunk_5
