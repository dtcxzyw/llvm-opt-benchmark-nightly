Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/hud?download=true
inline.NumInlined: 2250
inline.NumDeleted: 686
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@__clang_call_terminate:bb.a
  unreachable
}

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
  %13 = load <4 x float>, ptr %i.j, align 4
  %i.k = bitcast i64 %1 to <2 x i32>
  %i.l = bitcast i64 %2 to <2 x i32>
  %spec.select = select i1 %or.cond, i32 %i.f, i32 %i.h ; 2 uses
  %spec.select49 = select i1 %or.cond, i32 %i.h, i32 %i.f ; 2 uses
  %i.m = sitofp <2 x i32> %i.l to <2 x float>
  %i.n = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul nsz <2 x float> %i.n, %i.m
  %i.p = fptosi <2 x float> %i.o to <2 x i32>
  %i.q = add nsw <2 x i32> %i.p, %i.k
  %i.r = fadd nsz <2 x float> %4, splat (float -1.000000e+00)
  %i.s = insertelement <2 x i32> poison, i32 %spec.select, i64 0
  %i.t = insertelement <2 x i32> %i.s, i32 %spec.select49, i64 1
  %i.u = sitofp <2 x i32> %i.t to <2 x float>
  %i.v = fmul nnan nsz <2 x float> %i.u, splat (float 5.000000e-01)
  %i.w = sitofp <2 x i32> %i.q to <2 x float>
  %i.x = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.v, <2 x float> %i.w) ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0
  %i.z = fptosi float %i.y to i32                 ; 5 uses
  %i.aa = extractelement <2 x float> %i.x, i64 1
  %i.ab = fptosi float %i.aa to i32               ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 496 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !22 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 504
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !22
  %i.ak = icmp eq i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.al = icmp eq i64 %i.ah, 0
  br i1 %i.al, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread129, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !77
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.an, ptr %i.am, i64 %i.ah)
  %.not131 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not131, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread129, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
  %i.ao = load i64, ptr %i.ag, align 8, !tbaa !22
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = zext i1 %i.ap to i8
  store i8 %i.ar, ptr %i.aq, align 8, !tbaa !55
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !72
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread129

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread129: ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.as = phi ptr [ %i.ae, %bb.b ], [ %.pre, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %i.ae, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 528 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !22 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 536
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !22
  %i.az = icmp eq i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread129
  %i.ba = icmp eq i64 %i.aw, 0
  br i1 %i.ba, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread130, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51: ; preds = %bb.c
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !77
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !77
  %bcmp.i.i50 = tail call i32 @bcmp(ptr %i.bc, ptr %i.bb, i64 %i.aw)
  %.not132 = icmp eq i32 %bcmp.i.i50, 0
  br i1 %.not132, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread130, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread129, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  %i.bd = load i64, ptr %i.av, align 8, !tbaa !22
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = zext i1 %i.be to i8
  store i8 %i.bg, ptr %i.bf, align 8, !tbaa !56
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread130

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread130: ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !55, !range !122, !noundef !123
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread130
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !118 ; 2 uses
  %i.bl = sdiv i32 %i.bk, -2                      ; 2 uses
  %i.bm = sdiv i32 %i.bk, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.bn = add nsw i32 %i.bl, %i.z
  %i.bo = add nsw i32 %i.bl, %i.ab
  %i.bp = add i32 %spec.select, %i.z
  %i.bq = add i32 %i.bp, %i.bm
  %.sroa.8.8.insert.ext.i = zext i32 %i.bq to i64
  %i.br = add i32 %spec.select49, %i.ab
  %i.bs = add i32 %i.br, %i.bm
  %.sroa.8.12.insert.ext.i = zext i32 %i.bs to i64
  %.sroa.8.12.insert.shift.i = shl nuw i64 %.sroa.8.12.insert.ext.i, 32
  %.sroa.8.12.insert.insert.i = or disjoint i64 %.sroa.8.12.insert.shift.i, %.sroa.8.8.insert.ext.i
  %.sroa.0.sroa.6.0.insert.ext.i = zext i32 %i.bo to i64
  %.sroa.0.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %i.bn to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %10, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.sroa.8.12.insert.insert.i, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !79 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef null) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  store i64 0, ptr %11, align 8, !tbaa !78
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ce = load <2 x i32>, ptr %i.ca, align 4, !tbaa !78
  store <2 x i32> %i.ce, ptr %i.cd, align 8, !tbaa !78
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.cc, ptr noundef nonnull %i.bz, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef null, ptr noundef nonnull %i.cf, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread130
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !436
  %i.cj = load ptr, ptr %6, align 8, !tbaa !437
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 296
  %i.co = trunc i64 %i.cn to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.cp = phi i32 [ %i.co, %bb.f ], [ 0, %bb.e ]
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.cp, i32 %3) ; 4 uses
  %i.cq = icmp slt i32 %5, %.sroa.speculated
  br i1 %i.cq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.cr = sub i32 %.sroa.speculated, %5           ; 4 uses
  %i.cs = add nsw i32 %i.cg, %i.z                 ; 2 uses
  %i.ct = add nsw i32 %i.cg, %i.ab                ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cv = zext i16 %7 to i32                      ; 2 uses
  br i1 %9, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.l
  %.0133.us = phi i32 [ %i.dv, %bb.l ], [ %5, %.lr.ph ] ; 6 uses
  %i.cw = load i32, ptr %i.a, align 8, !tbaa !117
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !118 ; 9 uses
  %i.cy = shl nsw i32 %i.cx, 1
  %i.cz = add nsw i32 %i.cy, %i.cw                ; 4 uses
  switch i16 %8, label %bb.k [
    i16 1, label %bb.j
    i16 2, label %bb.i
    i16 3, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.da = xor i32 %.0133.us, -1
  %i.db = add i32 %i.cr, %i.da
  %i.dc = mul nsw i32 %i.cz, %i.db
  %i.dd = add nsw i32 %i.dc, %i.cx
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.de = sub nsw i32 %.0133.us, %5
  %i.df = mul nsw i32 %i.cz, %i.de
  %i.dg = add nsw i32 %i.df, %i.cx
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.dh = xor i32 %.0133.us, -1
  %i.di = add i32 %i.cr, %i.dh
  %i.dj = mul nsw i32 %i.cz, %i.di
  %i.dk = add nsw i32 %i.dj, %i.cx
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us
  %i.dl = sub nsw i32 %.0133.us, %5
  %i.dm = mul nsw i32 %i.cz, %i.dl
  %i.dn = add nsw i32 %i.dm, %i.cx
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.098.0.us = phi i32 [ %i.dn, %bb.k ], [ %i.dk, %bb.j ], [ %i.cx, %bb.i ], [ %i.cx, %bb.h ] ; 2 uses
  %.sroa.8.0.us = phi i32 [ %i.cx, %bb.k ], [ %i.cx, %bb.j ], [ %i.dg, %bb.i ], [ %i.dd, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.do = add nsw i32 %.sroa.098.0.us, %i.z
  %i.dp = add nsw i32 %.sroa.8.0.us, %i.ab
  %i.dq = add nsw i32 %i.cs, %.sroa.098.0.us
end_hunk_0
begin_hunk_1_@_ZN3Hud15drawLuaElementsERKN4core8vector3dIsEE:bb.a
  %.pn303.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn296, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit687 ], [ %.pn303.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i705 ], [ %.pn303.pn.pn.pn.pn, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.fx

bb.dx:                                            ; preds = %bb.ac
  %i.adt = invoke noundef zeroext i1 @_ZN3Hud18calculateScreenPosERKN4core8vector3dIsEEP10HudElementPNS0_8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull align 2 dereferenceable(6) %1, ptr noundef nonnull %i.jl, ptr noundef nonnull %9)
          to label %bb.dy unwind label %.loopexit1011

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.adt, label %bb.dz, label %.critedge.thread

bb.dz:                                            ; preds = %bb.dy, %bb.ac
  %i.adu = load ptr, ptr %i.hg, align 8, !tbaa !79 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %i.adw = load ptr, ptr %i.adu, align 8, !tbaa !69
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 16
  %i.ady = load ptr, ptr %i.adx, align 8
  %i.adz = invoke noundef ptr %i.ady(ptr noundef nonnull align 8 dereferenceable(8) %i.adu, ptr noundef nonnull align 8 dereferenceable(32) %i.adv, ptr noundef null)
          to label %bb.ea unwind label %bb.eb     ; 4 uses

bb.ea:                                            ; preds = %bb.dz
  %.not290.not = icmp eq ptr %i.adz, null
  br i1 %.not290.not, label %.critedge.thread, label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.aea = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #34
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adz, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %28, i8 -1, i64 16, i1 false)
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !361 ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adz, i64 76
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !362 ; 2 uses
  %i.aef = sitofp nsz i32 %i.aec to float
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.aeh = load float, ptr %i.aeg, align 8, !tbaa !339 ; 3 uses
  %i.aei = fmul nsz float %i.aeh, %i.aef
  %i.aej = load float, ptr %i.hf, align 4, !tbaa !116 ; 3 uses
  %i.aek = fmul nsz float %i.aei, %i.aej
  %i.ael = fptosi float %i.aek to i32
  %i.aem = sitofp nsz i32 %i.aee to float
  %i.aen = getelementptr inbounds nuw i8, ptr %i.jl, i64 52
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !340 ; 3 uses
  %i.aep = fmul nsz float %i.aeo, %i.aem
  %i.aeq = fmul nsz float %i.aej, %i.aep
  %i.aer = fptosi float %i.aeq to i32
  %i.aes = fcmp nsz olt float %i.aeh, 0.000000e+00
  br i1 %i.aes, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aet = load i32, ptr %i.hc, align 8, !tbaa !492
  %i.aeu = uitofp nsz i32 %i.aet to double
  %i.aev = fpext nnan nsz float %i.aeh to double
  %i.aew = fmul nnan nsz double %i.aev, -1.000000e-02
  %i.aex = fmul nsz double %i.aew, %i.aeu
  %i.aey = fptosi double %i.aex to i32
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sroa.0850.0 = phi i32 [ %i.aey, %bb.ed ], [ %i.ael, %bb.ec ]
  %i.aez = fcmp nsz olt float %i.aeo, 0.000000e+00
  br i1 %i.aez, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.afa = load i32, ptr %i.hd, align 4, !tbaa !493
  %i.afb = uitofp nsz i32 %i.afa to double
  %i.afc = fpext nnan nsz float %i.aeo to double
  %i.afd = fmul nnan nsz double %i.afc, -1.000000e-02
  %i.afe = fmul nsz double %i.afd, %i.afb
  %i.aff = fptosi double %i.afe to i32
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.sroa.7852.0 = phi i32 [ %i.aff, %bb.ef ], [ %i.aer, %bb.ee ]
  %i.afg = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  %i.afh = insertelement <2 x i32> poison, i32 %.sroa.0850.0, i64 0
  %i.afi = insertelement <2 x i32> %i.afh, i32 %.sroa.7852.0, i64 1 ; 2 uses
  %i.afj = sitofp <2 x i32> %i.afi to <2 x double>
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #34
  %i.afk = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %i.afl = load <2 x float>, ptr %i.afg, align 4, !tbaa !58
  %i.afm = fpext <2 x float> %i.afl to <2 x double>
  %i.afn = fadd nsz <2 x double> %i.afm, splat (double -1.000000e+00)
  %i.afo = fmul nsz <2 x double> %i.afn, %i.afj
  %i.afp = fmul nsz <2 x double> %i.afo, splat (double 5.000000e-01)
  %i.afq = fptosi <2 x double> %i.afp to <2 x i32>
  %i.afr = load <2 x i32>, ptr %9, align 8, !tbaa !78
  %i.afs = add nsw <2 x i32> %i.afr, %i.afq
  %i.aft = load <2 x float>, ptr %i.afk, align 4, !tbaa !58
  %i.afu = insertelement <2 x float> poison, float %i.aej, i64 0
  %i.afv = shufflevector <2 x float> %i.afu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afw = fmul nsz <2 x float> %i.afv, %i.aft
  %i.afx = fptosi <2 x float> %i.afw to <2 x i32>
  %i.afy = add nsw <2 x i32> %i.afs, %i.afx       ; 2 uses
  store <2 x i32> %i.afy, ptr %29, align 8, !tbaa !78
  %i.afz = add nsw <2 x i32> %i.afy, %i.afi
  store <2 x i32> %i.afz, ptr %i.hj, align 8, !tbaa !78
  %i.aga = load ptr, ptr %i.hk, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #34
  store i64 0, ptr %30, align 8, !tbaa !78
  store i32 %i.aec, ptr %i.hl, align 8, !tbaa !358
  store i32 %i.aee, ptr %i.hm, align 4, !tbaa !359
  invoke void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.aga, ptr noundef nonnull %i.adz, ptr noundef nonnull align 4 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %30, ptr noundef null, ptr noundef nonnull %28, i1 noundef zeroext true)
          to label %bb.eh unwind label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #34
  br label %.critedge.thread

