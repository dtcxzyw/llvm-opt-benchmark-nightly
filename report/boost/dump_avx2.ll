Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/dump_avx2?download=true
inline.NumInlined: 97
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5boost3log11v2_mt_posix3aux19dump_data_char_avx2EPKvmRSo:bb.a
  store <2 x i64> %i.cy, ptr %i.cz, align 16, !tbaa !25
  %i.da = add nuw nsw i32 %.071.i20, 1            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.072.i19, i64 96
  %i.dc = getelementptr inbounds nuw i8, ptr %.2.i18, i64 32 ; 3 uses
  %exitcond.not = icmp eq i32 %i.da, 32
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !59

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.069.i27 = phi ptr [ %i.f, %.lr.ph ], [ %i.dx, %bb.g ] ; 4 uses
  %.074.i26 = phi i64 [ %i.bl, %.lr.ph ], [ %i.dz, %bb.g ]
  %.3.i25 = phi ptr [ %.176.i.lcssa, %.lr.ph ], [ %i.dy, %bb.g ] ; 2 uses
  %i.dd = load <2 x i64>, ptr %.3.i25, align 16, !tbaa !25 ; 2 uses
  %i.de = bitcast <2 x i64> %i.dd to <8 x i16>
  %i.df = lshr <8 x i16> %i.de, splat (i16 4)
  %i.dg = bitcast <8 x i16> %i.df to <16 x i8>
  %i.dh = and <16 x i8> %i.dg, splat (i8 15)
  %i.di = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bp, <16 x i8> %i.dh) ; 2 uses
  %i.dj = bitcast <2 x i64> %i.dd to <16 x i8>
  %i.dk = and <16 x i8> %i.dj, splat (i8 15)
  %i.dl = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bp, <16 x i8> %i.dk) ; 2 uses
  %i.dm = shufflevector <16 x i8> %i.di, <16 x i8> %i.dl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dn = shufflevector <16 x i8> %i.di, <16 x i8> %i.dl, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.do = shufflevector <16 x i8> %i.dm, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 1, i32 16, i32 2, i32 3, i32 16, i32 4, i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16>
  %i.dp = shufflevector <16 x i8> %i.dm, <16 x i8> %i.dn, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <16 x i8> %i.dp, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 16, i32 2, i32 3, i32 16, i32 4, i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16, i32 10>
  %i.dr = shufflevector <16 x i8> %i.dn, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16, i32 10, i32 11, i32 16, i32 12, i32 13, i32 16, i32 14, i32 15>
  %i.ds = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.do, <16 x i8> splat (i8 32))
  %i.dt = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.dq, <16 x i8> splat (i8 32))
  %i.du = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.dr, <16 x i8> splat (i8 32))
  store <16 x i8> %i.ds, ptr %.069.i27, align 16, !tbaa !25
  %i.dv = getelementptr inbounds nuw i8, ptr %.069.i27, i64 16
  store <16 x i8> %i.dt, ptr %i.dv, align 16, !tbaa !25
  %i.dw = getelementptr inbounds nuw i8, ptr %.069.i27, i64 32
  store <16 x i8> %i.du, ptr %i.dw, align 16, !tbaa !25
  %i.dx = getelementptr inbounds nuw i8, ptr %.069.i27, i64 48 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.3.i25, i64 16 ; 2 uses
  %i.dz = add nsw i64 %.074.i26, -16              ; 4 uses
  %i.ea = icmp ugt i64 %i.dz, 15
  br i1 %i.ea, label %bb.g, label %._crit_edge28, !llvm.loop !60

._crit_edge28:                                    ; preds = %bb.g
  call void @llvm.x86.avx.vzeroall()
  %.not39 = icmp eq i64 %i.dz, 0
  br i1 %.not39, label %._crit_edge37, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %._crit_edge28.thread, %._crit_edge28
  %.069.i.lcssa58 = phi ptr [ %i.f, %._crit_edge28.thread ], [ %i.dx, %._crit_edge28 ] ; 2 uses
  %.074.i.lcssa57 = phi i64 [ %i.bl, %._crit_edge28.thread ], [ %i.dz, %._crit_edge28 ] ; 4 uses
  %.3.i.lcssa56 = phi ptr [ %.176.i.lcssa, %._crit_edge28.thread ], [ %i.dy, %._crit_edge28 ] ; 2 uses
  %xtraiter = and i64 %.074.i.lcssa57, 1
  %i.eb = icmp eq i64 %.074.i.lcssa57, 1
  br i1 %i.eb, label %.lr.ph36.epil.preheader, label %.lr.ph36.preheader.new

.lr.ph36.preheader.new:                           ; preds = %.lr.ph36.preheader
  %unroll_iter = and i64 %.074.i.lcssa57, 14
  br label %.lr.ph36

._crit_edge37.loopexit.unr-lcssa:                 ; preds = %.lr.ph36
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge37, label %.lr.ph36.epil.preheader

.lr.ph36.epil.preheader:                          ; preds = %._crit_edge37.loopexit.unr-lcssa, %.lr.ph36.preheader
  %.170.i33.epil.init = phi ptr [ %.069.i.lcssa58, %.lr.ph36.preheader ], [ %i.fu, %._crit_edge37.loopexit.unr-lcssa ] ; 4 uses
  %.4.i32.epil.init = phi ptr [ %.3.i.lcssa56, %.lr.ph36.preheader ], [ %i.ft, %._crit_edge37.loopexit.unr-lcssa ]
  %lcmp.mod77 = trunc i64 %.074.i.lcssa57 to i1
  call void @llvm.assume(i1 %lcmp.mod77)
  %i.ec = load i8, ptr %.4.i32.epil.init, align 1, !tbaa !25
  %i.ed = zext i8 %i.ec to i32                    ; 2 uses
  store i8 32, ptr %.170.i33.epil.init, align 1, !tbaa !25
  %i.ee = lshr i32 %i.ed, 4
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !25
  %i.ei = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 1
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !25
  %i.ej = and i32 %i.ed, 15
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !25
  %i.en = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 2
  store i8 %i.em, ptr %i.en, align 1, !tbaa !25
  %i.eo = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 3
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %.lr.ph36.epil.preheader, %._crit_edge37.loopexit.unr-lcssa, %._crit_edge28
  %.170.i.lcssa = phi ptr [ %i.dx, %._crit_edge28 ], [ %i.fu, %._crit_edge37.loopexit.unr-lcssa ], [ %i.eo, %.lr.ph36.epil.preheader ]
  %i.ep = ptrtoint ptr %.170.i.lcssa to i64
  %i.eq = ptrtoint ptr %.1.i.lcssa to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %.1.i.lcssa, i64 noundef %i.er) ; 0 uses
  br label %_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IcEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit

.lr.ph36:                                         ; preds = %.lr.ph36, %.lr.ph36.preheader.new
  %.170.i33 = phi ptr [ %.069.i.lcssa58, %.lr.ph36.preheader.new ], [ %i.fu, %.lr.ph36 ] ; 7 uses
  %.4.i32 = phi ptr [ %.3.i.lcssa56, %.lr.ph36.preheader.new ], [ %i.ft, %.lr.ph36 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph36.preheader.new ], [ %niter.next.1, %.lr.ph36 ]
  %i.et = load i8, ptr %.4.i32, align 1, !tbaa !25
  %i.eu = zext i8 %i.et to i32                    ; 2 uses
  store i8 32, ptr %.170.i33, align 1, !tbaa !25
  %i.ev = lshr i32 %i.eu, 4
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !25
  %i.ez = getelementptr inbounds nuw i8, ptr %.170.i33, i64 1
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !25
  %i.fa = and i32 %i.eu, 15
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !25
  %i.fe = getelementptr inbounds nuw i8, ptr %.170.i33, i64 2
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !25
  %i.ff = getelementptr inbounds nuw i8, ptr %.4.i32, i64 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.170.i33, i64 3
  %i.fh = load i8, ptr %i.ff, align 1, !tbaa !25
  %i.fi = zext i8 %i.fh to i32                    ; 2 uses
  store i8 32, ptr %i.fg, align 1, !tbaa !25
  %i.fj = lshr i32 %i.fi, 4
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !25
  %i.fn = getelementptr inbounds nuw i8, ptr %.170.i33, i64 4
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !25
  %i.fo = and i32 %i.fi, 15
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !25
  %i.fs = getelementptr inbounds nuw i8, ptr %.170.i33, i64 5
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !25
  %i.ft = getelementptr inbounds nuw i8, ptr %.4.i32, i64 2 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.170.i33, i64 6 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge37.loopexit.unr-lcssa, label %.lr.ph36, !llvm.loop !61

_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IcEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit: ; preds = %._crit_edge, %._crit_edge37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN5boost3log11v2_mt_posix3aux17dump_data_genericIcEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS7_EE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IcEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit
  ret void
}

