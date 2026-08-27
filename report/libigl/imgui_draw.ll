Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 283
begin_hunk_0_@_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt:bb.a
  %i.sz = zext i8 %i.sy to i64                    ; 2 uses
  %i.ta = or disjoint i64 %i.ss, %i.sz
  %i.tb = or disjoint i64 %i.ta, %i.sw
  %i.tc = xor i64 %i.tb, -1
  %i.td = getelementptr inbounds i8, ptr %.lcssa.sink.i.i62.i, i64 %i.tc ; 7 uses
  %i.te = icmp ult ptr %i.td, %i.h
  br i1 %i.te, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %iter.check303

iter.check303:                                    ; preds = %bb.ae
  %min.iters.check286 = icmp samesign ult i32 %i.sk, 3
  br i1 %min.iters.check286, label %.preheader.i84.i.i.preheader, label %vector.memcheck284

vector.memcheck284:                               ; preds = %iter.check303
  %i.tf = or disjoint i64 %i.ss, %i.sw
  %i.tg = or disjoint i64 %i.tf, 1
  %i.th = add nuw nsw i64 %i.tg, %i.sz
  %diff.check285 = icmp samesign ult i64 %i.th, 32
  br i1 %diff.check285, label %.preheader.i84.i.i.preheader, label %vector.main.loop.iter.check287

vector.main.loop.iter.check287:                   ; preds = %vector.memcheck284
  %min.iters.check288 = icmp samesign ult i32 %i.sk, 31
  br i1 %min.iters.check288, label %vec.epilog.ph307, label %vector.ph289

vector.ph289:                                     ; preds = %vector.main.loop.iter.check287
  %i.ti = and i64 %i.sm, 28
  %n.vec290 = and i64 %i.sm, 131040               ; 6 uses
  %i.tj = trunc nuw nsw i64 %n.vec290 to i32
  %i.tk = sub nsw i32 %i.sl, %i.tj
  %i.tl = getelementptr i8, ptr %i.td, i64 %n.vec290
  %i.tm = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %n.vec290 ; 2 uses
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph289
  %index292 = phi i64 [ 0, %vector.ph289 ], [ %index.next297, %vector.body291 ] ; 3 uses
  %next.gep293 = getelementptr i8, ptr %i.td, i64 %index292 ; 2 uses
  %next.gep294 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %index292 ; 2 uses
  %i.tn = getelementptr i8, ptr %next.gep293, i64 16
  %wide.load295 = load <16 x i8>, ptr %next.gep293, align 1, !tbaa !22
  %wide.load296 = load <16 x i8>, ptr %i.tn, align 1, !tbaa !22
  %i.to = getelementptr i8, ptr %next.gep294, i64 16
  store <16 x i8> %wide.load295, ptr %next.gep294, align 1, !tbaa !22
  store <16 x i8> %wide.load296, ptr %i.to, align 1, !tbaa !22
  %index.next297 = add nuw i64 %index292, 32      ; 2 uses
  %i.tp = icmp eq i64 %index.next297, %n.vec290
  br i1 %i.tp, label %middle.block298, label %vector.body291, !llvm.loop !277

middle.block298:                                  ; preds = %vector.body291
  %cmp.n299 = icmp eq i64 %n.vec290, %i.sm
  br i1 %cmp.n299, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %vec.epilog.iter.check305

vec.epilog.iter.check305:                         ; preds = %middle.block298
  %min.epilog.iters.check306 = icmp eq i64 %i.ti, 0
  br i1 %min.epilog.iters.check306, label %.preheader.i84.i.i.preheader, label %vec.epilog.ph307, !prof !260

vec.epilog.ph307:                                 ; preds = %vector.main.loop.iter.check287, %vec.epilog.iter.check305
  %vec.epilog.resume.val300 = phi i64 [ %n.vec290, %vec.epilog.iter.check305 ], [ 0, %vector.main.loop.iter.check287 ]
  %n.vec308 = and i64 %i.sm, 131068               ; 5 uses
  %i.tq = trunc nuw nsw i64 %n.vec308 to i32
  %i.tr = sub nsw i32 %i.sl, %i.tq
  %i.ts = getelementptr i8, ptr %i.td, i64 %n.vec308
  %i.tt = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %n.vec308 ; 2 uses
  br label %vec.epilog.vector.body309

vec.epilog.vector.body309:                        ; preds = %vec.epilog.vector.body309, %vec.epilog.ph307
  %index310 = phi i64 [ %vec.epilog.resume.val300, %vec.epilog.ph307 ], [ %index.next314, %vec.epilog.vector.body309 ] ; 3 uses
  %next.gep311 = getelementptr i8, ptr %i.td, i64 %index310
  %next.gep312 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %index310
  %wide.load313 = load <4 x i8>, ptr %next.gep311, align 1, !tbaa !22
  store <4 x i8> %wide.load313, ptr %next.gep312, align 1, !tbaa !22
  %index.next314 = add nuw i64 %index310, 4       ; 2 uses
  %i.tu = icmp eq i64 %index.next314, %n.vec308
  br i1 %i.tu, label %vec.epilog.middle.block315, label %vec.epilog.vector.body309, !llvm.loop !278

vec.epilog.middle.block315:                       ; preds = %vec.epilog.vector.body309
  %cmp.n316 = icmp eq i64 %n.vec308, %i.sm
  br i1 %cmp.n316, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i84.i.i.preheader

.preheader.i84.i.i.preheader:                     ; preds = %vector.memcheck284, %iter.check303, %vec.epilog.iter.check305, %vec.epilog.middle.block315
  %.09.i85.i.i.ph = phi i32 [ %i.sl, %iter.check303 ], [ %i.sl, %vector.memcheck284 ], [ %i.tk, %vec.epilog.iter.check305 ], [ %i.tr, %vec.epilog.middle.block315 ] ; 4 uses
  %.048.i86.i.i.ph = phi ptr [ %i.td, %iter.check303 ], [ %i.td, %vector.memcheck284 ], [ %i.tl, %vec.epilog.iter.check305 ], [ %i.ts, %vec.epilog.middle.block315 ] ; 2 uses
  %.ph331 = phi ptr [ %.lcssa.sink.i.i62.i, %iter.check303 ], [ %.lcssa.sink.i.i62.i, %vector.memcheck284 ], [ %i.tm, %vec.epilog.iter.check305 ], [ %i.tt, %vec.epilog.middle.block315 ] ; 2 uses
  %i.tv = add nsw i32 %.09.i85.i.i.ph, -1
  %xtraiter = and i32 %.09.i85.i.i.ph, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i84.i.i.prol.loopexit, label %.preheader.i84.i.i.prol

.preheader.i84.i.i.prol:                          ; preds = %.preheader.i84.i.i.preheader, %.preheader.i84.i.i.prol
  %.09.i85.i.i.prol = phi i32 [ %i.tx, %.preheader.i84.i.i.prol ], [ %.09.i85.i.i.ph, %.preheader.i84.i.i.preheader ]
  %.048.i86.i.i.prol = phi ptr [ %i.ty, %.preheader.i84.i.i.prol ], [ %.048.i86.i.i.ph, %.preheader.i84.i.i.preheader ] ; 2 uses
  %i.tw = phi ptr [ %i.ua, %.preheader.i84.i.i.prol ], [ %.ph331, %.preheader.i84.i.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.i84.i.i.prol ], [ 0, %.preheader.i84.i.i.preheader ]
  %i.tx = add nsw i32 %.09.i85.i.i.prol, -1       ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.048.i86.i.i.prol, i64 1 ; 2 uses
  %i.tz = load i8, ptr %.048.i86.i.i.prol, align 1, !tbaa !22
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tw, i64 1 ; 3 uses
  store i8 %i.tz, ptr %i.tw, align 1, !tbaa !22
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i84.i.i.prol.loopexit, label %.preheader.i84.i.i.prol, !llvm.loop !279

.preheader.i84.i.i.prol.loopexit:                 ; preds = %.preheader.i84.i.i.prol, %.preheader.i84.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.i84.i.i.preheader ], [ %i.ua, %.preheader.i84.i.i.prol ]
  %.09.i85.i.i.unr = phi i32 [ %.09.i85.i.i.ph, %.preheader.i84.i.i.preheader ], [ %i.tx, %.preheader.i84.i.i.prol ]
  %.048.i86.i.i.unr = phi ptr [ %.048.i86.i.i.ph, %.preheader.i84.i.i.preheader ], [ %i.ty, %.preheader.i84.i.i.prol ]
  %.unr = phi ptr [ %.ph331, %.preheader.i84.i.i.preheader ], [ %i.ua, %.preheader.i84.i.i.prol ]
  %i.ub = icmp ult i32 %i.tv, 7
  br i1 %i.ub, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i84.i.i

.preheader.i84.i.i:                               ; preds = %.preheader.i84.i.i.prol.loopexit, %.preheader.i84.i.i
  %.09.i85.i.i = phi i32 [ %i.uy, %.preheader.i84.i.i ], [ %.09.i85.i.i.unr, %.preheader.i84.i.i.prol.loopexit ]
  %.048.i86.i.i = phi ptr [ %i.uz, %.preheader.i84.i.i ], [ %.048.i86.i.i.unr, %.preheader.i84.i.i.prol.loopexit ] ; 9 uses
  %i.uc = phi ptr [ %i.vb, %.preheader.i84.i.i ], [ %.unr, %.preheader.i84.i.i.prol.loopexit ] ; 9 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 1
  %i.ue = load i8, ptr %.048.i86.i.i, align 1, !tbaa !22
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 1
  store i8 %i.ue, ptr %i.uc, align 1, !tbaa !22
  %i.ug = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 2
  %i.uh = load i8, ptr %i.ud, align 1, !tbaa !22
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uc, i64 2
  store i8 %i.uh, ptr %i.uf, align 1, !tbaa !22
  %i.uj = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 3
  %i.uk = load i8, ptr %i.ug, align 1, !tbaa !22
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uc, i64 3
  store i8 %i.uk, ptr %i.ui, align 1, !tbaa !22
  %i.um = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 4
  %i.un = load i8, ptr %i.uj, align 1, !tbaa !22
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  store i8 %i.un, ptr %i.ul, align 1, !tbaa !22
  %i.up = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 5
  %i.uq = load i8, ptr %i.um, align 1, !tbaa !22
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uc, i64 5
  store i8 %i.uq, ptr %i.uo, align 1, !tbaa !22
  %i.us = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 6
  %i.ut = load i8, ptr %i.up, align 1, !tbaa !22
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uc, i64 6
  store i8 %i.ut, ptr %i.ur, align 1, !tbaa !22
  %i.uv = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 7
  %i.uw = load i8, ptr %i.us, align 1, !tbaa !22
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uc, i64 7
  store i8 %i.uw, ptr %i.uu, align 1, !tbaa !22
  %i.uy = add nsw i32 %.09.i85.i.i, -8            ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 8
  %i.va = load i8, ptr %i.uv, align 1, !tbaa !22
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uc, i64 8 ; 2 uses
  store i8 %i.va, ptr %i.ux, align 1, !tbaa !22
  %.not.i87.i.i.7 = icmp eq i32 %i.uy, 0
  br i1 %.not.i87.i.i.7, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i84.i.i, !llvm.loop !280