bb.ei:                                            ; preds = %bb.eg
  %i.agb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #34
  br label %bb.fx

bb.ej:                                            ; preds = %bb.ac
  %i.agc = load ptr, ptr %i.hg, align 8, !tbaa !79 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %i.age = load ptr, ptr %i.agc, align 8, !tbaa !69
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 16
  %i.agg = load ptr, ptr %i.agf, align 8
  %i.agh = invoke noundef ptr %i.agg(ptr noundef nonnull align 8 dereferenceable(8) %i.agc, ptr noundef nonnull align 8 dereferenceable(32) %i.agd, ptr noundef null)
          to label %bb.ek unwind label %bb.el     ; 3 uses

bb.ek:                                            ; preds = %bb.ej
  %.not281 = icmp eq ptr %i.agh, null
  br i1 %.not281, label %.critedge.thread, label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.agi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.em:                                            ; preds = %bb.ek
  %i.agj = getelementptr inbounds nuw i8, ptr %i.jl, i64 128
  %i.agk = load float, ptr %i.agj, align 8, !tbaa !494 ; 3 uses
  %i.agl = fptosi float %i.agk to i32
  %i.agm = getelementptr inbounds nuw i8, ptr %i.jl, i64 132
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !528 ; 3 uses
  %i.ago = fptosi float %i.agn to i32
  %i.agp = fcmp nsz olt float %i.agk, 0.000000e+00
  br i1 %i.agp, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.agq = load i32, ptr %i.hc, align 8, !tbaa !492
  %i.agr = uitofp nsz i32 %i.agq to double
  %i.ags = fpext nnan nsz float %i.agk to double
  %i.agt = fmul nnan nsz double %i.ags, -1.000000e-02
  %i.agu = fmul nsz double %i.agt, %i.agr
  %i.agv = fptosi double %i.agu to i32
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.sroa.0832.0 = phi i32 [ %i.agv, %bb.en ], [ %i.agl, %bb.em ] ; 3 uses
  %i.agw = fcmp nsz olt float %i.agn, 0.000000e+00
  br i1 %i.agw, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.agx = load i32, ptr %i.hd, align 4, !tbaa !493
  %i.agy = uitofp nsz i32 %i.agx to double
  %i.agz = fpext nnan nsz float %i.agn to double
  %i.aha = fmul nnan nsz double %i.agz, -1.000000e-02
  %i.ahb = fmul nsz double %i.aha, %i.agy
  %i.ahc = fptosi double %i.ahb to i32
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.sroa.8.0 = phi i32 [ %i.ahc, %bb.ep ], [ %i.ago, %bb.eo ] ; 3 uses
  %i.ahd = icmp slt i32 %.sroa.0832.0, 1
  %i.ahe = icmp slt i32 %.sroa.8.0, 1
  %or.cond = select i1 %i.ahd, i1 true, i1 %i.ahe
  br i1 %or.cond, label %.loopexit.sink.split, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ahf = load ptr, ptr %i.by, align 8, !tbaa !71
  %i.ahg = invoke noundef ptr @_ZN6Client15getSceneManagerEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.ahf)
          to label %bb.es unwind label %bb.ev     ; 2 uses