declare void @_ZN5boost3log11v2_mt_posix3aux17dump_data_genericIcEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS7_EE(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost3log11v2_mt_posix3aux20dump_data_wchar_avx2EPKvmRSt13basic_ostreamIwSt11char_traitsIwEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3104 x i32], align 16            ; 4 uses
  %i.b = icmp ugt i64 %1, 31
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 16
  %i.e = sub nuw nsw i64 32, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12288
  %i.i = load ptr, ptr %2, align 8, !tbaa !13
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !24
  %i.o = lshr i32 %i.n, 14
  %.lobit = and i32 %i.o, 1
  %i.p = zext nneg i32 %.lobit to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr @_ZN5boost3log11v2_mt_posix3aux16g_hex_char_tableE, i64 %i.p ; 7 uses
  %i.r = load <2 x i64>, ptr %i.q, align 16, !tbaa !25 ; 2 uses
  %i.s = shufflevector <2 x i64> %i.r, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.t = icmp eq i64 %1, 32
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 0, %i.u
  %i.w = and i64 %i.v, 31
  %i.x = select i1 %i.t, i64 32, i64 %i.w         ; 4 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load <4 x i64>, ptr %0, align 1, !tbaa !25 ; 2 uses
  %i.z = bitcast <4 x i64> %i.y to <16 x i16>
  %i.aa = lshr <16 x i16> %i.z, splat (i16 4)
  %i.ab = bitcast <4 x i64> %i.s to <32 x i8>     ; 2 uses
  %i.ac = bitcast <16 x i16> %i.aa to <32 x i8>
  %i.ad = and <32 x i8> %i.ac, splat (i8 15)
  %i.ae = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.ab, <32 x i8> %i.ad) ; 3 uses
  %i.af = bitcast <4 x i64> %i.y to <32 x i8>
  %i.ag = and <32 x i8> %i.af, splat (i8 15)
  %i.ah = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.ab, <32 x i8> %i.ag) ; 3 uses
  %i.ai = shufflevector <32 x i8> %i.ae, <32 x i8> %i.ah, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = shufflevector <32 x i8> %i.ae, <32 x i8> %i.ah, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.ak = shufflevector <32 x i8> %i.ai, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 0, i32 1, i32 32, i32 2, i32 3, i32 32, i32 4, i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 48, i32 16, i32 17, i32 48, i32 18, i32 19, i32 48, i32 20, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48>
  %i.al = shufflevector <32 x i8> %i.aj, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 10, i32 11, i32 32, i32 12, i32 13, i32 32, i32 14, i32 15, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48, i32 26, i32 27, i32 48, i32 28, i32 29, i32 48, i32 30, i32 31>
  %i.am = shufflevector <32 x i8> %i.ae, <32 x i8> %i.ah, <32 x i32> <i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = shufflevector <32 x i8> %i.am, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 32, i32 2, i32 3, i32 32, i32 4, i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 10, i32 16, i32 17, i32 48, i32 18, i32 19, i32 48, i32 20, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48, i32 26>
  %i.ao = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.ak, <32 x i8> splat (i8 32)) ; 3 uses
  %3 = bitcast <32 x i8> %i.ao to <4 x i64>       ; 2 uses
  %i.ap = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.an, <32 x i8> splat (i8 32)) ; 3 uses
  %4 = bitcast <32 x i8> %i.ap to <4 x i64>       ; 2 uses
  %i.aq = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.al, <32 x i8> splat (i8 32)) ; 3 uses
  %5 = bitcast <32 x i8> %i.aq to <4 x i64>       ; 2 uses
  %6 = shufflevector <4 x i64> %3, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ar = shufflevector <32 x i8> %i.ao, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.as = zext <8 x i8> %i.ar to <8 x i32>
  store <8 x i32> %i.as, ptr %i.f, align 32, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %7 = bitcast <2 x i64> %6 to <16 x i8>
  %8 = shufflevector <16 x i8> %7, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.au = zext <8 x i8> %8 to <8 x i32>
  store <8 x i32> %i.au, ptr %i.at, align 32, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %9 = shufflevector <4 x i64> %4, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.aw = shufflevector <32 x i8> %i.ap, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ax = zext <8 x i8> %i.aw to <8 x i32>
  store <8 x i32> %i.ax, ptr %i.av, align 32, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %10 = bitcast <2 x i64> %9 to <16 x i8>
  %11 = shufflevector <16 x i8> %10, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.az = zext <8 x i8> %11 to <8 x i32>
  store <8 x i32> %i.az, ptr %i.ay, align 32, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %12 = shufflevector <4 x i64> %5, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bb = shufflevector <32 x i8> %i.aq, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bc = zext <8 x i8> %i.bb to <8 x i32>
  store <8 x i32> %i.bc, ptr %i.ba, align 32, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %13 = bitcast <2 x i64> %12 to <16 x i8>
  %14 = shufflevector <16 x i8> %13, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.be = zext <8 x i8> %14 to <8 x i32>
  store <8 x i32> %i.be, ptr %i.bd, align 32, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %15 = shufflevector <4 x i64> %3, <4 x i64> poison, <2 x i32> <i32 3, i32 poison>
  %i.bg = shufflevector <32 x i8> %i.ao, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bh = zext <8 x i8> %i.bg to <8 x i32>
  store <8 x i32> %i.bh, ptr %i.bf, align 32, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %16 = bitcast <2 x i64> %15 to <16 x i8>
  %17 = shufflevector <16 x i8> %16, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bj = zext <8 x i8> %17 to <8 x i32>
  store <8 x i32> %i.bj, ptr %i.bi, align 32, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %18 = shufflevector <4 x i64> %4, <4 x i64> poison, <2 x i32> <i32 3, i32 poison>
  %i.bl = shufflevector <32 x i8> %i.ap, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bm = zext <8 x i8> %i.bl to <8 x i32>
  store <8 x i32> %i.bm, ptr %i.bk, align 32, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %19 = bitcast <2 x i64> %18 to <16 x i8>
  %20 = shufflevector <16 x i8> %19, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bo = zext <8 x i8> %20 to <8 x i32>
  store <8 x i32> %i.bo, ptr %i.bn, align 32, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %21 = shufflevector <4 x i64> %5, <4 x i64> poison, <2 x i32> <i32 3, i32 poison>
  %i.bq = shufflevector <32 x i8> %i.aq, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.br = zext <8 x i8> %i.bq to <8 x i32>
  store <8 x i32> %i.br, ptr %i.bp, align 32, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %22 = bitcast <2 x i64> %21 to <16 x i8>
  %23 = shufflevector <16 x i8> %22, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = zext <8 x i8> %23 to <8 x i32>
  store <8 x i32> %i.bt, ptr %i.bs, align 32, !tbaa !25
  call void @llvm.x86.avx.vzeroall()
  %i.bu = mul nuw nsw i64 %i.x, 3
  %i.bv = add nsw i64 %i.bu, -1
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13basic_ostreamIwSt11char_traitsIwEE5writeEPKwl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.g, i64 noundef %i.bv) ; 0 uses
  %i.bx = sub nuw i64 %1, %i.x
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.075.i = phi ptr [ %i.by, %bb.c ], [ %0, %bb.b ] ; 2 uses
  %.068.i = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %.0.i = phi i64 [ %i.bx, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %i.bz = lshr i64 %.0.i, 10                      ; 2 uses
  %i.ca = and i64 %.0.i, 1023                     ; 4 uses
  %.not = icmp eq i64 %i.bz, 0
  br i1 %.not, label %._crit_edge, label %.preheader17.lr.ph

.preheader17.lr.ph:                               ; preds = %bb.d
  %i.cb = bitcast <4 x i64> %i.s to <32 x i8>     ; 2 uses
  %i.cc = ptrtoint ptr %i.h to i64
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.lr.ph, %bb.e
  %.1.i23 = phi ptr [ %.068.i, %.preheader17.lr.ph ], [ %i.f, %bb.e ] ; 2 uses
  %.073.i22 = phi i64 [ 0, %.preheader17.lr.ph ], [ %i.cj, %bb.e ]
  %.176.i21 = phi ptr [ %.075.i, %.preheader17.lr.ph ], [ %i.eh, %bb.e ]
  br label %bb.f

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.176.i.lcssa = phi ptr [ %.075.i, %bb.d ], [ %i.eh, %bb.e ] ; 2 uses
  %.1.i.lcssa = phi ptr [ %.068.i, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %.not79.i = icmp eq i64 %i.ca, 0
  br i1 %.not79.i, label %_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IwEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit, label %.preheader, !prof !26

.preheader:                                       ; preds = %._crit_edge
  %i.cd = icmp samesign ugt i64 %i.ca, 15
  br i1 %i.cd, label %.lr.ph, label %._crit_edge28.thread

._crit_edge28.thread:                             ; preds = %.preheader
  call void @llvm.x86.avx.vzeroall()
  br label %.lr.ph36.preheader

.lr.ph:                                           ; preds = %.preheader
  %i.ce = bitcast <2 x i64> %i.r to <16 x i8>     ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.f
  call void @llvm.x86.avx.vzeroall()
  %i.cf = ptrtoint ptr %.1.i23 to i64
  %i.cg = sub i64 %i.cc, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13basic_ostreamIwSt11char_traitsIwEE5writeEPKwl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %.1.i23, i64 noundef %i.ch) ; 0 uses
  %i.cj = add nuw nsw i64 %.073.i22, 1            ; 2 uses
  %exitcond44.not = icmp eq i64 %i.cj, %i.bz
  br i1 %exitcond44.not, label %._crit_edge, label %.preheader17, !llvm.loop !62

bb.f:                                             ; preds = %.preheader17, %bb.f
  %.071.i20 = phi i32 [ 0, %.preheader17 ], [ %i.ef, %bb.f ]
  %.072.i19 = phi ptr [ %i.f, %.preheader17 ], [ %i.eg, %bb.f ] ; 13 uses
  %.2.i18 = phi ptr [ %.176.i21, %.preheader17 ], [ %i.eh, %bb.f ] ; 2 uses
  %i.ck = load <4 x i64>, ptr %.2.i18, align 32, !tbaa !25 ; 2 uses
  %i.cl = bitcast <4 x i64> %i.ck to <16 x i16>
  %i.cm = lshr <16 x i16> %i.cl, splat (i16 4)
  %i.cn = bitcast <16 x i16> %i.cm to <32 x i8>
  %i.co = and <32 x i8> %i.cn, splat (i8 15)
  %i.cp = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.cb, <32 x i8> %i.co) ; 3 uses
  %i.cq = bitcast <4 x i64> %i.ck to <32 x i8>
  %i.cr = and <32 x i8> %i.cq, splat (i8 15)
  %i.cs = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.cb, <32 x i8> %i.cr) ; 3 uses
  %i.ct = shufflevector <32 x i8> %i.cp, <32 x i8> %i.cs, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cu = shufflevector <32 x i8> %i.cp, <32 x i8> %i.cs, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.cv = shufflevector <32 x i8> %i.ct, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 0, i32 1, i32 32, i32 2, i32 3, i32 32, i32 4, i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 48, i32 16, i32 17, i32 48, i32 18, i32 19, i32 48, i32 20, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48>
  %i.cw = shufflevector <32 x i8> %i.cu, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 10, i32 11, i32 32, i32 12, i32 13, i32 32, i32 14, i32 15, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48, i32 26, i32 27, i32 48, i32 28, i32 29, i32 48, i32 30, i32 31>
  %i.cx = shufflevector <32 x i8> %i.cp, <32 x i8> %i.cs, <32 x i32> <i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cy = shufflevector <32 x i8> %i.cx, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 32, i32 2, i32 3, i32 32, i32 4, i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 10, i32 16, i32 17, i32 48, i32 18, i32 19, i32 48, i32 20, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48, i32 26>
  %i.cz = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.cv, <32 x i8> splat (i8 32)) ; 3 uses
  %24 = bitcast <32 x i8> %i.cz to <4 x i64>      ; 2 uses
  %i.da = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.cy, <32 x i8> splat (i8 32)) ; 3 uses
  %25 = bitcast <32 x i8> %i.da to <4 x i64>      ; 2 uses
  %i.db = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.cw, <32 x i8> splat (i8 32)) ; 3 uses
  %26 = bitcast <32 x i8> %i.db to <4 x i64>      ; 2 uses
  %27 = shufflevector <4 x i64> %24, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.dc = shufflevector <32 x i8> %i.cz, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dd = zext <8 x i8> %i.dc to <8 x i32>
  store <8 x i32> %i.dd, ptr %.072.i19, align 32, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %.072.i19, i64 32
  %28 = bitcast <2 x i64> %27 to <16 x i8>
  %29 = shufflevector <16 x i8> %28, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.df = zext <8 x i8> %29 to <8 x i32>
  store <8 x i32> %i.df, ptr %i.de, align 32, !tbaa !25
  %i.dg = getelementptr inbounds nuw i8, ptr %.072.i19, i64 64
  %30 = shufflevector <4 x i64> %25, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.dh = shufflevector <32 x i8> %i.da, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.di = zext <8 x i8> %i.dh to <8 x i32>
  store <8 x i32> %i.di, ptr %i.dg, align 32, !tbaa !25
  %i.dj = getelementptr inbounds nuw i8, ptr %.072.i19, i64 96
  %31 = bitcast <2 x i64> %30 to <16 x i8>
  %32 = shufflevector <16 x i8> %31, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dk = zext <8 x i8> %32 to <8 x i32>
  store <8 x i32> %i.dk, ptr %i.dj, align 32, !tbaa !25
  %i.dl = getelementptr inbounds nuw i8, ptr %.072.i19, i64 128
  %33 = shufflevector <4 x i64> %26, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.dm = shufflevector <32 x i8> %i.db, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dn = zext <8 x i8> %i.dm to <8 x i32>
  store <8 x i32> %i.dn, ptr %i.dl, align 32, !tbaa !25
  %i.do = getelementptr inbounds nuw i8, ptr %.072.i19, i64 160
  %34 = bitcast <2 x i64> %33 to <16 x i8>
  %35 = shufflevector <16 x i8> %34, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dp = zext <8 x i8> %35 to <8 x i32>
  store <8 x i32> %i.dp, ptr %i.do, align 32, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %.072.i19, i64 192
  %36 = shufflevector <4 x i64> %24, <4 x i64> poison, <2 x i32> <i32 3, i32 poison>
  %i.dr = shufflevector <32 x i8> %i.cz, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ds = zext <8 x i8> %i.dr to <8 x i32>
  store <8 x i32> %i.ds, ptr %i.dq, align 32, !tbaa !25
  %i.dt = getelementptr inbounds nuw i8, ptr %.072.i19, i64 224
  %37 = bitcast <2 x i64> %36 to <16 x i8>
  %38 = shufflevector <16 x i8> %37, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.du = zext <8 x i8> %38 to <8 x i32>
  store <8 x i32> %i.du, ptr %i.dt, align 32, !tbaa !25
  %i.dv = getelementptr inbounds nuw i8, ptr %.072.i19, i64 256
  %39 = shufflevector <4 x i64> %25, <4 x i64> poison, <2 x i32> <i32 3, i32 poison>
  %i.dw = shufflevector <32 x i8> %i.da, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dx = zext <8 x i8> %i.dw to <8 x i32>
  store <8 x i32> %i.dx, ptr %i.dv, align 32, !tbaa !25
  %i.dy = getelementptr inbounds nuw i8, ptr %.072.i19, i64 288
  %40 = bitcast <2 x i64> %39 to <16 x i8>
  %41 = shufflevector <16 x i8> %40, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dz = zext <8 x i8> %41 to <8 x i32>
  store <8 x i32> %i.dz, ptr %i.dy, align 32, !tbaa !25
  %i.ea = getelementptr inbounds nuw i8, ptr %.072.i19, i64 320
  %42 = shufflevector <4 x i64> %26, <4 x i64> poison, <2 x i32> <i32 3, i32 poison>
  %i.eb = shufflevector <32 x i8> %i.db, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ec = zext <8 x i8> %i.eb to <8 x i32>
  store <8 x i32> %i.ec, ptr %i.ea, align 32, !tbaa !25
  %i.ed = getelementptr inbounds nuw i8, ptr %.072.i19, i64 352
  %43 = bitcast <2 x i64> %42 to <16 x i8>
  %44 = shufflevector <16 x i8> %43, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ee = zext <8 x i8> %44 to <8 x i32>
  store <8 x i32> %i.ee, ptr %i.ed, align 32, !tbaa !25
  %i.ef = add nuw nsw i32 %.071.i20, 1            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.072.i19, i64 384
  %i.eh = getelementptr inbounds nuw i8, ptr %.2.i18, i64 32 ; 3 uses
  %exitcond.not = icmp eq i32 %i.ef, 32
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !63

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.069.i27 = phi ptr [ %i.f, %.lr.ph ], [ %i.fr, %bb.g ] ; 7 uses
  %.074.i26 = phi i64 [ %i.ca, %.lr.ph ], [ %i.ft, %bb.g ]
  %.3.i25 = phi ptr [ %.176.i.lcssa, %.lr.ph ], [ %i.fs, %bb.g ] ; 2 uses
  %i.ei = load <2 x i64>, ptr %.3.i25, align 16, !tbaa !25 ; 2 uses
  %i.ej = bitcast <2 x i64> %i.ei to <8 x i16>
  %i.ek = lshr <8 x i16> %i.ej, splat (i16 4)
  %i.el = bitcast <8 x i16> %i.ek to <16 x i8>
  %i.em = and <16 x i8> %i.el, splat (i8 15)
  %i.en = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ce, <16 x i8> %i.em) ; 2 uses
  %i.eo = bitcast <2 x i64> %i.ei to <16 x i8>
  %i.ep = and <16 x i8> %i.eo, splat (i8 15)
  %i.eq = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ce, <16 x i8> %i.ep) ; 2 uses
  %i.er = shufflevector <16 x i8> %i.en, <16 x i8> %i.eq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.es = shufflevector <16 x i8> %i.en, <16 x i8> %i.eq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.et = shufflevector <16 x i8> %i.er, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 1, i32 16, i32 2, i32 3, i32 16, i32 4, i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16>
  %i.eu = shufflevector <16 x i8> %i.er, <16 x i8> %i.es, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <16 x i8> %i.eu, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 16, i32 2, i32 3, i32 16, i32 4, i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16, i32 10>
  %i.ew = shufflevector <16 x i8> %i.es, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16, i32 10, i32 11, i32 16, i32 12, i32 13, i32 16, i32 14, i32 15>
  %i.ex = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.et, <16 x i8> splat (i8 32)) ; 2 uses
  %i.ey = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.ev, <16 x i8> splat (i8 32)) ; 2 uses
  %i.ez = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.ew, <16 x i8> splat (i8 32)) ; 2 uses
  %i.fa = shufflevector <16 x i8> %i.ex, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fb = zext <8 x i8> %i.fa to <8 x i32>
  store <8 x i32> %i.fb, ptr %.069.i27, align 32, !tbaa !25
  %i.fc = getelementptr inbounds nuw i8, ptr %.069.i27, i64 32
  %i.fd = shufflevector <16 x i8> %i.ex, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fe = zext <8 x i8> %i.fd to <8 x i32>
  store <8 x i32> %i.fe, ptr %i.fc, align 32, !tbaa !25
  %i.ff = getelementptr inbounds nuw i8, ptr %.069.i27, i64 64
  %i.fg = shufflevector <16 x i8> %i.ey, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fh = zext <8 x i8> %i.fg to <8 x i32>
  store <8 x i32> %i.fh, ptr %i.ff, align 32, !tbaa !25
  %i.fi = getelementptr inbounds nuw i8, ptr %.069.i27, i64 96
  %i.fj = shufflevector <16 x i8> %i.ey, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fk = zext <8 x i8> %i.fj to <8 x i32>
  store <8 x i32> %i.fk, ptr %i.fi, align 32, !tbaa !25
  %i.fl = getelementptr inbounds nuw i8, ptr %.069.i27, i64 128
  %i.fm = shufflevector <16 x i8> %i.ez, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fn = zext <8 x i8> %i.fm to <8 x i32>
  store <8 x i32> %i.fn, ptr %i.fl, align 32, !tbaa !25
  %i.fo = getelementptr inbounds nuw i8, ptr %.069.i27, i64 160
  %i.fp = shufflevector <16 x i8> %i.ez, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fq = zext <8 x i8> %i.fp to <8 x i32>
  store <8 x i32> %i.fq, ptr %i.fo, align 32, !tbaa !25
  %i.fr = getelementptr inbounds nuw i8, ptr %.069.i27, i64 192 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.3.i25, i64 16 ; 2 uses
  %i.ft = add nsw i64 %.074.i26, -16              ; 4 uses
  %i.fu = icmp ugt i64 %i.ft, 15
  br i1 %i.fu, label %bb.g, label %._crit_edge28, !llvm.loop !64

