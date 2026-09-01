Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/low_memory_render_pipeline?download=true
inline.NumInlined: 2590
inline.NumDeleted: 1271
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3jxl23LowMemoryRenderPipeline11SaveBordersEmmRKNS_5PlaneIfEE:bb.a
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !73
  %i.jo = add i64 %i.r, %i.ba
  %i.jp = sub i64 %.sroa.speculated171, %i.jo
  %i.jq = add i64 %i.jp, %i.jn                    ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !74 ; 4 uses
  %i.jt = sub i64 %.sroa.speculated, %i.ad        ; 5 uses
  %i.ju = shl i64 %i.d, 1
  %i.jv = mul i64 %i.ba, %i.ju                    ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !75
  %i.jy = getelementptr inbounds nuw [56 x i8], ptr %i.jx, i64 %2 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.jz = load i32, ptr %3, align 8, !tbaa !79, !noalias !94
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !82, !noalias !94
  %i.kd = zext i32 %i.kc to i64
  %i.ke = add i64 %i.jq, %i.ba
  %.not5.i.i.i110 = icmp ule i64 %i.ke, %i.ka
  %i.kf = add i64 %i.js, %i.jt
  %i.kg = icmp ule i64 %i.kf, %i.kd
  %i.kh = select i1 %.not5.i.i.i110, i1 %i.kg, i1 false
  br i1 %i.kh, label %bb.o, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

bb.o:                                             ; preds = %bb.n
  %i.ki = load i32, ptr %i.jy, align 8, !tbaa !79, !alias.scope !94
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !82, !alias.scope !94
  %i.km = zext i32 %i.kl to i64
  %i.kn = add i64 %i.jv, %i.ba
  %.not5.i.i20.i111 = icmp ule i64 %i.kn, %i.kj
  %i.ko = icmp ule i64 %.sroa.speculated, %i.km
  %i.kp = select i1 %.not5.i.i20.i111, i1 %i.ko, i1 false
  br i1 %i.kp, label %bb.p, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

bb.p:                                             ; preds = %bb.o
  %i.kq = icmp eq i64 %i.ba, 0
  %.not.i112 = icmp eq i64 %.sroa.speculated, %i.ad
  %or.cond.i113 = select i1 %i.kq, i1 true, i1 %.not.i112
  br i1 %or.cond.i113, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit, label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %bb.p
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jy, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !83, !alias.scope !94 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !84, !alias.scope !94 ; 3 uses
  %i.kx = shl i64 %i.ba, 2                        ; 3 uses
  %xtraiter221 = and i64 %i.jt, 1
  %i.ky = icmp ult i64 %i.jt, 2
  br i1 %i.ky, label %.epil.preheader219, label %.lr.ph.i114.new

.lr.ph.i114.new:                                  ; preds = %.lr.ph.i114
  %unroll_iter224 = and i64 %i.jt, -2
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i114.new
  %.024.i115 = phi i64 [ 0, %.lr.ph.i114.new ], [ %i.lu, %bb.q ] ; 4 uses
  %niter225 = phi i64 [ 0, %.lr.ph.i114.new ], [ %niter225.next.1, %bb.q ]
  %i.kz = add i64 %.024.i115, %i.js
  %i.la = load ptr, ptr %i.kr, align 8, !tbaa !83, !noalias !94
  %i.lb = load i64, ptr %i.ks, align 8, !tbaa !84, !noalias !94
  %i.lc = mul i64 %i.lb, %i.kz
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.lc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ld, i64 64) ]
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.jq
  %i.lf = add i64 %.024.i115, %i.ad
  %i.lg = mul i64 %i.lf, %i.kw
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.lg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lh, i64 64) ]
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.jv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.li, ptr align 4 %i.le, i64 %i.kx, i1 false), !noalias !94
  %i.lj = or disjoint i64 %.024.i115, 1           ; 2 uses
  %i.lk = add i64 %i.lj, %i.js
  %i.ll = load ptr, ptr %i.kr, align 8, !tbaa !83, !noalias !94
  %i.lm = load i64, ptr %i.ks, align 8, !tbaa !84, !noalias !94
  %i.ln = mul i64 %i.lm, %i.lk
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.ln ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lo, i64 64) ]
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.jq
  %i.lq = add i64 %i.lj, %i.ad
  %i.lr = mul i64 %i.lq, %i.kw
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.lr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ls, i64 64) ]
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.jv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.lt, ptr align 4 %i.lp, i64 %i.kx, i1 false), !noalias !94
  %i.lu = add nuw i64 %.024.i115, 2               ; 2 uses
  %niter225.next.1 = add i64 %niter225, 2         ; 2 uses
  %niter225.ncmp.1.not = icmp eq i64 %niter225.next.1, %unroll_iter224
  br i1 %niter225.ncmp.1.not, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.loopexit.unr-lcssa, label %bb.q, !llvm.loop !85

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.loopexit.unr-lcssa: ; preds = %bb.q
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit, label %.epil.preheader219