_ZL20stb_decompress_tokenPKh.exit.i:              ; preds = %_ZL8stb__litPKhj.exit77.i.i, %_ZL8stb__litPKhj.exit75.i.i, %_ZL8stb__litPKhj.exit.i.i
  %.lcssa.sink.i.i64.i = phi ptr [ %.sink.i76.i.i, %_ZL8stb__litPKhj.exit77.i.i ], [ %.sink.i74.i.i, %_ZL8stb__litPKhj.exit75.i.i ], [ %.sink.i.i.i, %_ZL8stb__litPKhj.exit.i.i ]
  %.0.i.i = phi ptr [ %i.oo, %_ZL8stb__litPKhj.exit77.i.i ], [ %i.ny, %_ZL8stb__litPKhj.exit75.i.i ], [ %i.gv, %_ZL8stb__litPKhj.exit.i.i ] ; 2 uses
  %i.vc = icmp eq ptr %.0.i.i, %.034.i
  br i1 %i.vc, label %_ZL14stb_decompressPhPKhj.exit, label %_ZL20stb_decompress_tokenPKh.exit.thread.i

_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i: ; preds = %.preheader.i84.i.i.prol.loopexit, %.preheader.i84.i.i, %.preheader.i78.i.i.prol.loopexit, %.preheader.i78.i.i, %.preheader.i68.i.i.prol.loopexit, %.preheader.i68.i.i, %.preheader.i62.i.i.prol.loopexit, %.preheader.i62.i.i, %.preheader.i56.i.i.prol.loopexit, %.preheader.i56.i.i, %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i, %middle.block298, %vec.epilog.middle.block315, %middle.block262, %vec.epilog.middle.block279, %middle.block226, %vec.epilog.middle.block243, %middle.block190, %vec.epilog.middle.block207, %middle.block154, %vec.epilog.middle.block171, %middle.block, %vec.epilog.middle.block, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.s, %bb.r, %bb.p, %bb.o, %bb.j, %bb.i, %bb.g, %bb.f
  %.lcssa.sink.i88.i.sink.i = phi ptr [ %i.sc, %.preheader.i78.i.i ], [ %i.ne, %.preheader.i68.i.i ], [ %i.kh, %.preheader.i62.i.i ], [ %i.gl, %.preheader.i56.i.i ], [ %i.de, %.preheader.i.i.i ], [ %i.as, %bb.f ], [ %i.al, %bb.g ], [ %i.dl, %bb.i ], [ %i.al, %bb.j ], [ %i.hc, %bb.o ], [ %i.al, %bb.p ], [ %i.kt, %bb.r ], [ %i.al, %bb.s ], [ %i.ou, %bb.ab ], [ %i.al, %bb.ac ], [ %i.sn, %bb.ad ], [ %i.al, %bb.ae ], [ %i.bw, %vec.epilog.middle.block ], [ %i.bh, %middle.block ], [ %i.fd, %vec.epilog.middle.block171 ], [ %i.ec, %middle.block154 ], [ %i.iz, %vec.epilog.middle.block207 ], [ %i.hy, %middle.block190 ], [ %i.lw, %vec.epilog.middle.block243 ], [ %i.lp, %middle.block226 ], [ %i.qu, %vec.epilog.middle.block279 ], [ %i.pt, %middle.block262 ], [ %i.tt, %vec.epilog.middle.block315 ], [ %i.tm, %middle.block298 ], [ %.lcssa337.unr.a, %.preheader.i.i.i.prol.loopexit ], [ %.lcssa336.unr.a, %.preheader.i56.i.i.prol.loopexit ], [ %.lcssa335.unr.a, %.preheader.i62.i.i.prol.loopexit ], [ %.lcssa334.unr.a, %.preheader.i68.i.i.prol.loopexit ], [ %.lcssa333.unr, %.preheader.i78.i.i.prol.loopexit ], [ %.lcssa.unr, %.preheader.i84.i.i.prol.loopexit ], [ %i.vb, %.preheader.i84.i.i ] ; 2 uses
  %.sink.i = phi i64 [ 5, %.preheader.i78.i.i.prol.loopexit ], [ 5, %.preheader.i68.i.i.prol.loopexit ], [ 4, %.preheader.i62.i.i.prol.loopexit ], [ 3, %.preheader.i56.i.i.prol.loopexit ], [ 2, %.preheader.i.i.i.prol.loopexit ], [ 2, %bb.f ], [ 2, %bb.g ], [ 3, %bb.i ], [ 3, %bb.j ], [ 4, %bb.o ], [ 4, %bb.p ], [ 5, %bb.r ], [ 5, %bb.s ], [ 5, %bb.ab ], [ 5, %bb.ac ], [ 6, %bb.ad ], [ 6, %bb.ae ], [ 2, %vec.epilog.middle.block ], [ 2, %middle.block ], [ 3, %vec.epilog.middle.block171 ], [ 3, %middle.block154 ], [ 4, %vec.epilog.middle.block207 ], [ 4, %middle.block190 ], [ 5, %vec.epilog.middle.block243 ], [ 5, %middle.block226 ], [ 5, %vec.epilog.middle.block279 ], [ 5, %middle.block262 ], [ 6, %vec.epilog.middle.block315 ], [ 6, %middle.block298 ], [ 2, %.preheader.i.i.i ], [ 3, %.preheader.i56.i.i ], [ 4, %.preheader.i62.i.i ], [ 5, %.preheader.i68.i.i ], [ 5, %.preheader.i78.i.i ], [ 6, %.preheader.i84.i.i ], [ 6, %.preheader.i84.i.i.prol.loopexit ]
  store ptr %.lcssa.sink.i88.i.sink.i, ptr @_ZL9stb__dout, align 8, !tbaa !234
  %i.vd = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.sink.i
  br label %_ZL20stb_decompress_tokenPKh.exit.thread.i

_ZL20stb_decompress_tokenPKh.exit.thread.i:       ; preds = %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, %_ZL20stb_decompress_tokenPKh.exit.i
  %.lcssa.sink.i.i63.i = phi ptr [ %.lcssa.sink.i.i64.i, %_ZL20stb_decompress_tokenPKh.exit.i ], [ %.lcssa.sink.i88.i.sink.i, %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i ] ; 2 uses
  %.0.i42.i = phi ptr [ %.0.i.i, %_ZL20stb_decompress_tokenPKh.exit.i ], [ %i.vd, %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i ]
  %.not49.i = icmp ugt ptr %.lcssa.sink.i.i63.i, %i.aj
  br i1 %.not49.i, label %_ZL14stb_decompressPhPKhj.exit, label %bb.d, !llvm.loop !281

_ZL14stb_decompressPhPKhj.exit:                   ; preds = %_ZL20stb_decompress_tokenPKh.exit.thread.i, %_ZL20stb_decompress_tokenPKh.exit.i, %bb.x, %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZL14stb_decompressPhPKhj.exit
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.7.0..sroa_idx, i64 11, i1 false), !tbaa.struct !282
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ve = load <2 x i32>, ptr %.sroa.716.0..sroa_idx, align 8, !tbaa !138
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.9.0..sroa_idx, i64 36, i1 false), !tbaa.struct !283
  %.sroa.922.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 68
  %.sroa.922.0.copyload = load float, ptr %.sroa.922.0..sroa_idx, align 4, !tbaa !9
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.vf = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.1026.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.1026.0.copyload = load float, ptr %.sroa.1026.0..sroa_idx, align 8, !tbaa !9
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 84
  %.sroa.11.0.copyload = load i16, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !93
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(50) %.sroa.12, ptr noundef nonnull align 2 dereferenceable(50) %.sroa.12.0..sroa_idx, i64 50, i1 false), !tbaa.struct !284
  br label %bb.ah

bb.ag:                                            ; preds = %_ZL14stb_decompressPhPKhj.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.7, i8 0, i64 11, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.9, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(50) %.sroa.12, i8 0, i64 50, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.10.sroa.0.0 = phi i64 [ 0, %bb.ag ], [ %i.vf, %bb.af ]
  %.sroa.922.0 = phi float [ f0x7F7FFFFF, %bb.ag ], [ %.sroa.922.0.copyload, %bb.af ]
  %.sroa.1026.0 = phi float [ 1.000000e+00, %bb.ag ], [ %.sroa.1026.0.copyload, %bb.af ]
  %.sroa.11.0 = phi i16 [ -1, %bb.ag ], [ %.sroa.11.0.copyload, %bb.af ]
  %i.vg = phi <2 x i32> [ <i32 3, i32 1>, %bb.ag ], [ %i.ve, %bb.af ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 1, ptr %.sroa.5.0..sroa_idx13, align 4, !tbaa !254
  %.sroa.7.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %6, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.7.0..sroa_idx15, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.7, i64 11, i1 false), !tbaa.struct !282
  %.sroa.716.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store <2 x i32> %i.vg, ptr %.sroa.716.0..sroa_idx17, align 8, !tbaa !138
  %.sroa.9.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.9.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.9, i64 36, i1 false), !tbaa.struct !283
  %.sroa.922.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %6, i64 68
  store float %.sroa.922.0, ptr %.sroa.922.0..sroa_idx23, align 4, !tbaa !9
  %.sroa.10.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %.sroa.10.sroa.0.0, ptr %.sroa.10.0..sroa_idx25, align 8
  %.sroa.1026.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %6, i64 80
  store float %.sroa.1026.0, ptr %.sroa.1026.0..sroa_idx27, align 8, !tbaa !9
  %.sroa.11.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %6, i64 84
  store i16 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx29, align 4, !tbaa !93
  %.sroa.12.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %6, i64 86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(50) %.sroa.12.0..sroa_idx31, ptr noundef nonnull align 2 dereferenceable(50) %.sroa.12, i64 50, i1 false), !tbaa.struct !284
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %.pre.i12 = load float, ptr %.phi.trans.insert.i, align 4
  store ptr %i.h, ptr %6, align 8, !tbaa !215
  %i.vh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.f, ptr %i.vh, align 8, !tbaa !252
  %i.vi = fcmp ogt float %3, 0.000000e+00
  %i.vj = select i1 %i.vi, float %3, float %.pre.i12
  store float %i.vj, ptr %.phi.trans.insert.i, align 4, !tbaa !227
  %.not9.i = icmp eq ptr %5, null
  br i1 %.not9.i, label %_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.vk = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %5, ptr %i.vk, align 8, !tbaa !228
  br label %_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit

_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit: ; preds = %bb.ah, %bb.ai
  %i.vl = call noundef ptr @_ZN11ImFontAtlas7AddFontEPK12ImFontConfig(ptr noundef nonnull align 8 dereferenceable(1164) %0, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  ret ptr %i.vl
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147483648, 2147483647) i32 @_ZN11ImFontAtlas20AddCustomRectRegularEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1164) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !223
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %._ZN8ImVectorI21ImFontAtlasCustomRectE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI21ImFontAtlasCustomRectE7reserveEi.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !202
  br label %_ZN8ImVectorI21ImFontAtlasCustomRectE9push_backERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI21ImFontAtlasCustomRectE14_grow_capacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sdiv i32 %i.b, 2
  %i.h = add nsw i32 %i.g, %i.b
  br label %_ZNK8ImVectorI21ImFontAtlasCustomRectE14_grow_capacityEi.exit.i

_ZNK8ImVectorI21ImFontAtlasCustomRectE14_grow_capacityEi.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i32 [ %i.h, %bb.c ], [ 8, %bb.b ]
  %i.j = tail call noundef i32 @llvm.smax.i32(i32 %i.i, i32 %i.f) ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 5
  %i.m = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.l) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !202  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.o, null
  br i1 %.not6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI21ImFontAtlasCustomRectE14_grow_capacityEi.exit.i
  %i.p = load i32, ptr %i.a, align 8, !tbaa !224
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.m, ptr nonnull align 8 %i.o, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !202
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorI21ImFontAtlasCustomRectE14_grow_capacityEi.exit.i
  store ptr %i.m, ptr %i.n, align 8, !tbaa !202
  store i32 %i.j, ptr %i.c, align 4, !tbaa !223
  %.pre3.i = load i32, ptr %i.a, align 8, !tbaa !224
  br label %_ZN8ImVectorI21ImFontAtlasCustomRectE9push_backERKS0_.exit

_ZN8ImVectorI21ImFontAtlasCustomRectE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI21ImFontAtlasCustomRectE7reserveEi.exit_crit_edge.i, %bb.e
  %i.t = phi i32 [ %i.b, %._ZN8ImVectorI21ImFontAtlasCustomRectE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.e ]
  %i.u = phi ptr [ %.pre.i, %._ZN8ImVectorI21ImFontAtlasCustomRectE7reserveEi.exit_crit_edge.i ], [ %i.m, %bb.e ]
  %i.v = trunc i32 %2 to i16
  %i.w = trunc i32 %1 to i16
  %i.x = sext i32 %i.t to i64
  %i.y = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.x ; 5 uses
  store i16 %i.w, ptr %i.y, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i16 %i.v, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i16 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  store i16 -1, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.z = load i32, ptr %i.a, align 8, !tbaa !224  ; 2 uses
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !224
  ret i32 %i.z
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147483648, 2147483647) i32 @_ZN11ImFontAtlas22AddCustomRectFontGlyphEP6ImFonttiifRK6ImVec2(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1164) %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, float noundef %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i64, ptr %6, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !224  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !223
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._ZN8ImVectorI21ImFontAtlasCustomRectE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI21ImFontAtlasCustomRectE7reserveEi.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !202
  br label %_ZN8ImVectorI21ImFontAtlasCustomRectE9push_backERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.c, 1
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI21ImFontAtlasCustomRectE14_grow_capacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sdiv i32 %i.c, 2
  %i.i = add nsw i32 %i.h, %i.c
  br label %_ZNK8ImVectorI21ImFontAtlasCustomRectE14_grow_capacityEi.exit.i

_ZNK8ImVectorI21ImFontAtlasCustomRectE14_grow_capacityEi.exit.i: ; preds = %bb.c, %bb.b
  %i.j = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]
  %i.k = tail call noundef i32 @llvm.smax.i32(i32 %i.j, i32 %i.g) ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 5
  %i.n = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.m) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !202  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI21ImFontAtlasCustomRectE14_grow_capacityEi.exit.i
  %i.q = load i32, ptr %i.b, align 8, !tbaa !224
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.n, ptr nonnull align 8 %i.p, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !202
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorI21ImFontAtlasCustomRectE14_grow_capacityEi.exit.i
  store ptr %i.n, ptr %i.o, align 8, !tbaa !202
  store i32 %i.k, ptr %i.d, align 4, !tbaa !223
  %.pre3.i = load i32, ptr %i.b, align 8, !tbaa !224
  br label %_ZN8ImVectorI21ImFontAtlasCustomRectE9push_backERKS0_.exit

_ZN8ImVectorI21ImFontAtlasCustomRectE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI21ImFontAtlasCustomRectE7reserveEi.exit_crit_edge.i, %bb.e
  %i.u = phi i32 [ %i.c, %._ZN8ImVectorI21ImFontAtlasCustomRectE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.e ]
  %i.v = phi ptr [ %.pre.i, %._ZN8ImVectorI21ImFontAtlasCustomRectE7reserveEi.exit_crit_edge.i ], [ %i.n, %bb.e ]
  %i.w = zext i16 %2 to i32
  %i.x = trunc i32 %4 to i16
  %i.y = trunc i32 %3 to i16
  %i.z = sext i32 %i.u to i64
  %i.aa = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.z ; 8 uses
  store i16 %i.y, ptr %i.aa, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i16 %i.x, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i16 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  store i16 -1, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %i.w, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store float %5, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.a, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %1, ptr %.sroa.13.0..sroa_idx, align 8
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !224 ; 2 uses
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.b, align 8, !tbaa !224
  ret i32 %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK11ImFontAtlas16CalcCustomRectUVEPK21ImFontAtlasCustomRectP6ImVec2S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1164) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #24 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load <2 x i16>, ptr %i.a, align 4, !tbaa !93
  %i.d = uitofp <2 x i16> %i.c to <2 x float>
  %i.e = load <2 x float>, ptr %i.b, align 8, !tbaa !9
  %i.f = fmul <2 x float> %i.e, %i.d
  store <2 x float> %i.f, ptr %2, align 4
  %i.g = load <2 x i16>, ptr %i.a, align 4, !tbaa !93
  %i.h = zext <2 x i16> %i.g to <2 x i32>
  %i.i = load <2 x i16>, ptr %1, align 8, !tbaa !93
  %i.j = zext <2 x i16> %i.i to <2 x i32>
  %i.k = add nuw nsw <2 x i32> %i.j, %i.h