._crit_edge28:                                    ; preds = %bb.g
  call void @llvm.x86.avx.vzeroall()
  %.not39 = icmp eq i64 %i.ft, 0
  br i1 %.not39, label %._crit_edge37, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %._crit_edge28.thread, %._crit_edge28
  %.069.i.lcssa58 = phi ptr [ %i.f, %._crit_edge28.thread ], [ %i.fr, %._crit_edge28 ] ; 2 uses
  %.074.i.lcssa57 = phi i64 [ %i.ca, %._crit_edge28.thread ], [ %i.ft, %._crit_edge28 ] ; 4 uses
  %.3.i.lcssa56 = phi ptr [ %.176.i.lcssa, %._crit_edge28.thread ], [ %i.fs, %._crit_edge28 ] ; 2 uses
  %xtraiter = and i64 %.074.i.lcssa57, 1
  %i.fv = icmp eq i64 %.074.i.lcssa57, 1
  br i1 %i.fv, label %.lr.ph36.epil.preheader, label %.lr.ph36.preheader.new

.lr.ph36.preheader.new:                           ; preds = %.lr.ph36.preheader
  %unroll_iter = and i64 %.074.i.lcssa57, 14
  br label %.lr.ph36

._crit_edge37.loopexit.unr-lcssa:                 ; preds = %.lr.ph36
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge37, label %.lr.ph36.epil.preheader