.epil.preheader219:                               ; preds = %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.loopexit.unr-lcssa, %.lr.ph.i114
  %.024.i115.epil.init = phi i64 [ 0, %.lr.ph.i114 ], [ %i.lu, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod223 = trunc i64 %i.jt to i1
  tail call void @llvm.assume(i1 %lcmp.mod223)
  %i.lv = add i64 %.024.i115.epil.init, %i.js
  %i.lw = load ptr, ptr %i.kr, align 8, !tbaa !83, !noalias !94
  %i.lx = load i64, ptr %i.ks, align 8, !tbaa !84, !noalias !94
  %i.ly = mul i64 %i.lx, %i.lv
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ly ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lz, i64 64) ]
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.jq
  %i.mb = add i64 %.024.i115.epil.init, %i.ad
  %i.mc = mul i64 %i.mb, %i.kw
  %i.md = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.mc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.md, i64 64) ]
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.jv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.me, ptr align 4 %i.ma, i64 %i.kx, i1 false), !noalias !94
  br label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit: ; preds = %.epil.preheader219, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.loopexit.unr-lcssa, %.critedge90, %bb.p, %bb.n, %bb.o, %bb.j, %bb.k, %bb.f, %bb.g, %bb.b, %bb.c
  %.sroa.0176.0 = phi i32 [ 1, %bb.n ], [ 1, %bb.j ], [ 1, %bb.f ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.g ], [ 1, %bb.k ], [ 1, %bb.o ], [ 0, %.critedge90 ], [ 0, %bb.p ], [ 0, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.loopexit.unr-lcssa ], [ 0, %.epil.preheader219 ]
  ret i32 %.sroa.0176.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK3jxl23LowMemoryRenderPipeline15GroupInputXSizeEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(752) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i64, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  %i.e = shl i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !67
  %i.k = lshr i64 %i.e, %i.j
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK3jxl23LowMemoryRenderPipeline15GroupInputYSizeEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(752) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i64, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  %i.e = shl i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !68
  %i.l = lshr i64 %i.e, %i.k
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl23LowMemoryRenderPipeline11LoadBordersEmmRKNS_5RectTImEEPNS_5PlaneIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(752) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %i.c = udiv i64 %1, %i.b                        ; 4 uses
  %i.d = urem i64 %1, %i.b                        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %2 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !67   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !68   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.m = load i64, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.o = load i64, ptr %i.n, align 8, !tbaa !22   ; 7 uses
  %i.p = shl i64 %i.m, %i.o                       ; 2 uses
  %i.q = lshr i64 %i.p, %i.i                      ; 2 uses
  %i.r = mul i64 %i.q, %i.d                       ; 4 uses
  %i.s = add nuw i64 %i.d, 1                      ; 2 uses
  %i.t = mul i64 %i.q, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load i64, ptr %i.u, align 8, !tbaa !71
  %i.w = trunc i64 %i.i to i32
  %i.x = shl nuw i32 1, %i.w
  %i.y = sext i32 %i.x to i64                     ; 5 uses
  %i.z = add nsw i64 %i.y, -1                     ; 4 uses
  %i.aa = add i64 %i.z, %i.v
  %i.ab = udiv i64 %i.aa, %i.y                    ; 2 uses
  %.sroa.speculated237 = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.t)
  %i.ac = lshr i64 %i.p, %i.k                     ; 2 uses
  %i.ad = mul i64 %i.ac, %i.c                     ; 4 uses
  %i.ae = add i64 %i.c, 1                         ; 2 uses
  %i.af = mul i64 %i.ac, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !72
  %i.ai = trunc i64 %i.k to i32
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = add nsw i64 %i.ak, -1                   ; 4 uses
  %i.am = add i64 %i.al, %i.ah
  %i.an = udiv i64 %i.am, %i.ak                   ; 2 uses
  %.sroa.speculated232 = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.af)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !9
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %2 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !67 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !68 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.sroa.0.0.copyload.i = load i64, ptr %i.av, align 8, !tbaa !20
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.aw = shl i64 %.sroa.0.0.copyload.i, %i.o
  %i.ax = add i64 %i.z, %i.aw
  %i.ay = lshr i64 %i.ax, %i.i
  %i.az = shl i64 %.sroa.2.0.copyload.i, %i.o
  %i.ba = add i64 %i.al, %i.az
  %i.bb = lshr i64 %i.ba, %i.k                    ; 3 uses
  %i.bc = add i64 %i.ay, %i.as                    ; 10 uses
  %i.bd = add i64 %i.bb, %i.au                    ; 14 uses
  %i.be = load i64, ptr %3, align 8, !tbaa !97    ; 3 uses
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = shl i64 %i.be, %i.o                     ; 2 uses
  %.not = icmp ult i64 %i.bg, %i.as
  %or.cond = select i1 %i.bf, i1 %.not, i1 false
  br i1 %or.cond, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bh = add i64 %i.z, %i.bg                     ; 2 uses
  %i.bi = udiv i64 %i.bh, %i.y
  %.not137 = icmp ult i64 %i.bh, %i.y
  %i.bj = sub i64 %i.bi, %i.as
  %spec.select = select i1 %.not137, i64 0, i64 %i.bj ; 13 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !99
  %i.bm = add i64 %i.bl, %i.be
  %i.bn = shl i64 %i.bm, %i.o
  %i.bo = add i64 %i.z, %i.bn
  %i.bp = udiv i64 %i.bo, %i.y
  %i.bq = add i64 %i.bp, %i.as
  %.sroa.speculated226 = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.bq) ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !100 ; 3 uses
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = shl i64 %i.bs, %i.o                     ; 2 uses
  %.not138 = icmp ult i64 %i.bu, %i.au
  %or.cond259 = select i1 %i.bt, i1 %.not138, i1 false
  br i1 %or.cond259, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bv = add i64 %i.al, %i.bu                    ; 2 uses
  %i.bw = udiv i64 %i.bv, %i.ak
  %.not139 = icmp ult i64 %i.bv, %i.ak
  %i.bx = sub i64 %i.bw, %i.au
  %spec.select142 = select i1 %.not139, i64 0, i64 %i.bx ; 15 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !101
  %i.ca = add i64 %i.bz, %i.bs
  %i.cb = shl i64 %i.ca, %i.o
  %i.cc = add i64 %i.al, %i.cb
  %i.cd = udiv i64 %i.cc, %i.ak
  %i.ce = add i64 %i.cd, %i.au
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ce) ; 9 uses
  %i.cf = icmp ult i64 %spec.select142, %i.ad
  br i1 %i.cf, label %bb.d, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.thread

