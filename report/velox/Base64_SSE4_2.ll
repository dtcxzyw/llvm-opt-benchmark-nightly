Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Base64_SSE4_2?download=true
inline.NumInlined: 34
inline.NumDeleted: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm = comdat any

$_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE13_M_set_lengthEm = comdat any

@_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_\00", align 16

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !22
  %i.b = load ptr, ptr %0, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %1
  store i8 0, ptr %i.c, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !27
  %i.b = load ptr, ptr %0, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %1
  store i32 0, ptr %i.c, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(ret: address, provenance) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 9 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %.lr.ph, label %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i8 = phi ptr [ %i.u, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.011.i7 = phi ptr [ %i.t, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.e = load <16 x i8>, ptr %.011.i7, align 1, !tbaa !14
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10> ; 2 uses
  %i.g = bitcast <16 x i8> %i.f to <8 x i16>
  %i.h = and <8 x i16> %i.g, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %i.i = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.h, <8 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.j = bitcast <16 x i8> %i.f to <8 x i16>
  %i.k = and <8 x i16> %i.j, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.l = shl <8 x i16> %i.k, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.m = or <8 x i16> %i.i, %i.l
  %i.n = bitcast <8 x i16> %i.m to <16 x i8>      ; 3 uses
  %i.o = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.n, <16 x i8> splat (i8 51))
  %i.p = icmp sgt <16 x i8> %i.n, splat (i8 25)
  %.neg.i = zext <16 x i1> %i.p to <16 x i8>
  %i.q = add nuw <16 x i8> %i.o, %.neg.i
  %i.r = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 65, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 -3, i8 -65>, <16 x i8> %i.q)
  %i.s = add <16 x i8> %i.r, %i.n
  store <16 x i8> %i.s, ptr %.0.i8, align 1, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %.011.i7, i64 12 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i8, i64 16 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.a, %i.v                       ; 2 uses
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.lr.ph, label %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit, !llvm.loop !31