.lr.ph36.epil.preheader:                          ; preds = %._crit_edge37.loopexit.unr-lcssa, %.lr.ph36.preheader
  %.170.i33.epil.init = phi ptr [ %.069.i.lcssa58, %.lr.ph36.preheader ], [ %i.hv, %._crit_edge37.loopexit.unr-lcssa ] ; 4 uses
  %.4.i32.epil.init = phi ptr [ %.3.i.lcssa56, %.lr.ph36.preheader ], [ %i.hu, %._crit_edge37.loopexit.unr-lcssa ]
  %lcmp.mod77 = trunc i64 %.074.i.lcssa57 to i1
  call void @llvm.assume(i1 %lcmp.mod77)
  %i.fw = load i8, ptr %.4.i32.epil.init, align 1, !tbaa !25
  %i.fx = zext i8 %i.fw to i32                    ; 2 uses
  store i32 32, ptr %.170.i33.epil.init, align 4, !tbaa !67
  %i.fy = lshr i32 %i.fx, 4
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !25
  %i.gc = sext i8 %i.gb to i32
  %i.gd = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 4
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !67
  %i.ge = and i32 %i.fx, 15
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !25
  %i.gi = sext i8 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 8
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !67
  %i.gk = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 12
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %.lr.ph36.epil.preheader, %._crit_edge37.loopexit.unr-lcssa, %._crit_edge28
  %.170.i.lcssa = phi ptr [ %i.fr, %._crit_edge28 ], [ %i.hv, %._crit_edge37.loopexit.unr-lcssa ], [ %i.gk, %.lr.ph36.epil.preheader ]
  %i.gl = ptrtoint ptr %.170.i.lcssa to i64
  %i.gm = ptrtoint ptr %.1.i.lcssa to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = ashr exact i64 %i.gn, 2
  %i.gp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13basic_ostreamIwSt11char_traitsIwEE5writeEPKwl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %.1.i.lcssa, i64 noundef %i.go) ; 0 uses
  br label %_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IwEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit

.lr.ph36:                                         ; preds = %.lr.ph36, %.lr.ph36.preheader.new
  %.170.i33 = phi ptr [ %.069.i.lcssa58, %.lr.ph36.preheader.new ], [ %i.hv, %.lr.ph36 ] ; 7 uses
  %.4.i32 = phi ptr [ %.3.i.lcssa56, %.lr.ph36.preheader.new ], [ %i.hu, %.lr.ph36 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph36.preheader.new ], [ %niter.next.1, %.lr.ph36 ]
  %i.gq = load i8, ptr %.4.i32, align 1, !tbaa !25
  %i.gr = zext i8 %i.gq to i32                    ; 2 uses
  store i32 32, ptr %.170.i33, align 4, !tbaa !67
  %i.gs = lshr i32 %i.gr, 4
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !25
  %i.gw = sext i8 %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %.170.i33, i64 4
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !67
  %i.gy = and i32 %i.gr, 15
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !25
  %i.hc = sext i8 %i.hb to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %.170.i33, i64 8
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !67
  %i.he = getelementptr inbounds nuw i8, ptr %.4.i32, i64 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.170.i33, i64 12
  %i.hg = load i8, ptr %i.he, align 1, !tbaa !25
  %i.hh = zext i8 %i.hg to i32                    ; 2 uses
  store i32 32, ptr %i.hf, align 4, !tbaa !67
  %i.hi = lshr i32 %i.hh, 4
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !25
  %i.hm = sext i8 %i.hl to i32
  %i.hn = getelementptr inbounds nuw i8, ptr %.170.i33, i64 16
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !67
  %i.ho = and i32 %i.hh, 15
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !25
  %i.hs = sext i8 %i.hr to i32
  %i.ht = getelementptr inbounds nuw i8, ptr %.170.i33, i64 20
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !67
  %i.hu = getelementptr inbounds nuw i8, ptr %.4.i32, i64 2 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.170.i33, i64 24 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge37.loopexit.unr-lcssa, label %.lr.ph36, !llvm.loop !65

_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IwEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit: ; preds = %._crit_edge, %._crit_edge37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN5boost3log11v2_mt_posix3aux17dump_data_genericIwEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS7_EE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IwEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit
  ret void
}