bb.d:                                             ; preds = %bb.c
  %.not140 = icmp ugt i64 %i.b, %1
  br i1 %.not140, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cg = shl i64 %i.c, 1
  %i.ch = add i64 %i.cg, -2
  %i.ci = mul i64 %i.bd, %i.ch                    ; 4 uses
  %i.cj = sub i64 %.sroa.speculated226, %spec.select ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !75
  %i.cm = getelementptr inbounds nuw [56 x i8], ptr %i.cl, i64 %2 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !73
  %i.cp = sub i64 %spec.select, %i.r
  %i.cq = add i64 %i.cp, %i.co                    ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !74 ; 2 uses
  %i.ct = sub i64 %i.cs, %i.bd                    ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.cu = load i32, ptr %i.cm, align 8, !tbaa !79, !noalias !102
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !82, !noalias !102
  %i.cy = zext i32 %i.cx to i64
  %.not5.i.i.i = icmp ule i64 %.sroa.speculated226, %i.cv
  %i.cz = add i64 %i.ci, %i.bd
  %i.da = icmp ule i64 %i.cz, %i.cy
  %i.db = select i1 %.not5.i.i.i, i1 %i.da, i1 false
  br i1 %i.db, label %bb.f, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

bb.f:                                             ; preds = %bb.e
  %i.dc = load i32, ptr %4, align 8, !tbaa !79, !alias.scope !102
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !82, !alias.scope !102
  %i.dg = zext i32 %i.df to i64
  %i.dh = add i64 %i.cq, %i.cj
  %.not5.i.i20.i = icmp ule i64 %i.dh, %i.dd
  %i.di = icmp ule i64 %i.cs, %i.dg
  %i.dj = select i1 %.not5.i.i20.i, i1 %i.di, i1 false
  br i1 %i.dj, label %bb.g, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

bb.g:                                             ; preds = %bb.f
  %i.dk = icmp eq i64 %.sroa.speculated226, %spec.select
  %.not.i = icmp eq i64 %i.bd, 0
  %or.cond.i = select i1 %i.dk, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 40 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !83, !alias.scope !102 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !84, !alias.scope !102 ; 3 uses
  %i.dr = shl i64 %i.cj, 2                        ; 3 uses
  %i.ds = add i64 %i.au, %i.bb
  %xtraiter = and i64 %i.bd, 1
  %i.dt = icmp eq i64 %i.ds, 1
  br i1 %i.dt, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bd, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %.024.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ep, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.h ]
  %i.du = add i64 %.024.i, %i.ci
  %i.dv = load ptr, ptr %i.dl, align 8, !tbaa !83, !noalias !102
  %i.dw = load i64, ptr %i.dm, align 8, !tbaa !84, !noalias !102
  %i.dx = mul i64 %i.dw, %i.du
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dy, i64 64) ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %spec.select
  %i.ea = add i64 %i.ct, %.024.i
  %i.eb = mul i64 %i.ea, %i.dq
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ec, i64 64) ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ed, ptr align 4 %i.dz, i64 %i.dr, i1 false), !noalias !102
  %i.ee = or disjoint i64 %.024.i, 1              ; 2 uses
  %i.ef = add i64 %i.ee, %i.ci
  %i.eg = load ptr, ptr %i.dl, align 8, !tbaa !83, !noalias !102
  %i.eh = load i64, ptr %i.dm, align 8, !tbaa !84, !noalias !102
  %i.ei = mul i64 %i.eh, %i.ef
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ej, i64 64) ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %spec.select
  %i.el = add i64 %i.ct, %i.ee
  %i.em = mul i64 %i.el, %i.dq
  %i.en = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.em ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.en, i64 64) ]
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.eo, ptr align 4 %i.ek, i64 %i.dr, i1 false), !noalias !102
  %i.ep = add nuw i64 %.024.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.thread.loopexit.unr-lcssa, label %bb.h, !llvm.loop !85

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.thread.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.thread.loopexit.unr-lcssa, %.lr.ph.i
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ep, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod266 = trunc i64 %i.bd to i1
  tail call void @llvm.assume(i1 %lcmp.mod266)
  %i.eq = add i64 %.024.i.epil.init, %i.ci
  %i.er = load ptr, ptr %i.dl, align 8, !tbaa !83, !noalias !102
  %i.es = load i64, ptr %i.dm, align 8, !tbaa !84, !noalias !102
  %i.et = mul i64 %i.es, %i.eq
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.et ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eu, i64 64) ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %spec.select
  %i.ew = add i64 %i.ct, %.024.i.epil.init
  %i.ex = mul i64 %i.ew, %i.dq
  %i.ey = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ex ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ey, i64 64) ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ez, ptr align 4 %i.ev, i64 %i.dr, i1 false), !noalias !102
  br label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.thread

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.thread: ; preds = %.epil.preheader, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.thread.loopexit.unr-lcssa, %bb.g, %bb.c
  %i.fa = icmp ult i64 %i.af, %.sroa.speculated
  br i1 %i.fa, label %bb.i, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit150.thread

