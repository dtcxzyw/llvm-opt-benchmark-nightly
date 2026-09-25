Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/hud?download=true
inline.NumInlined: 2250
inline.NumDeleted: 686
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@__cxa_begin_catch
declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

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
  store i64 0, ptr %5, align 8
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
  store i64 %.sroa.045.0.insert.insert, ptr %6, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.444.0.insert.ext = zext i32 %i.ab to i64
  %.sroa.444.0.insert.shift = shl nuw i64 %.sroa.444.0.insert.ext, 32 ; 3 uses
  %.sroa.043.0.insert.ext = zext i32 %i.am to i64
  %.sroa.043.0.insert.insert = or disjoint i64 %.sroa.444.0.insert.shift, %.sroa.043.0.insert.ext
  store i64 %.sroa.043.0.insert.insert, ptr %i.an, align 8
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
  store i64 %.sroa.041.0.insert.insert, ptr %7, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.440.0.insert.ext = zext i32 %i.av to i64
  %.sroa.440.0.insert.shift = shl nuw i64 %.sroa.440.0.insert.ext, 32
  %.sroa.039.0.insert.ext = zext i32 %i.au to i64
  %.sroa.039.0.insert.insert = or disjoint i64 %.sroa.440.0.insert.shift, %.sroa.039.0.insert.ext
  store i64 %.sroa.039.0.insert.insert, ptr %i.aw, align 8
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
  store i64 %.sroa.037.0.insert.insert, ptr %8, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.035.0.insert.ext = zext i32 %i.z to i64
  %.sroa.035.0.insert.insert = or disjoint i64 %.sroa.442.0.insert.shift, %.sroa.035.0.insert.ext
  store i64 %.sroa.035.0.insert.insert, ptr %i.bd, align 8
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
  store i64 %.sroa.033.0.insert.insert, ptr %9, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.032.0.insert.ext = zext i32 %i.bj to i64
  %.sroa.032.0.insert.insert = or disjoint i64 %.sroa.442.0.insert.shift, %.sroa.032.0.insert.ext
  store i64 %.sroa.032.0.insert.insert, ptr %i.bk, align 8
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
  %i.k = load <4 x float>, ptr %i.j, align 4
  %i.l = bitcast i64 %1 to <2 x i32>
  %i.m = bitcast i64 %2 to <2 x i32>
  %spec.select49.a = select i1 %or.cond, i32 %i.h, i32 %i.f ; 2 uses
  %spec.select = select i1 %or.cond, i32 %i.f, i32 %i.h ; 2 uses
  %i.n = sitofp <2 x i32> %i.m to <2 x float>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul nsz <2 x float> %i.o, %i.n
  %i.q = fptosi <2 x float> %i.p to <2 x i32>
  %i.r = add nsw <2 x i32> %i.q, %i.l
  %i.s = fadd nsz <2 x float> %4, splat (float -1.000000e+00)
  %i.t = insertelement <2 x i32> poison, i32 %spec.select, i64 0
  %i.u = insertelement <2 x i32> %i.t, i32 %spec.select49.a, i64 1
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
  %i.bs = add i32 %spec.select49.a, %i.ac
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
  store i64 0, ptr %11, align 8
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
  store i64 %.sroa.0.sroa.0.0.insert.insert.i87.us, ptr %12, align 8
  store i64 %.sroa.8.12.insert.insert.i83.us, ptr %i.cv, align 8
  %i.dt = zext i32 %.0133.us to i64
  %i.du = load ptr, ptr %6, align 8, !tbaa !437
  %i.dv = getelementptr inbounds nuw [296 x i8], ptr %i.du, i64 %i.dt
  %i.dw = add i32 %.0133.us, 1                    ; 3 uses
  %i.dx = icmp eq i32 %i.dw, %i.cw
  call void @_ZN3Hud8drawItemERK9ItemStackRKN4core4rectIiEEb(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.dv, ptr noundef nonnull align 4 dereferenceable(16) %12, i1 noundef zeroext %i.dx)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %exitcond.not = icmp eq i32 %i.dw, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !433

._crit_edge:                                      ; preds = %bb.l, %bb.s, %bb.g
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.s
  %.0133 = phi i32 [ %i.ex, %bb.s ], [ %5, %.lr.ph ] ; 7 uses
  %i.dy = load i32, ptr %i.a, align 8, !tbaa !117
  %i.dz = load i32, ptr %i.c, align 4, !tbaa !118 ; 9 uses
  %i.ea = shl nsw i32 %i.dz, 1
  %i.eb = add nsw i32 %i.ea, %i.dy                ; 4 uses
  switch i16 %8, label %bb.p [
    i16 1, label %bb.m
    i16 2, label %bb.n
    i16 3, label %bb.o
  ]

bb.m:                                             ; preds = %.lr.ph.split
  %i.ec = xor i32 %.0133, -1
  %i.ed = add i32 %i.cs, %i.ec
  %i.ee = mul nsw i32 %i.eb, %i.ed
  %i.ef = add nsw i32 %i.ee, %i.dz
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph.split
  %i.eg = sub nsw i32 %.0133, %5
  %i.eh = mul nsw i32 %i.eb, %i.eg
  %i.ei = add nsw i32 %i.eh, %i.dz
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph.split
  %i.ej = xor i32 %.0133, -1
  %i.ek = add i32 %i.cs, %i.ej
  %i.el = mul nsw i32 %i.eb, %i.ek
  %i.em = add nsw i32 %i.el, %i.dz
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.split
  %i.en = sub nsw i32 %.0133, %5
  %i.eo = mul nsw i32 %i.eb, %i.en
  %i.ep = add nsw i32 %i.eo, %i.dz
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.098.0 = phi i32 [ %i.ep, %bb.p ], [ %i.ef, %bb.m ], [ %i.dz, %bb.n ], [ %i.dz, %bb.o ] ; 2 uses
  %.sroa.8.0 = phi i32 [ %i.dz, %bb.p ], [ %i.dz, %bb.m ], [ %i.ei, %bb.n ], [ %i.em, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.eq = add nsw i32 %.sroa.098.0, %i.aa
  %i.er = add nsw i32 %.sroa.8.0, %i.ac
  %i.es = add nsw i32 %i.ct, %.sroa.098.0
  %.sroa.8.8.insert.ext.i78 = zext i32 %i.es to i64
  %i.et = add nsw i32 %i.cu, %.sroa.8.0
  %.sroa.8.12.insert.ext.i81 = zext i32 %i.et to i64
  %.sroa.8.12.insert.shift.i82 = shl nuw i64 %.sroa.8.12.insert.ext.i81, 32
  %.sroa.8.12.insert.insert.i83 = or disjoint i64 %.sroa.8.12.insert.shift.i82, %.sroa.8.8.insert.ext.i78
  %.sroa.0.sroa.6.0.insert.ext.i84 = zext i32 %i.er to i64
  %.sroa.0.sroa.6.0.insert.shift.i85 = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext.i84, 32
  %.sroa.0.sroa.0.0.insert.ext.i86 = zext i32 %i.eq to i64
  %.sroa.0.sroa.0.0.insert.insert.i87 = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift.i85, %.sroa.0.sroa.0.0.insert.ext.i86
  store i64 %.sroa.0.sroa.0.0.insert.insert.i87, ptr %12, align 8
  store i64 %.sroa.8.12.insert.insert.i83, ptr %i.cv, align 8
  %i.eu = zext i32 %.0133 to i64
  %i.ev = load ptr, ptr %6, align 8, !tbaa !437
  %i.ew = getelementptr inbounds nuw [296 x i8], ptr %i.ev, i64 %i.eu
  %i.ex = add i32 %.0133, 1                       ; 3 uses
  %i.ey = icmp eq i32 %i.ex, %i.cw
  call void @_ZN3Hud8drawItemERK9ItemStackRKN4core4rectIiEEb(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.ew, ptr noundef nonnull align 4 dereferenceable(16) %12, i1 noundef zeroext %i.ey)
  %i.ez = load ptr, ptr @g_touchcontrols, align 8 ; 2 uses
  %.not134 = icmp eq ptr %i.ez, null
  br i1 %.not134, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fa = trunc i32 %.0133 to i16
  call void @_ZN13TouchControls18registerHotbarRectEtRKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(712) %i.ez, i16 noundef zeroext %i.fa, ptr noundef nonnull align 4 dereferenceable(16) %12)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %exitcond136.not = icmp eq i32 %i.ex, %.sroa.speculated
  br i1 %exitcond136.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !433
}