declare void @_ZN5boost3log11v2_mt_posix3aux17dump_data_genericIwEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS7_EE(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost3log11v2_mt_posix3aux21dump_data_char16_avx2EPKvmRSt13basic_ostreamIDsSt11char_traitsIDsEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3104 x i16], align 16            ; 4 uses
  %i.b = icmp ugt i64 %1, 31
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 16
  %i.e = sub nuw nsw i64 32, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 6144
  %i.i = load ptr, ptr %2, align 8, !tbaa !13
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !24
  %i.o = lshr i32 %i.n, 14
  %.lobit = and i32 %i.o, 1
  %i.p = zext nneg i32 %.lobit to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr @_ZN5boost3log11v2_mt_posix3aux16g_hex_char_tableE, i64 %i.p ; 7 uses
  %i.r = load <2 x i64>, ptr %i.q, align 16, !tbaa !25 ; 2 uses
  %i.s = shufflevector <2 x i64> %i.r, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5boost3log11v2_mt_posix3aux21dump_data_char16_avx2EPKvmRSt13basic_ostreamIDsSt11char_traitsIDsEE:bb.a
  %.3.i25 = phi ptr [ %.176.i.lcssa, %.lr.ph ], [ %i.ei, %bb.g ] ; 2 uses
  %i.dk = load <2 x i64>, ptr %.3.i25, align 16, !tbaa !25 ; 2 uses
  %i.dl = bitcast <2 x i64> %i.dk to <8 x i16>
  %i.dm = lshr <8 x i16> %i.dl, splat (i16 4)
  %i.dn = bitcast <8 x i16> %i.dm to <16 x i8>
  %i.do = and <16 x i8> %i.dn, splat (i8 15)
  %i.dp = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bs, <16 x i8> %i.do) ; 2 uses
  %i.dq = bitcast <2 x i64> %i.dk to <16 x i8>
  %i.dr = and <16 x i8> %i.dq, splat (i8 15)
  %i.ds = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bs, <16 x i8> %i.dr) ; 2 uses
  %i.dt = shufflevector <16 x i8> %i.dp, <16 x i8> %i.ds, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.du = shufflevector <16 x i8> %i.dp, <16 x i8> %i.ds, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dv = shufflevector <16 x i8> %i.dt, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 1, i32 16, i32 2, i32 3, i32 16, i32 4, i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16>
  %i.dw = shufflevector <16 x i8> %i.dt, <16 x i8> %i.du, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dx = shufflevector <16 x i8> %i.dw, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 16, i32 2, i32 3, i32 16, i32 4, i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16, i32 10>
  %i.dy = shufflevector <16 x i8> %i.du, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16, i32 10, i32 11, i32 16, i32 12, i32 13, i32 16, i32 14, i32 15>
  %i.dz = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.dv, <16 x i8> splat (i8 32))
  %i.ea = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.dx, <16 x i8> splat (i8 32))
  %i.eb = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.dy, <16 x i8> splat (i8 32))
  %i.ec = zext <16 x i8> %i.dz to <16 x i16>
  store <16 x i16> %i.ec, ptr %.069.i27, align 32, !tbaa !25
  %i.ed = getelementptr inbounds nuw i8, ptr %.069.i27, i64 32
  %i.ee = zext <16 x i8> %i.ea to <16 x i16>
  store <16 x i16> %i.ee, ptr %i.ed, align 32, !tbaa !25
  %i.ef = getelementptr inbounds nuw i8, ptr %.069.i27, i64 64
  %i.eg = zext <16 x i8> %i.eb to <16 x i16>
  store <16 x i16> %i.eg, ptr %i.ef, align 32, !tbaa !25
  %i.eh = getelementptr inbounds nuw i8, ptr %.069.i27, i64 96 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.3.i25, i64 16 ; 2 uses
  %i.ej = add nsw i64 %.074.i26, -16              ; 4 uses
  %i.ek = icmp ugt i64 %i.ej, 15
  br i1 %i.ek, label %bb.g, label %._crit_edge28, !llvm.loop !70

._crit_edge28:                                    ; preds = %bb.g
  call void @llvm.x86.avx.vzeroall()
  %.not39 = icmp eq i64 %i.ej, 0
  br i1 %.not39, label %._crit_edge37, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %._crit_edge28.thread, %._crit_edge28
  %.069.i.lcssa58 = phi ptr [ %i.f, %._crit_edge28.thread ], [ %i.eh, %._crit_edge28 ] ; 2 uses
  %.074.i.lcssa57 = phi i64 [ %i.bo, %._crit_edge28.thread ], [ %i.ej, %._crit_edge28 ] ; 4 uses
  %.3.i.lcssa56 = phi ptr [ %.176.i.lcssa, %._crit_edge28.thread ], [ %i.ei, %._crit_edge28 ] ; 2 uses
  %xtraiter = and i64 %.074.i.lcssa57, 1
  %i.el = icmp eq i64 %.074.i.lcssa57, 1
  br i1 %i.el, label %.lr.ph36.epil.preheader, label %.lr.ph36.preheader.new

.lr.ph36.preheader.new:                           ; preds = %.lr.ph36.preheader
  %unroll_iter = and i64 %.074.i.lcssa57, 14
  br label %.lr.ph36

._crit_edge37.loopexit.unr-lcssa:                 ; preds = %.lr.ph36
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge37, label %.lr.ph36.epil.preheader

.lr.ph36.epil.preheader:                          ; preds = %._crit_edge37.loopexit.unr-lcssa, %.lr.ph36.preheader
  %.170.i33.epil.init = phi ptr [ %.069.i.lcssa58, %.lr.ph36.preheader ], [ %i.gl, %._crit_edge37.loopexit.unr-lcssa ] ; 4 uses
  %.4.i32.epil.init = phi ptr [ %.3.i.lcssa56, %.lr.ph36.preheader ], [ %i.gk, %._crit_edge37.loopexit.unr-lcssa ]
  %lcmp.mod77 = trunc i64 %.074.i.lcssa57 to i1
  call void @llvm.assume(i1 %lcmp.mod77)
  %i.em = load i8, ptr %.4.i32.epil.init, align 1, !tbaa !25
  %i.en = zext i8 %i.em to i32                    ; 2 uses
  store i16 32, ptr %.170.i33.epil.init, align 2, !tbaa !72
  %i.eo = lshr i32 %i.en, 4
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !25
  %i.es = sext i8 %i.er to i16
  %i.et = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 2
  store i16 %i.es, ptr %i.et, align 2, !tbaa !72
  %i.eu = and i32 %i.en, 15
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !25
  %i.ey = sext i8 %i.ex to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 4
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !72
  %i.fa = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 6
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %.lr.ph36.epil.preheader, %._crit_edge37.loopexit.unr-lcssa, %._crit_edge28
  %.170.i.lcssa = phi ptr [ %i.eh, %._crit_edge28 ], [ %i.gl, %._crit_edge37.loopexit.unr-lcssa ], [ %i.fa, %.lr.ph36.epil.preheader ]
  %i.fb = ptrtoint ptr %.170.i.lcssa to i64
  %i.fc = ptrtoint ptr %.1.i.lcssa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = ashr exact i64 %i.fd, 1
  %i.ff = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13basic_ostreamIDsSt11char_traitsIDsEE5writeEPKDsl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %.1.i.lcssa, i64 noundef %i.fe) ; 0 uses
  br label %_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IDsEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit

.lr.ph36:                                         ; preds = %.lr.ph36, %.lr.ph36.preheader.new
  %.170.i33 = phi ptr [ %.069.i.lcssa58, %.lr.ph36.preheader.new ], [ %i.gl, %.lr.ph36 ] ; 7 uses
  %.4.i32 = phi ptr [ %.3.i.lcssa56, %.lr.ph36.preheader.new ], [ %i.gk, %.lr.ph36 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph36.preheader.new ], [ %niter.next.1, %.lr.ph36 ]
  %i.fg = load i8, ptr %.4.i32, align 1, !tbaa !25
  %i.fh = zext i8 %i.fg to i32                    ; 2 uses
  store i16 32, ptr %.170.i33, align 2, !tbaa !72
  %i.fi = lshr i32 %i.fh, 4
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !25
  %i.fm = sext i8 %i.fl to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %.170.i33, i64 2
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !72
  %i.fo = and i32 %i.fh, 15
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !25
  %i.fs = sext i8 %i.fr to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %.170.i33, i64 4
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !72
  %i.fu = getelementptr inbounds nuw i8, ptr %.4.i32, i64 1
  %i.fv = getelementptr inbounds nuw i8, ptr %.170.i33, i64 6
  %i.fw = load i8, ptr %i.fu, align 1, !tbaa !25
  %i.fx = zext i8 %i.fw to i32                    ; 2 uses
  store i16 32, ptr %i.fv, align 2, !tbaa !72
  %i.fy = lshr i32 %i.fx, 4
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !25
  %i.gc = sext i8 %i.gb to i16
  %i.gd = getelementptr inbounds nuw i8, ptr %.170.i33, i64 8
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !72
  %i.ge = and i32 %i.fx, 15
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !25
  %i.gi = sext i8 %i.gh to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %.170.i33, i64 10
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !72
  %i.gk = getelementptr inbounds nuw i8, ptr %.4.i32, i64 2 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.170.i33, i64 12 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge37.loopexit.unr-lcssa, label %.lr.ph36, !llvm.loop !71

_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IDsEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit: ; preds = %._crit_edge, %._crit_edge37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN5boost3log11v2_mt_posix3aux17dump_data_genericIDsEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS7_EE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IDsEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit
  ret void
}