bb.i:                                             ; preds = %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.thread
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !87
  %i.fd = icmp ult i64 %i.ae, %i.fc
  br i1 %i.fd, label %bb.j, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

bb.j:                                             ; preds = %bb.i
  %i.fe = shl i64 %i.c, 1
  %i.ff = or disjoint i64 %i.fe, 1
  %i.fg = mul i64 %i.bd, %i.ff                    ; 4 uses
  %i.fh = sub i64 %.sroa.speculated226, %spec.select ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !75
  %i.fk = getelementptr inbounds nuw [56 x i8], ptr %i.fj, i64 %2 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !73
  %i.fn = sub i64 %spec.select, %i.r
  %i.fo = add i64 %i.fn, %i.fm                    ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !74
  %i.fr = sub i64 %.sroa.speculated232, %i.ad
  %i.fs = add i64 %i.fr, %i.fq                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.ft = load i32, ptr %i.fk, align 8, !tbaa !79, !noalias !105
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !82, !noalias !105
  %i.fx = zext i32 %i.fw to i64
  %.not5.i.i.i144 = icmp ule i64 %.sroa.speculated226, %i.fu
  %i.fy = add i64 %i.fg, %i.bd
  %i.fz = icmp ule i64 %i.fy, %i.fx
  %i.ga = select i1 %.not5.i.i.i144, i1 %i.fz, i1 false
  br i1 %i.ga, label %bb.k, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

bb.k:                                             ; preds = %bb.j
  %i.gb = load i32, ptr %4, align 8, !tbaa !79, !alias.scope !105
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !82, !alias.scope !105
  %i.gf = zext i32 %i.ge to i64
  %i.gg = add i64 %i.fo, %i.fh
  %.not5.i.i20.i145 = icmp ule i64 %i.gg, %i.gc
  %i.gh = add i64 %i.fs, %i.bd
  %i.gi = icmp ule i64 %i.gh, %i.gf
  %i.gj = select i1 %.not5.i.i20.i145, i1 %i.gi, i1 false
  br i1 %i.gj, label %bb.l, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

bb.l:                                             ; preds = %bb.k
  %i.gk = icmp eq i64 %.sroa.speculated226, %spec.select
  %.not.i146 = icmp eq i64 %i.bd, 0
  %or.cond.i147 = select i1 %i.gk, i1 true, i1 %.not.i146
  br i1 %or.cond.i147, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit150.thread, label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %bb.l
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !83, !alias.scope !105 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !84, !alias.scope !105 ; 3 uses
  %i.gr = shl i64 %i.fh, 2                        ; 3 uses
  %i.gs = add i64 %i.au, %i.bb
  %xtraiter268 = and i64 %i.bd, 1
  %i.gt = icmp eq i64 %i.gs, 1
  br i1 %i.gt, label %.epil.preheader267, label %.lr.ph.i148.new

.lr.ph.i148.new:                                  ; preds = %.lr.ph.i148
  %unroll_iter271 = and i64 %i.bd, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i148.new
  %.024.i149 = phi i64 [ 0, %.lr.ph.i148.new ], [ %i.hp, %bb.m ] ; 4 uses
  %niter272 = phi i64 [ 0, %.lr.ph.i148.new ], [ %niter272.next.1, %bb.m ]
  %i.gu = add i64 %.024.i149, %i.fg
  %i.gv = load ptr, ptr %i.gl, align 8, !tbaa !83, !noalias !105
  %i.gw = load i64, ptr %i.gm, align 8, !tbaa !84, !noalias !105
  %i.gx = mul i64 %i.gw, %i.gu
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gy, i64 64) ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %spec.select
  %i.ha = add i64 %.024.i149, %i.fs
  %i.hb = mul i64 %i.ha, %i.gq
  %i.hc = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hc, i64 64) ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.fo
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hd, ptr align 4 %i.gz, i64 %i.gr, i1 false), !noalias !105
  %i.he = or disjoint i64 %.024.i149, 1           ; 2 uses
  %i.hf = add i64 %i.he, %i.fg
  %i.hg = load ptr, ptr %i.gl, align 8, !tbaa !83, !noalias !105
  %i.hh = load i64, ptr %i.gm, align 8, !tbaa !84, !noalias !105
  %i.hi = mul i64 %i.hh, %i.hf
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hi ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hj, i64 64) ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %spec.select
  %i.hl = add i64 %i.he, %i.fs
  %i.hm = mul i64 %i.hl, %i.gq
  %i.hn = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hn, i64 64) ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.fo
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ho, ptr align 4 %i.hk, i64 %i.gr, i1 false), !noalias !105
  %i.hp = add nuw i64 %.024.i149, 2               ; 2 uses
  %niter272.next.1 = add i64 %niter272, 2         ; 2 uses
  %niter272.ncmp.1 = icmp eq i64 %niter272.next.1, %unroll_iter271
  br i1 %niter272.ncmp.1, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit150.thread.loopexit.unr-lcssa, label %bb.m, !llvm.loop !85

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit150.thread.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod269.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod269.not, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit150.thread, label %.epil.preheader267