bb.es:                                            ; preds = %bb.er
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !69
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 112
  %i.ahj = load ptr, ptr %i.ahi, align 8
  %i.ahk = invoke noundef ptr %i.ahj(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg)
          to label %bb.et unwind label %bb.ev     ; 2 uses

bb.et:                                            ; preds = %bb.es
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !69
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 80
  %i.ahn = load ptr, ptr %i.ahm, align 8
  %i.aho = invoke noundef nonnull align 4 dereferenceable(64) ptr %i.ahn(ptr noundef nonnull align 8 dereferenceable(218) %i.ahk)
          to label %bb.eu unwind label %bb.ew     ; 6 uses

bb.eu:                                            ; preds = %bb.et
  %32 = load <4 x float>, ptr %i.aho, align 4
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 16
  %34 = load <4 x float>, ptr %i.ahp, align 4
  %35 = shufflevector <4 x float> %34, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.aho, i64 32
  %36 = load <4 x float>, ptr %i.ahq, align 4
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.aho, i64 8
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !58
  %i.aht = getelementptr inbounds nuw i8, ptr %i.aho, i64 24
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !58
  %i.ahv = insertelement <2 x float> %35, float %i.ahu, i64 1
  %i.ahw = fmul nsz <2 x float> %i.ahv, zeroinitializer
  %i.ahx = insertelement <2 x float> %33, float %i.ahs, i64 1
  %i.ahy = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahx, <2 x float> zeroinitializer, <2 x float> %i.ahw)
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.aho, i64 40
  %i.aia = load float, ptr %i.ahz, align 4, !tbaa !58
  %i.aib = insertelement <2 x float> %37, float %i.aia, i64 1
  %i.aic = fadd nsz <2 x float> %i.aib, %i.ahy
  %i.aid = fpext <2 x float> %i.aic to <2 x double> ; 2 uses
  %i.aie = extractelement <2 x double> %i.aid, i64 0
  %i.aif = extractelement <2 x double> %i.aid, i64 1
  %i.aig = call nsz double @llvm.atan2.f64(double %i.aie, double %i.aif)
  %i.aih = fmul nsz double %i.aig, f0x404CA5DC1A63C1F8 ; 2 uses
  %i.aii = fptrunc nsz double %i.aih to float     ; 2 uses
  %i.aij = fcmp nsz olt double %i.aih, f0xB690000000000000
  %i.aik = fadd nsz float %i.aii, 3.600000e+02
  %storemerge.i = select i1 %i.aij, float %i.aik, float %i.aii ; 3 uses
  %i.ail = fcmp nsz ult float %storemerge.i, 3.600000e+02
  %i.aim = fadd nsz float %storemerge.i, -3.600000e+02
  %storemerge7.i = select i1 %i.ail, float %storemerge.i, float %i.aim
  %i.ain = fneg nsz float %storemerge7.i
  %i.aio = fptosi float %i.ain to i32
  %i.aip = getelementptr inbounds nuw i8, ptr %i.jl, i64 88
  %i.aiq = load i32, ptr %i.aip, align 8, !tbaa !489
  %i.air = add nsw i32 %i.aiq, %i.aio
  %i.ais = srem i32 %i.air, 360                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #34
  %i.ait = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  %i.aiu = uitofp nneg i32 %.sroa.0832.0 to double
  %i.aiv = uitofp nneg i32 %.sroa.8.0 to double
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %38 = load <4 x float>, ptr %i.hi, align 8
  %i.aix = load <2 x float>, ptr %i.ait, align 4, !tbaa !58
  %i.aiy = fpext <2 x float> %i.aix to <2 x double>
  %i.aiz = fadd nsz <2 x double> %i.aiy, splat (double -1.000000e+00)
  %i.aja = insertelement <2 x double> poison, double %i.aiu, i64 0
  %i.ajb = insertelement <2 x double> %i.aja, double %i.aiv, i64 1
  %i.ajc = fmul nsz <2 x double> %i.aiz, %i.ajb
  %i.ajd = fmul nsz <2 x double> %i.ajc, splat (double 5.000000e-01)
  %i.aje = fptosi <2 x double> %i.ajd to <2 x i32>
  %i.ajf = add nsw <2 x i32> %i.aje, %i.jy
  %i.ajg = load <2 x float>, ptr %i.aiw, align 4, !tbaa !58
  %i.ajh = shufflevector <4 x float> %38, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aji = fmul nsz <2 x float> %i.ajh, %i.ajg
  %i.ajj = fptosi <2 x float> %i.aji to <2 x i32>
  %i.ajk = add nsw <2 x i32> %i.ajf, %i.ajj       ; 2 uses
  store <2 x i32> %i.ajk, ptr %31, align 8, !tbaa !78
  %i.ajl = insertelement <2 x i32> poison, i32 %.sroa.0832.0, i64 0
  %i.ajm = insertelement <2 x i32> %i.ajl, i32 %.sroa.8.0, i64 1
  %i.ajn = add nsw <2 x i32> %i.ajk, %i.ajm
  store <2 x i32> %i.ajn, ptr %i.hh, align 8, !tbaa !78
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.jl, i64 96
  %i.ajp = load i32, ptr %i.ajo, align 8, !tbaa !491
  switch i32 %i.ajp, label %bb.fa [
    i32 0, label %.invoke1306
    i32 1, label %bb.ey
    i32 2, label %.invoke
    i32 3, label %bb.ez
  ]