declare void @_ZN13TouchControls18registerHotbarRectEtRKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(712), i16 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN3Hud16hasElementOfTypeE14HudElementType(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(572) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135  ; 2 uses
  %.not1516.not = icmp eq ptr %i.d, %i.f
  br i1 %.not1516.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.011.017 = phi ptr [ %i.j, %.critedge ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.011.017, align 8, !tbaa !137 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.g, align 8, !tbaa !141
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %._crit_edge, label %.critedge

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
  %.sroa.02.0.copyload = load i48, ptr %1, align 2 ; 3 uses
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
  %4 = load ptr, ptr %i.p, align 8, !tbaa !69
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 304
  %i.ad = load ptr, ptr %5, align 8
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4 ; 4 uses
  %.sroa.34.0.copyload = load float, ptr %.sroa.34.0..sroa_idx, align 4, !tbaa !23 ; 4 uses
  %i.ae = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(233) %i.p) ; 15 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !58 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !58 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ak = fmul nsz float %.sroa.18.0.copyload, %i.ah
  %6 = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1026.0.copyload, float %i.af, float %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !58 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ao = load float, ptr %i.an, align 4, !tbaa !58 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !58 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.as = load float, ptr %i.ar, align 4, !tbaa !58 ; 3 uses
  %i.at = fmul nsz float %.sroa.18.0.copyload, %i.ao
  %i.au = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1026.0.copyload, float %i.am, float %i.at)
  %i.av = tail call nsz float @llvm.fmuladd.f32(float %.sroa.26.0.copyload, float %i.aq, float %i.au)
  %i.aw = tail call nsz float @llvm.fmuladd.f32(float %.sroa.34.0.copyload, float %i.as, float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !58 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.ba = load float, ptr %i.az, align 4, !tbaa !58 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.bd = fmul nsz float %.sroa.18.0.copyload, %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  %i.bf = load float, ptr %i.be, align 4, !tbaa !58 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 60
  %i.bi = load float, ptr %i.aj, align 4, !tbaa !58 ; 3 uses
  %7 = load float, ptr %i.ai, align 4, !tbaa !58  ; 3 uses
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %.sroa.26.0.copyload, float %7, float %6)
  %i.bk = tail call nsz float @llvm.fmuladd.f32(float %.sroa.34.0.copyload, float %i.bi, float %i.bj)
  %8 = load float, ptr %i.bb, align 4, !tbaa !58  ; 3 uses
  %9 = load <2 x float>, ptr %i.bg, align 4, !tbaa !58 ; 2 uses
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !58
  %i.bm = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1026.0.copyload, float %i.ay, float %i.bd)
  %10 = load <2 x float>, ptr %i.bc, align 4, !tbaa !58 ; 3 uses
  %11 = fmul nsz float %.sroa.18.0.copyload, %i.bf
  %12 = tail call nsz float @llvm.fmuladd.f32(float %.sroa.26.0.copyload, float %8, float %i.bm)
  %13 = insertelement <2 x float> poison, float %.sroa.34.0.copyload, i64 0
  %14 = insertelement <2 x float> %13, float %.sroa.1026.0.copyload, i64 1
  %i.bn = insertelement <2 x float> poison, float %12, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %11, i64 1
  %15 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %10, <2 x float> %i.bo) ; 2 uses
  %16 = fmul nsz float %i.x, %i.aw
  %i.bp = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %.sroa.26.0.copyload, i64 1
  %17 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.br = insertelement <2 x float> %17, float %i.w, i64 0 ; 3 uses
  %18 = insertelement <2 x float> %15, float %16, i64 0
  %19 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.br, <2 x float> %18)
  %i.bs = insertelement <2 x float> %15, float %.sroa.34.0.copyload, i64 1
  %i.bt = insertelement <2 x float> poison, float %i.y, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bl, i64 1 ; 2 uses
  %i.bv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bu, <2 x float> %19)
  %i.bw = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bv) ; 3 uses
  %i.bx = fcmp nsz uge float %i.bw, 0.000000e+00  ; 2 uses
  br i1 %i.bx, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.by = fmul nsz float %.sroa.14.0.copyload, %i.bf
  %20 = extractelement <2 x float> %10, i64 1     ; 2 uses
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %20, float %i.by)
  %i.ca = fmul nsz float %.sroa.14.0.copyload, %i.ba
  %i.cb = fmul nsz float %.sroa.14.0.copyload, %i.ah
  %i.cc = fmul nsz float %.sroa.14.0.copyload, %i.ao
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.am, float %i.cc)
  %i.ce = tail call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %i.aq, float %i.cd)
  %i.cf = tail call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.as, float %i.ce)
  %i.cg = fmul nsz float %i.x, %i.cf
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.ay, float %i.ca)
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %8, float %i.ch)
  %21 = extractelement <2 x float> %10, i64 0     ; 2 uses
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %21, float %i.ci)
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.af, float %i.cb)
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %7, float %i.ck)
  %i.cm = tail call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.bi, float %i.cl)
  %i.cn = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %.sroa.22.0.copyload, i64 1
  %i.cp = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.bz, i64 1
  %i.cr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.br, <2 x float> %i.cq)
  %i.cs = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %.sroa.30.0.copyload, i64 1
  %i.cu = insertelement <2 x float> %9, float %i.y, i64 0
  %i.cv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cu, <2 x float> %i.cr)
  %i.cw = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.cv)
  %i.cx = fmul nsz float %.sroa.12.0.copyload, %i.bf
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %20, float %i.cx)
  %i.cz = fmul nsz float %.sroa.12.0.copyload, %i.ba
  %i.da = fmul nsz float %.sroa.12.0.copyload, %i.ah
  %i.db = fmul nsz float %.sroa.12.0.copyload, %i.ao
  %i.dc = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.am, float %i.db)
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %.sroa.20.0.copyload, float %i.aq, float %i.dc)
  %i.de = tail call nsz float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float %i.as, float %i.dd)
  %i.df = fmul nsz float %i.x, %i.de
  %i.dg = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.ay, float %i.cz)
  %i.dh = tail call nsz float @llvm.fmuladd.f32(float %.sroa.20.0.copyload, float %8, float %i.dg)
  %i.di = tail call nsz float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float %21, float %i.dh)
  %i.dj = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.af, float %i.da)
  %i.dk = tail call nsz float @llvm.fmuladd.f32(float %.sroa.20.0.copyload, float %7, float %i.dj)
  %i.dl = tail call nsz float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float %i.bi, float %i.dk)
  %i.dm = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %.sroa.20.0.copyload, i64 1
  %i.do = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.cy, i64 1
  %i.dq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.br, <2 x float> %i.dp)
  %i.dr = insertelement <2 x float> poison, float %i.di, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %.sroa.28.0.copyload, i64 1
  %i.dt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.bu, <2 x float> %i.dq)
  %i.du = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.dt)
  %i.dv = fcmp nsz oeq float %i.bw, 0.000000e+00
  %i.dw = fdiv nsz float 1.000000e+00, %i.bw
  %i.dx = select nsz i1 %i.dv, float 1.000000e+00, float %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dz = fpext nsz float %i.du to double
  %i.ea = fmul nsz double %i.dz, 5.000000e-01
  %i.eb = fpext nsz float %i.dx to double
  %i.ec = fmul nsz float %i.cw, %i.dx
  %i.ed = fpext nsz float %i.ec to double
  %i.ee = fneg nsz double %i.ed
  %i.ef = load <2 x i32>, ptr %i.dy, align 8, !tbaa !78
  %i.eg = uitofp <2 x i32> %i.ef to <2 x double>
  %i.eh = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ee, i64 1
  %i.ej = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.eb, i64 0
  %i.ek = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ej, <2 x double> splat (double 5.000000e-01))
  %i.el = fmul nsz <2 x double> %i.ek, %i.eg
  %i.em = fptosi <2 x double> %i.el to <2 x i32>
  store <2 x i32> %i.em, ptr %3, align 4, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.bx
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
  %.pre1165 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !135
  %.phi.trans.insert1166 = getelementptr inbounds nuw i8, ptr %.pre, i64 400
  %.pre1167 = load ptr, ptr %.phi.trans.insert1166, align 8, !tbaa !135
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.ag = phi ptr [ %.pre1167, %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i ], [ %i.y, %bb.b ] ; 2 uses
  %i.ah = phi ptr [ %.pre1165, %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i ], [ %i.z, %bb.b ] ; 2 uses
  %.sroa.31.6 = phi ptr [ %i.af, %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 2 uses
  %.sroa.17.4 = phi ptr [ %i.ae, %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 4 uses
  %.not10071146 = icmp eq ptr %i.ah, %i.ag
  br i1 %.not10071146, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit
  %.sroa.0966.01150 = phi ptr [ %.sroa.0966.1, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.17.4, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ] ; 8 uses
  %.sroa.17.01149 = phi ptr [ %.sroa.17.1, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.17.4, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ] ; 7 uses
  %.sroa.31.01148 = phi ptr [ %.sroa.31.1, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.31.6, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ] ; 3 uses
  %.sroa.0963.01147 = phi ptr [ %i.az, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ], [ %i.ah, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.0963.01147, align 8, !tbaa !137 ; 3 uses
  %.not333 = icmp eq ptr %i.ai, null
  br i1 %.not333, label %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.17.01149, %.sroa.31.01148
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ai, ptr %.sroa.17.01149, align 8, !tbaa !137
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.17.01149, i64 8
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.ak = ptrtoint ptr %.sroa.17.01149 to i64
  %i.al = ptrtoint ptr %.sroa.0966.01150 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 6 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.f, label %_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #33
          to label %.noexc337 unwind label %.loopexit.split-lp1018

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
          to label %.noexc338 unwind label %.loopexit1017 ; 4 uses

.noexc338:                                        ; preds = %_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.am ; 2 uses
  store ptr %i.ai, ptr %i.av, align 8, !tbaa !137
  %i.aw = icmp sgt i64 %i.am, 0
  br i1 %i.aw, label %bb.g, label %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.g:                                             ; preds = %.noexc338
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %.sroa.0966.01150, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.g, %.noexc338
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0966.01150, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0966.01150, i64 noundef %i.am) #35
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit

.loopexit1017:                                    ; preds = %_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit1019 = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN3Hud15drawLuaElementsERKN4core8vector3dIsEE:bb.a
  br i1 %.not.i.i374, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN10HudElementD2Ev.exit373
  store ptr %6, ptr %.sroa.17.2, align 8, !tbaa !137
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.17.2, i64 8
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backEOS1_.exit383

bb.r:                                             ; preds = %_ZN10HudElementD2Ev.exit373
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
  %.sroa.0948.01158 = phi ptr [ %.sroa.0966.3, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPP10HudElementSt6vectorIS3_SaIS3_EEEEZN3Hud15drawLuaElementsERKN4core8vector3dIsEEE3$_0EvT_SG_T0_.exit" ], [ %i.anu, %.critedge.thread ] ; 2 uses
  %i.jl = load ptr, ptr %.sroa.0948.01158, align 8, !tbaa !137 ; 62 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %32 = load <2 x float>, ptr %i.jm, align 4, !tbaa !58
  %33 = load i32, ptr %i.hd, align 4, !tbaa !492  ; 2 uses
  %34 = load i32, ptr %i.hc, align 8, !tbaa !493  ; 2 uses
  %35 = uitofp nsz i32 %33 to float
  %i.jn = uitofp nsz i32 %34 to float
  %i.jo = insertelement <2 x float> poison, float %i.jn, i64 0
  %i.jp = insertelement <2 x float> %i.jo, float %35, i64 1
  %i.jq = fmul nsz <2 x float> %32, %i.jp
  %i.jr = fpext <2 x float> %i.jq to <2 x double>
  %i.js = fadd nsz <2 x double> %i.jr, splat (double 5.000000e-01)
  %i.jt = call nsz <2 x double> @llvm.floor.v2f64(<2 x double> %i.js)
  %i.ju = fptosi <2 x double> %i.jt to <2 x i32>  ; 5 uses
  store <2 x i32> %i.ju, ptr %9, align 8, !tbaa !78
  %i.jv = load i32, ptr %i.jl, align 8, !tbaa !141
  switch i32 %i.jv, label %bb.fk [
    i32 1, label %bb.ad
    i32 2, label %bb.bv
    i32 3, label %bb.bx
    i32 4, label %bb.cl
    i32 5, label %bb.dx
    i32 0, label %bb.dz
    i32 6, label %bb.ej
    i32 7, label %bb.fb
    i32 8, label %bb.fj
  ]

.loopexit1011:                                    ; preds = %bb.cl, %bb.dx, %bb.fj, %_ZTW10infostream.exit, %.noexc738, %bb.fo, %bb.fp, %_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit, %bb.fs, %bb.fw, %.noexc783, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i780, %.noexc785
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

.loopexit.split-lp:                               ; preds = %bb.fu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.ad:                                            ; preds = %bb.ac
  %i.jw = load ptr, ptr @g_fontengine, align 8, !tbaa !131
  %i.jx = invoke noundef i32 @_ZN10FontEngine18getDefaultFontSizeEv(ptr noundef nonnull align 8 dereferenceable(1327) %i.jw)
          to label %bb.ae unwind label %bb.af     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jl, i64 128
  %i.jz = load float, ptr %i.jy, align 8, !tbaa !494 ; 2 uses
  %i.ka = fcmp nsz ogt float %i.jz, 0.000000e+00
  %i.kb = uitofp nsz i32 %i.jx to float
  %i.kc = fmul nsz float %i.jz, %i.kb
  %i.kd = fptoui float %i.kc to i32
  %.0256 = select i1 %i.ka, i32 %i.kd, i32 %i.jx
  %i.ke = load ptr, ptr @g_fontengine, align 8, !tbaa !131
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jl, i64 176
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !327 ; 3 uses
  %i.kh = and i32 %i.kg, 4
  %.not311 = icmp eq i32 %i.kh, 0
  %i.ki = and i32 %i.kg, 1
  %.sroa.3.0.insert.ext = zext nneg i32 %i.ki to i64
  %i.kj = lshr i32 %i.kg, 1
  %i.kk = and i32 %i.kj, 1
  %.sroa.4945.0.insert.ext = zext nneg i32 %i.kk to i64
  %.sroa.4945.0.insert.shift = shl nuw nsw i64 %.sroa.4945.0.insert.ext, 48
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 40
  %.sroa.4945.0.insert.insert = or disjoint i64 %.sroa.4945.0.insert.shift, %.sroa.3.0.insert.shift
  %.sroa.2944.0.insert.ext = select i1 %.not311, i64 17179869184, i64 4294967296
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.4945.0.insert.insert, %.sroa.2944.0.insert.ext
  %.sroa.0943.0.insert.ext = zext i32 %.0256 to i64
  %.sroa.2944.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, %.sroa.0943.0.insert.ext
  %.sroa.0943.0.insert.insert = or disjoint i64 %.sroa.2944.0.insert.insert, 72057594037927936
  %i.kl = invoke noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.ke, i64 %.sroa.0943.0.insert.insert)
          to label %bb.ag unwind label %bb.ai     ; 9 uses

bb.af:                                            ; preds = %bb.ad
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.ag:                                            ; preds = %bb.ae
  %i.kn = load ptr, ptr %i.kl, align 8, !tbaa !69
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = invoke noundef i32 %i.kp(ptr noundef nonnull align 8 dereferenceable(8) %i.kl)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %.not1010 = icmp eq i32 %i.kq, 3
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jl, i64 88
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !489 ; 3 uses
  %i.kt = icmp ult i32 %i.ks, 16777216
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.ku = and i32 %i.ks, -16777216
  %i.kv = select i1 %i.kt, i32 -16777216, i32 %i.ku
  %i.kw = and i32 %i.ks, 16777215
  %i.kx = or disjoint i32 %i.kv, %i.kw
  store i32 %i.kx, ptr %10, align 4, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !77
  %i.la = getelementptr inbounds nuw i8, ptr %i.jl, i64 64
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !22
  invoke void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.449") align 8 %13, i64 %i.lb, ptr %i.kz)
          to label %bb.ak unwind label %bb.bb

bb.ai:                                            ; preds = %bb.ae
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.aj:                                            ; preds = %bb.ag
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  store ptr %i.iu, ptr %12, align 8, !tbaa !333, !alias.scope !495
  store i64 0, ptr %i.iv, align 8, !tbaa !335, !alias.scope !495
  store i32 0, ptr %i.iu, align 8, !tbaa !337, !alias.scope !495
  %i.le = load i64, ptr %i.iw, align 8, !tbaa !335, !noalias !495
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.le)
          to label %.preheader.i unwind label %bb.al

.preheader.i:                                     ; preds = %bb.ak
  %i.lf = load i64, ptr %i.iw, align 8, !tbaa !335, !noalias !495 ; 2 uses
  %.not19.i = icmp eq i64 %i.lf, 0
  br i1 %.not19.i, label %_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, label %.lr.ph.i

bb.al:                                            ; preds = %bb.ak
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ap
  %i.lh = phi i64 [ %i.lw, %bb.ap ], [ %i.lf, %.preheader.i ] ; 2 uses
  %.017.i = phi i64 [ %i.ma, %bb.ap ], [ 0, %.preheader.i ] ; 3 uses
  %i.li = load ptr, ptr %13, align 8, !tbaa !338, !noalias !495 ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %.017.i
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !337 ; 2 uses
  %i.ll = icmp eq i32 %i.lk, 92
  br i1 %i.ll, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.i
  %i.lm = add nuw i64 %.017.i, 1                  ; 3 uses
  %.not.i392 = icmp ult i64 %i.lm, %i.lh
  br i1 %.not.i392, label %._crit_edge20.i, label %_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit

._crit_edge20.i:                                  ; preds = %bb.am
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.lm
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !337
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge20.i, %.lr.ph.i
  %i.ln = phi i32 [ %.pre.i, %._crit_edge20.i ], [ %i.lk, %.lr.ph.i ]
  %.1.i = phi i64 [ %i.lm, %._crit_edge20.i ], [ %.017.i, %.lr.ph.i ]
  %i.lo = load i64, ptr %i.iv, align 8, !tbaa !335, !alias.scope !495 ; 4 uses
  %i.lp = add i64 %i.lo, 1                        ; 3 uses
  %i.lq = load ptr, ptr %12, align 8, !tbaa !338, !alias.scope !495 ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.iu
  br i1 %i.lr, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.an
  %i.ls = icmp ult i64 %i.lo, 4
  call void @llvm.assume(i1 %i.ls)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.an
  %i.lt = load i64, ptr %i.iu, align 8, !tbaa !23, !alias.scope !495
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.lu = phi i64 [ %i.lt, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.lv = icmp ugt i64 %i.lp, %i.lu
  br i1 %i.lv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.lo, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i391 unwind label %bb.aq

.noexc.i391:                                      ; preds = %bb.ao
  %.pre.i.i.i = load ptr, ptr %12, align 8, !tbaa !338, !alias.scope !495
  %.pre21.i = load i64, ptr %i.iw, align 8, !tbaa !335, !noalias !495
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc.i391, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i
  %i.lw = phi i64 [ %.pre21.i, %.noexc.i391 ], [ %i.lh, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i ] ; 2 uses
  %i.lx = phi ptr [ %.pre.i.i.i, %.noexc.i391 ], [ %i.lq, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.lo
  store i32 %i.ln, ptr %i.ly, align 4, !tbaa !337
  store i64 %i.lp, ptr %i.iv, align 8, !tbaa !335, !alias.scope !495
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.lp
  store i32 0, ptr %i.lz, align 4, !tbaa !337
  %i.ma = add nuw i64 %.1.i, 1                    ; 2 uses
  %i.mb = icmp ult i64 %i.ma, %i.lw
  br i1 %i.mb, label %.lr.ph.i, label %_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, !llvm.loop !441

bb.aq:                                            ; preds = %bb.ao
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.al
  %.pn.i = phi { ptr, i32 } [ %i.mc, %bb.aq ], [ %i.lg, %bb.al ] ; 2 uses
  %i.md = load ptr, ptr %12, align 8, !tbaa !338, !alias.scope !495 ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.iu
  br i1 %i.me, label %.body393, label %.body393.sink.split

_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit: ; preds = %bb.ap, %bb.am, %.preheader.i
  %i.mf = load ptr, ptr %12, align 8, !tbaa !338
end_hunk_1
begin_hunk_2_@_ZN3Hud15drawLuaElementsERKN4core8vector3dIsEE:bb.a
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dm:                                            ; preds = %bb.cs
  %i.acf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  %i.acg = load ptr, ptr %20, align 8, !tbaa !338 ; 2 uses
  %i.ach = icmp eq ptr %i.acg, %i.hr
  br i1 %i.ach, label %.body595, label %.body595.sink.split

.body595.sink.split:                              ; preds = %bb.dm, %bb.cr
  %.sink1314 = phi ptr [ %i.wt, %bb.cr ], [ %i.acg, %bb.dm ]
  %.pn298.ph = phi { ptr, i32 } [ %i.ws, %bb.cr ], [ %i.acf, %bb.dm ]
  %i.aci = load i64, ptr %i.hr, align 8, !tbaa !23
  %i.acj = shl i64 %i.aci, 2
  %i.ack = add i64 %i.acj, 4
  call void @_ZdlPvm(ptr noundef %.sink1314, i64 noundef %i.ack) #35
  br label %.body595

.body595:                                         ; preds = %.body595.sink.split, %bb.dm, %bb.cr
  %.pn298 = phi { ptr, i32 } [ %i.ws, %bb.cr ], [ %i.acf, %bb.dm ], [ %.pn298.ph, %.body595.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %bb.dw

bb.dn:                                            ; preds = %bb.cu
  %i.acl = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.do:                                            ; preds = %_ZNSolsEf.exit, %bb.cv
  %i.acm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dp:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.acn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694

bb.dq:                                            ; preds = %bb.cz
  %i.aco = landingpad { ptr, i32 }
          cleanup
  br label %.body642

.body642:                                         ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit7.i635, %bb.dq
  %eh.lpad-body643 = phi { ptr, i32 } [ %i.aco, %bb.dq ], [ %i.zi, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit7.i635 ] ; 2 uses
  %i.acp = load ptr, ptr %24, align 8, !tbaa !338 ; 2 uses
  %i.acq = icmp eq ptr %i.acp, %i.ih
  br i1 %i.acq, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i692

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i692: ; preds = %.body642
  %i.acr = load i64, ptr %i.ih, align 8, !tbaa !23
  %i.acs = shl i64 %i.acr, 2
  %i.act = add i64 %i.acs, 4
  call void @_ZdlPvm(ptr noundef %i.acp, i64 noundef %i.act) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694: ; preds = %.body642, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i692, %bb.dp
  %.pn300 = phi { ptr, i32 } [ %i.acn, %bb.dp ], [ %eh.lpad-body643, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i692 ], [ %eh.lpad-body643, %.body642 ] ; 2 uses
  %i.acu = load ptr, ptr %25, align 8, !tbaa !77  ; 2 uses
  %i.acv = icmp eq ptr %i.acu, %i.hu
  br i1 %i.acv, label %.body628, label %.body628.sink.split

.body628.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694, %bb.cx
  %.sink1318 = phi ptr [ %i.yv, %bb.cx ], [ %i.acu, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694 ]
  %.pn300.pn.ph = phi { ptr, i32 } [ %i.yu, %bb.cx ], [ %.pn300, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694 ]
  %i.acw = load i64, ptr %i.hu, align 8, !tbaa !23
  %i.acx = add i64 %i.acw, 1
  call void @_ZdlPvm(ptr noundef %.sink1318, i64 noundef %i.acx) #35
  br label %.body628

.body628:                                         ; preds = %.body628.sink.split, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694, %bb.cx
  %.pn300.pn = phi { ptr, i32 } [ %i.yu, %bb.cx ], [ %.pn300, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit694 ], [ %.pn300.pn.ph, %.body628.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  br label %bb.dt

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655
  %i.acy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dh
  %i.acz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #34
  %i.ada = load ptr, ptr %26, align 8, !tbaa !338 ; 2 uses
  %i.adb = icmp eq ptr %i.ada, %i.ii
  br i1 %i.adb, label %.body659, label %.body659.sink.split

.body659.sink.split:                              ; preds = %bb.ds, %bb.dg
  %.sink1321 = phi ptr [ %i.aay, %bb.dg ], [ %i.ada, %bb.ds ]
  %.pn303.ph = phi { ptr, i32 } [ %i.aax, %bb.dg ], [ %i.acz, %bb.ds ]
  %i.adc = load i64, ptr %i.ii, align 8, !tbaa !23
  %i.add = shl i64 %i.adc, 2
  %i.ade = add i64 %i.add, 4
  call void @_ZdlPvm(ptr noundef %.sink1321, i64 noundef %i.ade) #35
  br label %.body659

.body659:                                         ; preds = %.body659.sink.split, %bb.ds, %bb.dg
  %.pn303 = phi { ptr, i32 } [ %i.aax, %bb.dg ], [ %i.acz, %bb.ds ], [ %.pn303.ph, %.body659.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #34
  br label %bb.dt

bb.dt:                                            ; preds = %bb.do, %.body628, %bb.dr, %.body659
  %.pn303.pn.pn = phi { ptr, i32 } [ %i.acm, %bb.do ], [ %.pn303, %.body659 ], [ %i.acy, %bb.dr ], [ %.pn300.pn, %.body628 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %22) #34
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.dn
  %.pn303.pn.pn.pn = phi { ptr, i32 } [ %.pn303.pn.pn, %bb.dt ], [ %i.acl, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  br label %bb.dw

bb.dv:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZN4core6stringIwED2Ev.exit620
  %i.adf = load ptr, ptr %18, align 8, !tbaa !338 ; 2 uses
  %i.adg = icmp eq ptr %i.adf, %i.id
  br i1 %i.adg, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit704, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i702

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i702: ; preds = %bb.dv
  %i.adh = load i64, ptr %i.id, align 8, !tbaa !23
  %i.adi = shl i64 %i.adh, 2
  %i.adj = add i64 %i.adi, 4
  call void @_ZdlPvm(ptr noundef %i.adf, i64 noundef %i.adj) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit704

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit704: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i702
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %.critedge.thread

bb.dw:                                            ; preds = %bb.du, %.body595, %bb.dl
  %.pn303.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn303.pn.pn.pn, %bb.du ], [ %.pn298, %.body595 ], [ %i.ace, %bb.dl ] ; 2 uses
  %i.adk = load ptr, ptr %18, align 8, !tbaa !338 ; 2 uses
  %i.adl = icmp eq ptr %i.adk, %i.id
  br i1 %i.adl, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit707, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i705

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i705: ; preds = %bb.dw
  %i.adm = load i64, ptr %i.id, align 8, !tbaa !23
  %i.adn = shl i64 %i.adm, 2
  %i.ado = add i64 %i.adn, 4
  call void @_ZdlPvm(ptr noundef %i.adk, i64 noundef %i.ado) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit707

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit707: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i705, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit687
  %.pn303.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn296, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit687 ], [ %.pn303.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i705 ], [ %.pn303.pn.pn.pn.pn, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.fx

bb.dx:                                            ; preds = %bb.ac
  %i.adp = invoke noundef zeroext i1 @_ZN3Hud18calculateScreenPosERKN4core8vector3dIsEEP10HudElementPNS0_8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull align 2 dereferenceable(6) %1, ptr noundef nonnull %i.jl, ptr noundef nonnull %9)
          to label %bb.dy unwind label %.loopexit1011

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.adp, label %bb.dz, label %.critedge.thread

bb.dz:                                            ; preds = %bb.dy, %bb.ac
  %i.adq = load ptr, ptr %i.hg, align 8, !tbaa !79 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %i.ads = load ptr, ptr %i.adq, align 8, !tbaa !69
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  %i.adu = load ptr, ptr %i.adt, align 8
  %i.adv = invoke noundef ptr %i.adu(ptr noundef nonnull align 8 dereferenceable(8) %i.adq, ptr noundef nonnull align 8 dereferenceable(32) %i.adr, ptr noundef null)
          to label %bb.ea unwind label %bb.eb     ; 4 uses

bb.ea:                                            ; preds = %bb.dz
  %.not290.not = icmp eq ptr %i.adv, null
  br i1 %.not290.not, label %.critedge.thread, label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.adw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #34
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adv, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %28, i8 -1, i64 16, i1 false)
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !361 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adv, i64 76
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !362 ; 2 uses
  %i.aeb = sitofp nsz i32 %i.ady to float
  %i.aec = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.aed = load float, ptr %i.aec, align 8, !tbaa !339 ; 3 uses
  %i.aee = fmul nsz float %i.aed, %i.aeb
  %i.aef = load float, ptr %i.hf, align 4, !tbaa !116 ; 3 uses
  %i.aeg = fmul nsz float %i.aee, %i.aef
  %i.aeh = fptosi float %i.aeg to i32
  %i.aei = sitofp nsz i32 %i.aea to float
  %i.aej = getelementptr inbounds nuw i8, ptr %i.jl, i64 52
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !340 ; 3 uses
  %i.ael = fmul nsz float %i.aek, %i.aei
  %i.aem = fmul nsz float %i.aef, %i.ael
  %i.aen = fptosi float %i.aem to i32
  %i.aeo = fcmp nsz olt float %i.aed, 0.000000e+00
  br i1 %i.aeo, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aep = load i32, ptr %i.hc, align 8, !tbaa !493
  %i.aeq = uitofp nsz i32 %i.aep to double
  %i.aer = fpext nnan nsz float %i.aed to double
  %i.aes = fmul nnan nsz double %i.aer, -1.000000e-02
  %i.aet = fmul nsz double %i.aes, %i.aeq
  %i.aeu = fptosi double %i.aet to i32
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sroa.0850.0 = phi i32 [ %i.aeu, %bb.ed ], [ %i.aeh, %bb.ec ]
  %i.aev = fcmp nsz olt float %i.aek, 0.000000e+00
  br i1 %i.aev, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.aew = load i32, ptr %i.hd, align 4, !tbaa !492
  %i.aex = uitofp nsz i32 %i.aew to double
  %i.aey = fpext nnan nsz float %i.aek to double
  %i.aez = fmul nnan nsz double %i.aey, -1.000000e-02
  %i.afa = fmul nsz double %i.aez, %i.aex
  %i.afb = fptosi double %i.afa to i32
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.sroa.7852.0 = phi i32 [ %i.afb, %bb.ef ], [ %i.aen, %bb.ee ]
  %i.afc = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  %i.afd = insertelement <2 x i32> poison, i32 %.sroa.0850.0, i64 0
  %i.afe = insertelement <2 x i32> %i.afd, i32 %.sroa.7852.0, i64 1 ; 2 uses
  %i.aff = sitofp <2 x i32> %i.afe to <2 x double>
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #34
  %i.afg = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %i.afh = load <2 x float>, ptr %i.afc, align 4, !tbaa !58
  %i.afi = fpext <2 x float> %i.afh to <2 x double>
  %i.afj = fadd nsz <2 x double> %i.afi, splat (double -1.000000e+00)
  %i.afk = fmul nsz <2 x double> %i.afj, %i.aff
  %i.afl = fmul nsz <2 x double> %i.afk, splat (double 5.000000e-01)
  %i.afm = fptosi <2 x double> %i.afl to <2 x i32>
  %i.afn = load <2 x i32>, ptr %9, align 8, !tbaa !78
  %i.afo = add nsw <2 x i32> %i.afn, %i.afm
  %i.afp = load <2 x float>, ptr %i.afg, align 4, !tbaa !58
  %i.afq = insertelement <2 x float> poison, float %i.aef, i64 0
  %i.afr = shufflevector <2 x float> %i.afq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afs = fmul nsz <2 x float> %i.afr, %i.afp
  %i.aft = fptosi <2 x float> %i.afs to <2 x i32>
  %i.afu = add nsw <2 x i32> %i.afo, %i.aft       ; 2 uses
  store <2 x i32> %i.afu, ptr %29, align 8, !tbaa !78
  %i.afv = add nsw <2 x i32> %i.afu, %i.afe
  store <2 x i32> %i.afv, ptr %i.hj, align 8, !tbaa !78
  %i.afw = load ptr, ptr %i.hk, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #34
  store i64 0, ptr %30, align 8
  store i32 %i.ady, ptr %i.hl, align 8, !tbaa !358
  store i32 %i.aea, ptr %i.hm, align 4, !tbaa !359
  invoke void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.afw, ptr noundef nonnull %i.adv, ptr noundef nonnull align 4 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %30, ptr noundef null, ptr noundef nonnull %28, i1 noundef zeroext true)
          to label %bb.eh unwind label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #34
  br label %.critedge.thread

bb.ei:                                            ; preds = %bb.eg
  %i.afx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #34
  br label %bb.fx

bb.ej:                                            ; preds = %bb.ac
  %i.afy = load ptr, ptr %i.hg, align 8, !tbaa !79 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %i.aga = load ptr, ptr %i.afy, align 8, !tbaa !69
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %i.agc = load ptr, ptr %i.agb, align 8
  %i.agd = invoke noundef ptr %i.agc(ptr noundef nonnull align 8 dereferenceable(8) %i.afy, ptr noundef nonnull align 8 dereferenceable(32) %i.afz, ptr noundef null)
          to label %bb.ek unwind label %bb.el     ; 3 uses

bb.ek:                                            ; preds = %bb.ej
  %.not281 = icmp eq ptr %i.agd, null
  br i1 %.not281, label %.critedge.thread, label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.age = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.em:                                            ; preds = %bb.ek
  %i.agf = getelementptr inbounds nuw i8, ptr %i.jl, i64 128
  %i.agg = load float, ptr %i.agf, align 8, !tbaa !494 ; 3 uses
  %i.agh = fptosi float %i.agg to i32
  %i.agi = getelementptr inbounds nuw i8, ptr %i.jl, i64 132
  %i.agj = load float, ptr %i.agi, align 4, !tbaa !528 ; 3 uses
  %i.agk = fptosi float %i.agj to i32
  %i.agl = fcmp nsz olt float %i.agg, 0.000000e+00
  br i1 %i.agl, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.agm = load i32, ptr %i.hc, align 8, !tbaa !493
  %i.agn = uitofp nsz i32 %i.agm to double
  %i.ago = fpext nnan nsz float %i.agg to double
  %i.agp = fmul nnan nsz double %i.ago, -1.000000e-02
  %i.agq = fmul nsz double %i.agp, %i.agn
  %i.agr = fptosi double %i.agq to i32
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.sroa.0832.0 = phi i32 [ %i.agr, %bb.en ], [ %i.agh, %bb.em ] ; 3 uses
  %i.ags = fcmp nsz olt float %i.agj, 0.000000e+00
  br i1 %i.ags, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.agt = load i32, ptr %i.hd, align 4, !tbaa !492
  %i.agu = uitofp nsz i32 %i.agt to double
  %i.agv = fpext nnan nsz float %i.agj to double
  %i.agw = fmul nnan nsz double %i.agv, -1.000000e-02
  %i.agx = fmul nsz double %i.agw, %i.agu
  %i.agy = fptosi double %i.agx to i32
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.sroa.8.0 = phi i32 [ %i.agy, %bb.ep ], [ %i.agk, %bb.eo ] ; 3 uses
  %i.agz = icmp slt i32 %.sroa.0832.0, 1
  %i.aha = icmp slt i32 %.sroa.8.0, 1
  %or.cond = select i1 %i.agz, i1 true, i1 %i.aha
  br i1 %or.cond, label %.loopexit.sink.split, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ahb = load ptr, ptr %i.by, align 8, !tbaa !71
  %i.ahc = invoke noundef ptr @_ZN6Client15getSceneManagerEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.ahb)
          to label %bb.es unwind label %bb.ev     ; 2 uses

bb.es:                                            ; preds = %bb.er
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !69
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 112
  %i.ahf = load ptr, ptr %i.ahe, align 8
  %i.ahg = invoke noundef ptr %i.ahf(ptr noundef nonnull align 8 dereferenceable(8) %i.ahc)
          to label %bb.et unwind label %bb.ev     ; 2 uses

bb.et:                                            ; preds = %bb.es
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !69
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 80
  %i.ahj = load ptr, ptr %i.ahi, align 8
  %i.ahk = invoke noundef nonnull align 4 dereferenceable(64) ptr %i.ahj(ptr noundef nonnull align 8 dereferenceable(218) %i.ahg)
          to label %bb.eu unwind label %bb.ew     ; 6 uses

bb.eu:                                            ; preds = %bb.et
  %i.ahl = load <4 x float>, ptr %i.ahk, align 4
  %i.ahm = shufflevector <4 x float> %i.ahl, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %i.aho = load <4 x float>, ptr %i.ahn, align 4
  %i.ahp = shufflevector <4 x float> %i.aho, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahk, i64 32
  %i.ahr = load <4 x float>, ptr %i.ahq, align 4
  %i.ahs = shufflevector <4 x float> %i.ahr, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahk, i64 8
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !58
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahk, i64 24
  %i.ahw = load float, ptr %i.ahv, align 4, !tbaa !58
  %i.ahx = insertelement <2 x float> %i.ahp, float %i.ahw, i64 1
  %i.ahy = fmul nsz <2 x float> %i.ahx, zeroinitializer
  %i.ahz = insertelement <2 x float> %i.ahm, float %i.ahu, i64 1
  %i.aia = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahz, <2 x float> zeroinitializer, <2 x float> %i.ahy)
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahk, i64 40
  %i.aic = load float, ptr %i.aib, align 4, !tbaa !58
  %i.aid = insertelement <2 x float> %i.ahs, float %i.aic, i64 1
  %i.aie = fadd nsz <2 x float> %i.aid, %i.aia
  %i.aif = fpext <2 x float> %i.aie to <2 x double> ; 2 uses
  %i.aig = extractelement <2 x double> %i.aif, i64 0
  %i.aih = extractelement <2 x double> %i.aif, i64 1
  %i.aii = call nsz double @llvm.atan2.f64(double %i.aig, double %i.aih)
  %i.aij = fmul nsz double %i.aii, f0x404CA5DC1A63C1F8 ; 2 uses
  %i.aik = fptrunc nsz double %i.aij to float     ; 2 uses
  %i.ail = fcmp nsz olt double %i.aij, f0xB690000000000000
  %i.aim = fadd nsz float %i.aik, 3.600000e+02
  %storemerge.i = select i1 %i.ail, float %i.aim, float %i.aik ; 3 uses
  %i.ain = fcmp nsz ult float %storemerge.i, 3.600000e+02
  %i.aio = fadd nsz float %storemerge.i, -3.600000e+02
  %storemerge7.i = select i1 %i.ain, float %storemerge.i, float %i.aio
  %i.aip = fneg nsz float %storemerge7.i
  %i.aiq = fptosi float %i.aip to i32
  %i.air = getelementptr inbounds nuw i8, ptr %i.jl, i64 88
  %i.ais = load i32, ptr %i.air, align 8, !tbaa !489
  %i.ait = add nsw i32 %i.ais, %i.aiq
  %i.aiu = srem i32 %i.ait, 360                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #34
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  %i.aiw = uitofp nneg i32 %.sroa.0832.0 to double
  %i.aix = uitofp nneg i32 %.sroa.8.0 to double
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %i.aiz = load float, ptr %i.hi, align 8, !tbaa !115
  %i.aja = load <2 x float>, ptr %i.aiv, align 4, !tbaa !58
  %i.ajb = fpext <2 x float> %i.aja to <2 x double>
  %i.ajc = fadd nsz <2 x double> %i.ajb, splat (double -1.000000e+00)
  %i.ajd = insertelement <2 x double> poison, double %i.aiw, i64 0
  %i.aje = insertelement <2 x double> %i.ajd, double %i.aix, i64 1
  %i.ajf = fmul nsz <2 x double> %i.ajc, %i.aje
  %i.ajg = fmul nsz <2 x double> %i.ajf, splat (double 5.000000e-01)
  %i.ajh = fptosi <2 x double> %i.ajg to <2 x i32>
  %i.aji = add nsw <2 x i32> %i.ajh, %i.ju
  %i.ajj = load <2 x float>, ptr %i.aiy, align 4, !tbaa !58
  %i.ajk = insertelement <2 x float> poison, float %i.aiz, i64 0
  %i.ajl = shufflevector <2 x float> %i.ajk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajm = fmul nsz <2 x float> %i.ajl, %i.ajj
  %i.ajn = fptosi <2 x float> %i.ajm to <2 x i32>
  %i.ajo = add nsw <2 x i32> %i.aji, %i.ajn       ; 2 uses
  store <2 x i32> %i.ajo, ptr %31, align 8, !tbaa !78
  %i.ajp = insertelement <2 x i32> poison, i32 %.sroa.0832.0, i64 0
  %i.ajq = insertelement <2 x i32> %i.ajp, i32 %.sroa.8.0, i64 1
  %i.ajr = add nsw <2 x i32> %i.ajo, %i.ajq
  store <2 x i32> %i.ajr, ptr %i.hh, align 8, !tbaa !78
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.jl, i64 96
  %i.ajt = load i32, ptr %i.ajs, align 8, !tbaa !491
  switch i32 %i.ajt, label %bb.fa [
    i32 0, label %.invoke1306
    i32 1, label %bb.ey
    i32 2, label %.invoke
    i32 3, label %bb.ez
  ]

bb.ev:                                            ; preds = %bb.es, %bb.er
  %i.aju = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.ew:                                            ; preds = %bb.et
  %i.ajv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.ex:                                            ; preds = %.invoke1306, %.invoke
  %i.ajw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #34
  br label %bb.fx

bb.ey:                                            ; preds = %bb.eu
  %i.ajx = sub nsw i32 0, %i.aiu
  br label %.invoke1306

.invoke1306:                                      ; preds = %bb.eu, %bb.ey
  %i.ajy = phi i32 [ %i.ajx, %bb.ey ], [ %i.aiu, %bb.eu ]
  invoke void @_ZN3Hud17drawCompassRotateEP10HudElementPN5video8ITextureERKN4core4rectIiEEi(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr nonnull poison, ptr noundef nonnull %i.agd, ptr noundef nonnull align 4 dereferenceable(16) %31, i32 noundef %i.ajy)
          to label %bb.fa unwind label %bb.ex

bb.ez:                                            ; preds = %bb.eu
  %i.ajz = sub nsw i32 0, %i.aiu
  br label %.invoke

.invoke:                                          ; preds = %bb.eu, %bb.ez
  %i.aka = phi i32 [ %i.ajz, %bb.ez ], [ %i.aiu, %bb.eu ]
  invoke void @_ZN3Hud20drawCompassTranslateEP10HudElementPN5video8ITextureERKN4core4rectIiEEi(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull %i.jl, ptr noundef nonnull %i.agd, ptr noundef nonnull align 4 dereferenceable(16) %31, i32 noundef %i.aka)
          to label %bb.fa unwind label %bb.ex

bb.fa:                                            ; preds = %.invoke1306, %.invoke, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #34
  br label %.critedge.thread

bb.fb:                                            ; preds = %bb.ac
  %i.akb = load ptr, ptr %i.by, align 8, !tbaa !71
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 632
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !529 ; 2 uses
  %.not274 = icmp eq ptr %i.akd, null
  br i1 %.not274, label %.critedge.thread, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ake = getelementptr inbounds nuw i8, ptr %i.jl, i64 128
  %i.akf = load float, ptr %i.hf, align 4, !tbaa !116 ; 2 uses
  %i.akg = load <2 x float>, ptr %i.ake, align 8, !tbaa !58 ; 3 uses
  %i.akh = extractelement <2 x float> %i.akg, i64 0 ; 2 uses
  %i.aki = fcmp nsz olt float %i.akh, 0.000000e+00
  br i1 %i.aki, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.akj = uitofp nsz i32 %34 to double
  %i.akk = fpext nnan nsz float %i.akh to double
  %i.akl = fmul nnan nsz double %i.akk, -1.000000e-02
  %i.akm = fmul nsz double %i.akl, %i.akj
  %i.akn = fptosi double %i.akm to i32
  %i.ako = insertelement <2 x i32> poison, i32 %i.akn, i64 0
  %i.akp = shufflevector <2 x i32> %i.ako, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.fg

bb.fe:                                            ; preds = %bb.fc
  %i.akq = insertelement <2 x float> poison, float %i.akf, i64 0
  %i.akr = shufflevector <2 x float> %i.akq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aks = fmul nsz <2 x float> %i.akr, %i.akg
  %i.akt = fptosi <2 x float> %i.aks to <2 x i32>
  %i.aku = extractelement <2 x float> %i.akg, i64 1 ; 2 uses
  %i.akv = fcmp nsz olt float %i.aku, 0.000000e+00
  br i1 %i.akv, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.akw = uitofp nsz i32 %33 to double
  %i.akx = fpext nnan nsz float %i.aku to double
  %i.aky = fmul nnan nsz double %i.akx, -1.000000e-02
  %i.akz = fmul nsz double %i.aky, %i.akw
  %i.ala = fptosi double %i.akz to i32
  %i.alb = insertelement <2 x i32> poison, i32 %i.ala, i64 0
  %i.alc = shufflevector <2 x i32> %i.alb, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fe, %bb.ff, %bb.fd
  %i.ald = phi <2 x i32> [ %i.akp, %bb.fd ], [ %i.alc, %bb.ff ], [ %i.akt, %bb.fe ] ; 4 uses
  %i.ale = extractelement <2 x i32> %i.ald, i64 0
  %i.alf = icmp sgt i32 %i.ale, 0
  %i.alg = extractelement <2 x i32> %i.ald, i64 1
  %i.alh = icmp sgt i32 %i.alg, 0
  %or.cond9.not = select i1 %i.alf, i1 %i.alh, i1 false
  br i1 %or.cond9.not, label %bb.fh, label %.loopexit.sink.split

bb.fh:                                            ; preds = %bb.fg
  %i.ali = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  %i.alj = uitofp <2 x i32> %i.ald to <2 x double>
  %i.alk = load <2 x float>, ptr %i.ali, align 4, !tbaa !58
  %i.all = fpext <2 x float> %i.alk to <2 x double>
  %i.alm = fadd nsz <2 x double> %i.all, splat (double -1.000000e+00)
  %i.aln = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %i.alo = fmul nsz <2 x double> %i.alm, %i.alj
  %i.alp = fmul nsz <2 x double> %i.alo, splat (double 5.000000e-01)
  %i.alq = fptosi <2 x double> %i.alp to <2 x i32>
  %i.alr = load <2 x float>, ptr %i.aln, align 4, !tbaa !58
  %i.als = insertelement <2 x float> poison, float %i.akf, i64 0
  %i.alt = shufflevector <2 x float> %i.als, <2 x float> poison, <2 x i32> zeroinitializer
  %i.alu = fmul nsz <2 x float> %i.alt, %i.alr
  %i.alv = fptosi <2 x float> %i.alu to <2 x i32>
  %i.alw = add <2 x i32> %i.alv, %i.ju
  %i.alx = add <2 x i32> %i.alw, %i.alq           ; 2 uses
  %.sroa.0793.4.insert.insert800 = bitcast <2 x i32> %i.alx to i64
  %i.aly = add nsw <2 x i32> %i.alx, %i.ald
  %.sroa.10.12.insert.insert810 = bitcast <2 x i32> %i.aly to i64
  invoke void @_ZN7Minimap11drawMinimapEN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(192) %i.akd, i64 %.sroa.0793.4.insert.insert800, i64 %.sroa.10.12.insert.insert810)
          to label %.critedge.thread unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.alz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fj:                                            ; preds = %bb.ac
  %i.ama = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %i.amb = getelementptr inbounds nuw i8, ptr %i.jl, i64 96
  %i.amc = load i32, ptr %i.amb, align 8, !tbaa !491
  %i.amd = trunc i32 %i.amc to i16
  %i.ame = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  invoke void @_ZN3Hud10drawHotbarERKN4core8vector2dIiEERKNS1_IfEEtS7_(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.ama, i16 noundef zeroext %i.amd, ptr noundef nonnull align 4 dereferenceable(8) %i.ame)
          to label %.critedge.thread unwind label %.loopexit1011