.epil.preheader267:                               ; preds = %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit150.thread.loopexit.unr-lcssa, %.lr.ph.i148
  %.024.i149.epil.init = phi i64 [ 0, %.lr.ph.i148 ], [ %i.hp, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit150.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod270 = trunc i64 %i.bd to i1
  tail call void @llvm.assume(i1 %lcmp.mod270)
  %i.hq = add i64 %.024.i149.epil.init, %i.fg
  %i.hr = load ptr, ptr %i.gl, align 8, !tbaa !83, !noalias !105
  %i.hs = load i64, ptr %i.gm, align 8, !tbaa !84, !noalias !105
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.ht ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hu, i64 64) ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %spec.select
  %i.hw = add i64 %.024.i149.epil.init, %i.fs
  %i.hx = mul i64 %i.hw, %i.gq
  %i.hy = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hy, i64 64) ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.fo
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hz, ptr align 4 %i.hv, i64 %i.gr, i1 false), !noalias !105
  br label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit150.thread

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit150.thread: ; preds = %.epil.preheader267, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit150.thread.loopexit.unr-lcssa, %bb.l, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.thread
  %i.ia = icmp ult i64 %spec.select, %i.r
  br i1 %i.ia, label %bb.n, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit158.thread

bb.n:                                             ; preds = %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit150.thread
  %.not141 = icmp eq i64 %i.d, 0
  br i1 %.not141, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ib = shl i64 %i.d, 1
  %i.ic = add i64 %i.ib, -2
  %i.id = mul i64 %i.bc, %i.ic                    ; 4 uses
  %5 = sub i64 %.sroa.speculated, %spec.select142 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !75
  %i.ig = getelementptr inbounds nuw [56 x i8], ptr %i.if, i64 %2 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !73 ; 2 uses
  %i.ij = sub i64 %i.ii, %i.bc                    ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !74
  %i.im = sub i64 %spec.select142, %i.ad
  %i.in = add i64 %i.im, %i.il                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.io = load i32, ptr %i.ig, align 8, !tbaa !79, !noalias !108
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !82, !noalias !108
  %i.is = zext i32 %i.ir to i64
  %i.it = add i64 %i.id, %i.bc
  %.not5.i.i.i152 = icmp ule i64 %i.it, %i.ip
  %i.iu = icmp ule i64 %.sroa.speculated, %i.is
  %i.iv = select i1 %.not5.i.i.i152, i1 %i.iu, i1 false
  br i1 %i.iv, label %bb.p, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

bb.p:                                             ; preds = %bb.o
  %i.iw = load i32, ptr %4, align 8, !tbaa !79, !alias.scope !108
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !82, !alias.scope !108
  %i.ja = zext i32 %i.iz to i64
  %.not5.i.i20.i153 = icmp ule i64 %i.ii, %i.ix
  %i.jb = add i64 %i.in, %5
  %i.jc = icmp ule i64 %i.jb, %i.ja
  %i.jd = select i1 %.not5.i.i20.i153, i1 %i.jc, i1 false
  br i1 %i.jd, label %bb.q, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

bb.q:                                             ; preds = %bb.p
  %i.je = icmp eq i64 %i.bc, 0
  %.not.i154 = icmp eq i64 %.sroa.speculated, %spec.select142
  %or.cond.i155 = select i1 %i.je, i1 true, i1 %.not.i154
  br i1 %or.cond.i155, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit158.thread, label %.lr.ph.i156

.lr.ph.i156:                                      ; preds = %bb.q
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ig, i64 40 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !83, !alias.scope !108 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !84, !alias.scope !108 ; 3 uses
  %i.jl = shl i64 %i.bc, 2                        ; 3 uses
  %.neg = add i64 %spec.select142, 1
  %xtraiter274 = and i64 %5, 1
  %i.jm = icmp eq i64 %.sroa.speculated, %.neg
  br i1 %i.jm, label %.epil.preheader273, label %.lr.ph.i156.new