_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit: ; preds = %.lr.ph, %bb.a
  %.011.i.lcssa = phi ptr [ %0, %bb.a ], [ %i.t, %.lr.ph ] ; 56 uses
  %.0.i.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %.lr.ph ] ; 9 uses
  %.lcssa5 = phi i64 [ %i.c, %bb.a ], [ %i.w, %.lr.ph ] ; 2 uses
  %.011.i.lcssa31 = ptrtoaddr ptr %.011.i.lcssa to i64 ; 4 uses
  %i.y = icmp samesign ugt i64 %.lcssa5, 2
  br i1 %i.y, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit
  %.neg = sub i64 %i.a, %.011.i.lcssa31
  %reass.sub = sub i64 %.011.i.lcssa31, %i.a
  %i.z = add i64 %reass.sub, 2
  %i.aa = tail call i64 @llvm.smax.i64(i64 %i.z, i64 -3)
  %i.ab = add i64 %.neg, %i.aa                    ; 3 uses
  %i.ac = udiv i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 45
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.neg93 = sub i64 %i.a, %.011.i.lcssa31
  %reass.sub92 = sub i64 %.011.i.lcssa31, %i.a
  %i.ae = add i64 %reass.sub92, 2
  %i.af = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -3)
  %i.ag = add i64 %.neg93, %i.af
  %i.ah = udiv i64 %i.ag, 3                       ; 2 uses
  %i.ai = shl i64 %i.ah, 2
  %i.aj = getelementptr i8, ptr %.0.i.lcssa, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %i.al = mul nuw i64 %i.ah, 3
  %i.am = getelementptr i8, ptr %.011.i.lcssa, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 3
  %bound0 = icmp ult ptr %.0.i.lcssa, %i.an
  %bound1 = icmp ult ptr %.011.i.lcssa, %i.ak
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check32 = icmp ult i64 %i.ab, 93
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %i.ad, 16
  %n.vec = and i64 %i.ad, 9223372036854775776     ; 5 uses
  %i.ap = mul i64 %n.vec, 3
  %i.aq = getelementptr i8, ptr %.011.i.lcssa, i64 %i.ap ; 2 uses
  %i.ar = shl i64 %n.vec, 2
  %i.as = getelementptr i8, ptr %.0.i.lcssa, i64 %i.ar ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = mul i64 %index, 3                       ; 32 uses
  %next.gep = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %i.au = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep33 = getelementptr i8, ptr %i.au, i64 3
  %i.av = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep34 = getelementptr i8, ptr %i.av, i64 6
  %i.aw = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep35 = getelementptr i8, ptr %i.aw, i64 9
  %i.ax = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep36 = getelementptr i8, ptr %i.ax, i64 12
  %i.ay = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep37 = getelementptr i8, ptr %i.ay, i64 15
  %i.az = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep38 = getelementptr i8, ptr %i.az, i64 18
  %i.ba = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep39 = getelementptr i8, ptr %i.ba, i64 21
  %i.bb = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep40 = getelementptr i8, ptr %i.bb, i64 24
  %i.bc = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep41 = getelementptr i8, ptr %i.bc, i64 27
  %i.bd = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep42 = getelementptr i8, ptr %i.bd, i64 30
  %i.be = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep43 = getelementptr i8, ptr %i.be, i64 33
  %i.bf = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep44 = getelementptr i8, ptr %i.bf, i64 36
  %i.bg = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep45 = getelementptr i8, ptr %i.bg, i64 39
  %i.bh = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep46 = getelementptr i8, ptr %i.bh, i64 42
  %i.bi = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep47 = getelementptr i8, ptr %i.bi, i64 45
  %i.bj = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep48 = getelementptr i8, ptr %i.bj, i64 48
  %i.bk = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep49 = getelementptr i8, ptr %i.bk, i64 51
  %i.bl = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep50 = getelementptr i8, ptr %i.bl, i64 54
  %i.bm = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep51 = getelementptr i8, ptr %i.bm, i64 57
  %i.bn = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep52 = getelementptr i8, ptr %i.bn, i64 60
  %i.bo = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep53 = getelementptr i8, ptr %i.bo, i64 63
  %i.bp = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep54 = getelementptr i8, ptr %i.bp, i64 66
  %i.bq = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep55 = getelementptr i8, ptr %i.bq, i64 69
  %i.br = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep56 = getelementptr i8, ptr %i.br, i64 72
  %i.bs = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep57 = getelementptr i8, ptr %i.bs, i64 75
  %i.bt = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep58 = getelementptr i8, ptr %i.bt, i64 78
  %i.bu = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep59 = getelementptr i8, ptr %i.bu, i64 81
  %i.bv = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep60 = getelementptr i8, ptr %i.bv, i64 84
  %i.bw = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep61 = getelementptr i8, ptr %i.bw, i64 87
  %i.bx = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep62 = getelementptr i8, ptr %i.bx, i64 90
  %i.by = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 4 uses
  %next.gep63 = getelementptr i8, ptr %i.by, i64 93
  %i.bz = shl i64 %index, 2
  %next.gep64 = getelementptr i8, ptr %.0.i.lcssa, i64 %i.bz
  %i.ca = load i8, ptr %next.gep, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cb = load i8, ptr %next.gep33, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cc = load i8, ptr %next.gep34, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cd = load i8, ptr %next.gep35, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.ce = load i8, ptr %next.gep36, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cf = load i8, ptr %next.gep37, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cg = load i8, ptr %next.gep38, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.ch = load i8, ptr %next.gep39, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.ci = load i8, ptr %next.gep40, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cj = load i8, ptr %next.gep41, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.ck = load i8, ptr %next.gep42, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cl = load i8, ptr %next.gep43, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cm = load i8, ptr %next.gep44, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cn = load i8, ptr %next.gep45, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.co = load i8, ptr %next.gep46, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cp = load i8, ptr %next.gep47, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cq = load i8, ptr %next.gep48, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cr = load i8, ptr %next.gep49, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cs = load i8, ptr %next.gep50, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.ct = load i8, ptr %next.gep51, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cu = load i8, ptr %next.gep52, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cv = load i8, ptr %next.gep53, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cw = load i8, ptr %next.gep54, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cx = load i8, ptr %next.gep55, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cy = load i8, ptr %next.gep56, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.cz = load i8, ptr %next.gep57, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.da = load i8, ptr %next.gep58, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.db = load i8, ptr %next.gep59, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.dc = load i8, ptr %next.gep60, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.dd = load i8, ptr %next.gep61, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.de = load i8, ptr %next.gep62, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.df = load i8, ptr %next.gep63, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.dh = getelementptr i8, ptr %i.au, i64 4
  %i.di = getelementptr i8, ptr %i.av, i64 7
  %i.dj = getelementptr i8, ptr %i.aw, i64 10
  %i.dk = getelementptr i8, ptr %i.ax, i64 13
  %i.dl = getelementptr i8, ptr %i.ay, i64 16
  %i.dm = getelementptr i8, ptr %i.az, i64 19
  %i.dn = getelementptr i8, ptr %i.ba, i64 22
  %i.do = getelementptr i8, ptr %i.bb, i64 25
  %i.dp = getelementptr i8, ptr %i.bc, i64 28
  %i.dq = getelementptr i8, ptr %i.bd, i64 31
  %i.dr = getelementptr i8, ptr %i.be, i64 34
  %i.ds = getelementptr i8, ptr %i.bf, i64 37
  %i.dt = getelementptr i8, ptr %i.bg, i64 40
  %i.du = getelementptr i8, ptr %i.bh, i64 43
  %i.dv = getelementptr i8, ptr %i.bi, i64 46
  %i.dw = getelementptr i8, ptr %i.bj, i64 49
  %i.dx = getelementptr i8, ptr %i.bk, i64 52
  %i.dy = getelementptr i8, ptr %i.bl, i64 55
  %i.dz = getelementptr i8, ptr %i.bm, i64 58
  %i.ea = getelementptr i8, ptr %i.bn, i64 61
  %i.eb = getelementptr i8, ptr %i.bo, i64 64
  %i.ec = getelementptr i8, ptr %i.bp, i64 67
  %i.ed = getelementptr i8, ptr %i.bq, i64 70
  %i.ee = getelementptr i8, ptr %i.br, i64 73
  %i.ef = getelementptr i8, ptr %i.bs, i64 76
  %i.eg = getelementptr i8, ptr %i.bt, i64 79
  %i.eh = getelementptr i8, ptr %i.bu, i64 82
  %i.ei = getelementptr i8, ptr %i.bv, i64 85
  %i.ej = getelementptr i8, ptr %i.bw, i64 88
  %i.ek = getelementptr i8, ptr %i.bx, i64 91
  %i.el = getelementptr i8, ptr %i.by, i64 94
  %i.em = load i8, ptr %i.dg, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.en = load i8, ptr %i.dh, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.eo = load i8, ptr %i.di, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.ep = load i8, ptr %i.dj, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.eq = load i8, ptr %i.dk, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.er = load i8, ptr %i.dl, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.es = load i8, ptr %i.dm, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.et = load i8, ptr %i.dn, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.eu = load i8, ptr %i.do, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.ev = load i8, ptr %i.dp, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.ew = load i8, ptr %i.dq, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.ex = load i8, ptr %i.dr, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.ey = load i8, ptr %i.ds, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.ez = load i8, ptr %i.dt, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fa = load i8, ptr %i.du, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fb = load i8, ptr %i.dv, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fc = load i8, ptr %i.dw, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fd = load i8, ptr %i.dx, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fe = load i8, ptr %i.dy, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.ff = load i8, ptr %i.dz, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fg = load i8, ptr %i.ea, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fh = load i8, ptr %i.eb, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fi = load i8, ptr %i.ec, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fj = load i8, ptr %i.ed, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fk = load i8, ptr %i.ee, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fl = load i8, ptr %i.ef, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fm = load i8, ptr %i.eg, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fn = load i8, ptr %i.eh, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fo = load i8, ptr %i.ei, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fp = load i8, ptr %i.ej, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fq = load i8, ptr %i.ek, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fr = load i8, ptr %i.el, align 1, !tbaa !14, !alias.scope !38 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.ft = getelementptr i8, ptr %i.au, i64 5
  %i.fu = getelementptr i8, ptr %i.av, i64 8
  %i.fv = getelementptr i8, ptr %i.aw, i64 11
  %i.fw = getelementptr i8, ptr %i.ax, i64 14
  %i.fx = getelementptr i8, ptr %i.ay, i64 17
  %i.fy = getelementptr i8, ptr %i.az, i64 20
  %i.fz = getelementptr i8, ptr %i.ba, i64 23