bb.fk:                                            ; preds = %bb.ac
  br i1 %.not.i736, label %_ZTW10infostream.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.fk, %bb.fl
  %i.amf = load ptr, ptr %i.jk, align 8, !tbaa !508, !nonnull !123, !align !509 ; 2 uses
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !69
  %i.amh = load ptr, ptr %i.amg, align 8
  %i.ami = invoke noundef zeroext i1 %i.amh(ptr noundef nonnull align 8 dereferenceable(8) %i.amf)
          to label %.noexc738 unwind label %.loopexit1011, !inline_history !453

.noexc738:                                        ; preds = %_ZTW10infostream.exit
  %.v.i737 = select i1 %i.ami, i64 976, i64 984
  %i.amj = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.v.i737 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.16, ptr %i.b, align 8, !tbaa !349
  %i.amk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.amj, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.fm unwind label %.loopexit1011 ; 0 uses

bb.fm:                                            ; preds = %.noexc738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aml = load ptr, ptr %i.amj, align 8, !tbaa !350 ; 5 uses
  %.not.i740 = icmp eq ptr %i.aml, null
  br i1 %.not.i740, label %_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !69
  %i.amn = getelementptr i8, ptr %i.amm, i64 -24
  %i.amo = load i64, ptr %i.amn, align 8
  %i.amp = getelementptr inbounds i8, ptr %i.aml, i64 %i.amo
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 32
  %i.amr = load i32, ptr %i.amq, align 8, !tbaa !357
  %i.ams = icmp eq i32 %i.amr, 0
  br i1 %i.ams, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.aml)
          to label %.noexc742 unwind label %.loopexit1011