.lr.ph.i156.new:                                  ; preds = %.lr.ph.i156
  %unroll_iter277 = and i64 %5, -2
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i156.new
  %.024.i157 = phi i64 [ 0, %.lr.ph.i156.new ], [ %i.ki, %bb.r ] ; 4 uses
  %niter278 = phi i64 [ 0, %.lr.ph.i156.new ], [ %niter278.next.1, %bb.r ]
  %i.jn = add i64 %.024.i157, %spec.select142
  %i.jo = load ptr, ptr %i.jf, align 8, !tbaa !83, !noalias !108
  %i.jp = load i64, ptr %i.jg, align 8, !tbaa !84, !noalias !108
  %i.jq = mul i64 %i.jp, %i.jn
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jr, i64 64) ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.id
  %i.jt = add i64 %.024.i157, %i.in
  %i.ju = mul i64 %i.jt, %i.jk
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.ju ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jv, i64 64) ]
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.ij
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jw, ptr align 8 %i.js, i64 %i.jl, i1 false), !noalias !108
  %i.jx = or disjoint i64 %.024.i157, 1           ; 2 uses
  %i.jy = add i64 %i.jx, %spec.select142
  %i.jz = load ptr, ptr %i.jf, align 8, !tbaa !83, !noalias !108
  %i.ka = load i64, ptr %i.jg, align 8, !tbaa !84, !noalias !108
  %i.kb = mul i64 %i.ka, %i.jy
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.kb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kc, i64 64) ]
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.id
  %i.ke = add i64 %i.jx, %i.in
  %i.kf = mul i64 %i.ke, %i.jk
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.kf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kg, i64 64) ]
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.ij
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.kh, ptr align 8 %i.kd, i64 %i.jl, i1 false), !noalias !108
  %i.ki = add nuw i64 %.024.i157, 2               ; 2 uses
  %niter278.next.1 = add i64 %niter278, 2         ; 2 uses
  %niter278.ncmp.1.not = icmp eq i64 %niter278.next.1, %unroll_iter277
  br i1 %niter278.ncmp.1.not, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit158.thread.loopexit.unr-lcssa, label %bb.r, !llvm.loop !85

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit158.thread.loopexit.unr-lcssa: ; preds = %bb.r
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  br i1 %lcmp.mod275.not, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit158.thread, label %.epil.preheader273

.epil.preheader273:                               ; preds = %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit158.thread.loopexit.unr-lcssa, %.lr.ph.i156
  %.024.i157.epil.init = phi i64 [ 0, %.lr.ph.i156 ], [ %i.ki, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit158.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod276 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod276)
  %i.kj = add i64 %.024.i157.epil.init, %spec.select142
  %i.kk = load ptr, ptr %i.jf, align 8, !tbaa !83, !noalias !108
  %i.kl = load i64, ptr %i.jg, align 8, !tbaa !84, !noalias !108
  %i.km = mul i64 %i.kl, %i.kj
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.km ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kn, i64 64) ]
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %i.id
  %i.kp = add i64 %.024.i157.epil.init, %i.in
  %i.kq = mul i64 %i.kp, %i.jk
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.kq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kr, i64 64) ]
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.ij
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ks, ptr align 8 %i.ko, i64 %i.jl, i1 false), !noalias !108
  br label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit158.thread

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit158.thread: ; preds = %.epil.preheader273, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit158.thread.loopexit.unr-lcssa, %bb.q, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit150.thread
  %i.kt = icmp ult i64 %i.t, %.sroa.speculated226
  br i1 %i.kt, label %bb.s, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

bb.s:                                             ; preds = %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit158.thread
  %i.ku = load i64, ptr %i.a, align 8, !tbaa !69
  %i.kv = icmp ult i64 %i.s, %i.ku
  br i1 %i.kv, label %bb.t, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

bb.t:                                             ; preds = %bb.s
  %i.kw = shl i64 %i.d, 1
  %i.kx = or disjoint i64 %i.kw, 1
  %i.ky = mul i64 %i.bc, %i.kx                    ; 4 uses
  %6 = sub i64 %.sroa.speculated, %spec.select142 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !75
  %i.lb = getelementptr inbounds nuw [56 x i8], ptr %i.la, i64 %2 ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !73
  %i.le = sub i64 %.sroa.speculated237, %i.r
  %i.lf = add i64 %i.le, %i.ld                    ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !74
  %i.li = sub i64 %spec.select142, %i.ad
  %i.lj = add i64 %i.li, %i.lh                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.lk = load i32, ptr %i.lb, align 8, !tbaa !79, !noalias !111
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !82, !noalias !111
  %i.lo = zext i32 %i.ln to i64
  %i.lp = add i64 %i.ky, %i.bc
  %.not5.i.i.i160 = icmp ule i64 %i.lp, %i.ll
  %i.lq = icmp ule i64 %.sroa.speculated, %i.lo
  %i.lr = select i1 %.not5.i.i.i160, i1 %i.lq, i1 false
  br i1 %i.lr, label %bb.u, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

bb.u:                                             ; preds = %bb.t
  %i.ls = load i32, ptr %4, align 8, !tbaa !79, !alias.scope !111
  %i.lt = zext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !82, !alias.scope !111
  %i.lw = zext i32 %i.lv to i64
  %i.lx = add i64 %i.lf, %i.bc
  %.not5.i.i20.i161 = icmp ule i64 %i.lx, %i.lt
  %i.ly = add i64 %i.lj, %6
  %i.lz = icmp ule i64 %i.ly, %i.lw
  %i.ma = select i1 %.not5.i.i20.i161, i1 %i.lz, i1 false
  br i1 %i.ma, label %bb.v, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