bb.ev:                                            ; preds = %bb.es, %bb.er
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.ew:                                            ; preds = %bb.et
  %i.ajr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.ex:                                            ; preds = %.invoke1306, %.invoke
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #34
  br label %bb.fx

bb.ey:                                            ; preds = %bb.eu
  %i.ajt = sub nsw i32 0, %i.ais
  br label %.invoke1306

.invoke1306:                                      ; preds = %bb.eu, %bb.ey
  %i.aju = phi i32 [ %i.ajt, %bb.ey ], [ %i.ais, %bb.eu ]
  invoke void @_ZN3Hud17drawCompassRotateEP10HudElementPN5video8ITextureERKN4core4rectIiEEi(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr nonnull poison, ptr noundef nonnull %i.agh, ptr noundef nonnull align 4 dereferenceable(16) %31, i32 noundef %i.aju)
          to label %bb.fa unwind label %bb.ex

bb.ez:                                            ; preds = %bb.eu
  %i.ajv = sub nsw i32 0, %i.ais
  br label %.invoke

.invoke:                                          ; preds = %bb.eu, %bb.ez
  %i.ajw = phi i32 [ %i.ajv, %bb.ez ], [ %i.ais, %bb.eu ]
  invoke void @_ZN3Hud20drawCompassTranslateEP10HudElementPN5video8ITextureERKN4core4rectIiEEi(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull %i.jl, ptr noundef nonnull %i.agh, ptr noundef nonnull align 4 dereferenceable(16) %31, i32 noundef %i.ajw)
          to label %bb.fa unwind label %bb.ex

bb.fa:                                            ; preds = %.invoke1306, %.invoke, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #34
  br label %.critedge.thread

bb.fb:                                            ; preds = %bb.ac
  %i.ajx = load ptr, ptr %i.by, align 8, !tbaa !71
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 632
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !529 ; 2 uses
  %.not274 = icmp eq ptr %i.ajz, null
  br i1 %.not274, label %.critedge.thread, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aka = getelementptr inbounds nuw i8, ptr %i.jl, i64 128
  %i.akb = load float, ptr %i.hf, align 4, !tbaa !116 ; 2 uses
  %i.akc = load <2 x float>, ptr %i.aka, align 8, !tbaa !58 ; 3 uses
  %i.akd = extractelement <2 x float> %i.akc, i64 0 ; 2 uses
  %i.ake = fcmp nsz olt float %i.akd, 0.000000e+00
  br i1 %i.ake, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.akf = uitofp nsz i32 %i.jn to double
  %i.akg = fpext nnan nsz float %i.akd to double
  %i.akh = fmul nnan nsz double %i.akg, -1.000000e-02
  %i.aki = fmul nsz double %i.akh, %i.akf
  %i.akj = fptosi double %i.aki to i32
  %i.akk = insertelement <2 x i32> poison, i32 %i.akj, i64 0
  %i.akl = shufflevector <2 x i32> %i.akk, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.fg