.noexc742:                                        ; preds = %bb.fo
  %.pre.i741 = load ptr, ptr %i.amj, align 8, !tbaa !350
  br label %bb.fp

bb.fp:                                            ; preds = %.noexc742, %bb.fn
  %i.amt = phi ptr [ %.pre.i741, %.noexc742 ], [ %i.aml, %bb.fn ]
  %i.amu = load i32, ptr %i.jl, align 8, !tbaa !530
  %i.amv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.amt, i32 noundef %i.amu)
          to label %_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit unwind label %.loopexit1011 ; 0 uses

_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit: ; preds = %bb.fm, %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.17, ptr %i.a, align 8, !tbaa !349
  %i.amw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.amj, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.fq unwind label %.loopexit1011 ; 2 uses

bb.fq:                                            ; preds = %_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.amx = load ptr, ptr %i.amw, align 8, !tbaa !350 ; 5 uses
  %.not.i745 = icmp eq ptr %i.amx, null
  br i1 %.not.i745, label %.critedge.thread, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !69
  %i.amz = getelementptr i8, ptr %i.amy, i64 -24
  %i.ana = load i64, ptr %i.amz, align 8          ; 2 uses
  %i.anb = getelementptr inbounds i8, ptr %i.amx, i64 %i.ana
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 32
  %i.and = load i32, ptr %i.anc, align 8, !tbaa !357
  %i.ane = icmp eq i32 %i.and, 0
  br i1 %i.ane, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.amx)
          to label %.noexc747 unwind label %.loopexit1011