bb.v:                                             ; preds = %bb.u
  %i.mb = icmp eq i64 %i.bc, 0
  %.not.i162 = icmp eq i64 %.sroa.speculated, %spec.select142
  %or.cond.i163 = select i1 %i.mb, i1 true, i1 %.not.i162
  br i1 %or.cond.i163, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit, label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %bb.v
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lb, i64 40 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !83, !alias.scope !111 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !84, !alias.scope !111 ; 3 uses
  %i.mi = shl i64 %i.bc, 2                        ; 3 uses
  %.neg285 = add i64 %spec.select142, 1
  %xtraiter280 = and i64 %6, 1
  %i.mj = icmp eq i64 %.sroa.speculated, %.neg285
  br i1 %i.mj, label %.epil.preheader279, label %.lr.ph.i164.new

.lr.ph.i164.new:                                  ; preds = %.lr.ph.i164
  %unroll_iter283 = and i64 %6, -2
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i164.new
  %.024.i165 = phi i64 [ 0, %.lr.ph.i164.new ], [ %i.nf, %bb.w ] ; 4 uses
  %niter284 = phi i64 [ 0, %.lr.ph.i164.new ], [ %niter284.next.1, %bb.w ]
  %i.mk = add i64 %.024.i165, %spec.select142
  %i.ml = load ptr, ptr %i.mc, align 8, !tbaa !83, !noalias !111
  %i.mm = load i64, ptr %i.md, align 8, !tbaa !84, !noalias !111
  %i.mn = mul i64 %i.mm, %i.mk
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mo, i64 64) ]
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.ky
  %i.mq = add i64 %.024.i165, %i.lj
  %i.mr = mul i64 %i.mq, %i.mh
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ms, i64 64) ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.lf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.mt, ptr align 4 %i.mp, i64 %i.mi, i1 false), !noalias !111
  %i.mu = or disjoint i64 %.024.i165, 1           ; 2 uses
  %i.mv = add i64 %i.mu, %spec.select142
  %i.mw = load ptr, ptr %i.mc, align 8, !tbaa !83, !noalias !111
  %i.mx = load i64, ptr %i.md, align 8, !tbaa !84, !noalias !111
  %i.my = mul i64 %i.mx, %i.mv
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.my ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mz, i64 64) ]
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.ky
  %i.nb = add i64 %i.mu, %i.lj
  %i.nc = mul i64 %i.nb, %i.mh
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.nc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nd, i64 64) ]
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.lf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ne, ptr align 4 %i.na, i64 %i.mi, i1 false), !noalias !111
  %i.nf = add nuw i64 %.024.i165, 2               ; 2 uses
  %niter284.next.1 = add i64 %niter284, 2         ; 2 uses
  %niter284.ncmp.1.not = icmp eq i64 %niter284.next.1, %unroll_iter283
  br i1 %niter284.ncmp.1.not, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.loopexit.unr-lcssa, label %bb.w, !llvm.loop !85

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.loopexit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  br i1 %lcmp.mod281.not, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit, label %.epil.preheader279

.epil.preheader279:                               ; preds = %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.loopexit.unr-lcssa, %.lr.ph.i164
  %.024.i165.epil.init = phi i64 [ 0, %.lr.ph.i164 ], [ %i.nf, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod282 = trunc i64 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod282)
  %i.ng = add i64 %.024.i165.epil.init, %spec.select142
  %i.nh = load ptr, ptr %i.mc, align 8, !tbaa !83, !noalias !111
  %i.ni = load i64, ptr %i.md, align 8, !tbaa !84, !noalias !111
  %i.nj = mul i64 %i.ni, %i.ng
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.nj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nk, i64 64) ]
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.ky
  %i.nm = add i64 %.024.i165.epil.init, %i.lj
  %i.nn = mul i64 %i.nm, %i.mh
  %i.no = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.nn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.no, i64 64) ]
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.lf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.np, ptr align 4 %i.nl, i64 %i.mi, i1 false), !noalias !111
  br label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit: ; preds = %.epil.preheader279, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.loopexit.unr-lcssa, %bb.b, %bb.a, %bb.v, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit158.thread, %bb.t, %bb.u, %bb.s, %bb.o, %bb.p, %bb.n, %bb.j, %bb.k, %bb.i, %bb.e, %bb.f, %bb.d
  %.sroa.0242.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.j ], [ 1, %bb.t ], [ 1, %bb.s ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.i ], [ 1, %bb.e ], [ 1, %bb.d ], [ 1, %bb.a ], [ 1, %bb.f ], [ 1, %bb.k ], [ 1, %bb.p ], [ 1, %bb.u ], [ 0, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit158.thread ], [ 0, %bb.v ], [ 0, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_.exit.loopexit.unr-lcssa ], [ 0, %.epil.preheader279 ]
  ret i32 %.sroa.0242.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl23LowMemoryRenderPipeline20EnsureBordersStorageEv(ptr noundef nonnull align 8 dereferenceable(752) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.jxl::Plane", align 8        ; 7 uses
  %2 = alloca %"class.jxl::Plane", align 8        ; 7 uses
  %3 = alloca %"class.jxl::StatusOr", align 8     ; 8 uses
  %4 = alloca %"class.jxl::Plane", align 8        ; 6 uses
  %5 = alloca %"class.jxl::StatusOr", align 8     ; 8 uses
  %6 = alloca %"class.jxl::Plane", align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 56                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !115
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4                   ; 2 uses
  %i.r = icmp ult i64 %i.j, %i.q
  br i1 %i.r, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE6resizeEm.exit, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE6resizeEm.exit48

_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE6resizeEm.exit: ; preds = %bb.a
  %i.s = sub nuw nsw i64 %i.q, %i.j
  tail call void @_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.s) #19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !115
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4                   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !114 ; 3 uses
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !75  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 56                ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.z
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE6resizeEm.exit
  %i.ai = sub nuw nsw i64 %i.z, %i.ag
  tail call void @_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %i.ai) #19
  br label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE6resizeEm.exit48