end_hunk_0
begin_hunk_1_@_ZL16stbtt__get_subrs10stbtt__bufS_:bb.a
  %i.cd = shl nuw nsw i64 %i.cc, 32
  %.sroa.0.0.i.i = select i1 %or.cond.i8, ptr null, ptr %i.cb
  %.sroa.5.0.i.i = select i1 %or.cond.i8, i64 0, i64 %i.cd
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 %.sroa.5.0.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit, %bb.a, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i.i, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZL14stbtt__cff_intP10stbtt__buf(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !323  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !324  ; 9 uses
  %.not.i = icmp slt i32 %i.b, %i.d
  br i1 %.not.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit

_ZL15stbtt__buf_get8P10stbtt__buf.exit:           ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !325    ; 9 uses
  %i.f = add nsw i32 %i.b, 1                      ; 11 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !323
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !22    ; 5 uses
  %i.j = zext i8 %i.i to i32                      ; 3 uses
  %i.k = add i8 %i.i, -32
  %or.cond = icmp ult i8 %i.k, -41
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.l = add nsw i32 %i.j, -139
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit

bb.c:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %or.cond3 = icmp slt i8 %i.i, -5
  br i1 %or.cond3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = shl nuw nsw i32 %i.j, 8
  %i.n = add nsw i32 %i.m, -63232                 ; 2 uses
  %.not.i22 = icmp slt i32 %i.f, %i.d
  br i1 %.not.i22, label %bb.e, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit24

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.b, 2
  store i32 %i.o, ptr %i.a, align 8, !tbaa !323
  %i.p = sext i32 %i.f to i64
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !22
  %i.s = zext i8 %i.r to i32
  %i.t = or disjoint i32 %i.n, %i.s
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit24

_ZL15stbtt__buf_get8P10stbtt__buf.exit24:         ; preds = %bb.d, %bb.e
  %.0.i23 = phi i32 [ %i.t, %bb.e ], [ %i.n, %bb.d ]
  %i.u = add nuw nsw i32 %.0.i23, 108
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit

bb.f:                                             ; preds = %bb.c
  %or.cond5 = icmp slt i8 %i.i, -1
  br i1 %or.cond5, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = shl nuw nsw i32 %i.j, 8                  ; 2 uses
  %.not.i25 = icmp slt i32 %i.f, %i.d
  br i1 %.not.i25, label %bb.h, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit27

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.b, 2
  store i32 %i.w, ptr %i.a, align 8, !tbaa !323
  %i.x = sext i32 %i.f to i64
  %i.y = getelementptr inbounds i8, ptr %i.e, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !22
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.v, %i.aa
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit27

_ZL15stbtt__buf_get8P10stbtt__buf.exit27:         ; preds = %bb.g, %bb.h
  %.0.i26 = phi i32 [ %i.ab, %bb.h ], [ %i.v, %bb.g ]
  %i.ac = sub nsw i32 64148, %.0.i26
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit

bb.i:                                             ; preds = %bb.f
  switch i8 %i.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit [
    i8 28, label %bb.j
    i8 29, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp slt i32 %i.f, %i.d
  br i1 %.not.i.i, label %bb.k, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ad = add nsw i32 %i.b, 2                     ; 2 uses
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !323
  %i.ae = sext i32 %i.f to i64
  %i.af = getelementptr inbounds i8, ptr %i.e, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i:         ; preds = %bb.k, %bb.j
  %i.aj = phi i32 [ %i.ad, %bb.k ], [ %i.f, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ %i.ai, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.not.i.i.1 = icmp slt i32 %i.aj, %i.d
  br i1 %.not.i.i.1, label %bb.l, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit

bb.l:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.a, align 8, !tbaa !323
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds i8, ptr %i.e, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !22
  %i.ao = zext i8 %i.an to i32
  %i.ap = or disjoint i32 %.0.i.i, %i.ao
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit

bb.m:                                             ; preds = %bb.i
  %.not.i.i31 = icmp slt i32 %i.f, %i.d
  br i1 %.not.i.i31, label %bb.n, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32

bb.n:                                             ; preds = %bb.m
  %i.aq = add nsw i32 %i.b, 2                     ; 2 uses
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !323
  %i.ar = sext i32 %i.f to i64
  %i.as = getelementptr inbounds i8, ptr %i.e, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !22
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32:       ; preds = %bb.n, %bb.m
  %i.aw = phi i32 [ %i.aq, %bb.n ], [ %i.f, %bb.m ] ; 4 uses
  %.0.i.i33 = phi i32 [ %i.av, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.not.i.i31.1 = icmp slt i32 %i.aw, %i.d
  br i1 %.not.i.i31.1, label %bb.o, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.1

bb.o:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32
  %i.ax = add nsw i32 %i.aw, 1                    ; 2 uses
  store i32 %i.ax, ptr %i.a, align 8, !tbaa !323
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds i8, ptr %i.e, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  %i.bb = zext i8 %i.ba to i32
  %i.bc = or disjoint i32 %.0.i.i33, %i.bb
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.1:     ; preds = %bb.o, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32
  %i.bd = phi i32 [ %i.ax, %bb.o ], [ %i.aw, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32 ] ; 4 uses
  %.0.i.i33.1 = phi i32 [ %i.bc, %bb.o ], [ %.0.i.i33, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32 ]
  %i.be = shl nuw nsw i32 %.0.i.i33.1, 8          ; 2 uses
  %.not.i.i31.2 = icmp slt i32 %i.bd, %i.d
  br i1 %.not.i.i31.2, label %bb.p, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.2

bb.p:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.1
  %i.bf = add nsw i32 %i.bd, 1                    ; 2 uses
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !323
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds i8, ptr %i.e, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !22
  %i.bj = zext i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.be, %i.bj
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.2

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.2:     ; preds = %bb.p, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.1
  %i.bl = phi i32 [ %i.bf, %bb.p ], [ %i.bd, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.1 ] ; 3 uses
  %.0.i.i33.2 = phi i32 [ %i.bk, %bb.p ], [ %i.be, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.1 ]
  %i.bm = shl nuw i32 %.0.i.i33.2, 8              ; 2 uses
  %.not.i.i31.3 = icmp slt i32 %i.bl, %i.d
  br i1 %.not.i.i31.3, label %bb.q, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit

bb.q:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.2
  %i.bn = add nsw i32 %i.bl, 1
  store i32 %i.bn, ptr %i.a, align 8, !tbaa !323
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds i8, ptr %i.e, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !22
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bm, %i.br
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit

_ZL14stbtt__buf_getP10stbtt__bufi.exit:           ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.2, %bb.q, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i, %bb.l, %bb.a, %bb.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit27, %_ZL15stbtt__buf_get8P10stbtt__buf.exit24, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ %i.u, %_ZL15stbtt__buf_get8P10stbtt__buf.exit24 ], [ %i.ac, %_ZL15stbtt__buf_get8P10stbtt__buf.exit27 ], [ %.0.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ], [ 0, %bb.a ], [ 0, %bb.i ], [ %i.ap, %bb.l ], [ %i.bs, %bb.q ], [ %i.bm, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.2 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull %2) unnamed_addr #18 {
bb.a:
  %i.a = alloca [48 x float], align 16            ; 47 uses
  %3 = alloca [10 x %struct.stbtt__buf], align 16 ; 4 uses
  %.sroa.5 = alloca { i32, i32 }, align 8         ; 5 uses
  %4 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.073.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !234
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %i.c, ptr %.sroa.5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.065.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !234
  %.sroa.266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.266.0.copyload = load i64, ptr %.sroa.266.0..sroa_idx, align 8
  %i.e = tail call fastcc { ptr, i64 } @_ZL20stbtt__cff_index_get10stbtt__bufi(ptr %.sroa.065.0.copyload, i64 %.sroa.266.0.copyload, i32 noundef %1) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !234
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 %i.g, ptr %.sroa.468.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw i64 %i.j to i32                ; 2 uses
  %i.l = icmp slt i32 %i.i, %i.k
  br i1 %i.l, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph, label %.critedge

_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph:     ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.2.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.in82.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.gep72 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 25 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 10 uses
  %.phi.trans.insert.i311 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 15 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %.sroa.gep.sroa.gep424 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.gep427.sroa.gep430 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep427.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit

_ZL15stbtt__buf_get8P10stbtt__buf.exit:           ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph, %.thread
  %i.ai = phi i32 [ %i.k, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %i.ur, %.thread ] ; 9 uses
  %i.aj = phi i32 [ %i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %i.uq, %.thread ] ; 6 uses
  %.0235364 = phi i32 [ 1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.1236339, %.thread ] ; 22 uses
  %.0237363 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.2239338, %.thread ] ; 26 uses
  %.0240362 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.1241337, %.thread ] ; 28 uses
  %.0243359 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %i.up, %.thread ] ; 45 uses
  %.sroa.073.0358 = phi ptr [ %.sroa.073.0.copyload, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.sroa.073.3336, %.thread ] ; 27 uses
  %.0254357 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.2256335, %.thread ] ; 26 uses
  %i.ak = load ptr, ptr %4, align 8, !tbaa !325   ; 6 uses
  %i.al = add nsw i32 %i.aj, 1                    ; 7 uses
  store i32 %i.al, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !323
  %i.am = sext i32 %i.aj to i64
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !22  ; 5 uses
  switch i8 %i.ao, label %bb.ea [
    i8 19, label %bb.b
    i8 20, label %bb.b
    i8 1, label %bb.e
    i8 3, label %bb.e
    i8 18, label %bb.e
    i8 23, label %bb.e
    i8 21, label %bb.f
    i8 4, label %bb.h
    i8 22, label %bb.j
    i8 5, label %bb.l
    i8 7, label %bb.z
    i8 6, label %bb.aa
    i8 31, label %bb.bf
    i8 30, label %bb.bg
    i8 8, label %bb.bp
    i8 24, label %bb.bq
    i8 25, label %bb.cf
    i8 26, label %bb.cu
    i8 27, label %bb.cu
    i8 10, label %bb.cw
    i8 29, label %bb.dh
    i8 11, label %bb.do
    i8 14, label %bb.dq
    i8 12, label %bb.dr
    i8 -1, label %bb.ec
    i8 28, label %bb.eh
  ]

bb.b:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %.not276.a = icmp eq i32 %.0235364, 0
  br i1 %.not276.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = sdiv i32 %.0243359, 2
  %i.aq = add nsw i32 %.0237363, %i.ap
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1238 = phi i32 [ %i.aq, %bb.c ], [ %.0237363, %bb.b ] ; 2 uses
  %i.ar = add nsw i32 %.1238, 7
  %i.as = sdiv i32 %i.ar, 8
  %i.at = add nsw i32 %i.as, %i.al                ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  %i.av = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.ai)
  %..i.i = select i1 %i.au, i32 %i.ai, i32 %i.av
  store i32 %..i.i, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !323
  br label %.thread

bb.e:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.aw = sdiv i32 %.0243359, 2
  %i.ax = add nsw i32 %.0237363, %i.aw
  br label %.thread

bb.f:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.ay = icmp slt i32 %.0243359, 2
  br i1 %i.ay, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = zext nneg i32 %.0243359 to i64
  %i.ba = getelementptr [4 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !9
  %i.bd = getelementptr i8, ptr %i.ba, i64 -4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !9
  tail call fastcc void @_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff(ptr noundef %2, float noundef %i.bc, float noundef %i.be)
  br label %.thread

bb.h:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.bf = icmp slt i32 %.0243359, 1
  br i1 %i.bf, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = zext nneg i32 %.0243359 to i64
  %i.bh = getelementptr [4 x i8], ptr %i.a, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !9
  tail call fastcc void @_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.bj)
  br label %.thread

bb.j:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.bk = icmp slt i32 %.0243359, 1
  br i1 %i.bk, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = zext nneg i32 %.0243359 to i64
  %i.bm = getelementptr [4 x i8], ptr %i.a, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !9
  tail call fastcc void @_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff(ptr noundef %2, float noundef %i.bo, float noundef 0.000000e+00)
  br label %.thread

bb.l:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.bp = icmp slt i32 %.0243359, 2
  br i1 %i.bp, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.l
  %i.bq = zext nneg i32 %.0243359 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit
  %indvars.iv419 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next420, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv419
  %i.bs = load <2 x float>, ptr %i.br, align 8, !tbaa !9
  %i.bt = load <2 x float>, ptr %i.ab, align 8, !tbaa !9
  %i.bu = fadd <2 x float> %i.bs, %i.bt           ; 2 uses
  store <2 x float> %i.bu, ptr %i.ab, align 8, !tbaa !9
  %i.bv = fptosi <2 x float> %i.bu to <2 x i32>   ; 3 uses
  %i.bw = load i32, ptr %2, align 8, !tbaa !576
  %.not.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i, label %bb.y, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.bx = load i32, ptr %i.ac, align 4, !tbaa !578
  %i.by = extractelement <2 x i32> %i.bv, i64 0   ; 4 uses
  %i.bz = icmp slt i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load i32, ptr %i.ad, align 4, !tbaa !579
  %.not.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %i.by, ptr %i.ac, align 4, !tbaa !578
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cb = load i32, ptr %i.ae, align 4, !tbaa !580
  %i.cc = extractelement <2 x i32> %i.bv, i64 1   ; 4 uses
  %i.cd = icmp slt i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = load i32, ptr %i.ad, align 4, !tbaa !579
  %.not20.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not20.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.cc, ptr %i.ae, align 4, !tbaa !580
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cf = load i32, ptr %i.af, align 8, !tbaa !581
  %i.cg = icmp sgt i32 %i.cf, %i.by
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = load i32, ptr %i.ad, align 4, !tbaa !579
  %.not21.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not21.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.by, ptr %i.af, align 8, !tbaa !581
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ci = load i32, ptr %i.ag, align 8, !tbaa !582
  %i.cj = icmp sgt i32 %i.ci, %i.cc
  br i1 %i.cj, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = load i32, ptr %i.ad, align 4, !tbaa !579
  %.not22.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not22.i.i.i, label %bb.x, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.cc, ptr %i.ag, align 8, !tbaa !582
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i: ; preds = %bb.x, %bb.w
  store i32 1, ptr %i.ad, align 4, !tbaa !579
  %.pre.i = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !583
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit

bb.y:                                             ; preds = %.preheader
  %i.cl = load ptr, ptr %i.ah, align 8, !tbaa !584
  %i.cm = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !583 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [14 x i8], ptr %i.cl, i64 %i.cn ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i8 2, ptr %i.cp, align 2, !tbaa !406
  %i.cq = trunc <2 x i32> %i.bv to <2 x i16>
  store <2 x i16> %i.cq, ptr %i.co, align 2, !tbaa !93
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i64 0, ptr %i.cr, align 2
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit

_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit: ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i, %bb.y
  %i.cs = phi i32 [ %.pre.i, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %i.cm, %bb.y ]
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %.phi.trans.insert.i311, align 8, !tbaa !583
end_hunk_1
begin_hunk_2_@_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx:bb.a
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !9
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv402
  %i.me = load float, ptr %i.md, align 4, !tbaa !9
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.ly, float noundef 0.000000e+00, float noundef %i.ma, float noundef %i.mc, float noundef %i.me, float noundef 0.000000e+00)
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 4
  %i.mf = add nuw nsw i64 %indvars.iv404, 7
  %i.mg = icmp samesign ult i64 %i.mf, %i.lm
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 4
  br i1 %i.mg, label %.lr.ph.split.us, label %.thread, !llvm.loop !591

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next, %.lr.ph.split
  %indvars.iv396 = phi i64 [ %indvars.iv.next397.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next397, %.lr.ph.split ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv396 ; 3 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !9
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !9
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !9
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !9
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.mi, float noundef %i.mk, float noundef %i.mm, float noundef 0.000000e+00, float noundef %i.mo)
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 4
  %i.mp = add nuw nsw i64 %indvars.iv396, 7
  %i.mq = icmp samesign ult i64 %i.mp, %i.lm
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  br i1 %i.mq, label %.lr.ph.split, label %.thread, !llvm.loop !592

bb.cw:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %.not = icmp eq i32 %.0254357, 0
  br i1 %.not, label %bb.cx, label %bb.dh

bb.cx:                                            ; preds = %bb.cw
  %i.mr = load i32, ptr %i.x, align 4, !tbaa !593 ; 13 uses
  %.not268 = icmp eq i32 %i.mr, 0
  br i1 %.not268, label %bb.dh, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.0.0.copyload.i = load ptr, ptr %i.y, align 8, !tbaa !234 ; 9 uses
  %i.ms = tail call i32 @llvm.smin.i32(i32 %i.mr, i32 0) ; 2 uses
  %.not.i.i314 = icmp sgt i32 %i.mr, 0
  br i1 %.not.i.i314, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i:         ; preds = %bb.cy
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !22
  switch i8 %i.mv, label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit [
    i8 0, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i
    i8 3, label %.preheader.preheader.i
  ]

.preheader.preheader.i:                           ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i
  %.not.i.i.not.i = icmp eq i32 %i.mr, 1
  br i1 %.not.i.i.not.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i, label %bb.da

_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i:  ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i, %bb.cy
  %.sroa.9.180.i = phi i32 [ 1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ], [ %i.ms, %bb.cy ]
  %i.mw = add nsw i32 %.sroa.9.180.i, %1          ; 2 uses
  %i.mx = icmp slt i32 %i.mw, 0
  %i.my = tail call i32 @llvm.smin.i32(i32 %i.mw, i32 %i.mr)
  %..i.i.i = select i1 %i.mx, i32 %i.mr, i32 %i.my ; 2 uses
  %.not.i41.i = icmp slt i32 %..i.i.i, %i.mr
  br i1 %.not.i41.i, label %bb.cz, label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit

bb.cz:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i
  %i.mz = sext i32 %..i.i.i to i64
  %i.na = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.mz
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !22
  %i.nc = zext i8 %i.nb to i32
  br label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit

bb.da:                                            ; preds = %.preheader.preheader.i
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 1
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !22
  %i.nf = zext i8 %i.ne to i32
  %i.ng = shl nuw nsw i32 %i.nf, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i:       ; preds = %bb.da, %.preheader.preheader.i
  %.sroa.9.3.i = phi i32 [ 2, %bb.da ], [ 1, %.preheader.preheader.i ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.ng, %bb.da ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.not.i.i.1.i = icmp samesign ult i32 %.sroa.9.3.i, %i.mr
  br i1 %.not.i.i.1.i, label %bb.db, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i

bb.db:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %i.nh = add nuw nsw i32 %.sroa.9.3.i, 1
  %i.ni = zext nneg i32 %.sroa.9.3.i to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !22
  %i.nl = zext i8 %i.nk to i32
  %i.nm = or disjoint i32 %.0.i.i.i, %i.nl
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i:     ; preds = %bb.db, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %.sroa.9.3.1.i = phi i32 [ %i.nh, %bb.db ], [ %.sroa.9.3.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 4 uses
  %.0.i.i.1.i = phi i32 [ %i.nm, %bb.db ], [ %.0.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 2 uses
  %.not.i.i47.i = icmp samesign ult i32 %.sroa.9.3.1.i, %i.mr
  br i1 %.not.i.i47.i, label %bb.dc, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.i

bb.dc:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i
  %i.nn = add nuw nsw i32 %.sroa.9.3.1.i, 1
  %i.no = zext nneg i32 %.sroa.9.3.1.i to i64
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.no
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !22
  %i.nr = zext i8 %i.nq to i32
  %i.ns = shl nuw nsw i32 %i.nr, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.i:     ; preds = %bb.dc, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i
  %.sroa.9.5.i = phi i32 [ %i.nn, %bb.dc ], [ %.sroa.9.3.1.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i ] ; 4 uses
  %.0.i.i49.i = phi i32 [ %i.ns, %bb.dc ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i ] ; 2 uses
  %.not.i.i47.1.i = icmp samesign ult i32 %.sroa.9.5.i, %i.mr
  br i1 %.not.i.i47.1.i, label %bb.dd, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.1.i

bb.dd:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.i
  %i.nt = add nuw nsw i32 %.sroa.9.5.i, 1
  %i.nu = zext nneg i32 %.sroa.9.5.i to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !22
  %i.nx = zext i8 %i.nw to i32
  %i.ny = or disjoint i32 %.0.i.i49.i, %i.nx
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.1.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.1.i:   ; preds = %bb.dd, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.i
  %.sroa.9.5.1.i = phi i32 [ %i.nt, %bb.dd ], [ %.sroa.9.5.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.i ]
  %.0.i.i49.1.i = phi i32 [ %i.ny, %bb.dd ], [ %.0.i.i49.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.i ]
  %.not91.i = icmp eq i32 %.0.i.i.1.i, 0
  br i1 %.not91.i, label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit, label %.lr.ph.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit51.i:       ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i59.1.i
  %i.nz = add nuw nsw i32 %.02484.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.nz, %.0.i.i.1.i
  br i1 %exitcond.not.i, label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit, label %.lr.ph.i, !llvm.loop !594

.lr.ph.i:                                         ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.1.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit51.i
  %.085.i = phi i32 [ %.0.i.i60.1.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit51.i ], [ %.0.i.i49.1.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.1.i ]
  %.02484.i = phi i32 [ %i.nz, %_ZL14stbtt__buf_getP10stbtt__bufi.exit51.i ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.1.i ]
  %.sroa.9.083.i = phi i32 [ %.sroa.9.8.1.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit51.i ], [ %.sroa.9.5.1.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.1.i ] ; 4 uses
  %.not.i52.i = icmp slt i32 %.sroa.9.083.i, %i.mr
  br i1 %.not.i52.i, label %bb.de, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit54.i

bb.de:                                            ; preds = %.lr.ph.i
  %i.oa = add nsw i32 %.sroa.9.083.i, 1
  %i.ob = sext i32 %.sroa.9.083.i to i64
  %i.oc = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !22
  %i.oe = zext i8 %i.od to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit54.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit54.i:       ; preds = %bb.de, %.lr.ph.i
  %.sroa.9.6.i = phi i32 [ %i.oa, %bb.de ], [ %.sroa.9.083.i, %.lr.ph.i ] ; 4 uses
  %.0.i53.i = phi i32 [ %i.oe, %bb.de ], [ 0, %.lr.ph.i ]
  %.not.i.i58.i = icmp slt i32 %.sroa.9.6.i, %i.mr
  br i1 %.not.i.i58.i, label %bb.df, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i59.i

bb.df:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit54.i
  %i.of = add nsw i32 %.sroa.9.6.i, 1
  %i.og = sext i32 %.sroa.9.6.i to i64
  %i.oh = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !22
  %i.oj = zext i8 %i.oi to i32
  %i.ok = shl nuw nsw i32 %i.oj, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i59.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i59.i:     ; preds = %bb.df, %_ZL15stbtt__buf_get8P10stbtt__buf.exit54.i
  %.sroa.9.8.i = phi i32 [ %i.of, %bb.df ], [ %.sroa.9.6.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit54.i ] ; 4 uses
  %.0.i.i60.i = phi i32 [ %i.ok, %bb.df ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit54.i ] ; 2 uses
  %.not.i.i58.1.i = icmp slt i32 %.sroa.9.8.i, %i.mr
  br i1 %.not.i.i58.1.i, label %bb.dg, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i59.1.i

bb.dg:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i59.i
  %i.ol = add nsw i32 %.sroa.9.8.i, 1
  %i.om = sext i32 %.sroa.9.8.i to i64
  %i.on = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !22
  %i.op = zext i8 %i.oo to i32
  %i.oq = or disjoint i32 %.0.i.i60.i, %i.op
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i59.1.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i59.1.i:   ; preds = %bb.dg, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i59.i
  %.sroa.9.8.1.i = phi i32 [ %i.ol, %bb.dg ], [ %.sroa.9.8.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i59.i ]
  %.0.i.i60.1.i = phi i32 [ %i.oq, %bb.dg ], [ %.0.i.i60.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i59.i ] ; 2 uses
  %.not.i315 = icmp sge i32 %1, %.085.i
  %i.or = icmp slt i32 %1, %.0.i.i60.1.i
  %or.cond.i = and i1 %.not.i315, %i.or
  br i1 %or.cond.i, label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit51.i

_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit: ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit51.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i59.1.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i, %bb.cz, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.1.i
  %.023.sink.i = phi i32 [ -1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i48.1.i ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i ], [ %i.nc, %bb.cz ], [ -1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ], [ -1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit51.i ], [ %.0.i53.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i59.1.i ]
  %.sroa.0.0.copyload28.i = load ptr, ptr %i.z, align 8, !tbaa !234
  %.sroa.2.0.copyload30.i = load i64, ptr %.sroa.2.0..sroa_idx29.i, align 8
  %i.os = tail call fastcc { ptr, i64 } @_ZL20stbtt__cff_index_get10stbtt__bufi(ptr %.sroa.0.0.copyload28.i, i64 %.sroa.2.0.copyload30.i, i32 noundef %.023.sink.i) ; 2 uses
  %i.ot = load i64, ptr %.in82.i, align 8
  %i.ou = load ptr, ptr %.in.i, align 8, !tbaa !234
  %i.ov = extractvalue { ptr, i64 } %i.os, 0
  %i.ow = extractvalue { ptr, i64 } %i.os, 1
  %i.ox = tail call fastcc { ptr, i64 } @_ZL16stbtt__get_subrs10stbtt__bufS_(ptr %i.ou, i64 %i.ot, ptr %i.ov, i64 %i.ow) ; 2 uses
  %i.oy = extractvalue { ptr, i64 } %i.ox, 0
  %i.oz = extractvalue { ptr, i64 } %i.ox, 1
  store i64 %i.oz, ptr %.sroa.5, align 8
  br label %bb.dh

bb.dh:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %bb.cx, %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit, %bb.cw
  %.1255 = phi i32 [ 1, %bb.cw ], [ %.0254357, %_ZL15stbtt__buf_get8P10stbtt__buf.exit ], [ 1, %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit ], [ 1, %bb.cx ]
  %.sroa.073.2 = phi ptr [ %.sroa.073.0358, %bb.cw ], [ %.sroa.073.0358, %_ZL15stbtt__buf_get8P10stbtt__buf.exit ], [ %i.oy, %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit ], [ %.sroa.073.0358, %bb.cx ] ; 2 uses
  %i.pa = icmp slt i32 %.0243359, 1
  br i1 %i.pa, label %.critedge, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.pb = add nsw i32 %.0243359, -1               ; 2 uses
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pc
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !9
  %i.pf = fptosi float %i.pe to i32
  %i.pg = icmp sgt i32 %.0240362, 9
  br i1 %i.pg, label %.critedge, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ph = add nsw i32 %.0240362, 1
  %i.pi = sext i32 %.0240362 to i64
  %i.pj = getelementptr inbounds [16 x i8], ptr %3, i64 %i.pi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pj, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !322
  %i.pk = icmp eq i8 %i.ao, 10
  br i1 %i.pk, label %.cont, label %.else

.else:                                            ; preds = %bb.dj
  %.sroa.0.0.copyload.else.val = load ptr, ptr %i.aa, align 8, !tbaa !234
  br label %.cont

.cont:                                            ; preds = %bb.dj, %.else
  %.sroa.sel = phi ptr [ %.sroa.5, %bb.dj ], [ %.sroa.gep72, %.else ]
  %.sroa.0.0.copyload = phi ptr [ %.sroa.073.2, %bb.dj ], [ %.sroa.0.0.copyload.else.val, %.else ] ; 3 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.sel, align 8 ; 2 uses
  %.sroa.9.8.extract.shift.i = lshr i64 %.sroa.2.0.copyload, 32
  %.sroa.9.8.extract.trunc.i = trunc nuw i64 %.sroa.9.8.extract.shift.i to i32 ; 3 uses
  %i.pl = tail call i32 @llvm.smin.i32(i32 %.sroa.9.8.extract.trunc.i, i32 0) ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %.sroa.9.8.extract.trunc.i, 0
  br i1 %.not.i.i.i.i, label %bb.dk, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i

bb.dk:                                            ; preds = %.cont
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !22
  %i.pp = zext i8 %i.po to i32
  %i.pq = shl nuw nsw i32 %i.pp, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i:     ; preds = %bb.dk, %.cont
  %.sroa.4.0.i = phi i32 [ 1, %bb.dk ], [ %i.pl, %.cont ] ; 4 uses
  %.0.i.i.i.i = phi i32 [ %i.pq, %bb.dk ], [ 0, %.cont ] ; 2 uses
  %.not.i.i.1.i.i = icmp slt i32 %.sroa.4.0.i, %.sroa.9.8.extract.trunc.i
  br i1 %.not.i.i.1.i.i, label %bb.dl, label %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i

bb.dl:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i
  %i.pr = add nsw i32 %.sroa.4.0.i, 1
  %i.ps = sext i32 %.sroa.4.0.i to i64
  %i.pt = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.ps
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !22
  %i.pv = zext i8 %i.pu to i32
  %i.pw = or disjoint i32 %.0.i.i.i.i, %i.pv
  br label %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i

_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i:  ; preds = %bb.dl, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i
  %.sroa.4.1.i = phi i32 [ %i.pr, %bb.dl ], [ %.sroa.4.0.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i ]
  %.0.i.i.1.i.i = phi i32 [ %i.pw, %bb.dl ], [ %.0.i.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i ] ; 3 uses
  %i.px = icmp samesign ugt i32 %.0.i.i.1.i.i, 33899
  %i.py = icmp samesign ugt i32 %.0.i.i.1.i.i, 1239
  %spec.select.i = select i1 %i.py, i32 1131, i32 107
  %.0.i316 = select i1 %i.px, i32 32768, i32 %spec.select.i
  %i.pz = add nsw i32 %.0.i316, %i.pf             ; 3 uses
  %i.qa = icmp sgt i32 %i.pz, -1
  %.not.i317 = icmp slt i32 %i.pz, %.0.i.i.1.i.i
  %or.cond.i318 = and i1 %i.qa, %.not.i317
  br i1 %or.cond.i318, label %bb.dm, label %_ZL15stbtt__get_subr10stbtt__bufi.exit

bb.dm:                                            ; preds = %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i
  %.sroa.9.8.insert.shift.i = and i64 %.sroa.2.0.copyload, -4294967296
  %.sroa.4.8.insert.ext.i = zext i32 %.sroa.4.1.i to i64
  %.sroa.4.8.insert.insert.i = or disjoint i64 %.sroa.9.8.insert.shift.i, %.sroa.4.8.insert.ext.i
  %i.qb = tail call fastcc { ptr, i64 } @_ZL20stbtt__cff_index_get10stbtt__bufi(ptr readonly %.sroa.0.0.copyload, i64 %.sroa.4.8.insert.insert.i, i32 noundef %i.pz)
  br label %_ZL15stbtt__get_subr10stbtt__bufi.exit

_ZL15stbtt__get_subr10stbtt__bufi.exit:           ; preds = %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i, %bb.dm
  %.pn.i = phi { ptr, i64 } [ %i.qb, %bb.dm ], [ zeroinitializer, %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i ] ; 2 uses
  %i.qc = extractvalue { ptr, i64 } %.pn.i, 0
  %i.qd = extractvalue { ptr, i64 } %.pn.i, 1     ; 2 uses
  store ptr %i.qc, ptr %4, align 8, !tbaa !234
  store i64 %i.qd, ptr %.sroa.468.0..sroa_idx, align 8
  %i.qe = icmp ult i64 %i.qd, 4294967296
  br i1 %i.qe, label %.critedge, label %bb.dn

bb.dn:                                            ; preds = %_ZL15stbtt__get_subr10stbtt__bufi.exit
  store i32 0, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !323
  br label %.thread

bb.do:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.qf = icmp slt i32 %.0240362, 1
  br i1 %i.qf, label %.critedge, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.qg = add nsw i32 %.0240362, -1               ; 2 uses
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.qh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %i.qi, i64 16, i1 false), !tbaa.struct !322
  br label %.thread

bb.dq:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  tail call fastcc void @_ZL24stbtt__csctx_close_shapeP12stbtt__csctx(ptr noundef %2)
  br label %.critedge

bb.dr:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %.not.i319 = icmp slt i32 %i.al, %i.ai
  br i1 %.not.i319, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit321, label %.critedge

_ZL15stbtt__buf_get8P10stbtt__buf.exit321:        ; preds = %bb.dr
  %i.qj = add nsw i32 %i.aj, 2
  store i32 %i.qj, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !323
  %i.qk = sext i32 %i.al to i64
  %i.ql = getelementptr inbounds i8, ptr %i.ak, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !22
  switch i8 %i.qm, label %.critedge [
    i8 34, label %bb.ds
    i8 35, label %bb.du
    i8 36, label %bb.dw
    i8 37, label %bb.dy
  ]

bb.ds:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit321
  %i.qn = icmp slt i32 %.0243359, 7
  br i1 %i.qn, label %.critedge, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qo = load float, ptr %i.a, align 16, !tbaa !9
  %i.qp = load float, ptr %i.m, align 4, !tbaa !9
  %i.qq = load float, ptr %i.n, align 8, !tbaa !9 ; 2 uses
  %i.qr = load float, ptr %i.o, align 4, !tbaa !9
  %i.qs = load float, ptr %i.p, align 16, !tbaa !9
  %i.qt = load float, ptr %i.q, align 4, !tbaa !9
  %i.qu = load float, ptr %i.r, align 8, !tbaa !9
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.qo, float noundef 0.000000e+00, float noundef %i.qp, float noundef %i.qq, float noundef %i.qr, float noundef 0.000000e+00)
  %i.qv = fneg float %i.qq
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.qs, float noundef 0.000000e+00, float noundef %i.qt, float noundef %i.qv, float noundef %i.qu, float noundef 0.000000e+00)
  br label %.thread

bb.du:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit321
  %i.qw = icmp slt i32 %.0243359, 13
  br i1 %i.qw, label %.critedge, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.qx = load float, ptr %i.a, align 16, !tbaa !9
  %i.qy = load float, ptr %i.m, align 4, !tbaa !9
  %i.qz = load float, ptr %i.n, align 8, !tbaa !9
  %i.ra = load float, ptr %i.o, align 4, !tbaa !9
  %i.rb = load float, ptr %i.p, align 16, !tbaa !9
  %i.rc = load float, ptr %i.q, align 4, !tbaa !9
  %i.rd = load float, ptr %i.r, align 8, !tbaa !9
  %i.re = load float, ptr %i.s, align 4, !tbaa !9
  %i.rf = load float, ptr %i.t, align 16, !tbaa !9
  %i.rg = load float, ptr %i.u, align 4, !tbaa !9
  %i.rh = load float, ptr %i.v, align 8, !tbaa !9
  %i.ri = load float, ptr %i.w, align 4, !tbaa !9
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.qx, float noundef %i.qy, float noundef %i.qz, float noundef %i.ra, float noundef %i.rb, float noundef %i.rc)
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.rd, float noundef %i.re, float noundef %i.rf, float noundef %i.rg, float noundef %i.rh, float noundef %i.ri)
  br label %.thread