.noexc747:                                        ; preds = %bb.fs
  %.pre.i746 = load ptr, ptr %i.amw, align 8, !tbaa !350 ; 2 uses
  %.pre1171 = load ptr, ptr %.pre.i746, align 8, !tbaa !69
  %.phi.trans.insert1172 = getelementptr i8, ptr %.pre1171, i64 -24
  %.pre1173 = load i64, ptr %.phi.trans.insert1172, align 8
  br label %bb.ft

bb.ft:                                            ; preds = %.noexc747, %bb.fr
  %i.anf = phi i64 [ %.pre1173, %.noexc747 ], [ %i.ana, %bb.fr ]
  %i.ang = phi ptr [ %.pre.i746, %.noexc747 ], [ %i.amx, %bb.fr ] ; 2 uses
  %i.anh = getelementptr inbounds i8, ptr %i.ang, i64 %i.anf
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 240
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !515 ; 6 uses
  %.not.i.i.i777 = icmp eq ptr %i.anj, null
  br i1 %.not.i.i.i777, label %bb.fu, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i778

bb.fu:                                            ; preds = %bb.ft
  invoke void @_ZSt16__throw_bad_castv() #33
          to label %.noexc782 unwind label %.loopexit.split-lp

.noexc782:                                        ; preds = %bb.fu
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i778: ; preds = %bb.ft
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 56
  %i.anl = load i8, ptr %i.ank, align 8, !tbaa !520
  %.not.i1.i.i779 = icmp eq i8 %i.anl, 0
  br i1 %.not.i1.i.i779, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i778
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anj, i64 67
  %i.ann = load i8, ptr %i.anm, align 1, !tbaa !23
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i780

bb.fw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i778
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.anj)
          to label %.noexc783 unwind label %.loopexit1011

.noexc783:                                        ; preds = %bb.fw
  %i.ano = load ptr, ptr %i.anj, align 8, !tbaa !69
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 48
  %i.anq = load ptr, ptr %i.anp, align 8
  %i.anr = invoke noundef signext i8 %i.anq(ptr noundef nonnull align 8 dereferenceable(570) %i.anj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i780 unwind label %.loopexit1011, !inline_history !444

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i780: ; preds = %.noexc783, %bb.fv
  %.0.i.i.i781 = phi i8 [ %i.ann, %bb.fv ], [ %i.anr, %.noexc783 ]
  %i.ans = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ang, i8 noundef signext %.0.i.i.i781)
          to label %.noexc785 unwind label %.loopexit1011

.noexc785:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i780
  %i.ant = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ans)
          to label %.critedge.thread unwind label %.loopexit1011 ; 0 uses

.critedge.thread:                                 ; preds = %bb.ek, %bb.fh, %_ZN14EnrichedStringD2Ev.exit567, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit704, %bb.cm, %bb.dy, %bb.fb, %bb.fj, %_ZN11StreamProxylsEPFRSoS0_E.exit, %bb.bv, %bb.eh, %bb.fa, %.noexc785, %bb.fq, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.anu = getelementptr inbounds nuw i8, ptr %.sroa.0948.01158, i64 8 ; 2 uses
  %.not1008 = icmp eq ptr %i.anu, %.sroa.17.3
  br i1 %.not1008, label %.loopexit, label %bb.ac

bb.fx:                                            ; preds = %.loopexit1012, %.loopexit.split-lp1013, %.loopexit1011, %.loopexit.split-lp, %bb.fi, %bb.ev, %bb.ex, %bb.ew, %bb.el, %bb.eb, %bb.ei, %bb.af, %bb.aj, %bb.bu, %bb.ai, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit707, %bb.bw
  %.pn328 = phi { ptr, i32 } [ %i.ajw, %bb.ex ], [ %i.alz, %bb.fi ], [ %i.ry, %bb.bw ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn303.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit707 ], [ %i.ld, %bb.aj ], [ %i.adw, %bb.eb ], [ %i.km, %bb.af ], [ %i.lc, %bb.ai ], [ %.pn318.pn.pn.pn.pn.pn, %bb.bu ], [ %i.afx, %bb.ei ], [ %i.age, %bb.el ], [ %i.aju, %bb.ev ], [ %i.ajv, %bb.ew ], [ %lpad.loopexit, %.loopexit1011 ], [ %lpad.loopexit1014, %.loopexit1012 ], [ %lpad.loopexit.split-lp1015, %.loopexit.split-lp1013 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %.body

.loopexit.sink.split:                             ; preds = %bb.fg, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %.loopexit
end_hunk_2
begin_hunk_3_@_ZN3Hud13drawCrosshairEv:bb.a
  %i.ds = add nsw i32 %i.dn, %i.dg
  %i.dt = add nsw i32 %i.dq, %i.dh
  store i32 %i.ds, ptr %i.dr, align 8, !tbaa !358
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !359
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !78
  %i.dx = insertelement <4 x i32> poison, i32 %i.dw, i64 0
  %i.dy = shufflevector <4 x i32> %i.dx, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.dy, ptr %3, align 16, !tbaa !78
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !70
  invoke void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.ea, ptr noundef nonnull %i.cw, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.eb = load ptr, ptr %12, align 8, !tbaa !77   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.cq
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.j
  %i.ed = load i64, ptr %i.cq, align 8, !tbaa !23
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.m

bb.k:                                             ; preds = %bb.i, %._crit_edge.i.i43
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %12, align 8, !tbaa !77   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.cq
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.k
  %i.ei = load i64, ptr %i.cq, align 8, !tbaa !23
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.el = load float, ptr %i.ek, align 4, !tbaa !116
  %i.em = fmul nsz float %i.el, 1.000000e+01
  %i.en = fadd nsz float %i.em, 5.000000e-01
  %i.eo = tail call nsz noundef float @llvm.floor.f32(float %i.en)
  %i.ep = fptosi float %i.eo to i32               ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !358 ; 2 uses
  %i.eu = sub nsw i32 %i.et, %i.ep
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !359
  %.sroa.2.0.insert.ext.i62 = zext i32 %i.ew to i64
  %.sroa.2.0.insert.shift.i63 = shl nuw i64 %.sroa.2.0.insert.ext.i62, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i64 = zext i32 %i.eu to i64
  %.sroa.0.0.insert.insert.i65 = or disjoint i64 %.sroa.2.0.insert.shift.i63, %.sroa.0.0.insert.ext.i64
  store i64 %.sroa.0.0.insert.insert.i65, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.ex = add nsw i32 %i.et, %i.ep
  %.sroa.0.0.insert.ext.i68 = zext i32 %i.ex to i64
  %.sroa.0.0.insert.insert.i69 = or disjoint i64 %.sroa.2.0.insert.shift.i63, %.sroa.0.0.insert.ext.i68
  store i64 %.sroa.0.0.insert.insert.i69, ptr %14, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %i.ey, align 4, !tbaa !78
  %i.ez = load ptr, ptr %i.er, align 8, !tbaa !69
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 440
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 %.sroa.01.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.fc = load ptr, ptr %i.eq, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %i.fd = load i32, ptr %i.es, align 8, !tbaa !358
  %i.fe = load i32, ptr %i.ev, align 4, !tbaa !359 ; 2 uses
  %i.ff = sub nsw i32 %i.fe, %i.ep
  %.sroa.2.0.insert.ext.i70 = zext i32 %i.ff to i64
  %.sroa.2.0.insert.shift.i71 = shl nuw i64 %.sroa.2.0.insert.ext.i70, 32
  %.sroa.0.0.insert.ext.i72 = zext i32 %i.fd to i64 ; 2 uses
  %.sroa.0.0.insert.insert.i73 = or disjoint i64 %.sroa.2.0.insert.shift.i71, %.sroa.0.0.insert.ext.i72
  store i64 %.sroa.0.0.insert.insert.i73, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %i.fg = add nsw i32 %i.fe, %i.ep
  %.sroa.2.0.insert.ext.i74 = zext i32 %i.fg to i64
  %.sroa.2.0.insert.shift.i75 = shl nuw i64 %.sroa.2.0.insert.ext.i74, 32
  %.sroa.0.0.insert.insert.i77 = or disjoint i64 %.sroa.2.0.insert.shift.i75, %.sroa.0.0.insert.ext.i72
  store i64 %.sroa.0.0.insert.insert.i77, ptr %16, align 8
  %.sroa.0.0.copyload = load i32, ptr %i.ey, align 4, !tbaa !78
  %i.fh = load ptr, ptr %i.fc, align 8, !tbaa !69
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 440
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %16, i32 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3Hud15setSelectionPosERKN4core8vector3dIfEERKNS1_IsEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(572) initializes((144, 150), (240, 264)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 2 dereferenceable(6) %2, i64 6, i1 false), !tbaa.struct !364
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !365
  %.sroa.05.0.copyload = load i48, ptr %2, align 2 ; 3 uses
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.05.0.copyload, 16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.05.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.c = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.d = fmul nnan nsz float %i.c, 1.000000e+01
  %i.e = trunc i48 %.sroa.05.0.copyload to i16
  %i.f = insertelement <2 x i16> poison, i16 %i.e, i64 0
  %i.g = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %i.h = insertelement <2 x i16> %i.f, i16 %i.g, i64 1
  %i.i = sitofp <2 x i16> %i.h to <2 x float>
  %i.j = fmul nnan nsz <2 x float> %i.i, splat (float 1.000000e+01)
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !58
  %i.l = fsub nsz <2 x float> %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !144
  %i.o = fsub nsz float %i.n, %i.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 252
  store <2 x float> %i.l, ptr %i.p, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 260
  store float %i.o, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !58
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
  %i.ae = load float, ptr %i.w, align 8, !tbaa !144
  %3 = load float, ptr %i.v, align 4, !tbaa !143
  %4 = fpext nsz float %i.ae to double
  %5 = fpext nsz float %3 to double
  %sincos39.i = tail call nsz { double, double } @llvm.sincos.f64(double %4) ; 2 uses
  %sincos36.i = tail call nsz { double, double } @llvm.sincos.f64(double %5) ; 2 uses
  %sin37.i = extractvalue { double, double } %sincos36.i, 0 ; 3 uses
  %cos38.i = extractvalue { double, double } %sincos36.i, 1 ; 4 uses
  %sin40.i = extractvalue { double, double } %sincos39.i, 0 ; 4 uses
  %cos41.i = extractvalue { double, double } %sincos39.i, 1 ; 4 uses
  %i.af = fmul nsz double %cos38.i, %cos41.i
  %i.ag = fptrunc nsz double %i.af to float       ; 2 uses
  %i.ah = fmul nsz double %cos38.i, %sin40.i
  %i.ai = fptrunc nsz double %i.ah to float       ; 2 uses
  %i.aj = fptrunc nsz double %sin37.i to float    ; 2 uses
  %i.ak = fneg nsz float %i.aj                    ; 2 uses
  %i.al = fmul nsz double %sin.i, %sin37.i
  %i.am = fmul nsz double %cos.i, %sin37.i
  %i.an = fneg nsz double %sin40.i
  %i.ao = fmul nsz double %sin.i, %cos38.i
  %i.ap = fptrunc nsz double %i.ao to float       ; 3 uses
  %i.aq = fneg nsz double %cos41.i
  %i.ar = fmul nsz double %cos.i, %cos38.i
  %i.as = fptrunc nsz double %i.ar to float       ; 3 uses
  %i.at = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = insertelement <2 x double> poison, double %i.an, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %cos41.i, i64 1
  %i.ax = fmul nsz <2 x double> %i.au, %i.aw
  %i.ay = insertelement <2 x double> poison, double %i.al, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = insertelement <2 x double> poison, double %cos41.i, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %sin40.i, i64 1 ; 2 uses
  %i.bc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.bb, <2 x double> %i.ax)
  %i.bd = fptrunc <2 x double> %i.bc to <2 x float> ; 3 uses
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = fmul nsz <2 x float> %i.be, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.bg = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> zeroinitializer, <2 x float> %i.bf) ; 3 uses
  %i.bi = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = insertelement <2 x double> poison, double %sin.i, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = insertelement <2 x double> poison, double %sin40.i, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.aq, i64 1
  %i.bo = fmul nsz <2 x double> %i.bl, %i.bn
  %i.bp = insertelement <2 x double> poison, double %i.am, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bb, <2 x double> %i.bo)
  %i.bs = fptrunc <2 x double> %i.br to <2 x float> ; 3 uses
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = fmul nsz <2 x float> %i.bt, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.bv = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> zeroinitializer, <2 x float> %i.bu) ; 3 uses
  %6 = insertelement <2 x float> poison, float %i.as, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = shufflevector <2 x float> %i.bf, <2 x float> %i.bh, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.by = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.bx, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ca = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x float> %i.bz, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cc = shufflevector <2 x float> %i.bd, <2 x float> %i.bs, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float %i.ap, i64 1
  %i.ce = insertelement <4 x float> %i.cd, float %i.as, i64 3
  %i.cf = fadd nsz <4 x float> %i.cb, %i.ce       ; 4 uses
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.ci = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> zeroinitializer, <2 x float> %i.ch)
  %i.cj = shufflevector <4 x float> %i.cf, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.cl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> zeroinitializer, <2 x float> %i.ck)
  %.scalar = fmul nsz float %i.ai, 0.000000e+00
  %i.cm = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.cn = tail call nsz float @llvm.fmuladd.f32(float %i.ag, float 0.000000e+00, float %i.ai)
  %i.co = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.cp = insertelement <4 x float> %i.co, float %i.ag, i64 0 ; 2 uses
  %i.cq = insertelement <4 x float> %i.cp, float %i.cn, i64 1
  %i.cr = fadd nsz <4 x float> %i.cm, %i.cq
  %i.cs = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ct = insertelement <2 x float> %i.cs, float %i.ak, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cv = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> zeroinitializer, <4 x float> %i.cr)
  %i.cw = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.aj, i64 2
  %i.cx = fsub nsz <4 x float> %i.cv, %i.cw
  %i.cy = insertelement <4 x float> %i.ad, float %i.ak, i64 3
  %i.cz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> zeroinitializer, <4 x float> %i.cx)
  store <4 x float> %i.cz, ptr %2, align 16, !tbaa !58, !alias.scope !543
  %i.da = insertelement <4 x float> %i.ad, float %i.ap, i64 3
  %i.db = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.dd = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.de = shufflevector <4 x float> %i.dc, <4 x float> %i.dd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.df = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> zeroinitializer, <4 x float> %i.de)
  store <4 x float> %i.df, ptr %i.y, align 16, !tbaa !58, !alias.scope !543
  %i.dg = insertelement <4 x float> %i.ad, float %i.as, i64 3
  %i.dh = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.dj = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dl = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> zeroinitializer, <4 x float> %i.dk)
  store <4 x float> %i.dl, ptr %i.z, align 16, !tbaa !58, !alias.scope !543
  store <2 x float> %i.ab, ptr %i.aa, align 16, !tbaa !58, !alias.scope !543
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 56
  store float %i.r, ptr %i.dm, align 8, !tbaa !58, !alias.scope !543
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 60
  store float 1.000000e+00, ptr %i.dn, align 4, !tbaa !58, !alias.scope !543
  %i.do = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.dr = load i32, ptr %i.a, align 8, !tbaa !84
  switch i32 %i.dr, label %.loopexit [
    i32 0, label %bb.d
    i32 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !366 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !366 ; 2 uses
  %.not3740 = icmp eq ptr %i.dt, %i.dv
  br i1 %.not3740, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.d
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph42, %bb.e
  %.sroa.021.041 = phi ptr [ %i.dt, %.lr.ph42 ], [ %i.fa, %bb.e ] ; 2 uses
  %i.dy = load i32, ptr %i.dw, align 8, !tbaa !330 ; 3 uses
  %i.dz = lshr i32 %i.dy, 16
  %i.ea = and i32 %i.dz, 255
  %i.eb = load i32, ptr %i.dx, align 8, !tbaa !330 ; 3 uses
  %i.ec = lshr i32 %i.eb, 16
  %i.ed = and i32 %i.ec, 255
  %i.ee = mul nuw nsw i32 %i.ed, %i.ea
  %.lhs.trunc = trunc nuw i32 %i.ee to i16
  %i.ef = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.ef to i32
  %i.eg = lshr i32 %i.dy, 8
  %i.eh = and i32 %i.eg, 255
  %i.ei = lshr i32 %i.eb, 8
  %i.ej = and i32 %i.ei, 255
  %i.ek = mul nuw nsw i32 %i.ej, %i.eh
  %.lhs.trunc30 = trunc nuw i32 %i.ek to i16
  %i.el = udiv i16 %.lhs.trunc30, 255
  %.zext31 = zext nneg i16 %i.el to i32
  %i.em = and i32 %i.dy, 255
  %i.en = and i32 %i.eb, 255
  %i.eo = mul nuw nsw i32 %i.en, %i.em
  %.lhs.trunc32 = trunc nuw i32 %i.eo to i16
  %i.ep = udiv i16 %.lhs.trunc32, 255
  %.zext33 = zext nneg i16 %i.ep to i32
  %i.eq = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.er = shl nuw nsw i32 %.zext, 16
  %i.es = shl nuw nsw i32 %.zext31, 8
  %i.et = and i32 %i.es, 65280
  %i.eu = or disjoint i32 %i.et, %i.er
  %i.ev = add nuw nsw i32 %i.eu, %.zext33
  %i.ew = or i32 %i.ev, -16777216
  %i.ex = load ptr, ptr %i.eq, align 8, !tbaa !69
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 384
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.021.041, i32 %i.ew)
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.021.041, i64 24 ; 2 uses
  %.not37 = icmp eq ptr %i.fa, %i.dv
  br i1 %.not37, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.c
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !121 ; 2 uses
  %.not18 = icmp eq ptr %i.fc, null
  br i1 %.not18, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.sroa.07.0.copyload = load i32, ptr %i.fd, align 8, !tbaa !78
  call void @_Z12setMeshColorPN5scene5IMeshEN5video6SColorE(ptr noundef nonnull %i.fc, i32 %.sroa.07.0.copyload)
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !330 ; 3 uses
  %i.ff = and i32 %i.fe, 255
  %i.fg = uitofp nsz nneg i32 %i.ff to double
  %i.fh = fmul nnan nsz double %i.fg, 1.500000e+00 ; 2 uses
  %.inv36 = fcmp nsz oge double %i.fh, 2.550000e+02
  %i.fi = select i1 %.inv36, double 2.550000e+02, double %i.fh
  %i.fj = fptoui double %i.fi to i32
  %i.fk = lshr i32 %i.fe, 16
  %8 = lshr i32 %i.fe, 8
  %9 = and i32 %i.fk, 255
  %10 = and i32 %8, 255
  %11 = uitofp nsz nneg i32 %9 to double
  %i.fl = uitofp nsz nneg i32 %10 to double
  %i.fm = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fn = insertelement <2 x double> %i.fm, double %11, i64 1
  %i.fo = fmul nnan nsz <2 x double> %i.fn, splat (double 1.500000e+00) ; 2 uses
  %i.fp = fcmp nsz oge <2 x double> %i.fo, splat (double 2.550000e+02)
  %i.fq = select <2 x i1> %i.fp, <2 x double> splat (double 2.550000e+02), <2 x double> %i.fo
  %i.fr = fptoui <2 x double> %i.fq to <2 x i32>
  %i.fs = shl <2 x i32> %i.fr, <i32 8, i32 16>
  %i.ft = and <2 x i32> %i.fs, <i32 65280, i32 16711680> ; 2 uses
  %i.fu = and i32 %i.fj, 255
  %i.fv = extractelement <2 x i32> %i.ft, i64 0
  %i.fw = or disjoint i32 %i.fv, %i.fu
  %i.fx = extractelement <2 x i32> %i.ft, i64 1
  %i.fy = or disjoint i32 %i.fw, %i.fx
  %i.fz = load ptr, ptr %i.fb, align 8, !tbaa !121
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 292
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.ga, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 300
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !58
  call void @_Z20setMeshColorByNormalPN5scene5IMeshEN4core8vector3dIfEEN5video6SColorE(ptr noundef %i.fz, <2 x float> %.sroa.05.0.copyload, float %.sroa.26.0.copyload, i32 %i.fy)
  %i.gb = load ptr, ptr %i.fb, align 8, !tbaa !121 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !69
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = call noundef i32 %i.gd(ptr noundef nonnull align 8 dereferenceable(8) %i.gb) ; 2 uses
  %.not43 = icmp eq i32 %i.ge, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.039 = phi i32 [ %i.go, %.lr.ph ], [ 0, %bb.g ] ; 2 uses
  %i.gf = load ptr, ptr %i.fb, align 8, !tbaa !121 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !69
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = call noundef ptr %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, i32 noundef %.039)
  %i.gk = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !69
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 448
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef %i.gj)
  %i.go = add nuw i32 %.039, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.go, %i.ge
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !542

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.g, %bb.d, %bb.c, %bb.f
  %i.gp = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !69
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %1)
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
  %.sroa.0.0.copyload.i = load i48, ptr %i.an, align 4 ; 2 uses
  %.sroa.013.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload.i to i16
  %i.ao = sitofp nsz i16 %.sroa.013.0.extract.trunc.i to float
  %i.ap = fmul nnan nsz float %i.ao, 1.000000e+01
  %i.aq = shl nsw i16 %.sroa.0268.0.extract.trunc, 4
  %i.ar = sitofp nsz i16 %i.aq to float
  %i.as = fmul nnan nsz float %i.ar, 1.000000e+01
  %i.at = fsub nsz float %i.as, %i.ap
  %i.au = add nsw i32 %i.ae, -15
  %9 = add nsw i32 %i.ah, -15
  %10 = select i1 %i.af, i32 %i.au, i32 %i.ae
  %11 = select i1 %i.ai, i32 %9, i32 %i.ah
  %12 = sdiv i32 %10, 16                          ; 3 uses
  %i.av = sdiv i32 %11, 16                        ; 3 uses
  %.sroa.7.0.extract.trunc = trunc nsw i32 %12 to i16
  %.sroa.10273.0.extract.trunc = trunc nsw i32 %i.av to i16
  %i.aw = bitcast i48 %.sroa.0.0.copyload.i to <3 x i16>
  %i.ax = shufflevector <3 x i16> %i.aw, <3 x i16> poison, <2 x i32> <i32 2, i32 1>
  %i.ay = sitofp <2 x i16> %i.ax to <2 x float>
  %i.az = fmul nnan nsz <2 x float> %i.ay, splat (float 1.000000e+01)
  %i.ba = insertelement <2 x i16> poison, i16 %.sroa.10273.0.extract.trunc, i64 0
  %i.bb = insertelement <2 x i16> %i.ba, i16 %.sroa.7.0.extract.trunc, i64 1
  %i.bc = shl nsw <2 x i16> %i.bb, splat (i16 4)
  %i.bd = sitofp <2 x i16> %i.bc to <2 x float>
  %i.be = fmul nnan nsz <2 x float> %i.bd, splat (float 1.000000e+01)
  %i.bf = fsub nsz <2 x float> %i.be, %i.az
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bh = fadd nsz float %i.at, -5.000000e+00     ; 3 uses
  %i.bi = fadd nsz <4 x float> %i.bg, splat (float -5.000000e+00) ; 3 uses
  %i.bj = load i32, ptr %0, align 8, !tbaa !367
  %i.bk = icmp eq i32 %i.bj, 2
  br i1 %i.bk, label %.noexc.i123, label %.preheader.lr.ph