end_hunk_0
begin_hunk_1_@_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc:bb.a
  %i.bgy = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.bgi
  %i.bgz = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.bgj
  %i.bha = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.bgk
  %i.bhb = load i8, ptr %i.bgl, align 1, !tbaa !14
  %i.bhc = load i8, ptr %i.bgm, align 1, !tbaa !14
  %i.bhd = load i8, ptr %i.bgn, align 1, !tbaa !14
  %i.bhe = load i8, ptr %i.bgo, align 1, !tbaa !14
  %i.bhf = load i8, ptr %i.bgp, align 1, !tbaa !14
  %i.bhg = load i8, ptr %i.bgq, align 1, !tbaa !14
  %i.bhh = load i8, ptr %i.bgr, align 1, !tbaa !14
  %i.bhi = load i8, ptr %i.bgs, align 1, !tbaa !14
  %i.bhj = load i8, ptr %i.bgt, align 1, !tbaa !14
  %i.bhk = load i8, ptr %i.bgu, align 1, !tbaa !14
  %i.bhl = load i8, ptr %i.bgv, align 1, !tbaa !14
  %i.bhm = load i8, ptr %i.bgw, align 1, !tbaa !14
  %i.bhn = load i8, ptr %i.bgx, align 1, !tbaa !14
  %i.bho = load i8, ptr %i.bgy, align 1, !tbaa !14
  %i.bhp = load i8, ptr %i.bgz, align 1, !tbaa !14
  %i.bhq = load i8, ptr %i.bha, align 1, !tbaa !14
  %i.bhr = insertelement <16 x i8> poison, i8 %i.bhb, i64 0
  %i.bhs = insertelement <16 x i8> %i.bhr, i8 %i.bhc, i64 1
  %i.bht = insertelement <16 x i8> %i.bhs, i8 %i.bhd, i64 2
  %i.bhu = insertelement <16 x i8> %i.bht, i8 %i.bhe, i64 3
  %i.bhv = insertelement <16 x i8> %i.bhu, i8 %i.bhf, i64 4
  %i.bhw = insertelement <16 x i8> %i.bhv, i8 %i.bhg, i64 5
  %i.bhx = insertelement <16 x i8> %i.bhw, i8 %i.bhh, i64 6
  %i.bhy = insertelement <16 x i8> %i.bhx, i8 %i.bhi, i64 7
  %i.bhz = insertelement <16 x i8> %i.bhy, i8 %i.bhj, i64 8
  %i.bia = insertelement <16 x i8> %i.bhz, i8 %i.bhk, i64 9
  %i.bib = insertelement <16 x i8> %i.bia, i8 %i.bhl, i64 10
  %i.bic = insertelement <16 x i8> %i.bib, i8 %i.bhm, i64 11
  %i.bid = insertelement <16 x i8> %i.bic, i8 %i.bhn, i64 12
  %i.bie = insertelement <16 x i8> %i.bid, i8 %i.bho, i64 13
  %i.bif = insertelement <16 x i8> %i.bie, i8 %i.bhp, i64 14
  %i.big = insertelement <16 x i8> %i.bif, i8 %i.bhq, i64 15
  %i.bih = shufflevector <16 x i8> %i.baw, <16 x i8> %i.bdi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bii = shufflevector <16 x i8> %i.bfu, <16 x i8> %i.big, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec87 = shufflevector <32 x i8> %i.bih, <32 x i8> %i.bii, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i8> %interleaved.vec87, ptr %next.gep86, align 1, !tbaa !14, !alias.scope !39, !noalias !38
  %index.next88 = add nuw i64 %index69, 16        ; 2 uses
  %i.bij = icmp eq i64 %index.next88, %n.vec66
  br i1 %i.bij, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bik = getelementptr i8, ptr %i.apd, i64 48
  %i.bil = ptrtoint ptr %i.bik to i64
  %i.bim = sub i64 %i.a, %i.bil
  %cmp.n89 = icmp eq i64 %i.ad, %n.vec66
  br i1 %cmp.n89, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.i.ph = phi ptr [ %.011.i.lcssa, %iter.check ], [ %.011.i.lcssa, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.aol, %vec.epilog.middle.block ]
  %.02325.i.i.ph = phi ptr [ %.0.i.lcssa, %iter.check ], [ %.0.i.lcssa, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.aon, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.026.i.i = phi ptr [ %i.bjp, %.lr.ph.i.i ], [ %.026.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %.02325.i.i = phi ptr [ %i.bjq, %.lr.ph.i.i ], [ %.02325.i.i.ph, %.lr.ph.i.i.preheader ] ; 5 uses
  %i.bin = load i8, ptr %.026.i.i, align 1, !tbaa !14 ; 2 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 1
  %i.bip = load i8, ptr %i.bio, align 1, !tbaa !14 ; 2 uses
  %i.biq = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.bir = load i8, ptr %i.biq, align 1, !tbaa !14 ; 2 uses
  %i.bis = lshr i8 %i.bin, 2
  %i.bit = shl i8 %i.bin, 4
  %i.biu = lshr i8 %i.bip, 4
  %.masked.i.i = and i8 %i.bit, 48
  %i.biv = or disjoint i8 %.masked.i.i, %i.biu
  %i.biw = shl i8 %i.bip, 2
  %i.bix = lshr i8 %i.bir, 6
  %.masked24.i.i = and i8 %i.biw, 60
  %i.biy = or disjoint i8 %.masked24.i.i, %i.bix
  %i.biz = and i8 %i.bir, 63
  %i.bja = zext nneg i8 %i.bis to i64
  %i.bjb = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.bja
  %i.bjc = load i8, ptr %i.bjb, align 1, !tbaa !14
  store i8 %i.bjc, ptr %.02325.i.i, align 1, !tbaa !14
  %i.bjd = zext nneg i8 %i.biv to i64
  %i.bje = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.bjd
  %i.bjf = load i8, ptr %i.bje, align 1, !tbaa !14
  %i.bjg = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 1
  store i8 %i.bjf, ptr %i.bjg, align 1, !tbaa !14
  %i.bjh = zext nneg i8 %i.biy to i64
  %i.bji = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.bjh
  %i.bjj = load i8, ptr %i.bji, align 1, !tbaa !14
  %i.bjk = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 2
  store i8 %i.bjj, ptr %i.bjk, align 1, !tbaa !14
  %i.bjl = zext nneg i8 %i.biz to i64
  %i.bjm = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.bjl
  %i.bjn = load i8, ptr %i.bjm, align 1, !tbaa !14
  %i.bjo = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 3
  store i8 %i.bjn, ptr %i.bjo, align 1, !tbaa !14
  %i.bjp = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 3 ; 3 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 4 ; 2 uses
  %i.bjr = ptrtoint ptr %i.bjp to i64
  %i.bjs = sub i64 %i.a, %i.bjr                   ; 2 uses
  %i.bjt = icmp sgt i64 %i.bjs, 2
  br i1 %i.bjt, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !37

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit
  %.023.lcssa.i.i = phi ptr [ %.0.i.lcssa, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit ], [ %i.aon, %vec.epilog.middle.block ], [ %i.as, %middle.block ], [ %i.bjq, %.lr.ph.i.i ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %.011.i.lcssa, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit ], [ %i.aol, %vec.epilog.middle.block ], [ %i.aq, %middle.block ], [ %i.bjp, %.lr.ph.i.i ] ; 3 uses
  %.lcssa.i.i = phi i64 [ %.lcssa5, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit ], [ %i.bim, %vec.epilog.middle.block ], [ %i.aoj, %middle.block ], [ %i.bjs, %.lr.ph.i.i ]
  %i.bju = icmp eq ptr %.0.lcssa.i.i, %1
  br i1 %i.bju, label %_ZN5folly6detail13base64_detail18base64EncodeScalarEPKcS3_Pc.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.bjv = load i8, ptr %.0.lcssa.i.i, align 1, !tbaa !14 ; 3 uses
  %i.bjw = lshr i8 %i.bjv, 2
  %i.bjx = zext nneg i8 %i.bjw to i64
  %i.bjy = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.bjx
  %i.bjz = load i8, ptr %i.bjy, align 1, !tbaa !14
  %i.bka = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 1
  store i8 %i.bjz, ptr %.023.lcssa.i.i, align 1, !tbaa !14
  %i.bkb = icmp eq i64 %.lcssa.i.i, 1
  br i1 %i.bkb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bkc = shl i8 %i.bjv, 4
  %i.bkd = and i8 %i.bkc, 48
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bke = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  %i.bkf = load i8, ptr %i.bke, align 1, !tbaa !14 ; 2 uses
  %i.bkg = shl i8 %i.bjv, 4
  %i.bkh = lshr i8 %i.bkf, 4
  %.masked.i.i.i = and i8 %i.bkg, 48
  %i.bki = or disjoint i8 %i.bkh, %.masked.i.i.i
  %i.bkj = shl i8 %i.bkf, 2
  %i.bkk = and i8 %i.bkj, 60
  %i.bkl = zext nneg i8 %i.bkk to i64
  %i.bkm = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.bkl
  %i.bkn = load i8, ptr %i.bkm, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.in.i.i.i = phi i8 [ %i.bkd, %bb.c ], [ %i.bki, %bb.d ]
  %.sink.i.i.i = phi i8 [ 61, %bb.c ], [ %i.bkn, %bb.d ]
  %.pn.i.i.i = zext nneg i8 %.pn.in.i.i.i to i64
  %.sink27.in.i.i.i = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %.pn.i.i.i
  %.sink27.i.i.i = load i8, ptr %.sink27.in.i.i.i, align 1, !tbaa !14
  store i8 %.sink27.i.i.i, ptr %i.bka, align 1, !tbaa !14
  %i.bko = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 2
  store i8 %.sink.i.i.i, ptr %i.bko, align 1, !tbaa !14
  %i.bkp = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 3
  store i8 61, ptr %i.bkp, align 1, !tbaa !14
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 4
  br label %_ZN5folly6detail13base64_detail18base64EncodeScalarEPKcS3_Pc.exit

_ZN5folly6detail13base64_detail18base64EncodeScalarEPKcS3_Pc.exit: ; preds = %._crit_edge.i.i, %bb.e
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %bb.e ], [ %.023.lcssa.i.i, %._crit_edge.i.i ]
  ret ptr %.1.i.i.i
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.usub.sat.v16i8(<16 x i8>, <16 x i8>) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(ret: address, provenance) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 9 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %.lr.ph, label %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i8 = phi ptr [ %i.u, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.011.i7 = phi ptr [ %i.t, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.e = load <16 x i8>, ptr %.011.i7, align 1, !tbaa !14
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10> ; 2 uses
  %i.g = bitcast <16 x i8> %i.f to <8 x i16>
  %i.h = and <8 x i16> %i.g, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %i.i = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.h, <8 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.j = bitcast <16 x i8> %i.f to <8 x i16>
  %i.k = and <8 x i16> %i.j, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.l = shl <8 x i16> %i.k, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.m = or <8 x i16> %i.i, %i.l
  %i.n = bitcast <8 x i16> %i.m to <16 x i8>      ; 3 uses
  %i.o = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.n, <16 x i8> splat (i8 51))
  %i.p = icmp sgt <16 x i8> %i.n, splat (i8 25)
  %.neg.i = zext <16 x i1> %i.p to <16 x i8>
  %i.q = add nuw <16 x i8> %i.o, %.neg.i
  %i.r = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 65, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -17, i8 32, i8 -3, i8 -65>, <16 x i8> %i.q)
  %i.s = add <16 x i8> %i.r, %i.n
  store <16 x i8> %i.s, ptr %.0.i8, align 1, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %.011.i7, i64 12 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i8, i64 16 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.a, %i.v                       ; 2 uses
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.lr.ph, label %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit, !llvm.loop !40

_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit: ; preds = %.lr.ph, %bb.a
  %.011.i.lcssa = phi ptr [ %0, %bb.a ], [ %i.t, %.lr.ph ] ; 56 uses
  %.0.i.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %.lr.ph ] ; 9 uses
  %.lcssa5 = phi i64 [ %i.c, %bb.a ], [ %i.w, %.lr.ph ] ; 2 uses
  %.011.i.lcssa31 = ptrtoaddr ptr %.011.i.lcssa to i64 ; 4 uses
  %i.y = icmp samesign ugt i64 %.lcssa5, 2
  br i1 %i.y, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit
  %.neg = sub i64 %i.a, %.011.i.lcssa31
  %reass.sub = sub i64 %.011.i.lcssa31, %i.a
  %i.z = add i64 %reass.sub, 2
  %i.aa = tail call i64 @llvm.smax.i64(i64 %i.z, i64 -3)
  %i.ab = add i64 %.neg, %i.aa                    ; 3 uses
  %i.ac = udiv i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 45
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.neg93 = sub i64 %i.a, %.011.i.lcssa31
  %reass.sub92 = sub i64 %.011.i.lcssa31, %i.a
  %i.ae = add i64 %reass.sub92, 2
  %i.af = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -3)
  %i.ag = add i64 %.neg93, %i.af
  %i.ah = udiv i64 %i.ag, 3                       ; 2 uses
  %i.ai = shl i64 %i.ah, 2
  %i.aj = getelementptr i8, ptr %.0.i.lcssa, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %i.al = mul nuw i64 %i.ah, 3
  %i.am = getelementptr i8, ptr %.011.i.lcssa, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 3
  %bound0 = icmp ult ptr %.0.i.lcssa, %i.an
  %bound1 = icmp ult ptr %.011.i.lcssa, %i.ak
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check32 = icmp ult i64 %i.ab, 93
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %i.ad, 16
  %n.vec = and i64 %i.ad, 9223372036854775776     ; 5 uses
  %i.ap = mul i64 %n.vec, 3
  %i.aq = getelementptr i8, ptr %.011.i.lcssa, i64 %i.ap ; 2 uses
  %i.ar = shl i64 %n.vec, 2
  %i.as = getelementptr i8, ptr %.0.i.lcssa, i64 %i.ar ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = mul i64 %index, 3                       ; 32 uses
  %next.gep = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %i.au = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep33 = getelementptr i8, ptr %i.au, i64 3
  %i.av = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep34 = getelementptr i8, ptr %i.av, i64 6
  %i.aw = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep35 = getelementptr i8, ptr %i.aw, i64 9
  %i.ax = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep36 = getelementptr i8, ptr %i.ax, i64 12
  %i.ay = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep37 = getelementptr i8, ptr %i.ay, i64 15
  %i.az = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep38 = getelementptr i8, ptr %i.az, i64 18
  %i.ba = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep39 = getelementptr i8, ptr %i.ba, i64 21
  %i.bb = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep40 = getelementptr i8, ptr %i.bb, i64 24
  %i.bc = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep41 = getelementptr i8, ptr %i.bc, i64 27
  %i.bd = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep42 = getelementptr i8, ptr %i.bd, i64 30
  %i.be = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep43 = getelementptr i8, ptr %i.be, i64 33
  %i.bf = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep44 = getelementptr i8, ptr %i.bf, i64 36
  %i.bg = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep45 = getelementptr i8, ptr %i.bg, i64 39
  %i.bh = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep46 = getelementptr i8, ptr %i.bh, i64 42
  %i.bi = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep47 = getelementptr i8, ptr %i.bi, i64 45
  %i.bj = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep48 = getelementptr i8, ptr %i.bj, i64 48
  %i.bk = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep49 = getelementptr i8, ptr %i.bk, i64 51
  %i.bl = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep50 = getelementptr i8, ptr %i.bl, i64 54
  %i.bm = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep51 = getelementptr i8, ptr %i.bm, i64 57
  %i.bn = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep52 = getelementptr i8, ptr %i.bn, i64 60
  %i.bo = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep53 = getelementptr i8, ptr %i.bo, i64 63
  %i.bp = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep54 = getelementptr i8, ptr %i.bp, i64 66
  %i.bq = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep55 = getelementptr i8, ptr %i.bq, i64 69
  %i.br = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep56 = getelementptr i8, ptr %i.br, i64 72
  %i.bs = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep57 = getelementptr i8, ptr %i.bs, i64 75
  %i.bt = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep58 = getelementptr i8, ptr %i.bt, i64 78
  %i.bu = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep59 = getelementptr i8, ptr %i.bu, i64 81
  %i.bv = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep60 = getelementptr i8, ptr %i.bv, i64 84
  %i.bw = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep61 = getelementptr i8, ptr %i.bw, i64 87
  %i.bx = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 3 uses
  %next.gep62 = getelementptr i8, ptr %i.bx, i64 90
  %i.by = getelementptr i8, ptr %.011.i.lcssa, i64 %i.at ; 4 uses
  %next.gep63 = getelementptr i8, ptr %i.by, i64 93
  %i.bz = shl i64 %index, 2
  %next.gep64 = getelementptr i8, ptr %.0.i.lcssa, i64 %i.bz
  %i.ca = load i8, ptr %next.gep, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cb = load i8, ptr %next.gep33, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cc = load i8, ptr %next.gep34, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cd = load i8, ptr %next.gep35, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.ce = load i8, ptr %next.gep36, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cf = load i8, ptr %next.gep37, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cg = load i8, ptr %next.gep38, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.ch = load i8, ptr %next.gep39, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.ci = load i8, ptr %next.gep40, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cj = load i8, ptr %next.gep41, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.ck = load i8, ptr %next.gep42, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cl = load i8, ptr %next.gep43, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cm = load i8, ptr %next.gep44, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cn = load i8, ptr %next.gep45, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.co = load i8, ptr %next.gep46, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cp = load i8, ptr %next.gep47, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cq = load i8, ptr %next.gep48, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cr = load i8, ptr %next.gep49, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cs = load i8, ptr %next.gep50, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.ct = load i8, ptr %next.gep51, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cu = load i8, ptr %next.gep52, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cv = load i8, ptr %next.gep53, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cw = load i8, ptr %next.gep54, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cx = load i8, ptr %next.gep55, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cy = load i8, ptr %next.gep56, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.cz = load i8, ptr %next.gep57, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.da = load i8, ptr %next.gep58, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.db = load i8, ptr %next.gep59, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.dc = load i8, ptr %next.gep60, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.dd = load i8, ptr %next.gep61, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.de = load i8, ptr %next.gep62, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.df = load i8, ptr %next.gep63, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.dh = getelementptr i8, ptr %i.au, i64 4
  %i.di = getelementptr i8, ptr %i.av, i64 7
  %i.dj = getelementptr i8, ptr %i.aw, i64 10
  %i.dk = getelementptr i8, ptr %i.ax, i64 13
  %i.dl = getelementptr i8, ptr %i.ay, i64 16
  %i.dm = getelementptr i8, ptr %i.az, i64 19
  %i.dn = getelementptr i8, ptr %i.ba, i64 22
  %i.do = getelementptr i8, ptr %i.bb, i64 25
  %i.dp = getelementptr i8, ptr %i.bc, i64 28
  %i.dq = getelementptr i8, ptr %i.bd, i64 31
  %i.dr = getelementptr i8, ptr %i.be, i64 34
  %i.ds = getelementptr i8, ptr %i.bf, i64 37
  %i.dt = getelementptr i8, ptr %i.bg, i64 40
  %i.du = getelementptr i8, ptr %i.bh, i64 43
  %i.dv = getelementptr i8, ptr %i.bi, i64 46
  %i.dw = getelementptr i8, ptr %i.bj, i64 49
  %i.dx = getelementptr i8, ptr %i.bk, i64 52
  %i.dy = getelementptr i8, ptr %i.bl, i64 55
  %i.dz = getelementptr i8, ptr %i.bm, i64 58
  %i.ea = getelementptr i8, ptr %i.bn, i64 61
  %i.eb = getelementptr i8, ptr %i.bo, i64 64
  %i.ec = getelementptr i8, ptr %i.bp, i64 67
  %i.ed = getelementptr i8, ptr %i.bq, i64 70
  %i.ee = getelementptr i8, ptr %i.br, i64 73
  %i.ef = getelementptr i8, ptr %i.bs, i64 76
  %i.eg = getelementptr i8, ptr %i.bt, i64 79
  %i.eh = getelementptr i8, ptr %i.bu, i64 82
  %i.ei = getelementptr i8, ptr %i.bv, i64 85
  %i.ej = getelementptr i8, ptr %i.bw, i64 88
  %i.ek = getelementptr i8, ptr %i.bx, i64 91
  %i.el = getelementptr i8, ptr %i.by, i64 94
  %i.em = load i8, ptr %i.dg, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.en = load i8, ptr %i.dh, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.eo = load i8, ptr %i.di, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.ep = load i8, ptr %i.dj, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.eq = load i8, ptr %i.dk, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.er = load i8, ptr %i.dl, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.es = load i8, ptr %i.dm, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.et = load i8, ptr %i.dn, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.eu = load i8, ptr %i.do, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.ev = load i8, ptr %i.dp, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.ew = load i8, ptr %i.dq, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.ex = load i8, ptr %i.dr, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.ey = load i8, ptr %i.ds, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.ez = load i8, ptr %i.dt, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fa = load i8, ptr %i.du, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fb = load i8, ptr %i.dv, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fc = load i8, ptr %i.dw, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fd = load i8, ptr %i.dx, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fe = load i8, ptr %i.dy, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.ff = load i8, ptr %i.dz, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fg = load i8, ptr %i.ea, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fh = load i8, ptr %i.eb, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fi = load i8, ptr %i.ec, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fj = load i8, ptr %i.ed, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fk = load i8, ptr %i.ee, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fl = load i8, ptr %i.ef, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fm = load i8, ptr %i.eg, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fn = load i8, ptr %i.eh, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fo = load i8, ptr %i.ei, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fp = load i8, ptr %i.ej, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fq = load i8, ptr %i.ek, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fr = load i8, ptr %i.el, align 1, !tbaa !14, !alias.scope !47 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.ft = getelementptr i8, ptr %i.au, i64 5
  %i.fu = getelementptr i8, ptr %i.av, i64 8
  %i.fv = getelementptr i8, ptr %i.aw, i64 11
  %i.fw = getelementptr i8, ptr %i.ax, i64 14
  %i.fx = getelementptr i8, ptr %i.ay, i64 17
  %i.fy = getelementptr i8, ptr %i.az, i64 20
  %i.fz = getelementptr i8, ptr %i.ba, i64 23
end_hunk_1