bb.c:                                             ; preds = %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE6resizeEm.exit
  %i.aj = icmp ugt i64 %i.ag, %i.z
  br i1 %i.aj, label %bb.d, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE6resizeEm.exit48

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %i.z ; 3 uses
  %.not6.i.i.i43 = icmp eq ptr %i.ak, %i.ab
  br i1 %.not6.i.i.i43, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE17__destruct_at_endB8nn180100EPS3_.exit.i47, label %.lr.ph.i.i.i44

.lr.ph.i.i.i44:                                   ; preds = %bb.d, %.lr.ph.i.i.i44
  %.07.i.i.i45 = phi ptr [ %i.al, %.lr.ph.i.i.i44 ], [ %i.ab, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.07.i.i.i45, i64 -56 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.07.i.i.i45, i64 -32
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.am) #20
  %.not.i.i.i46 = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i46, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE17__destruct_at_endB8nn180100EPS3_.exit.i47, label %.lr.ph.i.i.i44, !llvm.loop !116

_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE17__destruct_at_endB8nn180100EPS3_.exit.i47: ; preds = %.lr.ph.i.i.i44, %bb.d
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !114
  br label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE6resizeEm.exit48

_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE6resizeEm.exit48: ; preds = %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE17__destruct_at_endB8nn180100EPS3_.exit.i47, %bb.c, %bb.b, %bb.a
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !115
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %.not3870.not = icmp eq ptr %i.an, %i.ao
  br i1 %.not3870.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE6resizeEm.exit48
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge42
  %i.bm = phi ptr [ %i.ao, %.lr.ph ], [ %i.fr, %.critedge42 ]
  %.071 = phi i64 [ 0, %.lr.ph ], [ %i.fp, %.critedge42 ] ; 8 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ap, align 8, !tbaa !20
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.071 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bp, align 8, !tbaa !20 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !20 ; 2 uses
  %i.bq = load i64, ptr %i.aq, align 8, !tbaa !22 ; 2 uses
  %i.br = shl i64 %.sroa.0.0.copyload.i, %i.bq
  %i.bs = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.bt = shl nuw i32 1, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, -1
  %i.bw = add i64 %i.bv, %i.br
  %i.bx = lshr i64 %i.bw, %.sroa.0.0.copyload.i.i
  %i.by = shl i64 %.sroa.2.0.copyload.i, %i.bq
  %i.bz = trunc i64 %.sroa.5.0.copyload.i.i to i32
  %i.ca = shl nuw i32 1, %i.bz
  %i.cb = sext i32 %i.ca to i64
  %i.cc = add i64 %i.by, -1
  %i.cd = add i64 %i.cc, %i.cb
  %i.ce = lshr i64 %i.cd, %.sroa.5.0.copyload.i.i
  %i.cf = load ptr, ptr %i.ar, align 8, !tbaa !9
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.071 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !67
  %i.cj = add i64 %i.bx, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !68
  %i.cm = add i64 %i.ce, %i.cl
  %i.cn = load i64, ptr %i.as, align 8, !tbaa !69 ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.co = shl i64 %i.cn, 1
  %i.cp = add i64 %i.co, -2
  %i.cq = load i64, ptr %i.at, align 8, !tbaa !87 ; 2 uses
  %.not37 = icmp eq i64 %i.cq, 0
  br i1 %.not37, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cr = shl i64 %i.cq, 1
  %i.cs = add i64 %i.cr, -2
  %i.ct = load i64, ptr %i.au, align 8, !tbaa !117
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.071 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !67
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = shl nuw i32 1, %i.cw
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = add i64 %i.ct, -1
  %i.da = add i64 %i.cz, %i.cy
  %i.db = udiv i64 %i.da, %i.cy                   ; 3 uses
  %i.dc = load i64, ptr %i.av, align 8, !tbaa !118
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !68
  %i.df = trunc i64 %i.de to i32
  %i.dg = shl nuw i32 1, %i.df
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = add i64 %i.dc, -1
  %i.dj = add i64 %i.di, %i.dh
  %i.dk = udiv i64 %i.dj, %i.dh                   ; 3 uses
  %i.dl = mul i64 %i.cs, %i.cm                    ; 3 uses
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.dn = getelementptr inbounds nuw [56 x i8], ptr %i.dm, i64 %.071 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !79
  %i.dp = zext i32 %i.do to i64
end_hunk_0