.noexc.i123:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = load ptr, ptr @g_settings, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.bm, ptr %2, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 29, ptr %i.a, align 8, !tbaa !76
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc124 unwind label %bb.e  ; 2 uses

.noexc124:                                        ; preds = %.noexc.i123
  store ptr %i.bn, ptr %2, align 8, !tbaa !77
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !76  ; 3 uses
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.bn, ptr noundef nonnull align 1 dereferenceable(29) @.str.21, i64 29, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !22
  %i.bq = load ptr, ptr %2, align 8, !tbaa !77
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.bs = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.critedge unwind label %bb.f

.critedge:                                        ; preds = %.noexc124
  %spec.select.i = call i16 @llvm.umin.i16(i16 %i.bs, i16 1000)
  %i.bt = zext nneg i16 %spec.select.i to i32
  %i.bu = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bm
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %.critedge
  %i.bw = load i64, ptr %i.bm, align 8, !tbaa !23
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.by = phi i32 [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %13 = add nuw nsw i32 %i.by, 1                  ; 3 uses
  %14 = mul nuw nsw i32 %13, 160
  %i.bz = sub nsw i32 0, %i.by                    ; 4 uses
  %i.ca = trunc nsw i32 %i.bz to i16              ; 2 uses
  %15 = uitofp nneg i32 %14 to float              ; 2 uses
  %i.cb = sitofp nsz i32 %i.bz to float
  %i.cc = fmul nnan nsz float %i.cb, 1.600000e+01
  %i.cd = fmul nnan nsz float %i.cc, 1.000000e+01 ; 2 uses
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = zext i16 %.sroa.speculated to i32       ; 5 uses
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cf = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %15, i64 1
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ci = fadd nsz <4 x float> %i.bi, %i.ch       ; 4 uses
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cj = fadd nsz float %i.bh, %i.cd
  %.sroa.0.0.vec.insert.i169 = insertelement <2 x float> poison, float %i.cj, i64 0
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ck = fadd nsz float %i.bh, %15
  %.sroa.0.0.vec.insert.i173 = insertelement <2 x float> poison, float %i.ck, i64 0
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cl = extractelement <4 x float> %i.bi, i64 1 ; 2 uses
  %i.cm = shufflevector <4 x float> %i.ci, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cn = extractelement <4 x float> %i.ci, i64 0
  %i.co = extractelement <4 x float> %i.ci, i64 2
  %i.cp = extractelement <4 x float> %i.bi, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.cq = phi i32 [ %i.bz, %.preheader.lr.ph ], [ %i.dq, %._crit_edge ] ; 2 uses
  %storemerge298 = phi i16 [ %i.ca, %.preheader.lr.ph ], [ %i.dp, %._crit_edge ] ; 2 uses
  %i.cr = sitofp nsz i16 %storemerge298 to float
  %i.cs = fmul nnan nsz float %i.cr, 1.600000e+01
  %i.ct = fmul nnan nsz float %i.cs, 1.000000e+01 ; 2 uses
  %i.cu = fadd nsz float %i.bh, %i.ct             ; 2 uses
  %.sroa.0.0.vec.insert.i151 = insertelement <2 x float> poison, float %i.cu, i64 0 ; 2 uses
  %i.cv = add nsw i32 %i.cq, %i.ad
  %i.cw = srem i32 %i.cv, %i.ce
  %i.cx = icmp eq i32 %i.cw, 0                    ; 2 uses
  %i.cy = shufflevector <2 x float> %.sroa.0.0.vec.insert.i151, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> %i.ci, <2 x i32> <i32 0, i32 5>
  %i.da = insertelement <2 x float> %i.cm, float %i.cu, i64 0
  %i.db = fadd nsz float %i.cl, %i.ct             ; 2 uses
  %.sroa.0.4.vec.insert.i170 = insertelement <2 x float> %.sroa.0.0.vec.insert.i169, float %i.db, i64 1
  %.sroa.0.4.vec.insert.i174 = insertelement <2 x float> %.sroa.0.0.vec.insert.i173, float %i.db, i64 1
  %i.dc = add nsw i32 %i.cq, %12
  br label %bb.g

bb.c:                                             ; preds = %.noexc.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.d:                                             ; preds = %.noexc
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.l
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.d
  %i.dh = load i64, ptr %i.l, align 8, !tbaa !23
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.c
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.c ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %i.de, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.n

bb.e:                                             ; preds = %.noexc.i123
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.f:                                             ; preds = %.noexc124
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bm
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.f
  %i.dn = load i64, ptr %i.bm, align 8, !tbaa !23
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.e
  %.pn90 = phi { ptr, i32 } [ %i.dj, %bb.e ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %i.dk, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.n

._crit_edge:                                      ; preds = %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178"
  %i.dp = add i16 %storemerge298, 1               ; 2 uses
  %i.dq = sext i16 %i.dp to i32                   ; 2 uses
  %.not = icmp slt i32 %13, %i.dq
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !544

bb.g:                                             ; preds = %.preheader, %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178"
  %i.dr = phi i32 [ %i.bz, %.preheader ], [ %i.ev, %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178" ] ; 3 uses
  %storemerge93296 = phi i16 [ %i.ca, %.preheader ], [ %i.eu, %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178" ] ; 2 uses
  %i.ds = sitofp nsz i16 %storemerge93296 to float
  %i.dt = fmul nnan nsz float %i.ds, 1.600000e+01
  %i.du = fmul nnan nsz float %i.dt, 1.000000e+01 ; 2 uses
  %i.dv = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.dw = fadd nsz float %i.cl, %i.du
  %.sroa.0.4.vec.insert.i152 = insertelement <2 x float> %.sroa.0.0.vec.insert.i151, float %i.dw, i64 1 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i152, ptr %3, align 8
  store float %i.cn, ptr %.sroa.223.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store <2 x float> %.sroa.0.4.vec.insert.i152, ptr %4, align 8
  store float %i.co, ptr %.sroa.219.0..sroa_idx, align 8
  br i1 %i.cx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dx = add nsw i32 %i.dr, %12
  %i.dy = srem i32 %i.dx, %i.ce
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit", label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit"

"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit":   ; preds = %bb.h, %bb.i
  %.sroa.0.0.i = phi i32 [ -256, %bb.i ], [ -65536, %bb.h ]
  %i.ea = load ptr, ptr %i.dv, align 8, !tbaa !69
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 376
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, i32 %.sroa.0.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ed = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ee = fadd nsz float %i.cp, %i.du             ; 4 uses
  store <2 x float> %i.cz, ptr %5, align 8
  store float %i.ee, ptr %.sroa.214.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store <2 x float> %i.da, ptr %6, align 8
  store float %i.ee, ptr %.sroa.210.0..sroa_idx, align 8
  br i1 %i.cx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit"
  %i.ef = add nsw i32 %i.dr, %i.av
  %i.eg = srem i32 %i.ef, %i.ce
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit168", label %bb.k

bb.k:                                             ; preds = %bb.j, %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit"
  br label %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit168"

"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit168": ; preds = %bb.j, %bb.k
  %.sroa.0.0.i167 = phi i32 [ -256, %bb.k ], [ -65536, %bb.j ]
  %i.ei = load ptr, ptr %i.ed, align 8, !tbaa !69
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 376
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %6, i32 %.sroa.0.0.i167)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store <2 x float> %.sroa.0.4.vec.insert.i170, ptr %7, align 8
  store float %i.ee, ptr %.sroa.25.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store <2 x float> %.sroa.0.4.vec.insert.i174, ptr %8, align 8
  store float %i.ee, ptr %.sroa.2.0..sroa_idx, align 8
  %i.em = srem i32 %i.dc, %i.ce
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.l, label %bb.m

bb.l:                                             ; preds = %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit168"
  %i.eo = add nsw i32 %i.dr, %i.av
  %i.ep = srem i32 %i.eo, %i.ce
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178", label %bb.m

bb.m:                                             ; preds = %bb.l, %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit168"
  br label %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178"

"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178": ; preds = %bb.l, %bb.m
  %.sroa.0.0.i177 = phi i32 [ -256, %bb.m ], [ -65536, %bb.l ]
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !69
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 376
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %8, i32 %.sroa.0.0.i177)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.eu = add i16 %storemerge93296, 1             ; 2 uses
  %i.ev = sext i16 %i.eu to i32                   ; 2 uses
  %.not94 = icmp slt i32 %13, %i.ev
  br i1 %.not94, label %._crit_edge, label %bb.g, !llvm.loop !545

.loopexit:                                        ; preds = %._crit_edge, %bb.a
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %.pn90.pn = phi { ptr, i32 } [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ]
  resume { ptr, i32 } %.pn90.pn
}

declare noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare i48 @_ZN11LocalPlayer18getStandingNodePosEv(ptr noundef nonnull align 8 dereferenceable(864)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Hud19updateSelectionMeshERKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(572) initializes((144, 150)) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !364
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.c = load i32, ptr %i.b, align 8, !tbaa !84
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 3 uses
  %.not5 = icmp eq ptr %i.e, null
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !93
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !93
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(12) %i.i) #34, !inline_history !1
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.c, %bb.d
  store ptr null, ptr %i.d, align 8, !tbaa !121
  br label %bb.e

bb.e:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !366  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !366  ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !82   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !83   ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not.i.i, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i.preheader, label %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.f
  store ptr %i.v, ptr %i.w, align 8, !tbaa !83
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i.preheader

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i.preheader: ; preds = %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.f
  %i.y = phi ptr [ %i.x, %bb.f ], [ %i.v, %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 8 uses
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i

._crit_edge:                                      ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !114
  %.not.i6 = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  store <4 x float> %i.bu, ptr %i.y, align 4, !tbaa !58
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = extractelement <2 x float> %i.bt, i64 0
  store float %i.ab, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !58
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ac = extractelement <2 x float> %i.bt, i64 1
  store float %i.ac, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !83
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %._crit_edge
  %i.ae = ptrtoint ptr %i.y to i64
  %i.af = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.i, label %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #33
  unreachable

_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ai = sdiv exact i64 %i.ag, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 384307168202282325)
  %i.am = select i1 %i.ak, i64 384307168202282325, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = mul nuw nsw i64 %i.am, 24
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #37 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag ; 3 uses
  store <4 x float> %i.bu, ptr %i.ap, align 4, !tbaa !58
  %.sroa.20.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aq = extractelement <2 x float> %i.bt, i64 0
  store float %i.aq, ptr %.sroa.20.0..sroa_idx18, align 4, !tbaa !58
  %.sroa.24.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.ar = extractelement <2 x float> %i.bt, i64 1
  store float %i.ar, ptr %.sroa.24.0..sroa_idx20, align 4, !tbaa !58
  %.not10.i.i.i.i.i = icmp eq ptr %i.v, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i
end_hunk_3
begin_hunk_4_@llvm.fmuladd.v4f32
!292 = !{!"_ZTSSt5tupleIJP11MapDatabaseSt14default_deleteIS0_EEE", !291, i64 0}
!293 = !{!"_ZTSSt15__uniq_ptr_implI11MapDatabaseSt14default_deleteIS0_EE", !292, i64 0}
!294 = !{!"_ZTSSt15__uniq_ptr_dataI11MapDatabaseSt14default_deleteIS0_ELb1ELb1EE", !293, i64 0}
!295 = !{!"_ZTSSt10unique_ptrI11MapDatabaseSt14default_deleteIS0_EE", !294, i64 0}
!296 = !{!"p1 _ZTS18ModStorageDatabase", !16, i64 0}
!297 = !{!"p1 _ZTS7ModSpec", !16, i64 0}
!298 = !{!"_ZTSNSt12_Vector_baseI7ModSpecSaIS0_EE17_Vector_impl_dataE", !297, i64 0, !297, i64 8, !297, i64 16}
!299 = !{!"_ZTSNSt12_Vector_baseI7ModSpecSaIS0_EE12_Vector_implE", !298, i64 0}
!300 = !{!"_ZTSSt12_Vector_baseI7ModSpecSaIS0_EE", !299, i64 0}
!301 = !{!"_ZTSSt6vectorI7ModSpecSaIS0_EE", !300, i64 0}
!302 = !{!"p1 _ZTS6ModVFS", !16, i64 0}
!303 = !{!"_ZTSSt10_Head_baseILm0EP6ModVFSLb0EE", !302, i64 0}
!304 = !{!"_ZTSSt11_Tuple_implILm0EJP6ModVFSSt14default_deleteIS0_EEE", !303, i64 0}
!305 = !{!"_ZTSSt5tupleIJP6ModVFSSt14default_deleteIS0_EEE", !304, i64 0}
!306 = !{!"_ZTSSt15__uniq_ptr_implI6ModVFSSt14default_deleteIS0_EE", !305, i64 0}
!307 = !{!"_ZTSSt15__uniq_ptr_dataI6ModVFSSt14default_deleteIS0_ELb1ELb1EE", !306, i64 0}
!308 = !{!"_ZTSSt10unique_ptrI6ModVFSSt14default_deleteIS0_EE", !307, i64 0}
!309 = !{!"p1 _ZTS15SSCSMController", !16, i64 0}
!310 = !{!"_ZTSSt10_Head_baseILm0EP15SSCSMControllerLb0EE", !309, i64 0}
!311 = !{!"_ZTSSt11_Tuple_implILm0EJP15SSCSMControllerSt14default_deleteIS0_EEE", !310, i64 0}
!312 = !{!"_ZTSSt5tupleIJP15SSCSMControllerSt14default_deleteIS0_EEE", !311, i64 0}
!313 = !{!"_ZTSSt15__uniq_ptr_implI15SSCSMControllerSt14default_deleteIS0_EE", !312, i64 0}
!314 = !{!"_ZTSSt15__uniq_ptr_dataI15SSCSMControllerSt14default_deleteIS0_ELb1ELb1EE", !313, i64 0}
!315 = !{!"_ZTSSt10unique_ptrI15SSCSMControllerSt14default_deleteIS0_EE", !314, i64 0}
!316 = !{!"p1 _ZTS13ModChannelMgr", !16, i64 0}
!317 = !{!"_ZTSSt10_Head_baseILm0EP13ModChannelMgrLb0EE", !316, i64 0}
!318 = !{!"_ZTSSt11_Tuple_implILm0EJP13ModChannelMgrSt14default_deleteIS0_EEE", !317, i64 0}
!319 = !{!"_ZTSSt5tupleIJP13ModChannelMgrSt14default_deleteIS0_EEE", !318, i64 0}
!320 = !{!"_ZTSSt15__uniq_ptr_implI13ModChannelMgrSt14default_deleteIS0_EE", !319, i64 0}
!321 = !{!"_ZTSSt15__uniq_ptr_dataI13ModChannelMgrSt14default_deleteIS0_ELb1ELb1EE", !320, i64 0}
!322 = !{!"_ZTSSt10unique_ptrI13ModChannelMgrSt14default_deleteIS0_EE", !321, i64 0}
!323 = !{!"_ZTS8MeshGrid", !33, i64 0}
!324 = !{!"_ZTS6Client", !149, i64 0, !150, i64 8, !151, i64 16, !26, i64 24, !26, i64 25, !26, i64 26, !32, i64 28, !32, i64 32, !32, i64 36, !32, i64 40, !13, i64 44, !152, i64 48, !153, i64 56, !154, i64 64, !155, i64 72, !156, i64 80, !157, i64 88, !158, i64 96, !66, i64 104, !159, i64 112, !166, i64 120, !201, i64 128, !208, i64 568, !215, i64 576, !21, i64 584, !216, i64 616, !217, i64 624, !224, i64 632, !12, i64 640, !33, i64 642, !26, i64 644, !26, i64 645, !230, i64 648, !32, i64 656, !13, i64 660, !234, i64 664, !32, i64 712, !13, i64 716, !34, i64 720, !242, i64 728, !13, i64 808, !32, i64 812, !251, i64 816, !13, i64 896, !20, i64 904, !21, i64 912, !21, i64 944, !21, i64 976, !252, i64 1008, !16, i64 1016, !26, i64 1024, !26, i64 1025, !21, i64 1032, !260, i64 1064, !26, i64 1144, !26, i64 1145, !26, i64 1146, !26, i64 1147, !265, i64 1152, !272, i64 1176, !277, i64 1184, !32, i64 1208, !32, i64 1212, !279, i64 1216, !279, i64 1272, !281, i64 1328, !283, i64 1384, !285, i64 1440, !287, i64 1496, !288, i64 1552, !295, i64 1560, !152, i64 1568, !33, i64 1572, !176, i64 1576, !296, i64 1584, !32, i64 1592, !301, i64 1600, !308, i64 1624, !315, i64 1632, !26, i64 1640, !20, i64 1648, !13, i64 1656, !322, i64 1664, !323, i64 1672}
!325 = !{!139, !32, i64 4}
!326 = !{!140, !33, i64 136}
!327 = !{!140, !13, i64 176}
!328 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!329 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!330 = !{!25, !13, i64 0}
!331 = !{!"p1 wchar_t", !16, i64 0}
!332 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !331, i64 0}
!333 = !{!332, !331, i64 0}
!334 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !332, i64 0, !20, i64 8, !12, i64 16}
!335 = !{!334, !20, i64 8}
!336 = !{!"wchar_t", !12, i64 0}
!337 = !{!336, !336, i64 0}
!338 = !{!334, !331, i64 0}
!339 = !{!140, !32, i64 48}
!340 = !{!140, !32, i64 52}
!341 = !{!"p1 _ZTSN5video6SColorE", !16, i64 0}
!342 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE17_Vector_impl_dataE", !341, i64 0, !341, i64 8, !341, i64 16}
!343 = !{!342, !341, i64 0}
!344 = !{!342, !341, i64 16}
!345 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!346 = !{!"_ZTSSt6locale", !345, i64 0}
!347 = !{!"p1 _ZTSSo", !16, i64 0}
!348 = !{!"_ZTS11StreamProxy", !347, i64 0}
!349 = !{!17, !17, i64 0}
!350 = !{!348, !347, i64 0}
!351 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!352 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!353 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!354 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !20, i64 8}
!355 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!356 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !351, i64 24, !352, i64 28, !352, i64 32, !353, i64 40, !354, i64 48, !12, i64 64, !13, i64 192, !355, i64 200, !346, i64 208}
!357 = !{!356, !352, i64 32}
!358 = !{!36, !13, i64 0}
!359 = !{!36, !13, i64 4}
!360 = !{!"_ZTSN4core11dimension2dIjEE", !13, i64 0, !13, i64 4}
!361 = !{!360, !13, i64 0}
!362 = !{!360, !13, i64 4}
!363 = !{i64 0, i64 64, !23}
!364 = !{i64 0, i64 2, !110, i64 2, i64 2, !110, i64 4, i64 2, !110}
!365 = !{i64 0, i64 4, !58, i64 4, i64 4, !58, i64 8, i64 4, !58}
!366 = !{!37, !37, i64 0}
!367 = !{!54, !24, i64 0}
!368 = !{i64 0, i64 4, !58, i64 4, i64 4, !58, i64 8, i64 4, !58, i64 12, i64 4, !58, i64 16, i64 4, !58, i64 20, i64 4, !58}
!369 = !{!97, !32, i64 16}
!370 = !{!97, !32, i64 20}
!371 = !{!97, !32, i64 4}
!372 = !{!97, !32, i64 8}
!373 = !{!97, !32, i64 12}
!374 = !{!97, !32, i64 0}
!375 = !{ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEED1Ev}
!376 = !{!"p1 _ZTSN5scene12WeightBufferE", !16, i64 0}
!377 = !{!"_ZTS7irr_ptrIN5scene12WeightBufferEE", !376, i64 0}
!378 = !{!377, !376, i64 0}
!379 = !{!103, !102, i64 16}
!380 = !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev}
!381 = !{!"_ZTSN5scene13IVertexBufferE", !112, i64 0}
!382 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE12_Vector_implE", !103, i64 0}
!383 = !{!"_ZTSSt12_Vector_baseIN5video9S3DVertexESaIS1_EE", !382, i64 0}
!384 = !{!"_ZTSSt6vectorIN5video9S3DVertexESaIS1_EE", !383, i64 0}
!385 = !{!"_ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE", !381, i64 0, !384, i64 32, !377, i64 56, !26, i64 64}
!386 = !{!385, !26, i64 64}
!387 = !{!107, !106, i64 16}
!388 = !{ptr @_ZN5scene12CIndexBufferItED1Ev}
!389 = !{i64 0, i64 4, !58, i64 4, i64 4, !58, i64 8, i64 4, !58, i64 12, i64 4, !58, i64 16, i64 4, !58, i64 20, i64 4, !58, i64 24, i64 4, !78, i64 28, i64 4, !58, i64 32, i64 4, !58, i64 36, i64 2, !110}
!390 = !{!"llvm.loop.unroll.disable"}
!391 = !{!"llvm.loop.isvectorized", i32 1}
!392 = !{!"llvm.loop.unroll.runtime.disable"}
!393 = distinct !{null}
!394 = distinct !{null, null}
!395 = distinct !{null}
!396 = !{!34, !33, i64 0}
!397 = !{!34, !33, i64 2}
!398 = !{!34, !33, i64 4}
!399 = !{!"p1 _ZTS13RenderingCore", !16, i64 0}
!400 = !{!"_ZTSSt10_Head_baseILm0EP13RenderingCoreLb0EE", !399, i64 0}
!401 = !{!"_ZTSSt11_Tuple_implILm0EJP13RenderingCoreSt14default_deleteIS0_EEE", !400, i64 0}
!402 = !{!"_ZTSSt5tupleIJP13RenderingCoreSt14default_deleteIS0_EEE", !401, i64 0}
!403 = !{!"_ZTSSt15__uniq_ptr_implI13RenderingCoreSt14default_deleteIS0_EE", !402, i64 0}
!404 = !{!"_ZTSSt15__uniq_ptr_dataI13RenderingCoreSt14default_deleteIS0_ELb1ELb1EE", !403, i64 0}
!405 = !{!"_ZTSSt10unique_ptrI13RenderingCoreSt14default_deleteIS0_EE", !404, i64 0}
!406 = !{!"p1 _ZTS14IrrlichtDevice", !16, i64 0}
!407 = !{!"p1 _ZTS15MyEventReceiver", !16, i64 0}
!408 = !{!"_ZTS15RenderingEngine", !25, i64 0, !25, i64 4, !405, i64 8, !406, i64 16, !28, i64 24, !407, i64 32}
!409 = !{!408, !406, i64 16}
!410 = !{!88, !86, i64 16}
!411 = !{!88, !86, i64 24}
!412 = !{!88, !20, i64 32}
!413 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJifEEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !91, i64 0, !88, i64 8}
!414 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJifEEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !413, i64 0}
!415 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJifEESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !414, i64 0}
!416 = !{!"p1 _ZTS22IShaderUniformSetterRC", !16, i64 0}
!417 = !{!"_ZTS7irr_ptrI22IShaderUniformSetterRCE", !416, i64 0}
!418 = !{!"_ZTS10ShaderInfo", !21, i64 0, !44, i64 32, !44, i64 36, !415, i64 40, !417, i64 88}
!419 = !{!418, !44, i64 36}
!420 = !{!54, !44, i64 400}
!421 = !{!54, !32, i64 412}
!422 = !{!54, !44, i64 528}
!423 = !{!54, !32, i64 540}
!424 = !{!50, !44, i64 96}
!425 = distinct !{!425, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!426 = distinct !{!426, !425, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!427 = distinct !{!427, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!428 = distinct !{!428, !427, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!429 = !{!426}
!430 = !{!428, !426}
!431 = !{!112, !16, i64 16}
!432 = !{!112, !13, i64 24}
!433 = distinct !{!433, !132}
!434 = !{!"p1 _ZTS9ItemStack", !16, i64 0}
!435 = !{!"_ZTSNSt12_Vector_baseI9ItemStackSaIS0_EE17_Vector_impl_dataE", !434, i64 0, !434, i64 8, !434, i64 16}
!436 = !{!435, !434, i64 8}
!437 = !{!435, !434, i64 0}
!438 = distinct !{!438, !132}
!439 = distinct !{!439, !"_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_"}
!440 = distinct !{!440, !439, !"_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_: argument 0"}
!441 = distinct !{!441, !132}
!442 = distinct !{!442, !132}
!443 = distinct !{null}
!444 = distinct !{null, null}
!445 = distinct !{!445, !"_Z18unescape_translateB5cxx11St17basic_string_viewIwSt11char_traitsIwEE"}
!446 = distinct !{!446, !445, !"_Z18unescape_translateB5cxx11St17basic_string_viewIwSt11char_traitsIwEE: argument 0"}
!447 = distinct !{!447, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!448 = distinct !{!448, !447, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!449 = distinct !{!449, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!450 = distinct !{!450, !449, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!451 = distinct !{!451, !"_Z18unescape_translateB5cxx11St17basic_string_viewIwSt11char_traitsIwEE"}
!452 = distinct !{!452, !451, !"_Z18unescape_translateB5cxx11St17basic_string_viewIwSt11char_traitsIwEE: argument 0"}
!453 = distinct !{null}
!454 = !{!"p1 _ZTSN3gui15IGUIEnvironmentE", !16, i64 0}
!455 = !{!"_ZTSSt22__recursive_mutex_base", !12, i64 0}
!456 = !{!"_ZTSSt15recursive_mutex", !455, i64 0}
!457 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_7irr_ptrIN3gui10SGUITTFaceEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !145, i64 0, !20, i64 8, !147, i64 16, !20, i64 24, !148, i64 32, !146, i64 48}
!458 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7irr_ptrIN3gui10SGUITTFaceEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !457, i64 0}
!459 = !{!"_ZTS10FontEngine", !454, i64 0, !456, i64 8, !12, i64 48, !458, i64 1200, !458, i64 1256, !12, i64 1312, !26, i64 1324, !26, i64 1325, !26, i64 1326}
!460 = !{!459, !26, i64 1324}
!461 = !{!459, !26, i64 1325}
!462 = !{!"_ZTS8FontMode", !12, i64 0}
!463 = !{!"_ZTS8FontSpec", !13, i64 0, !462, i64 4, !26, i64 5, !26, i64 6, !26, i64 7}
!464 = !{!463, !13, i64 0}
!465 = !{!463, !462, i64 4}
!466 = !{!463, !26, i64 5}
!467 = !{!463, !26, i64 6}
!468 = !{!463, !26, i64 7}
!469 = !{!"_ZTSNSt12_Vector_baseIP10HudElementSaIS1_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!470 = !{!469, !134, i64 8}
!471 = !{!469, !134, i64 0}
!472 = !{!324, !33, i64 642}
!473 = !{!"_ZTS10CameraMode", !12, i64 0}
!474 = !{!"p2 _ZTS13InventoryList", !133, i64 0}
!475 = !{!"_ZTSNSt12_Vector_baseIP13InventoryListSaIS1_EE17_Vector_impl_dataE", !474, i64 0, !474, i64 8, !474, i64 16}
!476 = !{!"_ZTSNSt12_Vector_baseIP13InventoryListSaIS1_EE12_Vector_implE", !475, i64 0}
!477 = !{!"_ZTSSt12_Vector_baseIP13InventoryListSaIS1_EE", !476, i64 0}
!478 = !{!"_ZTSSt6vectorIP13InventoryListSaIS1_EE", !477, i64 0}
!479 = !{!"p1 _ZTS15IItemDefManager", !16, i64 0}
!480 = !{!"_ZTS9Inventory", !478, i64 0, !479, i64 24, !26, i64 32}
!481 = !{!"_ZTS13PlayerControl", !12, i64 0, !26, i64 1, !26, i64 2, !26, i64 3, !26, i64 4, !26, i64 5, !26, i64 6, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20}
!482 = !{!"_ZTS21PlayerPhysicsOverride", !32, i64 0, !32, i64 4, !32, i64 8, !26, i64 12, !26, i64 13, !26, i64 14, !32, i64 16, !32, i64 20, !32, i64 24, !32, i64 28, !32, i64 32, !32, i64 36, !32, i64 40, !32, i64 44, !32, i64 48, !32, i64 52}
!483 = !{!"_ZTS13PlayerFovSpec", !32, i64 0, !26, i64 4, !32, i64 8}
!484 = !{!"_ZTSNSt12_Vector_baseIP10HudElementSaIS1_EE12_Vector_implE", !469, i64 0}
!485 = !{!"_ZTSSt12_Vector_baseIP10HudElementSaIS1_EE", !484, i64 0}
!486 = !{!"_ZTSSt6vectorIP10HudElementSaIS1_EE", !485, i64 0}
!487 = !{!"_ZTS6Player", !473, i64 8, !42, i64 12, !42, i64 24, !42, i64 36, !480, i64 48, !32, i64 88, !32, i64 92, !32, i64 96, !32, i64 100, !32, i64 104, !32, i64 108, !32, i64 112, !32, i64 116, !32, i64 120, !32, i64 124, !32, i64 128, !32, i64 132, !12, i64 136, !32, i64 168, !21, i64 176, !21, i64 208, !481, i64 240, !482, i64 264, !13, i64 320, !13, i64 324, !21, i64 328, !42, i64 360, !33, i64 372, !483, i64 376, !486, i64 392}
!488 = !{!487, !13, i64 320}
!489 = !{!140, !13, i64 88}
!490 = !{!140, !13, i64 92}
!491 = !{!140, !13, i64 96}
!492 = !{!54, !13, i64 156}
!493 = !{!54, !13, i64 152}
!494 = !{!140, !32, i64 128}
!495 = !{!440}
!496 = !{!140, !32, i64 104}
!497 = !{!140, !32, i64 108}
!498 = !{!140, !32, i64 112}
!499 = !{!140, !32, i64 100}
!500 = !{!"p1 _ZTS9LogTarget", !16, i64 0}
!501 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !346, i64 56}
!502 = !{!"_ZTSSt14_Function_base", !12, i64 0, !16, i64 16}
!503 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !502, i64 0, !16, i64 24}
!504 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !501, i64 0, !503, i64 64, !13, i64 96, !12, i64 100}
!505 = !{!"_ZTS17DummyStreamBuffer", !501, i64 0}
!506 = !{!"_ZTSSo"}
!507 = !{!"_ZTS9LogStream", !500, i64 0, !504, i64 8, !505, i64 368, !506, i64 432, !506, i64 704, !348, i64 976, !348, i64 984}
!508 = !{!507, !500, i64 0}
!509 = !{i64 8}
!510 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!511 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!512 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!513 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!514 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !356, i64 0, !347, i64 216, !12, i64 224, !26, i64 225, !510, i64 232, !511, i64 240, !512, i64 248, !513, i64 256}
!515 = !{!514, !511, i64 240}
!516 = !{!"_ZTSNSt6locale5facetE", !13, i64 8}
!517 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!518 = !{!"p1 int", !16, i64 0}
!519 = !{!"_ZTSSt5ctypeIcE", !516, i64 0, !517, i64 16, !26, i64 24, !518, i64 32, !518, i64 40, !106, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!520 = !{!519, !12, i64 56}
!521 = !{!446}
!522 = !{!448}
!523 = !{!450}
!524 = !{!450, !448}
!525 = !{!501, !17, i64 40}
!526 = !{!501, !17, i64 32}
!527 = !{!452}
!528 = !{!140, !32, i64 132}
!529 = !{!218, !218, i64 0}
!530 = !{!138, !138, i64 0}
!531 = distinct !{!531, !132}
!532 = distinct !{!532, !132}
!533 = distinct !{!533, !132}
!534 = distinct !{!534, !132}
!535 = !{!"p1 _ZTS13TouchControls", !16, i64 0}
!536 = !{!535, !535, i64 0}
!537 = !{!139, !32, i64 0}
!538 = !{!54, !13, i64 160}
!539 = !{!54, !13, i64 164}
!540 = distinct !{!540, !"_ZNK4core8CMatrix4IfEmlERKS1_"}
!541 = distinct !{!541, !540, !"_ZNK4core8CMatrix4IfEmlERKS1_: argument 0"}
!542 = distinct !{!542, !132}
!543 = !{!541}
!544 = distinct !{!544, !132}
!545 = distinct !{!545, !132}
!546 = !{!324, !217, i64 624}
!547 = distinct !{!547, !"_ZSt19__relocate_object_aIN4core8aabbox3dIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!548 = distinct !{!548, !547, !"_ZSt19__relocate_object_aIN4core8aabbox3dIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!549 = distinct !{!549, !547, !"_ZSt19__relocate_object_aIN4core8aabbox3dIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!550 = distinct !{!550, !132}
!551 = !{!549, !548}
!552 = !{!35, !13, i64 0}
!553 = distinct !{null}
!554 = !{!"p1 _ZTS18ClientActiveObject", !16, i64 0}
!555 = !{!554, !554, i64 0}
!556 = distinct !{!556, !132}
!557 = !{!87, !86, i64 24}
!558 = !{!87, !86, i64 16}
!559 = distinct !{!559, !132}
!560 = distinct !{!560, !132}
!561 = distinct !{!561, !132}
!562 = distinct !{null}
!563 = distinct !{null}
!564 = distinct !{null}
!565 = distinct !{!565, !132}
!566 = distinct !{!566, !132}
!567 = !{!102, !102, i64 0}
!568 = !{!106, !106, i64 0}
!569 = !{ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEED0Ev, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEED1Ev}
!570 = !{ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEED0Ev}
!571 = distinct !{null, null, null, null}
!572 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED0Ev, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev, null, null, null, null}
!573 = !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED0Ev, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev}
!574 = !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED0Ev}
!575 = !{ptr @_ZN5scene12CIndexBufferItED0Ev, ptr @_ZN5scene12CIndexBufferItED1Ev}
!576 = !{ptr @_ZN5scene12CIndexBufferItED0Ev}
!577 = distinct !{!577, !132}
!578 = distinct !{!578, !132}
!579 = distinct !{!579, !390}
!580 = distinct !{!580, !132}
!581 = distinct !{!581, !390}
!582 = distinct !{!582, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_"}
!583 = distinct !{!583, !582, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!584 = distinct !{!584, !582, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!585 = distinct !{!585, !132}
!586 = !{!"_ZTSN5video9S3DVertexE", !42, i64 0, !42, i64 12, !25, i64 24, !139, i64 28, !33, i64 36}
!587 = !{!586, !33, i64 36}
!588 = !{!584, !583}
!589 = distinct !{!589, !132}
!590 = distinct !{!590, !132}
!591 = distinct !{!591, !132}
!592 = distinct !{!592, !132}
!593 = distinct !{!593, !132}
!594 = distinct !{!594, !132}
!595 = !{!"branch_weights", !"expected", i32 2146946911, i32 536737}
!596 = distinct !{!596, !132}
!597 = distinct !{!597, !132}
!598 = distinct !{!598, !"LVerDomain"}
!599 = distinct !{!599, !598}
!600 = distinct !{!600, !598}
!601 = distinct !{!601, !132, !391, !392}
!602 = distinct !{!602, !132, !391}
!603 = distinct !{!603, !"LVerDomain"}
!604 = distinct !{!604, !603}
!605 = distinct !{!605, !603}
!606 = distinct !{!606, !132, !391, !392}
!607 = distinct !{!607, !390}
!608 = distinct !{!608, !132, !391}
!609 = distinct !{!609, !"LVerDomain"}
!610 = distinct !{!610, !609}
!611 = distinct !{!611, !609}
!612 = distinct !{!612, !132, !391, !392}
!613 = distinct !{!613, !390}
!614 = distinct !{!614, !132}
!615 = distinct !{!615, !132, !391}
!616 = !{!599}
!617 = !{!600}
!618 = !{!604}
!619 = !{!605}
!620 = !{!610}
!621 = !{!611}
!622 = distinct !{!622, !132, !391, !392}
!623 = distinct !{!623, !390}
!624 = distinct !{!624, !132, !391}
end_hunk_4