bb.dw:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit321
  %i.rj = icmp slt i32 %.0243359, 9
  br i1 %i.rj, label %.critedge, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rk = load float, ptr %i.a, align 16, !tbaa !9
  %i.rl = load float, ptr %i.m, align 4, !tbaa !9 ; 2 uses
  %i.rm = load float, ptr %i.n, align 8, !tbaa !9
  %i.rn = load float, ptr %i.o, align 4, !tbaa !9 ; 2 uses
  %i.ro = load float, ptr %i.p, align 16, !tbaa !9
  %i.rp = load float, ptr %i.q, align 4, !tbaa !9
  %i.rq = load float, ptr %i.r, align 8, !tbaa !9
  %i.rr = load float, ptr %i.s, align 4, !tbaa !9 ; 2 uses
  %i.rs = load float, ptr %i.t, align 16, !tbaa !9
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.rk, float noundef %i.rl, float noundef %i.rm, float noundef %i.rn, float noundef %i.ro, float noundef 0.000000e+00)
  %i.rt = fadd float %i.rl, %i.rn
  %i.ru = fadd float %i.rt, %i.rr
  %i.rv = fneg float %i.ru
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.rp, float noundef 0.000000e+00, float noundef %i.rq, float noundef %i.rr, float noundef %i.rs, float noundef %i.rv)
  br label %.thread

bb.dy:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit321
  %i.rw = icmp slt i32 %.0243359, 11
  br i1 %i.rw, label %.critedge, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rx = load float, ptr %i.v, align 8, !tbaa !9 ; 2 uses
  %i.ry = load <2 x float>, ptr %i.a, align 16, !tbaa !9 ; 3 uses
  %i.rz = load <2 x float>, ptr %i.n, align 8, !tbaa !9 ; 3 uses
  %i.sa = load <2 x float>, ptr %i.p, align 16, !tbaa !9 ; 3 uses
  %i.sb = load <2 x float>, ptr %i.r, align 8, !tbaa !9 ; 3 uses
  %i.sc = load <2 x float>, ptr %i.t, align 16, !tbaa !9 ; 3 uses
  %i.sd = fadd <2 x float> %i.ry, %i.rz
  %i.se = fadd <2 x float> %i.sd, %i.sa
  %i.sf = fadd <2 x float> %i.se, %i.sb
  %i.sg = fadd <2 x float> %i.sf, %i.sc           ; 2 uses
  %i.sh = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.sg) ; 2 uses
  %i.si = extractelement <2 x float> %i.sh, i64 0
  %i.sj = extractelement <2 x float> %i.sh, i64 1
  %i.sk = fcmp ogt float %i.si, %i.sj             ; 2 uses
  %i.sl = fneg <2 x float> %i.sg                  ; 2 uses
  %i.sm = extractelement <2 x float> %i.sl, i64 0
  %.0233 = select i1 %i.sk, float %i.rx, float %i.sm
  %i.sn = extractelement <2 x float> %i.sl, i64 1
  %.0 = select i1 %i.sk, float %i.sn, float %i.rx
  %i.so = extractelement <2 x float> %i.ry, i64 0
  %i.sp = extractelement <2 x float> %i.ry, i64 1
  %i.sq = extractelement <2 x float> %i.rz, i64 0
  %i.sr = extractelement <2 x float> %i.rz, i64 1
  %i.ss = extractelement <2 x float> %i.sa, i64 0
  %i.st = extractelement <2 x float> %i.sa, i64 1
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.so, float noundef %i.sp, float noundef %i.sq, float noundef %i.sr, float noundef %i.ss, float noundef %i.st)
  %i.su = extractelement <2 x float> %i.sb, i64 0
  %i.sv = extractelement <2 x float> %i.sb, i64 1
  %i.sw = extractelement <2 x float> %i.sc, i64 0
  %i.sx = extractelement <2 x float> %i.sc, i64 1
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.su, float noundef %i.sv, float noundef %i.sw, float noundef %i.sx, float noundef %.0233, float noundef %.0)
  br label %.thread

bb.ea:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.sy = icmp ult i8 %i.ao, 32
  br i1 %i.sy, label %.critedge, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.sz = icmp eq i8 %i.ao, -1
  br i1 %i.sz, label %bb.ec, label %bb.eh

bb.ec:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %bb.eb
  %.not.i.i323 = icmp slt i32 %i.al, %i.ai
  br i1 %.not.i.i323, label %bb.ed, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324

bb.ed:                                            ; preds = %bb.ec
  %i.ta = add nsw i32 %i.aj, 2
  %i.tb = sext i32 %i.al to i64
  %i.tc = getelementptr inbounds i8, ptr %i.ak, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !22
  %i.te = zext i8 %i.td to i32
  %i.tf = shl nuw nsw i32 %i.te, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324:      ; preds = %bb.ed, %bb.ec
  %i.tg = phi i32 [ %i.ta, %bb.ed ], [ %i.al, %bb.ec ] ; 4 uses
  %.0.i.i = phi i32 [ %i.tf, %bb.ed ], [ 0, %bb.ec ] ; 2 uses
  %.not.i.i323.1 = icmp slt i32 %i.tg, %i.ai
  br i1 %.not.i.i323.1, label %bb.ee, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.1

bb.ee:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324
  %i.th = add nsw i32 %i.tg, 1
  %i.ti = sext i32 %i.tg to i64
  %i.tj = getelementptr inbounds i8, ptr %i.ak, i64 %i.ti
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !22
  %i.tl = zext i8 %i.tk to i32
  %i.tm = or disjoint i32 %.0.i.i, %i.tl
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.1:    ; preds = %bb.ee, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324
  %i.tn = phi i32 [ %i.th, %bb.ee ], [ %i.tg, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324 ] ; 4 uses
  %.0.i.i.1 = phi i32 [ %i.tm, %bb.ee ], [ %.0.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324 ]
  %i.to = shl nuw nsw i32 %.0.i.i.1, 8            ; 2 uses
  %.not.i.i323.2 = icmp slt i32 %i.tn, %i.ai
  br i1 %.not.i.i323.2, label %bb.ef, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.2

bb.ef:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.1
  %i.tp = add nsw i32 %i.tn, 1
  %i.tq = sext i32 %i.tn to i64
  %i.tr = getelementptr inbounds i8, ptr %i.ak, i64 %i.tq
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !22
  %i.tt = zext i8 %i.ts to i32
  %i.tu = or disjoint i32 %i.to, %i.tt
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.2

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.2:    ; preds = %bb.ef, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.1
  %i.tv = phi i32 [ %i.tp, %bb.ef ], [ %i.tn, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.1 ] ; 4 uses
  %.0.i.i.2 = phi i32 [ %i.tu, %bb.ef ], [ %i.to, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.1 ]
  %i.tw = shl nuw i32 %.0.i.i.2, 8                ; 2 uses
  %.not.i.i323.3 = icmp slt i32 %i.tv, %i.ai
  br i1 %.not.i.i323.3, label %bb.eg, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.3

bb.eg:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.2
  %i.tx = add nsw i32 %i.tv, 1
  %i.ty = sext i32 %i.tv to i64
  %i.tz = getelementptr inbounds i8, ptr %i.ak, i64 %i.ty
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !22
  %i.ub = zext i8 %i.ua to i32
  %i.uc = or disjoint i32 %i.tw, %i.ub
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.3

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.3:    ; preds = %bb.eg, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.2
  %i.ud = phi i32 [ %i.tx, %bb.eg ], [ %i.tv, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.2 ]
  %.0.i.i.3 = phi i32 [ %i.uc, %bb.eg ], [ %i.tw, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.2 ]
  store i32 %i.ud, ptr %.sroa.468.0..sroa_idx, align 8
  %i.ue = sitofp i32 %.0.i.i.3 to float
  %i.uf = fmul nnan float %i.ue, f0x37800000
  br label %bb.ei

bb.eh:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %bb.eb
  %i.ug = icmp slt i32 %i.aj, 0
  %i.uh = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.ai)
  %..i.i326 = select i1 %i.ug, i32 %i.ai, i32 %i.uh
  store i32 %..i.i326, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !323
  %i.ui = call fastcc noundef i32 @_ZL14stbtt__cff_intP10stbtt__buf(ptr noundef %4)
  %i.uj = trunc i32 %i.ui to i16
  %i.uk = sitofp i16 %i.uj to float
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.3
  %.2252 = phi float [ %i.uf, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i324.3 ], [ %i.uk, %bb.eh ]
  %i.ul = icmp sgt i32 %.0243359, 47
  br i1 %i.ul, label %.critedge, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.um = add nsw i32 %.0243359, 1
  %i.un = sext i32 %.0243359 to i64
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.un
  store float %.2252, ptr %i.uo, align 4, !tbaa !9
  br label %.thread