bb.fe:                                            ; preds = %bb.fc
  %i.akm = insertelement <2 x float> poison, float %i.akb, i64 0
  %i.akn = shufflevector <2 x float> %i.akm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ako = fmul nsz <2 x float> %i.akn, %i.akc
  %i.akp = fptosi <2 x float> %i.ako to <2 x i32>
  %i.akq = extractelement <2 x float> %i.akc, i64 1 ; 2 uses
  %i.akr = fcmp nsz olt float %i.akq, 0.000000e+00
  br i1 %i.akr, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aks = uitofp nsz i32 %i.jq to double
  %i.akt = fpext nnan nsz float %i.akq to double
  %i.aku = fmul nnan nsz double %i.akt, -1.000000e-02
  %i.akv = fmul nsz double %i.aku, %i.aks
  %i.akw = fptosi double %i.akv to i32
  %i.akx = insertelement <2 x i32> poison, i32 %i.akw, i64 0
  %i.aky = shufflevector <2 x i32> %i.akx, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fe, %bb.ff, %bb.fd
  %i.akz = phi <2 x i32> [ %i.akl, %bb.fd ], [ %i.aky, %bb.ff ], [ %i.akp, %bb.fe ] ; 4 uses
  %i.ala = extractelement <2 x i32> %i.akz, i64 0
  %i.alb = icmp sgt i32 %i.ala, 0
  %i.alc = extractelement <2 x i32> %i.akz, i64 1
  %i.ald = icmp sgt i32 %i.alc, 0
  %or.cond9.not = select i1 %i.alb, i1 %i.ald, i1 false
  br i1 %or.cond9.not, label %bb.fh, label %.loopexit.sink.split

bb.fh:                                            ; preds = %bb.fg
  %i.ale = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  %i.alf = uitofp <2 x i32> %i.akz to <2 x double>
  %i.alg = load <2 x float>, ptr %i.ale, align 4, !tbaa !58
  %i.alh = fpext <2 x float> %i.alg to <2 x double>
  %i.ali = fadd nsz <2 x double> %i.alh, splat (double -1.000000e+00)
  %i.alj = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %i.alk = load <2 x float>, ptr %i.alj, align 4, !tbaa !58
  %i.all = insertelement <2 x float> poison, float %i.akb, i64 0
  %i.alm = shufflevector <2 x float> %i.all, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aln = fmul nsz <2 x float> %i.alm, %i.alk
  %i.alo = fmul nsz <2 x double> %i.ali, %i.alf
  %i.alp = fmul nsz <2 x double> %i.alo, splat (double 5.000000e-01)
  %i.alq = fptosi <2 x double> %i.alp to <2 x i32>
  %i.alr = fptosi <2 x float> %i.aln to <2 x i32>
  %i.als = add <2 x i32> %i.alr, %i.jy
  %i.alt = add <2 x i32> %i.als, %i.alq           ; 2 uses
  %.sroa.0793.4.insert.insert800 = bitcast <2 x i32> %i.alt to i64
  %i.alu = add nsw <2 x i32> %i.alt, %i.akz
  %.sroa.10.12.insert.insert810 = bitcast <2 x i32> %i.alu to i64
  invoke void @_ZN7Minimap11drawMinimapEN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(192) %i.ajz, i64 %.sroa.0793.4.insert.insert800, i64 %.sroa.10.12.insert.insert810)
          to label %.critedge.thread unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.alv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fj:                                            ; preds = %bb.ac
  %i.alw = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %i.alx = getelementptr inbounds nuw i8, ptr %i.jl, i64 96
  %i.aly = load i32, ptr %i.alx, align 8, !tbaa !491
  %i.alz = trunc i32 %i.aly to i16
  %i.ama = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  invoke void @_ZN3Hud10drawHotbarERKN4core8vector2dIiEERKNS1_IfEEtS7_(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.alw, i16 noundef zeroext %i.alz, ptr noundef nonnull align 4 dereferenceable(8) %i.ama)
          to label %.critedge.thread unwind label %.loopexit1011

bb.fk:                                            ; preds = %bb.ac
  br i1 %.not.i736, label %_ZTW10infostream.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.fk, %bb.fl
  %i.amb = load ptr, ptr %i.jk, align 8, !tbaa !508, !nonnull !123, !align !509 ; 2 uses
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !69
  %i.amd = load ptr, ptr %i.amc, align 8
  %i.ame = invoke noundef zeroext i1 %i.amd(ptr noundef nonnull align 8 dereferenceable(8) %i.amb)
          to label %.noexc738 unwind label %.loopexit1011, !inline_history !453

.noexc738:                                        ; preds = %_ZTW10infostream.exit
  %.v.i737 = select i1 %i.ame, i64 976, i64 984
  %i.amf = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.v.i737 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.16, ptr %i.b, align 8, !tbaa !349
  %i.amg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.amf, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.fm unwind label %.loopexit1011 ; 0 uses

bb.fm:                                            ; preds = %.noexc738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.amh = load ptr, ptr %i.amf, align 8, !tbaa !350 ; 5 uses
  %.not.i740 = icmp eq ptr %i.amh, null
  br i1 %.not.i740, label %_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !69
  %i.amj = getelementptr i8, ptr %i.ami, i64 -24
  %i.amk = load i64, ptr %i.amj, align 8
  %i.aml = getelementptr inbounds i8, ptr %i.amh, i64 %i.amk
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 32
  %i.amn = load i32, ptr %i.amm, align 8, !tbaa !357
  %i.amo = icmp eq i32 %i.amn, 0
  br i1 %i.amo, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.amh)
          to label %.noexc742 unwind label %.loopexit1011

.noexc742:                                        ; preds = %bb.fo
  %.pre.i741 = load ptr, ptr %i.amf, align 8, !tbaa !350
  br label %bb.fp

bb.fp:                                            ; preds = %.noexc742, %bb.fn
  %i.amp = phi ptr [ %.pre.i741, %.noexc742 ], [ %i.amh, %bb.fn ]
  %i.amq = load i32, ptr %i.jl, align 8, !tbaa !530
  %i.amr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.amp, i32 noundef %i.amq)
          to label %_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit unwind label %.loopexit1011 ; 0 uses