declare void @_ZN5boost3log11v2_mt_posix3aux17dump_data_genericIDsEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS7_EE(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost3log11v2_mt_posix3aux21dump_data_char32_avx2EPKvmRSt13basic_ostreamIDiSt11char_traitsIDiEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3104 x i32], align 16            ; 4 uses
  %i.b = icmp ugt i64 %1, 31
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 16
  %i.e = sub nuw nsw i64 32, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12288
  %i.i = load ptr, ptr %2, align 8, !tbaa !13
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !24
  %i.o = lshr i32 %i.n, 14
  %.lobit = and i32 %i.o, 1
  %i.p = zext nneg i32 %.lobit to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr @_ZN5boost3log11v2_mt_posix3aux16g_hex_char_tableE, i64 %i.p ; 7 uses
  %i.r = load <2 x i64>, ptr %i.q, align 16, !tbaa !25 ; 2 uses
  %i.s = shufflevector <2 x i64> %i.r, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.t = icmp eq i64 %1, 32
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 0, %i.u
  %i.w = and i64 %i.v, 31
  %i.x = select i1 %i.t, i64 32, i64 %i.w         ; 4 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load <4 x i64>, ptr %0, align 1, !tbaa !25 ; 2 uses
  %i.z = bitcast <4 x i64> %i.y to <16 x i16>
  %i.aa = lshr <16 x i16> %i.z, splat (i16 4)
  %i.ab = bitcast <4 x i64> %i.s to <32 x i8>     ; 2 uses
  %i.ac = bitcast <16 x i16> %i.aa to <32 x i8>
  %i.ad = and <32 x i8> %i.ac, splat (i8 15)
  %i.ae = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.ab, <32 x i8> %i.ad) ; 3 uses
  %i.af = bitcast <4 x i64> %i.y to <32 x i8>
  %i.ag = and <32 x i8> %i.af, splat (i8 15)
  %i.ah = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.ab, <32 x i8> %i.ag) ; 3 uses
  %i.ai = shufflevector <32 x i8> %i.ae, <32 x i8> %i.ah, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = shufflevector <32 x i8> %i.ae, <32 x i8> %i.ah, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.ak = shufflevector <32 x i8> %i.ai, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 0, i32 1, i32 32, i32 2, i32 3, i32 32, i32 4, i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 48, i32 16, i32 17, i32 48, i32 18, i32 19, i32 48, i32 20, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48>
  %i.al = shufflevector <32 x i8> %i.aj, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 10, i32 11, i32 32, i32 12, i32 13, i32 32, i32 14, i32 15, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48, i32 26, i32 27, i32 48, i32 28, i32 29, i32 48, i32 30, i32 31>
  %i.am = shufflevector <32 x i8> %i.ae, <32 x i8> %i.ah, <32 x i32> <i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = shufflevector <32 x i8> %i.am, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 32, i32 2, i32 3, i32 32, i32 4, i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 10, i32 16, i32 17, i32 48, i32 18, i32 19, i32 48, i32 20, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48, i32 26>
  %i.ao = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.ak, <32 x i8> splat (i8 32)) ; 3 uses
  %3 = bitcast <32 x i8> %i.ao to <4 x i64>       ; 2 uses
  %i.ap = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.an, <32 x i8> splat (i8 32)) ; 3 uses
  %4 = bitcast <32 x i8> %i.ap to <4 x i64>       ; 2 uses
  %i.aq = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.al, <32 x i8> splat (i8 32)) ; 3 uses
  %5 = bitcast <32 x i8> %i.aq to <4 x i64>       ; 2 uses
  %6 = shufflevector <4 x i64> %3, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ar = shufflevector <32 x i8> %i.ao, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.as = zext <8 x i8> %i.ar to <8 x i32>
  store <8 x i32> %i.as, ptr %i.f, align 32, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %7 = bitcast <2 x i64> %6 to <16 x i8>
  %8 = shufflevector <16 x i8> %7, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.au = zext <8 x i8> %8 to <8 x i32>
  store <8 x i32> %i.au, ptr %i.at, align 32, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %9 = shufflevector <4 x i64> %4, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.aw = shufflevector <32 x i8> %i.ap, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ax = zext <8 x i8> %i.aw to <8 x i32>
  store <8 x i32> %i.ax, ptr %i.av, align 32, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %10 = bitcast <2 x i64> %9 to <16 x i8>
  %11 = shufflevector <16 x i8> %10, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.az = zext <8 x i8> %11 to <8 x i32>
  store <8 x i32> %i.az, ptr %i.ay, align 32, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %12 = shufflevector <4 x i64> %5, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bb = shufflevector <32 x i8> %i.aq, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bc = zext <8 x i8> %i.bb to <8 x i32>
  store <8 x i32> %i.bc, ptr %i.ba, align 32, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %13 = bitcast <2 x i64> %12 to <16 x i8>
  %14 = shufflevector <16 x i8> %13, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.be = zext <8 x i8> %14 to <8 x i32>
  store <8 x i32> %i.be, ptr %i.bd, align 32, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %15 = shufflevector <4 x i64> %3, <4 x i64> poison, <2 x i32> <i32 3, i32 poison>
  %i.bg = shufflevector <32 x i8> %i.ao, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bh = zext <8 x i8> %i.bg to <8 x i32>
  store <8 x i32> %i.bh, ptr %i.bf, align 32, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %16 = bitcast <2 x i64> %15 to <16 x i8>
  %17 = shufflevector <16 x i8> %16, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bj = zext <8 x i8> %17 to <8 x i32>
  store <8 x i32> %i.bj, ptr %i.bi, align 32, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %18 = shufflevector <4 x i64> %4, <4 x i64> poison, <2 x i32> <i32 3, i32 poison>
  %i.bl = shufflevector <32 x i8> %i.ap, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bm = zext <8 x i8> %i.bl to <8 x i32>
  store <8 x i32> %i.bm, ptr %i.bk, align 32, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %19 = bitcast <2 x i64> %18 to <16 x i8>
  %20 = shufflevector <16 x i8> %19, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bo = zext <8 x i8> %20 to <8 x i32>
  store <8 x i32> %i.bo, ptr %i.bn, align 32, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %21 = shufflevector <4 x i64> %5, <4 x i64> poison, <2 x i32> <i32 3, i32 poison>
  %i.bq = shufflevector <32 x i8> %i.aq, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.br = zext <8 x i8> %i.bq to <8 x i32>
  store <8 x i32> %i.br, ptr %i.bp, align 32, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %22 = bitcast <2 x i64> %21 to <16 x i8>
  %23 = shufflevector <16 x i8> %22, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = zext <8 x i8> %23 to <8 x i32>
  store <8 x i32> %i.bt, ptr %i.bs, align 32, !tbaa !25
  call void @llvm.x86.avx.vzeroall()
  %i.bu = mul nuw nsw i64 %i.x, 3
  %i.bv = add nsw i64 %i.bu, -1
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13basic_ostreamIDiSt11char_traitsIDiEE5writeEPKDil(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.g, i64 noundef %i.bv) ; 0 uses
  %i.bx = sub nuw i64 %1, %i.x
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.075.i = phi ptr [ %i.by, %bb.c ], [ %0, %bb.b ] ; 2 uses
  %.068.i = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %.0.i = phi i64 [ %i.bx, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %i.bz = lshr i64 %.0.i, 10                      ; 2 uses
  %i.ca = and i64 %.0.i, 1023                     ; 4 uses
  %.not = icmp eq i64 %i.bz, 0
  br i1 %.not, label %._crit_edge, label %.preheader17.lr.ph

.preheader17.lr.ph:                               ; preds = %bb.d
  %i.cb = bitcast <4 x i64> %i.s to <32 x i8>     ; 2 uses
  %i.cc = ptrtoint ptr %i.h to i64
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.lr.ph, %bb.e
  %.1.i23 = phi ptr [ %.068.i, %.preheader17.lr.ph ], [ %i.f, %bb.e ] ; 2 uses
  %.073.i22 = phi i64 [ 0, %.preheader17.lr.ph ], [ %i.cj, %bb.e ]
  %.176.i21 = phi ptr [ %.075.i, %.preheader17.lr.ph ], [ %i.eh, %bb.e ]
  br label %bb.f

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.176.i.lcssa = phi ptr [ %.075.i, %bb.d ], [ %i.eh, %bb.e ] ; 2 uses
  %.1.i.lcssa = phi ptr [ %.068.i, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %.not79.i = icmp eq i64 %i.ca, 0
  br i1 %.not79.i, label %_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IDiEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit, label %.preheader, !prof !26

.preheader:                                       ; preds = %._crit_edge
  %i.cd = icmp samesign ugt i64 %i.ca, 15
  br i1 %i.cd, label %.lr.ph, label %._crit_edge28.thread

._crit_edge28.thread:                             ; preds = %.preheader
  call void @llvm.x86.avx.vzeroall()
  br label %.lr.ph36.preheader

.lr.ph:                                           ; preds = %.preheader
  %i.ce = bitcast <2 x i64> %i.r to <16 x i8>     ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.f
  call void @llvm.x86.avx.vzeroall()
  %i.cf = ptrtoint ptr %.1.i23 to i64
  %i.cg = sub i64 %i.cc, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13basic_ostreamIDiSt11char_traitsIDiEE5writeEPKDil(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %.1.i23, i64 noundef %i.ch) ; 0 uses
  %i.cj = add nuw nsw i64 %.073.i22, 1            ; 2 uses
  %exitcond44.not = icmp eq i64 %i.cj, %i.bz
  br i1 %exitcond44.not, label %._crit_edge, label %.preheader17, !llvm.loop !73

bb.f:                                             ; preds = %.preheader17, %bb.f
  %.071.i20 = phi i32 [ 0, %.preheader17 ], [ %i.ef, %bb.f ]
  %.072.i19 = phi ptr [ %i.f, %.preheader17 ], [ %i.eg, %bb.f ] ; 13 uses
  %.2.i18 = phi ptr [ %.176.i21, %.preheader17 ], [ %i.eh, %bb.f ] ; 2 uses
  %i.ck = load <4 x i64>, ptr %.2.i18, align 32, !tbaa !25 ; 2 uses
  %i.cl = bitcast <4 x i64> %i.ck to <16 x i16>
  %i.cm = lshr <16 x i16> %i.cl, splat (i16 4)
  %i.cn = bitcast <16 x i16> %i.cm to <32 x i8>
  %i.co = and <32 x i8> %i.cn, splat (i8 15)
  %i.cp = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.cb, <32 x i8> %i.co) ; 3 uses
  %i.cq = bitcast <4 x i64> %i.ck to <32 x i8>
  %i.cr = and <32 x i8> %i.cq, splat (i8 15)
  %i.cs = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.cb, <32 x i8> %i.cr) ; 3 uses
  %i.ct = shufflevector <32 x i8> %i.cp, <32 x i8> %i.cs, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cu = shufflevector <32 x i8> %i.cp, <32 x i8> %i.cs, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.cv = shufflevector <32 x i8> %i.ct, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 0, i32 1, i32 32, i32 2, i32 3, i32 32, i32 4, i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 48, i32 16, i32 17, i32 48, i32 18, i32 19, i32 48, i32 20, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48>
  %i.cw = shufflevector <32 x i8> %i.cu, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 10, i32 11, i32 32, i32 12, i32 13, i32 32, i32 14, i32 15, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48, i32 26, i32 27, i32 48, i32 28, i32 29, i32 48, i32 30, i32 31>
  %i.cx = shufflevector <32 x i8> %i.cp, <32 x i8> %i.cs, <32 x i32> <i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cy = shufflevector <32 x i8> %i.cx, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 32, i32 2, i32 3, i32 32, i32 4, i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 10, i32 16, i32 17, i32 48, i32 18, i32 19, i32 48, i32 20, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48, i32 26>
  %i.cz = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.cv, <32 x i8> splat (i8 32)) ; 3 uses
  %24 = bitcast <32 x i8> %i.cz to <4 x i64>      ; 2 uses
  %i.da = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.cy, <32 x i8> splat (i8 32)) ; 3 uses
  %25 = bitcast <32 x i8> %i.da to <4 x i64>      ; 2 uses
  %i.db = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.cw, <32 x i8> splat (i8 32)) ; 3 uses
  %26 = bitcast <32 x i8> %i.db to <4 x i64>      ; 2 uses
  %27 = shufflevector <4 x i64> %24, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.dc = shufflevector <32 x i8> %i.cz, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dd = zext <8 x i8> %i.dc to <8 x i32>
  store <8 x i32> %i.dd, ptr %.072.i19, align 32, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %.072.i19, i64 32
  %28 = bitcast <2 x i64> %27 to <16 x i8>
  %29 = shufflevector <16 x i8> %28, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.df = zext <8 x i8> %29 to <8 x i32>
  store <8 x i32> %i.df, ptr %i.de, align 32, !tbaa !25
  %i.dg = getelementptr inbounds nuw i8, ptr %.072.i19, i64 64
  %30 = shufflevector <4 x i64> %25, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.dh = shufflevector <32 x i8> %i.da, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.di = zext <8 x i8> %i.dh to <8 x i32>
  store <8 x i32> %i.di, ptr %i.dg, align 32, !tbaa !25
  %i.dj = getelementptr inbounds nuw i8, ptr %.072.i19, i64 96
  %31 = bitcast <2 x i64> %30 to <16 x i8>
  %32 = shufflevector <16 x i8> %31, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dk = zext <8 x i8> %32 to <8 x i32>
  store <8 x i32> %i.dk, ptr %i.dj, align 32, !tbaa !25
  %i.dl = getelementptr inbounds nuw i8, ptr %.072.i19, i64 128
  %33 = shufflevector <4 x i64> %26, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.dm = shufflevector <32 x i8> %i.db, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dn = zext <8 x i8> %i.dm to <8 x i32>
  store <8 x i32> %i.dn, ptr %i.dl, align 32, !tbaa !25
  %i.do = getelementptr inbounds nuw i8, ptr %.072.i19, i64 160
  %34 = bitcast <2 x i64> %33 to <16 x i8>
  %35 = shufflevector <16 x i8> %34, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dp = zext <8 x i8> %35 to <8 x i32>
  store <8 x i32> %i.dp, ptr %i.do, align 32, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %.072.i19, i64 192
  %36 = shufflevector <4 x i64> %24, <4 x i64> poison, <2 x i32> <i32 3, i32 poison>
  %i.dr = shufflevector <32 x i8> %i.cz, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ds = zext <8 x i8> %i.dr to <8 x i32>
  store <8 x i32> %i.ds, ptr %i.dq, align 32, !tbaa !25
  %i.dt = getelementptr inbounds nuw i8, ptr %.072.i19, i64 224
  %37 = bitcast <2 x i64> %36 to <16 x i8>
  %38 = shufflevector <16 x i8> %37, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.du = zext <8 x i8> %38 to <8 x i32>
  store <8 x i32> %i.du, ptr %i.dt, align 32, !tbaa !25
  %i.dv = getelementptr inbounds nuw i8, ptr %.072.i19, i64 256
  %39 = shufflevector <4 x i64> %25, <4 x i64> poison, <2 x i32> <i32 3, i32 poison>
  %i.dw = shufflevector <32 x i8> %i.da, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dx = zext <8 x i8> %i.dw to <8 x i32>
  store <8 x i32> %i.dx, ptr %i.dv, align 32, !tbaa !25
  %i.dy = getelementptr inbounds nuw i8, ptr %.072.i19, i64 288
  %40 = bitcast <2 x i64> %39 to <16 x i8>
  %41 = shufflevector <16 x i8> %40, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dz = zext <8 x i8> %41 to <8 x i32>
  store <8 x i32> %i.dz, ptr %i.dy, align 32, !tbaa !25
  %i.ea = getelementptr inbounds nuw i8, ptr %.072.i19, i64 320
  %42 = shufflevector <4 x i64> %26, <4 x i64> poison, <2 x i32> <i32 3, i32 poison>
  %i.eb = shufflevector <32 x i8> %i.db, <32 x i8> poison, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ec = zext <8 x i8> %i.eb to <8 x i32>
  store <8 x i32> %i.ec, ptr %i.ea, align 32, !tbaa !25
  %i.ed = getelementptr inbounds nuw i8, ptr %.072.i19, i64 352
  %43 = bitcast <2 x i64> %42 to <16 x i8>
  %44 = shufflevector <16 x i8> %43, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ee = zext <8 x i8> %44 to <8 x i32>
  store <8 x i32> %i.ee, ptr %i.ed, align 32, !tbaa !25
  %i.ef = add nuw nsw i32 %.071.i20, 1            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.072.i19, i64 384
  %i.eh = getelementptr inbounds nuw i8, ptr %.2.i18, i64 32 ; 3 uses
  %exitcond.not = icmp eq i32 %i.ef, 32
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !74

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.069.i27 = phi ptr [ %i.f, %.lr.ph ], [ %i.fr, %bb.g ] ; 7 uses
  %.074.i26 = phi i64 [ %i.ca, %.lr.ph ], [ %i.ft, %bb.g ]
  %.3.i25 = phi ptr [ %.176.i.lcssa, %.lr.ph ], [ %i.fs, %bb.g ] ; 2 uses
  %i.ei = load <2 x i64>, ptr %.3.i25, align 16, !tbaa !25 ; 2 uses
  %i.ej = bitcast <2 x i64> %i.ei to <8 x i16>
  %i.ek = lshr <8 x i16> %i.ej, splat (i16 4)
  %i.el = bitcast <8 x i16> %i.ek to <16 x i8>
  %i.em = and <16 x i8> %i.el, splat (i8 15)
  %i.en = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ce, <16 x i8> %i.em) ; 2 uses
  %i.eo = bitcast <2 x i64> %i.ei to <16 x i8>
  %i.ep = and <16 x i8> %i.eo, splat (i8 15)
  %i.eq = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ce, <16 x i8> %i.ep) ; 2 uses
  %i.er = shufflevector <16 x i8> %i.en, <16 x i8> %i.eq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.es = shufflevector <16 x i8> %i.en, <16 x i8> %i.eq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.et = shufflevector <16 x i8> %i.er, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 1, i32 16, i32 2, i32 3, i32 16, i32 4, i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16>
  %i.eu = shufflevector <16 x i8> %i.er, <16 x i8> %i.es, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <16 x i8> %i.eu, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 16, i32 2, i32 3, i32 16, i32 4, i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16, i32 10>
  %i.ew = shufflevector <16 x i8> %i.es, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16, i32 10, i32 11, i32 16, i32 12, i32 13, i32 16, i32 14, i32 15>
  %i.ex = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.et, <16 x i8> splat (i8 32)) ; 2 uses
  %i.ey = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.ev, <16 x i8> splat (i8 32)) ; 2 uses
  %i.ez = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.ew, <16 x i8> splat (i8 32)) ; 2 uses
  %i.fa = shufflevector <16 x i8> %i.ex, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fb = zext <8 x i8> %i.fa to <8 x i32>
  store <8 x i32> %i.fb, ptr %.069.i27, align 32, !tbaa !25
  %i.fc = getelementptr inbounds nuw i8, ptr %.069.i27, i64 32
  %i.fd = shufflevector <16 x i8> %i.ex, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fe = zext <8 x i8> %i.fd to <8 x i32>
  store <8 x i32> %i.fe, ptr %i.fc, align 32, !tbaa !25
  %i.ff = getelementptr inbounds nuw i8, ptr %.069.i27, i64 64
  %i.fg = shufflevector <16 x i8> %i.ey, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fh = zext <8 x i8> %i.fg to <8 x i32>
  store <8 x i32> %i.fh, ptr %i.ff, align 32, !tbaa !25
  %i.fi = getelementptr inbounds nuw i8, ptr %.069.i27, i64 96
  %i.fj = shufflevector <16 x i8> %i.ey, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fk = zext <8 x i8> %i.fj to <8 x i32>
  store <8 x i32> %i.fk, ptr %i.fi, align 32, !tbaa !25
  %i.fl = getelementptr inbounds nuw i8, ptr %.069.i27, i64 128
  %i.fm = shufflevector <16 x i8> %i.ez, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fn = zext <8 x i8> %i.fm to <8 x i32>
  store <8 x i32> %i.fn, ptr %i.fl, align 32, !tbaa !25
  %i.fo = getelementptr inbounds nuw i8, ptr %.069.i27, i64 160
  %i.fp = shufflevector <16 x i8> %i.ez, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fq = zext <8 x i8> %i.fp to <8 x i32>
  store <8 x i32> %i.fq, ptr %i.fo, align 32, !tbaa !25
  %i.fr = getelementptr inbounds nuw i8, ptr %.069.i27, i64 192 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.3.i25, i64 16 ; 2 uses
  %i.ft = add nsw i64 %.074.i26, -16              ; 4 uses
  %i.fu = icmp ugt i64 %i.ft, 15
  br i1 %i.fu, label %bb.g, label %._crit_edge28, !llvm.loop !75