.thread:                                          ; preds = %.lr.ph.split, %.lr.ph.split.us, %.preheader340, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit, %.lr.ph.split.preheader, %.lr.ph.split.us.preheader, %bb.cv, %bb.dz, %bb.dx, %bb.dv, %bb.dt, %bb.ct, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304, %bb.bh, %bb.bl, %bb.ab, %bb.aq, %bb.k, %bb.i, %bb.g, %bb.e, %bb.d, %bb.ej, %bb.dp, %bb.dn
  %.1236339 = phi i32 [ %.0235364, %bb.dp ], [ %.0235364, %bb.ej ], [ %.0235364, %bb.dn ], [ %.0235364, %bb.dz ], [ %.0235364, %bb.dx ], [ %.0235364, %bb.dv ], [ %.0235364, %bb.dt ], [ %.0235364, %bb.cv ], [ %.0235364, %bb.ct ], [ %.0235364, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304 ], [ %.0235364, %.lr.ph.split.us.preheader ], [ %.0235364, %bb.bh ], [ %.0235364, %bb.bl ], [ %.0235364, %bb.ab ], [ %.0235364, %bb.aq ], [ 0, %bb.d ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ %.0235364, %bb.e ], [ %.0235364, %.lr.ph.split.preheader ], [ %.0235364, %.preheader340 ], [ %.0235364, %.lr.ph.split.us ], [ %.0235364, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.0235364, %.lr.ph.split ]
  %.2239338 = phi i32 [ %.0237363, %bb.dp ], [ %.0237363, %bb.ej ], [ %.0237363, %bb.dn ], [ %.0237363, %bb.dz ], [ %.0237363, %bb.dx ], [ %.0237363, %bb.dv ], [ %.0237363, %bb.dt ], [ %.0237363, %bb.cv ], [ %.0237363, %bb.ct ], [ %.0237363, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304 ], [ %.0237363, %.lr.ph.split.us.preheader ], [ %.0237363, %bb.bh ], [ %.0237363, %bb.bl ], [ %.0237363, %bb.ab ], [ %.0237363, %bb.aq ], [ %.1238, %bb.d ], [ %.0237363, %bb.k ], [ %.0237363, %bb.i ], [ %.0237363, %bb.g ], [ %i.ax, %bb.e ], [ %.0237363, %.lr.ph.split.preheader ], [ %.0237363, %.preheader340 ], [ %.0237363, %.lr.ph.split.us ], [ %.0237363, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.0237363, %.lr.ph.split ]
  %.1241337 = phi i32 [ %i.qg, %bb.dp ], [ %.0240362, %bb.ej ], [ %i.ph, %bb.dn ], [ %.0240362, %bb.dz ], [ %.0240362, %bb.dx ], [ %.0240362, %bb.dv ], [ %.0240362, %bb.dt ], [ %.0240362, %bb.cv ], [ %.0240362, %bb.ct ], [ %.0240362, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304 ], [ %.0240362, %.lr.ph.split.us.preheader ], [ %.0240362, %bb.bh ], [ %.0240362, %bb.bl ], [ %.0240362, %bb.ab ], [ %.0240362, %bb.aq ], [ %.0240362, %bb.d ], [ %.0240362, %bb.k ], [ %.0240362, %bb.i ], [ %.0240362, %bb.g ], [ %.0240362, %bb.e ], [ %.0240362, %.lr.ph.split.preheader ], [ %.0240362, %.preheader340 ], [ %.0240362, %.lr.ph.split.us ], [ %.0240362, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.0240362, %.lr.ph.split ]
  %.sroa.073.3336 = phi ptr [ %.sroa.073.0358, %bb.dp ], [ %.sroa.073.0358, %bb.ej ], [ %.sroa.073.2, %bb.dn ], [ %.sroa.073.0358, %bb.dz ], [ %.sroa.073.0358, %bb.dx ], [ %.sroa.073.0358, %bb.dv ], [ %.sroa.073.0358, %bb.dt ], [ %.sroa.073.0358, %bb.cv ], [ %.sroa.073.0358, %bb.ct ], [ %.sroa.073.0358, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304 ], [ %.sroa.073.0358, %.lr.ph.split.us.preheader ], [ %.sroa.073.0358, %bb.bh ], [ %.sroa.073.0358, %bb.bl ], [ %.sroa.073.0358, %bb.ab ], [ %.sroa.073.0358, %bb.aq ], [ %.sroa.073.0358, %bb.d ], [ %.sroa.073.0358, %bb.k ], [ %.sroa.073.0358, %bb.i ], [ %.sroa.073.0358, %bb.g ], [ %.sroa.073.0358, %bb.e ], [ %.sroa.073.0358, %.lr.ph.split.preheader ], [ %.sroa.073.0358, %.preheader340 ], [ %.sroa.073.0358, %.lr.ph.split.us ], [ %.sroa.073.0358, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.sroa.073.0358, %.lr.ph.split ]
  %.2256335 = phi i32 [ %.0254357, %bb.dp ], [ %.0254357, %bb.ej ], [ %.1255, %bb.dn ], [ %.0254357, %bb.dz ], [ %.0254357, %bb.dx ], [ %.0254357, %bb.dv ], [ %.0254357, %bb.dt ], [ %.0254357, %bb.cv ], [ %.0254357, %bb.ct ], [ %.0254357, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304 ], [ %.0254357, %.lr.ph.split.us.preheader ], [ %.0254357, %bb.bh ], [ %.0254357, %bb.bl ], [ %.0254357, %bb.ab ], [ %.0254357, %bb.aq ], [ %.0254357, %bb.d ], [ %.0254357, %bb.k ], [ %.0254357, %bb.i ], [ %.0254357, %bb.g ], [ %.0254357, %bb.e ], [ %.0254357, %.lr.ph.split.preheader ], [ %.0254357, %.preheader340 ], [ %.0254357, %.lr.ph.split.us ], [ %.0254357, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.0254357, %.lr.ph.split ]
  %i.up = phi i32 [ %.0243359, %bb.dp ], [ %i.um, %bb.ej ], [ %i.pb, %bb.dn ], [ 0, %bb.dz ], [ 0, %bb.dx ], [ 0, %bb.dv ], [ 0, %bb.dt ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ 0, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304 ], [ 0, %.lr.ph.split.us.preheader ], [ 0, %bb.bh ], [ 0, %bb.bl ], [ 0, %bb.ab ], [ 0, %bb.aq ], [ 0, %bb.d ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %.lr.ph.split.preheader ], [ 0, %.preheader340 ], [ 0, %.lr.ph.split.us ], [ 0, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ 0, %.lr.ph.split ]
  %i.uq = load i32, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !323 ; 2 uses
  %i.ur = load i32, ptr %i.h, align 4, !tbaa !324 ; 2 uses
  %i.us = icmp slt i32 %i.uq, %i.ur
  br i1 %i.us, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit, label %.critedge, !llvm.loop !595

.critedge:                                        ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.z, %bb.aa, %bb.bf, %bb.bg, %bb.bp, %bb.bq, %._crit_edge352, %bb.cf, %._crit_edge, %bb.cu, %bb.dh, %bb.di, %_ZL15stbtt__get_subr10stbtt__bufi.exit, %bb.do, %bb.ea, %bb.ei, %.thread, %bb.du, %bb.ds, %_ZL15stbtt__buf_get8P10stbtt__buf.exit321, %bb.dw, %bb.dy, %bb.dr, %bb.a, %bb.dq
  %.3 = phi i32 [ 1, %bb.dq ], [ 0, %bb.a ], [ 0, %bb.dr ], [ 0, %bb.dy ], [ 0, %bb.dw ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit321 ], [ 0, %bb.ds ], [ 0, %bb.du ], [ 0, %.thread ], [ 0, %bb.ei ], [ 0, %bb.ea ], [ 0, %bb.do ], [ 0, %_ZL15stbtt__get_subr10stbtt__bufi.exit ], [ 0, %bb.di ], [ 0, %bb.dh ], [ 0, %bb.cu ], [ 0, %._crit_edge ], [ 0, %bb.cf ], [ 0, %._crit_edge352 ], [ 0, %bb.bq ], [ 0, %bb.bp ], [ 0, %bb.bg ], [ 0, %bb.bf ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !596 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load <2 x float>, ptr %i.a, align 8, !tbaa !9 ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0
  %i.f = fcmp une float %i.e, %i.c
  br i1 %i.f, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !597 ; 2 uses
  %i.i = extractelement <2 x float> %i.d, i64 1
  %i.j = fcmp une float %i.i, %i.h
  br i1 %i.j, label %._crit_edge.i, label %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.k = fptosi <2 x float> %i.d to <2 x i32>     ; 3 uses
  %i.l = load i32, ptr %0, align 8, !tbaa !576
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.o, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !578
  %i.o = extractelement <2 x i32> %i.k, i64 0     ; 4 uses
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !579
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %i.o, ptr %i.m, align 4, !tbaa !578
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !580
  %i.u = extractelement <2 x i32> %i.k, i64 1     ; 4 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !579
  %.not20.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not20.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 %i.u, ptr %i.s, align 4, !tbaa !580
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !581
  %i.aa = icmp sgt i32 %i.z, %i.o
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !579
  %.not21.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not21.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.o, ptr %i.y, align 8, !tbaa !581
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !582
  %i.af = icmp sgt i32 %i.ae, %i.u
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !579
  %.not22.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not22.i.i.i, label %bb.n, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 %i.u, ptr %i.ad, align 8, !tbaa !582
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i: ; preds = %bb.n, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !579
  %.phi.trans.insert7.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre8.i = load i32, ptr %.phi.trans.insert7.i, align 8, !tbaa !583
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !584
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !583 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [14 x i8], ptr %i.ak, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i8 2, ptr %i.ap, align 2, !tbaa !406
  %i.aq = trunc <2 x i32> %i.k to <2 x i16>
  store <2 x i16> %i.aq, ptr %i.ao, align 2, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i64 0, ptr %i.ar, align 2
  %.pre.pre = load float, ptr %i.b, align 8, !tbaa !596
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i

_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i: ; preds = %bb.o, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i
  %.pre = phi float [ %i.c, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %.pre.pre, %bb.o ]
  %i.as = phi i32 [ %.pre8.i, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %i.am, %bb.o ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = add nsw i32 %i.as, 1
  store i32 %i.au, ptr %i.at, align 8, !tbaa !583
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre13 = load float, ptr %.phi.trans.insert, align 4, !tbaa !597
  br label %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit

_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit: ; preds = %bb.b, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i
  %i.av = phi float [ %i.h, %bb.b ], [ %.pre13, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i ]
  %i.aw = phi float [ %i.c, %bb.b ], [ %.pre, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i ]
  %i.ax = fadd float %1, %i.aw                    ; 3 uses
  store float %i.ax, ptr %i.b, align 8, !tbaa !596
  store float %i.ax, ptr %i.a, align 8, !tbaa !598
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.az = fadd float %2, %i.av                    ; 3 uses
  store float %i.az, ptr %i.ay, align 4, !tbaa !597
  store float %i.az, ptr %.phi.trans.insert.i, align 4, !tbaa !599
  %i.ba = fptosi float %i.ax to i32               ; 5 uses
  %i.bb = fptosi float %i.az to i32               ; 5 uses
  %i.bc = load i32, ptr %0, align 8, !tbaa !576
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !578
  %i.bf = icmp slt i32 %i.be, %i.ba
  br i1 %i.bf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !579
  %.not.i.i12 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i12, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !578
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !580
  %i.bk = icmp slt i32 %i.bj, %i.bb
  br i1 %i.bk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !579
  %.not20.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not20.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !580
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !581
  %i.bp = icmp sgt i32 %i.bo, %i.ba
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !579
  %.not21.i.i = icmp eq i32 %i.br, 0
  br i1 %.not21.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.ba, ptr %i.bn, align 8, !tbaa !581
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !582
  %i.bu = icmp sgt i32 %i.bt, %i.bb
  br i1 %i.bu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
end_hunk_2