_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit: ; preds = %bb.fm, %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.17, ptr %i.a, align 8, !tbaa !349
end_hunk_1
begin_hunk_2_@_ZN3Hud10drawHotbarERKN4core8vector2dIiEERKNS1_IfEEtS7_:bb.a
  %i.au = load ptr, ptr %6, align 8, !tbaa !77
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.aw = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %.noexc50
  %i.ax = fcmp nsz ugt float %i.ao, %i.aw
  %i.ay = load ptr, ptr %6, align 8, !tbaa !77    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.aq
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.g
  %i.ba = load i64, ptr %i.aq, align 8, !tbaa !23
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br i1 %i.ax, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.sroa.09.0.copyload = load i64, ptr %1, align 4, !tbaa !78
  %.sroa.7.0.insert.ext70 = zext i32 %i.z to i64
  %.sroa.7.0.insert.shift71 = shl nuw i64 %.sroa.7.0.insert.ext70, 32
  %.sroa.059.0.insert.ext63 = zext i32 %i.w to i64
  %.sroa.059.0.insert.insert65 = or disjoint i64 %.sroa.7.0.insert.shift71, %.sroa.059.0.insert.ext63
  %.sroa.07.0.copyload = load <2 x float>, ptr %4, align 4, !tbaa !58
  %i.bc = add i16 %i.u, 1
  call void @_ZN3Hud9drawItemsEN4core8vector2dIiEES2_iNS1_IfEEiP13InventoryListttb(ptr noundef nonnull align 8 dereferenceable(572) %0, i64 %.sroa.09.0.copyload, i64 %.sroa.059.0.insert.insert65, i32 noundef %i.ac, <2 x float> %.sroa.07.0.copyload, i32 noundef 0, ptr noundef nonnull %i.h, i16 noundef zeroext %i.bc, i16 noundef zeroext %3, i1 noundef zeroext true)
  br label %bb.l

bb.i:                                             ; preds = %_ZN15RenderingEngine13getWindowSizeEv.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.j:                                             ; preds = %.noexc50
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %6, align 8, !tbaa !77    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.aq
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.j
  %i.bh = load i64, ptr %i.aq, align 8, !tbaa !23
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.i
  %.pn42 = phi { ptr, i32 } [ %i.bd, %bb.i ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.be, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.m

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.bj = load i32, ptr %i.ad, align 8, !tbaa !117
  %i.bk = load i32, ptr %i.ae, align 4, !tbaa !118
  %i.bl = load i32, ptr %1, align 4, !tbaa !358
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !359
  %i.bo = add i32 %i.bk, %i.bj
  %i.bp = sub i32 %i.bn, %i.bo
  %.sroa.2.0.insert.ext.i = zext i32 %i.bp to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bl to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.7.0.insert.ext66 = zext i32 %i.z to i64
  %.sroa.7.0.insert.shift67 = shl nuw i64 %.sroa.7.0.insert.ext66, 32
  %.sroa.059.0.insert.ext60 = zext i32 %i.w to i64
  %.sroa.059.0.insert.insert62 = or disjoint i64 %.sroa.7.0.insert.shift67, %.sroa.059.0.insert.ext60 ; 2 uses
  %i.bq = lshr i32 %i.ac, 1                       ; 2 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %4, align 4, !tbaa !58
  %i.br = add i16 %i.u, 1                         ; 2 uses
  call void @_ZN3Hud9drawItemsEN4core8vector2dIiEES2_iNS1_IfEEiP13InventoryListttb(ptr noundef nonnull align 8 dereferenceable(572) %0, i64 %.sroa.0.0.insert.insert.i, i64 %.sroa.059.0.insert.insert62, i32 noundef %i.bq, <2 x float> %.sroa.03.0.copyload, i32 noundef 0, ptr noundef nonnull %i.h, i16 noundef zeroext %i.br, i16 noundef zeroext %3, i1 noundef zeroext true)
  %.sroa.02.0.copyload = load i64, ptr %1, align 4, !tbaa !78
  %.sroa.0.0.copyload = load <2 x float>, ptr %4, align 4, !tbaa !58
  call void @_ZN3Hud9drawItemsEN4core8vector2dIiEES2_iNS1_IfEEiP13InventoryListttb(ptr noundef nonnull align 8 dereferenceable(572) %0, i64 %.sroa.02.0.copyload, i64 %.sroa.059.0.insert.insert62, i32 noundef %i.ac, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.bq, ptr noundef nonnull %i.h, i16 noundef zeroext %i.br, i16 noundef zeroext %3, i1 noundef zeroext true)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  resume { ptr, i32 } %.pn42.pn
}

declare void @_ZN13TouchControls16resetHotbarRectsEv(ptr noundef nonnull align 8 dereferenceable(712)) local_unnamed_addr #3

declare noundef zeroext i16 @_ZN6Player13getWieldIndexEv(ptr noundef nonnull align 8 dereferenceable(416)) local_unnamed_addr #3

declare noundef zeroext i16 @_ZN6Player21getMaxHotbarItemcountEv(ptr noundef nonnull align 8 dereferenceable(416)) local_unnamed_addr #3

declare noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Hud13drawCrosshairEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(572) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.core::rect", align 4        ; 7 uses
  %2 = alloca %"class.core::rect", align 8        ; 6 uses
  %3 = alloca [4 x %"class.video::SColor"], align 16 ; 4 uses
  %4 = alloca %"class.core::rect", align 4        ; 7 uses
  %5 = alloca %"class.core::rect", align 8        ; 6 uses
  %6 = alloca [4 x %"class.video::SColor"], align 16 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.core::vector2d.0", align 8  ; 4 uses
  %9 = alloca %"class.core::vector2d.0", align 8  ; 4 uses
  %10 = alloca %"class.core::vector2d.0", align 8 ; 4 uses
  %11 = alloca %"class.core::vector2d.0", align 8 ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.core::vector2d.0", align 8 ; 4 uses
  %14 = alloca %"class.core::vector2d.0", align 8 ; 4 uses
  %15 = alloca %"class.core::vector2d.0", align 8 ; 4 uses
  %16 = alloca %"class.core::vector2d.0", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.c = load i8, ptr %i.b, align 1, !tbaa !57, !range !122, !noundef !123
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.f = load i8, ptr %i.e, align 1, !tbaa !81, !range !122, !noundef !123
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 20, ptr %i.a, align 8, !tbaa !76
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %7, align 8, !tbaa !77
  %i.l = load i64, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.k, ptr noundef nonnull align 1 dereferenceable(20) @.str.8, i64 20, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !22
  %i.n = load ptr, ptr %7, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef null)
          to label %bb.c unwind label %bb.f       ; 3 uses