._crit_edge28:                                    ; preds = %bb.g
  call void @llvm.x86.avx.vzeroall()
  %.not39 = icmp eq i64 %i.ft, 0
  br i1 %.not39, label %._crit_edge37, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %._crit_edge28.thread, %._crit_edge28
  %.069.i.lcssa58 = phi ptr [ %i.f, %._crit_edge28.thread ], [ %i.fr, %._crit_edge28 ] ; 2 uses
  %.074.i.lcssa57 = phi i64 [ %i.ca, %._crit_edge28.thread ], [ %i.ft, %._crit_edge28 ] ; 4 uses
  %.3.i.lcssa56 = phi ptr [ %.176.i.lcssa, %._crit_edge28.thread ], [ %i.fs, %._crit_edge28 ] ; 2 uses
  %xtraiter = and i64 %.074.i.lcssa57, 1
  %i.fv = icmp eq i64 %.074.i.lcssa57, 1
  br i1 %i.fv, label %.lr.ph36.epil.preheader, label %.lr.ph36.preheader.new

.lr.ph36.preheader.new:                           ; preds = %.lr.ph36.preheader
  %unroll_iter = and i64 %.074.i.lcssa57, 14
  br label %.lr.ph36

._crit_edge37.loopexit.unr-lcssa:                 ; preds = %.lr.ph36
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge37, label %.lr.ph36.epil.preheader

.lr.ph36.epil.preheader:                          ; preds = %._crit_edge37.loopexit.unr-lcssa, %.lr.ph36.preheader
  %.170.i33.epil.init = phi ptr [ %.069.i.lcssa58, %.lr.ph36.preheader ], [ %i.hv, %._crit_edge37.loopexit.unr-lcssa ] ; 4 uses
  %.4.i32.epil.init = phi ptr [ %.3.i.lcssa56, %.lr.ph36.preheader ], [ %i.hu, %._crit_edge37.loopexit.unr-lcssa ]
  %lcmp.mod77 = trunc i64 %.074.i.lcssa57 to i1
  call void @llvm.assume(i1 %lcmp.mod77)
  %i.fw = load i8, ptr %.4.i32.epil.init, align 1, !tbaa !25
  %i.fx = zext i8 %i.fw to i32                    ; 2 uses
  store i32 32, ptr %.170.i33.epil.init, align 4, !tbaa !77
  %i.fy = lshr i32 %i.fx, 4
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !25
  %i.gc = sext i8 %i.gb to i32
  %i.gd = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 4
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !77
  %i.ge = and i32 %i.fx, 15
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !25
  %i.gi = sext i8 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 8
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !77
  %i.gk = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 12
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %.lr.ph36.epil.preheader, %._crit_edge37.loopexit.unr-lcssa, %._crit_edge28
  %.170.i.lcssa = phi ptr [ %i.fr, %._crit_edge28 ], [ %i.hv, %._crit_edge37.loopexit.unr-lcssa ], [ %i.gk, %.lr.ph36.epil.preheader ]
  %i.gl = ptrtoint ptr %.170.i.lcssa to i64
  %i.gm = ptrtoint ptr %.1.i.lcssa to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = ashr exact i64 %i.gn, 2
  %i.gp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13basic_ostreamIDiSt11char_traitsIDiEE5writeEPKDil(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %.1.i.lcssa, i64 noundef %i.go) ; 0 uses
  br label %_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IDiEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit

.lr.ph36:                                         ; preds = %.lr.ph36, %.lr.ph36.preheader.new
  %.170.i33 = phi ptr [ %.069.i.lcssa58, %.lr.ph36.preheader.new ], [ %i.hv, %.lr.ph36 ] ; 7 uses
  %.4.i32 = phi ptr [ %.3.i.lcssa56, %.lr.ph36.preheader.new ], [ %i.hu, %.lr.ph36 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph36.preheader.new ], [ %niter.next.1, %.lr.ph36 ]
  %i.gq = load i8, ptr %.4.i32, align 1, !tbaa !25
  %i.gr = zext i8 %i.gq to i32                    ; 2 uses
  store i32 32, ptr %.170.i33, align 4, !tbaa !77
  %i.gs = lshr i32 %i.gr, 4
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !25
  %i.gw = sext i8 %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %.170.i33, i64 4
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !77
  %i.gy = and i32 %i.gr, 15
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !25
  %i.hc = sext i8 %i.hb to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %.170.i33, i64 8
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !77
  %i.he = getelementptr inbounds nuw i8, ptr %.4.i32, i64 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.170.i33, i64 12
  %i.hg = load i8, ptr %i.he, align 1, !tbaa !25
  %i.hh = zext i8 %i.hg to i32                    ; 2 uses
  store i32 32, ptr %i.hf, align 4, !tbaa !77
  %i.hi = lshr i32 %i.hh, 4
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !25
  %i.hm = sext i8 %i.hl to i32
  %i.hn = getelementptr inbounds nuw i8, ptr %.170.i33, i64 16
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !77
  %i.ho = and i32 %i.hh, 15
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !25
  %i.hs = sext i8 %i.hr to i32
  %i.ht = getelementptr inbounds nuw i8, ptr %.170.i33, i64 20
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !77
  %i.hu = getelementptr inbounds nuw i8, ptr %.4.i32, i64 2 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.170.i33, i64 24 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge37.loopexit.unr-lcssa, label %.lr.ph36, !llvm.loop !76

_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IDiEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit: ; preds = %._crit_edge, %._crit_edge37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN5boost3log11v2_mt_posix3aux17dump_data_genericIDiEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS7_EE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IDiEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit
  ret void
}

declare void @_ZN5boost3log11v2_mt_posix3aux17dump_data_genericIDiEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS7_EE(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.umax.v32i8(<32 x i8>, <32 x i8>) #4

; Function Attrs: nounwind
declare void @llvm.x86.avx.vzeroall() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13basic_ostreamIwSt11char_traitsIwEE5writeEPKwl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13basic_ostreamIDsSt11char_traitsIDsEE5writeEPKDsl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