bb.c:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load i32, ptr %i.t, align 4, !tbaa !361  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 76
  %i.w = load i32, ptr %i.v, align 4, !tbaa !362  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.y = load float, ptr %i.x, align 4, !tbaa !116
  %i.z = call nsz noundef float @llvm.floor.f32(float %i.y) ; 2 uses
  %i.aa = fcmp nsz olt float %i.z, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.aa, float 1.000000e+00, float %i.z
  %i.ab = fptosi float %.sroa.speculated.i to i32 ; 2 uses
  %i.ac = mul nsw i32 %i.u, %i.ab                 ; 2 uses
  %i.ad = mul nsw i32 %i.w, %i.ab                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i32 0, ptr %4, align 4, !tbaa !358
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.ae, align 4, !tbaa !359
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.u, ptr %i.af, align 4, !tbaa !358
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.w, ptr %i.ag, align 4, !tbaa !359
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !538
  %.neg.i = sdiv i32 %i.ac, -2
  %i.aj = add i32 %.neg.i, %i.ai                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !539
  %.neg3.i = sdiv i32 %i.ad, -2
  %i.am = add i32 %i.al, %.neg3.i                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %.sroa.5.0.insert.ext.i = zext i32 %i.am to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.aj to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %5, align 8, !tbaa !78
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = add nsw i32 %i.aj, %i.ac
  %i.ap = add nsw i32 %i.am, %i.ad
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !358
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !359
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %17 = load <4 x i32>, ptr %i.ar, align 4
  %i.as = shufflevector <4 x i32> %17, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.as, ptr %6, align 16, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !70
  invoke void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.au, ptr noundef nonnull %i.s, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef null, ptr noundef nonnull %6, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.av = load ptr, ptr %7, align 8, !tbaa !77    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.j
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !23
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.m

bb.e:                                             ; preds = %.noexc.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.f:                                             ; preds = %bb.c, %.noexc
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %7, align 8, !tbaa !77    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.j
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.f
  %i.bd = load i64, ptr %i.j, align 8, !tbaa !23
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.e
  %.pn21 = phi { ptr, i32 } [ %i.az, %bb.e ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.ba, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.n

bb.g:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !116
  %i.bh = fmul nsz float %i.bg, 8.000000e+00
  %i.bi = fadd nsz float %i.bh, 5.000000e-01
  %i.bj = tail call nsz noundef float @llvm.floor.f32(float %i.bi)
  %i.bk = fptosi float %i.bj to i32               ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !358 ; 2 uses
  %i.bp = sub nsw i32 %i.bo, %i.bk
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !359 ; 2 uses
  %i.bs = sub nsw i32 %i.br, %i.bk
  %.sroa.2.0.insert.ext.i = zext i32 %i.bs to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i29 = zext i32 %i.bp to i64
  %.sroa.0.0.insert.insert.i30 = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i29
  store i64 %.sroa.0.0.insert.insert.i30, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.bt = add nsw i32 %i.bo, %i.bk
  %i.bu = add nsw i32 %i.br, %i.bk
  %.sroa.2.0.insert.ext.i31 = zext i32 %i.bu to i64
  %.sroa.2.0.insert.shift.i32 = shl nuw i64 %.sroa.2.0.insert.ext.i31, 32
  %.sroa.0.0.insert.ext.i33 = zext i32 %i.bt to i64
  %.sroa.0.0.insert.insert.i34 = or disjoint i64 %.sroa.2.0.insert.shift.i32, %.sroa.0.0.insert.ext.i33
  store i64 %.sroa.0.0.insert.insert.i34, ptr %9, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.06.0.copyload = load i32, ptr %i.bv, align 4, !tbaa !78
  %i.bw = load ptr, ptr %i.bm, align 8, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 440
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 %.sroa.06.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.bz = load ptr, ptr %i.bl, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.ca = load i32, ptr %i.bn, align 8, !tbaa !358 ; 2 uses
  %i.cb = add nsw i32 %i.ca, %i.bk
  %i.cc = load i32, ptr %i.bq, align 4, !tbaa !359 ; 2 uses
  %i.cd = sub nsw i32 %i.cc, %i.bk
  %.sroa.2.0.insert.ext.i35 = zext i32 %i.cd to i64
  %.sroa.2.0.insert.shift.i36 = shl nuw i64 %.sroa.2.0.insert.ext.i35, 32
  %.sroa.0.0.insert.ext.i37 = zext i32 %i.cb to i64
  %.sroa.0.0.insert.insert.i38 = or disjoint i64 %.sroa.2.0.insert.shift.i36, %.sroa.0.0.insert.ext.i37
  store i64 %.sroa.0.0.insert.insert.i38, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.ce = sub nsw i32 %i.ca, %i.bk
  %i.cf = add nsw i32 %i.cc, %i.bk
  %.sroa.2.0.insert.ext.i39 = zext i32 %i.cf to i64
  %.sroa.2.0.insert.shift.i40 = shl nuw i64 %.sroa.2.0.insert.ext.i39, 32
  %.sroa.0.0.insert.ext.i41 = zext i32 %i.ce to i64
  %.sroa.0.0.insert.insert.i42 = or disjoint i64 %.sroa.2.0.insert.shift.i40, %.sroa.0.0.insert.ext.i41
  store i64 %.sroa.0.0.insert.insert.i42, ptr %11, align 8
  %.sroa.05.0.copyload = load i32, ptr %i.bv, align 4, !tbaa !78
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !69
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 440
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11, i32 %.sroa.05.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !80, !range !122, !noundef !123
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %._crit_edge.i.i43, label %bb.l

._crit_edge.i.i43:                                ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !79 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.co, ptr %12, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.co, ptr noundef nonnull align 1 dereferenceable(13) @.str.7, i64 13, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 13, ptr %i.cp, align 8, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 29
  store i8 0, ptr %i.cq, align 1, !tbaa !23
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !69
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = invoke noundef ptr %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef null)
          to label %bb.i unwind label %bb.k       ; 3 uses

bb.i:                                             ; preds = %._crit_edge.i.i43
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !361 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 76
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !362 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.da = load float, ptr %i.cz, align 4, !tbaa !116
  %i.db = call nsz noundef float @llvm.floor.f32(float %i.da) ; 2 uses
  %i.dc = fcmp nsz olt float %i.db, 1.000000e+00
  %.sroa.speculated.i47 = select i1 %i.dc, float 1.000000e+00, float %i.db
  %i.dd = fptosi float %.sroa.speculated.i47 to i32 ; 2 uses
  %i.de = mul nsw i32 %i.cw, %i.dd                ; 2 uses
  %i.df = mul nsw i32 %i.cy, %i.dd                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  store i32 0, ptr %1, align 4, !tbaa !358
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.dg, align 4, !tbaa !359
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.cw, ptr %i.dh, align 4, !tbaa !358
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.cy, ptr %i.di, align 4, !tbaa !359
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !538
  %.neg.i48 = sdiv i32 %i.de, -2
  %i.dl = add i32 %.neg.i48, %i.dk                ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !539
  %.neg3.i49 = sdiv i32 %i.df, -2
  %i.do = add i32 %i.dn, %.neg3.i49               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %.sroa.5.0.insert.ext.i50 = zext i32 %i.do to i64
  %.sroa.5.0.insert.shift.i51 = shl nuw i64 %.sroa.5.0.insert.ext.i50, 32
  %.sroa.0.0.insert.ext.i52 = zext i32 %i.dl to i64
  %.sroa.0.0.insert.insert.i53 = or disjoint i64 %.sroa.5.0.insert.shift.i51, %.sroa.0.0.insert.ext.i52
  store i64 %.sroa.0.0.insert.insert.i53, ptr %2, align 8, !tbaa !78
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = add nsw i32 %i.dl, %i.de
  %i.dr = add nsw i32 %i.do, %i.df
  store i32 %i.dq, ptr %i.dp, align 8, !tbaa !358
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !359
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %18 = load <4 x i32>, ptr %i.dt, align 4
  %i.du = shufflevector <4 x i32> %18, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.du, ptr %3, align 16, !tbaa !78
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !70
  invoke void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.dw, ptr noundef nonnull %i.cu, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.dx = load ptr, ptr %12, align 8, !tbaa !77   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.co
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.j
  %i.dz = load i64, ptr %i.co, align 8, !tbaa !23
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.m

bb.k:                                             ; preds = %bb.i, %._crit_edge.i.i43
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %12, align 8, !tbaa !77   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.co
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.k
  %i.ee = load i64, ptr %i.co, align 8, !tbaa !23
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !116
  %i.ei = fmul nsz float %i.eh, 1.000000e+01
  %i.ej = fadd nsz float %i.ei, 5.000000e-01
  %i.ek = tail call nsz noundef float @llvm.floor.f32(float %i.ej)
  %i.el = fptosi float %i.ek to i32               ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !358 ; 2 uses
  %i.eq = sub nsw i32 %i.ep, %i.el
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !359
  %.sroa.2.0.insert.ext.i62 = zext i32 %i.es to i64
  %.sroa.2.0.insert.shift.i63 = shl nuw i64 %.sroa.2.0.insert.ext.i62, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i64 = zext i32 %i.eq to i64
  %.sroa.0.0.insert.insert.i65 = or disjoint i64 %.sroa.2.0.insert.shift.i63, %.sroa.0.0.insert.ext.i64
  store i64 %.sroa.0.0.insert.insert.i65, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.et = add nsw i32 %i.ep, %i.el
  %.sroa.0.0.insert.ext.i68 = zext i32 %i.et to i64
  %.sroa.0.0.insert.insert.i69 = or disjoint i64 %.sroa.2.0.insert.shift.i63, %.sroa.0.0.insert.ext.i68
  store i64 %.sroa.0.0.insert.insert.i69, ptr %14, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %i.eu, align 4, !tbaa !78
  %i.ev = load ptr, ptr %i.en, align 8, !tbaa !69
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 440
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 %.sroa.01.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.ey = load ptr, ptr %i.em, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %i.ez = load i32, ptr %i.eo, align 8, !tbaa !358
  %i.fa = load i32, ptr %i.er, align 4, !tbaa !359 ; 2 uses
  %i.fb = sub nsw i32 %i.fa, %i.el
  %.sroa.2.0.insert.ext.i70 = zext i32 %i.fb to i64
  %.sroa.2.0.insert.shift.i71 = shl nuw i64 %.sroa.2.0.insert.ext.i70, 32
  %.sroa.0.0.insert.ext.i72 = zext i32 %i.ez to i64 ; 2 uses
  %.sroa.0.0.insert.insert.i73 = or disjoint i64 %.sroa.2.0.insert.shift.i71, %.sroa.0.0.insert.ext.i72
  store i64 %.sroa.0.0.insert.insert.i73, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %i.fc = add nsw i32 %i.fa, %i.el
  %.sroa.2.0.insert.ext.i74 = zext i32 %i.fc to i64
  %.sroa.2.0.insert.shift.i75 = shl nuw i64 %.sroa.2.0.insert.ext.i74, 32
  %.sroa.0.0.insert.insert.i77 = or disjoint i64 %.sroa.2.0.insert.shift.i75, %.sroa.0.0.insert.ext.i72
  store i64 %.sroa.0.0.insert.insert.i77, ptr %16, align 8
  %.sroa.0.0.copyload = load i32, ptr %i.eu, align 4, !tbaa !78
  %i.fd = load ptr, ptr %i.ey, align 8, !tbaa !69
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 440
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %16, i32 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
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
end_hunk_2
