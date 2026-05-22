inline.NumInlined: 2176
inline.NumDeleted: 448
begin_hunk_0_@_ZNK7simdutf8fallback14implementation4findEPKDsS3_Ds:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  br label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit20: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 6
  br label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit:              ; preds = %bb.b, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit18, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit20, %bb.g, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i, %bb.j
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %2, %bb.j ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %.029.lcssa.i.i.i, %bb.g ], [ %i.af, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit20 ], [ %i.ae, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit18 ], [ %i.ad, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.b ]
  ret ptr %.028.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 17) i32 @_ZNK7simdutf7icelake14implementation16detect_encodingsEPKcm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 1
  br i1 %i.a, label %bb.b, label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread368

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1                 ; 3 uses
  switch i8 %i.b, label %.critedge.i.i [
    i8 -1, label %bb.c
    i8 -2, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, -2
  br i1 %i.e, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ugt i64 %2, 3
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread

bb.h:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.h, %bb.c, %bb.b
  %i.p = icmp ugt i64 %2, 3
  br i1 %i.p, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.critedge.i.i
  switch i8 %i.b, label %_ZN7simdutf3BOM9check_bomEPKcm.exit [
    i8 0, label %bb.j
    i8 -17, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.k, label %_ZN7simdutf3BOM9check_bomEPKcm.exit

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, -2
  br i1 %i.v, label %bb.l, label %_ZN7simdutf3BOM9check_bomEPKcm.exit

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread, label %_ZN7simdutf3BOM9check_bomEPKcm.exit

bb.m:                                             ; preds = %.critedge.i.i
  %.not.i.i = icmp ne i64 %2, 2
  %i.z = icmp eq i8 %i.b, -17
  %or.cond.i.i = and i1 %.not.i.i, %i.z
  br i1 %or.cond.i.i, label %bb.n, label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread368

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, -69
  br i1 %i.ac, label %bb.o, label %_ZN7simdutf3BOM9check_bomEPKcm.exit

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, -65
  br i1 %i.af, label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread, label %_ZN7simdutf3BOM9check_bomEPKcm.exit

_ZN7simdutf3BOM9check_bomEPKcm.exit.thread368:    ; preds = %bb.m, %bb.a
  %i.ag = trunc nuw nsw i64 %2 to i32             ; 2 uses
  %i.ah = and i32 %i.ag, 1
  br label %._crit_edge

_ZN7simdutf3BOM9check_bomEPKcm.exit:              ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ai = trunc i64 %2 to i32                     ; 2 uses
  %i.aj = and i32 %i.ai, 1                        ; 2 uses
  %i.ak = and i32 %i.ai, 3                        ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = icmp sgt i64 %2, 63
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN7simdutf3BOM9check_bomEPKcm.exit, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69
  %.062349 = phi i32 [ %i.cm, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69 ], [ %i.aj, %_ZN7simdutf3BOM9check_bomEPKcm.exit ]
  %.063348 = phi i32 [ %.lobit, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69 ], [ 0, %_ZN7simdutf3BOM9check_bomEPKcm.exit ]
  %i.ao = phi <16 x i32> [ %i.cp, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69 ], [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit ]
  %i.ap = phi <16 x i32> [ %i.co, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69 ], [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit ]
  %.066347 = phi ptr [ %i.cq, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69 ], [ %1, %_ZN7simdutf3BOM9check_bomEPKcm.exit ] ; 2 uses
  %.sroa.19.0346 = phi <8 x i64> [ %.sroa.19.2, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69 ], [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit ] ; 2 uses
  %.sroa.14.0345 = phi <8 x i64> [ %.sroa.14.1, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69 ], [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit ] ; 2 uses
  %.sroa.0.0344 = phi <8 x i64> [ %.sroa.0.2, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69 ], [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit ]
  %i.aq = load <8 x i64>, ptr %.066347, align 1   ; 5 uses
  %i.ar = bitcast <8 x i64> %i.aq to <16 x i32>   ; 3 uses
  %i.as = bitcast <8 x i64> %i.aq to <64 x i8>    ; 5 uses
  %i.at = icmp slt <64 x i8> %i.as, zeroinitializer
  %i.au = bitcast <64 x i1> %i.at to i64
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.lr.ph._ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69_crit_edge, label %bb.p

.lr.ph._ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69_crit_edge: ; preds = %.lr.ph
  %.pre = bitcast <8 x i64> %i.aq to <32 x i16>
  br label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69

bb.p:                                             ; preds = %.lr.ph
  %i.aw = bitcast <8 x i64> %.sroa.14.0345 to <16 x i32>
  %i.ax = shufflevector <16 x i32> %i.ar, <16 x i32> %i.aw, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 11>
  %i.ay = bitcast <16 x i32> %i.ax to <64 x i8>   ; 3 uses
  %i.az = shufflevector <64 x i8> %i.ay, <64 x i8> %i.as, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.ba = bitcast <64 x i8> %i.az to <32 x i16>
  %i.bb = lshr <32 x i16> %i.ba, splat (i16 4)
  %i.bc = bitcast <32 x i16> %i.bb to <64 x i8>
  %i.bd = and <64 x i8> %i.bc, splat (i8 15)
  %i.be = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.bd)
  %i.bf = bitcast <64 x i8> %i.be to <8 x i64>
  %i.bg = and <64 x i8> %i.az, splat (i8 15)
  %i.bh = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.bg)
  %i.bi = bitcast <64 x i8> %i.bh to <8 x i64>
  %i.bj = bitcast <8 x i64> %i.aq to <32 x i16>   ; 2 uses
  %i.bk = lshr <32 x i16> %i.bj, splat (i16 4)
  %i.bl = bitcast <32 x i16> %i.bk to <64 x i8>
  %i.bm = and <64 x i8> %i.bl, splat (i8 15)
  %i.bn = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.bm)
  %i.bo = bitcast <64 x i8> %i.bn to <8 x i64>
  %i.bp = tail call noundef <8 x i64> @llvm.x86.avx512.pternlog.q.512(<8 x i64> %i.bf, <8 x i64> %i.bi, <8 x i64> %i.bo, i32 128)
  %i.bq = bitcast <8 x i64> %i.bp to <16 x i32>
  %i.br = shufflevector <64 x i8> %i.ay, <64 x i8> %i.as, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.bs = shufflevector <64 x i8> %i.ay, <64 x i8> %i.as, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.bt = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.br, <64 x i8> splat (i8 -33))
  %i.bu = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.bs, <64 x i8> splat (i8 -17))
  %i.bv = or <64 x i8> %i.bt, %i.bu
  %i.bw = add nuw <64 x i8> %i.bv, splat (i8 127)
  %i.bx = bitcast <64 x i8> %i.bw to <16 x i32>
  %i.by = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bx, <16 x i32> splat (i32 -2139062144), <16 x i32> %i.bq, i32 106)
  %i.bz = bitcast <16 x i32> %i.by to <8 x i64>
  %i.ca = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.as, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.cb = bitcast <64 x i8> %i.ca to <8 x i64>
  br label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69

_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69: ; preds = %.lr.ph._ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69_crit_edge, %bb.p
  %.pre-phi = phi <32 x i16> [ %.pre, %.lr.ph._ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69_crit_edge ], [ %i.bj, %bb.p ]
  %.sroa.19.0.pn341 = phi <8 x i64> [ %.sroa.19.0346, %.lr.ph._ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69_crit_edge ], [ %i.bz, %bb.p ]
  %.sroa.14.1 = phi <8 x i64> [ %.sroa.14.0345, %.lr.ph._ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69_crit_edge ], [ %i.aq, %bb.p ] ; 2 uses
  %.sroa.19.2 = phi <8 x i64> [ %.sroa.19.0346, %.lr.ph._ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69_crit_edge ], [ %i.cb, %bb.p ] ; 2 uses
  %.sroa.0.2 = or <8 x i64> %.sroa.19.0.pn341, %.sroa.0.0344 ; 2 uses
  %i.cc = add <32 x i16> %.pre-phi, splat (i16 10240) ; 2 uses
  %i.cd = icmp ult <32 x i16> %i.cc, splat (i16 2048)
  %i.ce = icmp ult <32 x i16> %i.cc, splat (i16 1024) ; 2 uses
  %i.cf = bitcast <32 x i1> %i.ce to i32          ; 2 uses
  %i.cg = xor <32 x i1> %i.cd, %i.ce
  %i.ch = bitcast <32 x i1> %i.cg to i32
  %i.ci = shl i32 %i.cf, 1
  %i.cj = or disjoint i32 %i.ci, %.063348
  %i.ck = icmp ne i32 %i.cj, %i.ch
  %i.cl = zext i1 %i.ck to i32
  %i.cm = or i32 %.062349, %i.cl                  ; 2 uses
  %.lobit = lshr i32 %i.cf, 31                    ; 2 uses
  %i.cn = add <16 x i32> %i.ar, splat (i32 -57344)
  %i.co = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.cn, <16 x i32> %i.ap) ; 2 uses
  %i.cp = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.ar, <16 x i32> %i.ao) ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.066347, i64 64 ; 3 uses
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.am, %i.cr                    ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 63
  br i1 %i.ct, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !224

._crit_edge.loopexit:                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit69
  %3 = bitcast <8 x i64> %.sroa.14.1 to <64 x i8>
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread368, %._crit_edge.loopexit, %_ZN7simdutf3BOM9check_bomEPKcm.exit
  %i.cu = phi i32 [ %i.ak, %_ZN7simdutf3BOM9check_bomEPKcm.exit ], [ %i.ak, %._crit_edge.loopexit ], [ %i.ag, %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread368 ]
  %.sroa.0.0.lcssa = phi <8 x i64> [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit ], [ %.sroa.0.2, %._crit_edge.loopexit ], [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread368 ]
  %.sroa.14.0.lcssa = phi <64 x i8> [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit ], [ %3, %._crit_edge.loopexit ], [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread368 ] ; 3 uses
  %.sroa.19.0.lcssa = phi <8 x i64> [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit ], [ %.sroa.19.2, %._crit_edge.loopexit ], [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread368 ]
  %.066.lcssa = phi ptr [ %1, %_ZN7simdutf3BOM9check_bomEPKcm.exit ], [ %i.cq, %._crit_edge.loopexit ], [ %1, %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread368 ]
  %.lcssa343 = phi <16 x i32> [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit ], [ %i.co, %._crit_edge.loopexit ], [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread368 ]
  %.lcssa342 = phi <16 x i32> [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit ], [ %i.cp, %._crit_edge.loopexit ], [ zeroinitializer, %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread368 ]
  %.063.lcssa = phi i32 [ 0, %_ZN7simdutf3BOM9check_bomEPKcm.exit ], [ %.lobit, %._crit_edge.loopexit ], [ 0, %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread368 ]
  %.062.lcssa = phi i32 [ %i.aj, %_ZN7simdutf3BOM9check_bomEPKcm.exit ], [ %i.cm, %._crit_edge.loopexit ], [ %i.ah, %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread368 ]
  %.lcssa = phi i64 [ %2, %_ZN7simdutf3BOM9check_bomEPKcm.exit ], [ %i.cs, %._crit_edge.loopexit ], [ %2, %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread368 ]
  %notmask = shl nsw i64 -1, %.lcssa
  %i.cv = xor i64 %notmask, -1
  %i.cw = bitcast i64 %i.cv to <64 x i1>
  %i.cx = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.066.lcssa, <64 x i1> %i.cw, <64 x i8> zeroinitializer) ; 8 uses
  %i.cy = bitcast <64 x i8> %i.cx to <16 x i32>   ; 2 uses
  %i.cz = icmp slt <64 x i8> %i.cx, zeroinitializer
  %i.da = bitcast <64 x i1> %i.cz to i64
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %._crit_edge._ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit_crit_edge, label %bb.q

._crit_edge._ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit_crit_edge: ; preds = %._crit_edge
  %.pre363 = bitcast <64 x i8> %i.cx to <32 x i16>
  br label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit

bb.q:                                             ; preds = %._crit_edge
  %4 = shufflevector <64 x i8> %.sroa.14.0.lcssa, <64 x i8> %i.cx, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.dc = bitcast <64 x i8> %4 to <32 x i16>
  %i.dd = lshr <32 x i16> %i.dc, splat (i16 4)
  %i.de = bitcast <32 x i16> %i.dd to <64 x i8>
  %i.df = and <64 x i8> %i.de, splat (i8 15)
  %i.dg = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.df)
  %i.dh = bitcast <64 x i8> %i.dg to <8 x i64>
  %i.di = and <64 x i8> %4, splat (i8 15)
  %i.dj = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.di)
  %i.dk = bitcast <64 x i8> %i.dj to <8 x i64>
  %i.dl = bitcast <64 x i8> %i.cx to <32 x i16>   ; 2 uses
  %i.dm = lshr <32 x i16> %i.dl, splat (i16 4)
  %i.dn = bitcast <32 x i16> %i.dm to <64 x i8>
  %i.do = and <64 x i8> %i.dn, splat (i8 15)
  %i.dp = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.do)
  %i.dq = bitcast <64 x i8> %i.dp to <8 x i64>
  %i.dr = tail call noundef <8 x i64> @llvm.x86.avx512.pternlog.q.512(<8 x i64> %i.dh, <8 x i64> %i.dk, <8 x i64> %i.dq, i32 128)
  %i.ds = bitcast <8 x i64> %i.dr to <16 x i32>
  %5 = shufflevector <64 x i8> %.sroa.14.0.lcssa, <64 x i8> %i.cx, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %6 = shufflevector <64 x i8> %.sroa.14.0.lcssa, <64 x i8> %i.cx, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.dt = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %5, <64 x i8> splat (i8 -33))
  %i.du = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %6, <64 x i8> splat (i8 -17))
  %i.dv = or <64 x i8> %i.dt, %i.du
  %i.dw = add nuw <64 x i8> %i.dv, splat (i8 127)
  %i.dx = bitcast <64 x i8> %i.dw to <16 x i32>
  %i.dy = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dx, <16 x i32> splat (i32 -2139062144), <16 x i32> %i.ds, i32 106)
  %i.dz = bitcast <16 x i32> %i.dy to <8 x i64>
  %i.ea = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.cx, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.eb = bitcast <64 x i8> %i.ea to <8 x i64>
  %i.ec = or <8 x i64> %i.dz, %i.eb
  br label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit

_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit: ; preds = %._crit_edge._ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit_crit_edge, %bb.q
  %.pre-phi364 = phi <32 x i16> [ %.pre363, %._crit_edge._ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit_crit_edge ], [ %i.dl, %bb.q ]
  %.sroa.19.0.pn = phi <8 x i64> [ %.sroa.19.0.lcssa, %._crit_edge._ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit_crit_edge ], [ %i.ec, %bb.q ]
  %i.ed = add <32 x i16> %.pre-phi364, splat (i16 10240) ; 2 uses
  %i.ee = icmp ult <32 x i16> %i.ed, splat (i16 2048)
  %i.ef = icmp ult <32 x i16> %i.ed, splat (i16 1024) ; 2 uses
  %i.eg = bitcast <32 x i1> %i.ef to i32
  %i.eh = xor <32 x i1> %i.ee, %i.ef
  %i.ei = bitcast <32 x i1> %i.eh to i32
  %i.ej = shl i32 %i.eg, 1
  %i.ek = or disjoint i32 %i.ej, %.063.lcssa
  %i.el = icmp ne i32 %i.ek, %i.ei
  %i.em = zext i1 %i.el to i32
  %i.en = or i32 %.062.lcssa, %i.em
  %i.eo = add <16 x i32> %i.cy, splat (i32 -57344)
  %i.ep = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.eo, <16 x i32> %.lcssa343)
  %i.eq = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.cy, <16 x i32> %.lcssa342)
  %i.er = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.eq, <16 x i32> splat (i32 1114111))
  %i.es = bitcast <16 x i32> %i.er to <64 x i8>
  %i.et = icmp ne <64 x i8> %i.es, <i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0, i8 -1, i8 -1, i8 16, i8 0>
  %i.eu = bitcast <64 x i1> %i.et to i64
  %i.ev = icmp ne i64 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %i.ex = or i32 %i.cu, %i.ew
  %i.ey = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.ep, <16 x i32> splat (i32 -2049))
  %i.ez = bitcast <16 x i32> %i.ey to <64 x i8>
  %i.fa = icmp ne <64 x i8> %i.ez, <i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1, i8 -1, i8 -9, i8 -1, i8 -1>
  %i.fb = bitcast <64 x i1> %i.fa to i64
  %i.fc = icmp ne i64 %i.fb, 0
  %i.fd = zext i1 %i.fc to i32
  %i.fe = or i32 %i.ex, %i.fd
  %i.ff = or <8 x i64> %.sroa.19.0.pn, %.sroa.0.0.lcssa
  %i.fg = bitcast <8 x i64> %i.ff to <64 x i8>
  %i.fh = icmp ne <64 x i8> %i.fg, zeroinitializer
  %i.fi = bitcast <64 x i1> %i.fh to i64
  %.not = icmp eq i64 %i.fi, 0
  %spec.select = zext i1 %.not to i32             ; 2 uses
  %i.fj = icmp eq i32 %i.en, 0
  %i.fk = or disjoint i32 %spec.select, 2
  %.1 = select i1 %i.fj, i32 %i.fk, i32 %spec.select ; 2 uses
  %i.fl = icmp eq i32 %i.fe, 0
  %i.fm = or disjoint i32 %.1, 8
  %.2 = select i1 %i.fl, i32 %i.fm, i32 %.1
  br label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread

_ZN7simdutf3BOM9check_bomEPKcm.exit.thread:       ; preds = %bb.o, %bb.l, %bb.h, %bb.f, %bb.g, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit
  %.0 = phi i32 [ %.2, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit ], [ 1, %bb.o ], [ 16, %bb.l ], [ 4, %bb.h ], [ 8, %bb.f ], [ 2, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf7icelake14implementation13validate_utf8EPKcm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = icmp sgt i64 %2, 63
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit18
  %.015228 = phi ptr [ %i.aq, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit18 ], [ %1, %bb.b ] ; 2 uses
  %.sroa.19.0227 = phi <8 x i64> [ %.sroa.19.3, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit18 ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.14.0226 = phi <8 x i64> [ %.sroa.14.1, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit18 ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.0.0225 = phi <8 x i64> [ %.sroa.0.3, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit18 ], [ zeroinitializer, %bb.b ]
  %i.e = load <8 x i64>, ptr %.015228, align 1    ; 4 uses
  %i.f = bitcast <8 x i64> %i.e to <64 x i8>      ; 5 uses
  %i.g = icmp slt <64 x i8> %i.f, zeroinitializer
  %i.h = bitcast <64 x i1> %i.g to i64
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit18, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = bitcast <8 x i64> %i.e to <16 x i32>
  %i.k = bitcast <8 x i64> %.sroa.14.0226 to <16 x i32>
  %i.l = shufflevector <16 x i32> %i.j, <16 x i32> %i.k, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 11>
  %i.m = bitcast <16 x i32> %i.l to <64 x i8>     ; 3 uses
  %i.n = shufflevector <64 x i8> %i.m, <64 x i8> %i.f, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.o = bitcast <64 x i8> %i.n to <32 x i16>
  %i.p = lshr <32 x i16> %i.o, splat (i16 4)
  %i.q = bitcast <32 x i16> %i.p to <64 x i8>
  %i.r = and <64 x i8> %i.q, splat (i8 15)
  %i.s = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.r)
  %i.t = bitcast <64 x i8> %i.s to <8 x i64>
  %i.u = and <64 x i8> %i.n, splat (i8 15)
  %i.v = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.u)
  %i.w = bitcast <64 x i8> %i.v to <8 x i64>
  %i.x = bitcast <8 x i64> %i.e to <32 x i16>
  %i.y = lshr <32 x i16> %i.x, splat (i16 4)
  %i.z = bitcast <32 x i16> %i.y to <64 x i8>
  %i.aa = and <64 x i8> %i.z, splat (i8 15)
  %i.ab = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.aa)
  %i.ac = bitcast <64 x i8> %i.ab to <8 x i64>
  %i.ad = tail call noundef <8 x i64> @llvm.x86.avx512.pternlog.q.512(<8 x i64> %i.t, <8 x i64> %i.w, <8 x i64> %i.ac, i32 128)
  %i.ae = bitcast <8 x i64> %i.ad to <16 x i32>
  %i.af = shufflevector <64 x i8> %i.m, <64 x i8> %i.f, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ag = shufflevector <64 x i8> %i.m, <64 x i8> %i.f, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.ah = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.af, <64 x i8> splat (i8 -33))
  %i.ai = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.ag, <64 x i8> splat (i8 -17))
  %i.aj = or <64 x i8> %i.ah, %i.ai
  %i.ak = add nuw <64 x i8> %i.aj, splat (i8 127)
  %i.al = bitcast <64 x i8> %i.ak to <16 x i32>
  %i.am = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.al, <16 x i32> splat (i32 -2139062144), <16 x i32> %i.ae, i32 106)
  %i.an = bitcast <16 x i32> %i.am to <8 x i64>
  %i.ao = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.f, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.ap = bitcast <64 x i8> %i.ao to <8 x i64>
  br label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit18

_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit18: ; preds = %.lr.ph, %bb.c
  %.sroa.19.0.pn = phi <8 x i64> [ %i.an, %bb.c ], [ %.sroa.19.0227, %.lr.ph ]
  %.sroa.14.1 = phi <8 x i64> [ %i.e, %bb.c ], [ %.sroa.14.0226, %.lr.ph ] ; 2 uses
  %.sroa.19.3 = phi <8 x i64> [ %i.ap, %bb.c ], [ %.sroa.19.0227, %.lr.ph ] ; 2 uses
  %.sroa.0.3 = or <8 x i64> %.sroa.19.0.pn, %.sroa.0.0225 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.015228, i64 64 ; 3 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.c, %i.ar                     ; 2 uses
  %i.at = icmp sgt i64 %i.as, 63
  br i1 %i.at, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !225

._crit_edge.loopexit:                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit18
  %3 = bitcast <8 x i64> %.sroa.14.1 to <64 x i8>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.sroa.0.0.lcssa = phi <8 x i64> [ zeroinitializer, %bb.b ], [ %.sroa.0.3, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.14.0.lcssa = phi <64 x i8> [ zeroinitializer, %bb.b ], [ %3, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.19.0.lcssa = phi <8 x i64> [ zeroinitializer, %bb.b ], [ %.sroa.19.3, %._crit_edge.loopexit ] ; 3 uses
  %.015.lcssa = phi ptr [ %1, %bb.b ], [ %i.aq, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i64 [ %2, %bb.b ], [ %i.as, %._crit_edge.loopexit ]
  %.not = icmp eq ptr %i.b, %.015.lcssa
  br i1 %.not, label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.au = sub nsw i64 64, %.lcssa
  %i.av = lshr i64 -1, %i.au
  %i.aw = bitcast i64 %i.av to <64 x i1>
  %i.ax = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.015.lcssa, <64 x i1> %i.aw, <64 x i8> zeroinitializer) ; 6 uses
  %i.ay = icmp slt <64 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <64 x i1> %i.ay to i64
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = or <8 x i64> %.sroa.19.0.lcssa, %.sroa.0.0.lcssa
  br label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit

bb.f:                                             ; preds = %bb.d
  %4 = shufflevector <64 x i8> %.sroa.14.0.lcssa, <64 x i8> %i.ax, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.bc = bitcast <64 x i8> %4 to <32 x i16>
  %i.bd = lshr <32 x i16> %i.bc, splat (i16 4)
  %i.be = bitcast <32 x i16> %i.bd to <64 x i8>
  %i.bf = and <64 x i8> %i.be, splat (i8 15)
  %i.bg = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.bf)
  %i.bh = bitcast <64 x i8> %i.bg to <8 x i64>
  %i.bi = and <64 x i8> %4, splat (i8 15)
  %i.bj = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.bi)
  %i.bk = bitcast <64 x i8> %i.bj to <8 x i64>
  %i.bl = bitcast <64 x i8> %i.ax to <32 x i16>
  %i.bm = lshr <32 x i16> %i.bl, splat (i16 4)
  %i.bn = bitcast <32 x i16> %i.bm to <64 x i8>
  %i.bo = and <64 x i8> %i.bn, splat (i8 15)
  %i.bp = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.bo)
  %i.bq = bitcast <64 x i8> %i.bp to <8 x i64>
  %i.br = tail call noundef <8 x i64> @llvm.x86.avx512.pternlog.q.512(<8 x i64> %i.bh, <8 x i64> %i.bk, <8 x i64> %i.bq, i32 128)
  %i.bs = bitcast <8 x i64> %i.br to <16 x i32>
  %5 = shufflevector <64 x i8> %.sroa.14.0.lcssa, <64 x i8> %i.ax, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %6 = shufflevector <64 x i8> %.sroa.14.0.lcssa, <64 x i8> %i.ax, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.bt = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %5, <64 x i8> splat (i8 -33))
  %i.bu = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %6, <64 x i8> splat (i8 -17))
  %i.bv = or <64 x i8> %i.bt, %i.bu
  %i.bw = add nuw <64 x i8> %i.bv, splat (i8 127)
  %i.bx = bitcast <64 x i8> %i.bw to <16 x i32>
  %i.by = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bx, <16 x i32> splat (i32 -2139062144), <16 x i32> %i.bs, i32 106)
  %i.bz = bitcast <16 x i32> %i.by to <8 x i64>
  %i.ca = or <8 x i64> %.sroa.0.0.lcssa, %i.bz
  %i.cb = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.ax, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.cc = bitcast <64 x i8> %i.cb to <8 x i64>
  br label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit

_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit: ; preds = %bb.f, %bb.e, %._crit_edge
  %.sroa.0.1 = phi <8 x i64> [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.bb, %bb.e ], [ %i.ca, %bb.f ]
  %.sroa.19.1 = phi <8 x i64> [ %.sroa.19.0.lcssa, %._crit_edge ], [ %.sroa.19.0.lcssa, %bb.e ], [ %i.cc, %bb.f ]
  %i.cd = or <8 x i64> %.sroa.19.1, %.sroa.0.1
  %i.ce = bitcast <8 x i64> %i.cd to <64 x i8>
  %i.cf = icmp ne <64 x i8> %i.ce, zeroinitializer
  %i.cg = bitcast <64 x i1> %i.cf to i64
  %.not224 = icmp eq i64 %i.cg, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit
  %.0 = phi i1 [ %.not224, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7icelake14implementation25validate_utf8_with_errorsEPKcm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.h, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = icmp sgt i64 %2, 63
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.e = and i64 %2, 9223372036854775744
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.0273 = phi ptr [ %i.av, %bb.d ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.035272 = phi i64 [ %i.au, %bb.d ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.0271 = phi <8 x i64> [ %.sroa.0.3, %bb.d ], [ zeroinitializer, %.lr.ph.preheader ]
  %.sroa.15.0270 = phi <8 x i64> [ %.sroa.15.1, %bb.d ], [ zeroinitializer, %.lr.ph.preheader ] ; 2 uses
  %.sroa.20.0269 = phi <8 x i64> [ %.sroa.20.3, %bb.d ], [ zeroinitializer, %.lr.ph.preheader ] ; 2 uses
  %i.f = load <8 x i64>, ptr %.0273, align 1      ; 4 uses
  %i.g = bitcast <8 x i64> %i.f to <64 x i8>      ; 5 uses
  %i.h = icmp slt <64 x i8> %i.g, zeroinitializer
  %i.i = bitcast <64 x i1> %i.h to i64
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit42, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = bitcast <8 x i64> %i.f to <16 x i32>
  %i.l = bitcast <8 x i64> %.sroa.15.0270 to <16 x i32>
  %i.m = shufflevector <16 x i32> %i.k, <16 x i32> %i.l, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 11>
  %i.n = bitcast <16 x i32> %i.m to <64 x i8>     ; 3 uses
  %i.o = shufflevector <64 x i8> %i.n, <64 x i8> %i.g, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.p = bitcast <64 x i8> %i.o to <32 x i16>
  %i.q = lshr <32 x i16> %i.p, splat (i16 4)
  %i.r = bitcast <32 x i16> %i.q to <64 x i8>
  %i.s = and <64 x i8> %i.r, splat (i8 15)
  %i.t = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.s)
  %i.u = bitcast <64 x i8> %i.t to <8 x i64>
  %i.v = and <64 x i8> %i.o, splat (i8 15)
  %i.w = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.v)
  %i.x = bitcast <64 x i8> %i.w to <8 x i64>
  %i.y = bitcast <8 x i64> %i.f to <32 x i16>
  %i.z = lshr <32 x i16> %i.y, splat (i16 4)
  %i.aa = bitcast <32 x i16> %i.z to <64 x i8>
  %i.ab = and <64 x i8> %i.aa, splat (i8 15)
  %i.ac = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.ab)
  %i.ad = bitcast <64 x i8> %i.ac to <8 x i64>
  %i.ae = tail call noundef <8 x i64> @llvm.x86.avx512.pternlog.q.512(<8 x i64> %i.u, <8 x i64> %i.x, <8 x i64> %i.ad, i32 128)
  %i.af = bitcast <8 x i64> %i.ae to <16 x i32>
  %i.ag = shufflevector <64 x i8> %i.n, <64 x i8> %i.g, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ah = shufflevector <64 x i8> %i.n, <64 x i8> %i.g, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.ai = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.ag, <64 x i8> splat (i8 -33))
  %i.aj = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.ah, <64 x i8> splat (i8 -17))
  %i.ak = or <64 x i8> %i.ai, %i.aj
  %i.al = add nuw <64 x i8> %i.ak, splat (i8 127)
  %i.am = bitcast <64 x i8> %i.al to <16 x i32>
  %i.an = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.am, <16 x i32> splat (i32 -2139062144), <16 x i32> %i.af, i32 106)
  %i.ao = bitcast <16 x i32> %i.an to <8 x i64>
  %i.ap = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.g, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.aq = bitcast <64 x i8> %i.ap to <8 x i64>
  br label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit42

_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit42: ; preds = %.lr.ph, %bb.c
  %.sroa.20.3 = phi <8 x i64> [ %i.aq, %bb.c ], [ %.sroa.20.0269, %.lr.ph ] ; 2 uses
  %.sroa.15.1 = phi <8 x i64> [ %i.f, %bb.c ], [ %.sroa.15.0270, %.lr.ph ] ; 2 uses
  %.sroa.20.0.pn = phi <8 x i64> [ %i.ao, %bb.c ], [ %.sroa.20.0269, %.lr.ph ]
  %.sroa.0.3 = or <8 x i64> %.sroa.20.0.pn, %.sroa.0.0271 ; 3 uses
  %i.ar = bitcast <8 x i64> %.sroa.0.3 to <64 x i8>
  %i.as = icmp ne <64 x i8> %i.ar, zeroinitializer
  %i.at = bitcast <64 x i1> %i.as to i64
  %.not262 = icmp eq i64 %i.at, 0
  br i1 %.not262, label %bb.d, label %.thread

.thread:                                          ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit42
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %.035272, i64 1)
  br label %.sink.split

bb.d:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit42
  %i.au = add nuw i64 %.035272, 64
  %i.av = getelementptr inbounds nuw i8, ptr %.0273, i64 64 ; 3 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.c, %i.aw                     ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 63
  br i1 %i.ay, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !226

._crit_edge.loopexit:                             ; preds = %bb.d
  %3 = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 1)
  %4 = bitcast <8 x i64> %.sroa.15.1 to <64 x i8>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.sroa.20.0.lcssa = phi <8 x i64> [ zeroinitializer, %bb.b ], [ %.sroa.20.3, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.15.0.lcssa = phi <64 x i8> [ zeroinitializer, %bb.b ], [ %4, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.0.0.lcssa = phi <8 x i64> [ zeroinitializer, %bb.b ], [ %.sroa.0.3, %._crit_edge.loopexit ] ; 3 uses
  %.035.lcssa = phi i64 [ 0, %bb.b ], [ %3, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %1, %bb.b ], [ %i.av, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i64 [ %2, %bb.b ], [ %i.ax, %._crit_edge.loopexit ]
  %.not = icmp eq ptr %i.b, %.0.lcssa
  br i1 %.not, label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.az = sub nsw i64 64, %.lcssa
  %i.ba = lshr i64 -1, %i.az
  %i.bb = bitcast i64 %i.ba to <64 x i1>
  %i.bc = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0.lcssa, <64 x i1> %i.bb, <64 x i8> zeroinitializer) ; 6 uses
  %i.bd = icmp slt <64 x i8> %i.bc, zeroinitializer
  %i.be = bitcast <64 x i1> %i.bd to i64
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bg = or <8 x i64> %.sroa.0.0.lcssa, %.sroa.20.0.lcssa
  br label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit

bb.g:                                             ; preds = %bb.e
  %5 = shufflevector <64 x i8> %.sroa.15.0.lcssa, <64 x i8> %i.bc, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.bh = bitcast <64 x i8> %5 to <32 x i16>
  %i.bi = lshr <32 x i16> %i.bh, splat (i16 4)
  %i.bj = bitcast <32 x i16> %i.bi to <64 x i8>
  %i.bk = and <64 x i8> %i.bj, splat (i8 15)
  %i.bl = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.bk)
  %i.bm = bitcast <64 x i8> %i.bl to <8 x i64>
  %i.bn = and <64 x i8> %5, splat (i8 15)
  %i.bo = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.bn)
  %i.bp = bitcast <64 x i8> %i.bo to <8 x i64>
  %i.bq = bitcast <64 x i8> %i.bc to <32 x i16>
  %i.br = lshr <32 x i16> %i.bq, splat (i16 4)
  %i.bs = bitcast <32 x i16> %i.br to <64 x i8>
  %i.bt = and <64 x i8> %i.bs, splat (i8 15)
  %i.bu = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.bt)
  %i.bv = bitcast <64 x i8> %i.bu to <8 x i64>
  %i.bw = tail call noundef <8 x i64> @llvm.x86.avx512.pternlog.q.512(<8 x i64> %i.bm, <8 x i64> %i.bp, <8 x i64> %i.bv, i32 128)
  %i.bx = bitcast <8 x i64> %i.bw to <16 x i32>
  %6 = shufflevector <64 x i8> %.sroa.15.0.lcssa, <64 x i8> %i.bc, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %7 = shufflevector <64 x i8> %.sroa.15.0.lcssa, <64 x i8> %i.bc, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.by = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %6, <64 x i8> splat (i8 -33))
  %i.bz = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %7, <64 x i8> splat (i8 -17))
  %i.ca = or <64 x i8> %i.by, %i.bz
  %i.cb = add nuw <64 x i8> %i.ca, splat (i8 127)
  %i.cc = bitcast <64 x i8> %i.cb to <16 x i32>
  %i.cd = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cc, <16 x i32> splat (i32 -2139062144), <16 x i32> %i.bx, i32 106)
  %i.ce = bitcast <16 x i32> %i.cd to <8 x i64>
  %i.cf = or <8 x i64> %.sroa.0.0.lcssa, %i.ce
  %i.cg = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.bc, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.ch = bitcast <64 x i8> %i.cg to <8 x i64>
  br label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit

_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit: ; preds = %bb.g, %bb.f, %._crit_edge
  %.sroa.20.1 = phi <8 x i64> [ %.sroa.20.0.lcssa, %._crit_edge ], [ %.sroa.20.0.lcssa, %bb.f ], [ %i.ch, %bb.g ]
  %.sroa.0.1 = phi <8 x i64> [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.bg, %bb.f ], [ %i.cf, %bb.g ]
  %i.ci = or <8 x i64> %.sroa.0.1, %.sroa.20.1
  %i.cj = bitcast <8 x i64> %i.ci to <64 x i8>
  %i.ck = icmp ne <64 x i8> %i.cj, zeroinitializer
  %i.cl = bitcast <64 x i1> %i.ck to i64
  %.not261 = icmp eq i64 %i.cl, 0
  br i1 %.not261, label %bb.h, label %.sink.split

.sink.split:                                      ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit, %.thread
  %.035.lcssa.sink297 = phi i64 [ %spec.select, %.thread ], [ %.035.lcssa, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %.035.lcssa.sink297
  %i.cn = sub i64 %2, %.035.lcssa.sink297
  %i.co = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_14utf831rewind_and_validate_with_errorsEPKcS4_m(ptr noundef %1, ptr noundef %i.cm, i64 noundef %i.cn) #49 ; 2 uses
  %i.cp = extractvalue { i32, i64 } %i.co, 0
  %i.cq = extractvalue { i32, i64 } %i.co, 1
  %i.cr = add i64 %i.cq, %.035.lcssa.sink297
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit, %bb.a
  %.sroa.064.3 = phi i32 [ 0, %bb.a ], [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit ], [ %i.cp, %.sink.split ]
  %.sroa.5.3 = phi i64 [ 0, %bb.a ], [ %2, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit ], [ %i.cr, %.sink.split ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.064.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.3, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_14utf831rewind_and_validate_with_errorsEPKcS4_m(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp slt i8 %i.a, -64
  br i1 %i.b, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %1, i64 -5
  %i.c = load i8, ptr %1, align 1
  %.not = icmp slt i8 %i.c, -64
  br i1 %.not, label %.preheader.1, label %bb.b

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.d = getelementptr inbounds i8, ptr %1, i64 -1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1
  %.not.1 = icmp slt i8 %i.e, -64
  br i1 %.not.1, label %.preheader.2, label %bb.b

.preheader.2:                                     ; preds = %.preheader.1
  %i.f = getelementptr inbounds i8, ptr %1, i64 -2 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1
  %.not.2 = icmp slt i8 %i.g, -64
  br i1 %.not.2, label %.preheader.3, label %bb.b

.preheader.3:                                     ; preds = %.preheader.2
  %i.h = getelementptr inbounds i8, ptr %1, i64 -3 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  %.not.3 = icmp slt i8 %i.i, -64
  br i1 %.not.3, label %.preheader.4, label %bb.b

.preheader.4:                                     ; preds = %.preheader.3
  %i.j = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1
  %.not.4 = icmp slt i8 %i.k, -64                 ; 2 uses
  %spec.select = select i1 %.not.4, i64 5, i64 4
  %spec.select20 = select i1 %.not.4, ptr %scevgep, ptr %i.j
  br label %bb.b

bb.b:                                             ; preds = %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.013.lcssa = phi i64 [ 3, %.preheader.3 ], [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ %spec.select, %.preheader.4 ], [ 2, %.preheader.2 ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.h, %.preheader.3 ], [ %1, %.preheader.preheader ], [ %i.d, %.preheader.1 ], [ %spec.select20, %.preheader.4 ], [ %i.f, %.preheader.2 ]
  %i.l = add i64 %.013.lcssa, %2
  %i.m = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_14utf820validate_with_errorsEPKcm(ptr noundef nonnull %.0.lcssa, i64 noundef %i.l) #49 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.m, 0
  %i.o = extractvalue { i32, i64 } %i.m, 1
  %i.p = sub i64 %i.o, %.013.lcssa
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.n, %bb.b ], [ 3, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf7icelake14implementation14validate_asciiEPKcm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = icmp sgt i64 %2, 63
  br i1 %i.c, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = add nsw i64 %2, -64                      ; 2 uses
  %i.e = lshr i64 %i.d, 6
  %i.f = add nuw nsw i64 %i.e, 1
  %xtraiter = and i64 %i.f, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.025.i.prol = phi ptr [ %i.j, %.lr.ph.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %i.g = phi <16 x i32> [ %i.i, %.lr.ph.i.prol ], [ zeroinitializer, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.h = load <16 x i32>, ptr %.025.i.prol, align 1
  %i.i = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.g, <16 x i32> %i.h, <16 x i32> splat (i32 -2139062144), i32 248) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.025.i.prol, i64 64 ; 4 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.prol, !llvm.loop !227

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.prol
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.b, %i.k
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.025.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi <16 x i32> [ zeroinitializer, %.lr.ph.i.preheader ], [ %i.i, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.lcssa11.unr = phi <16 x i32> [ poison, %.lr.ph.i.preheader ], [ %i.i, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.lcssa10.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.m = icmp ult i64 %i.d, 448
  br i1 %i.m, label %._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.025.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.025.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.n = phi <16 x i32> [ %i.ak, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.o = load <16 x i32>, ptr %.025.i, align 1
  %i.p = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.n, <16 x i32> %i.o, <16 x i32> splat (i32 -2139062144), i32 248)
  %i.q = getelementptr inbounds nuw i8, ptr %.025.i, i64 64
  %i.r = load <16 x i32>, ptr %i.q, align 1
  %i.s = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.p, <16 x i32> %i.r, <16 x i32> splat (i32 -2139062144), i32 248)
  %i.t = getelementptr inbounds nuw i8, ptr %.025.i, i64 128
  %i.u = load <16 x i32>, ptr %i.t, align 1
  %i.v = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.s, <16 x i32> %i.u, <16 x i32> splat (i32 -2139062144), i32 248)
  %i.w = getelementptr inbounds nuw i8, ptr %.025.i, i64 192
  %i.x = load <16 x i32>, ptr %i.w, align 1
  %i.y = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.v, <16 x i32> %i.x, <16 x i32> splat (i32 -2139062144), i32 248)
  %i.z = getelementptr inbounds nuw i8, ptr %.025.i, i64 256
  %i.aa = load <16 x i32>, ptr %i.z, align 1
  %i.ab = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.y, <16 x i32> %i.aa, <16 x i32> splat (i32 -2139062144), i32 248)
  %i.ac = getelementptr inbounds nuw i8, ptr %.025.i, i64 320
  %i.ad = load <16 x i32>, ptr %i.ac, align 1
  %i.ae = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ab, <16 x i32> %i.ad, <16 x i32> splat (i32 -2139062144), i32 248)
  %i.af = getelementptr inbounds nuw i8, ptr %.025.i, i64 384
  %i.ag = load <16 x i32>, ptr %i.af, align 1
  %i.ah = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ae, <16 x i32> %i.ag, <16 x i32> splat (i32 -2139062144), i32 248)
  %i.ai = getelementptr inbounds nuw i8, ptr %.025.i, i64 448
  %i.aj = load <16 x i32>, ptr %i.ai, align 1
  %i.ak = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ah, <16 x i32> %i.aj, <16 x i32> splat (i32 -2139062144), i32 248) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.025.i, i64 512 ; 3 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.b, %i.am                     ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 63
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !228

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa11 = phi <16 x i32> [ %.lcssa11.unr, %.lr.ph.i.prol.loopexit ], [ %i.ak, %.lr.ph.i ]
  %.lcssa10 = phi ptr [ %.lcssa10.unr, %.lr.ph.i.prol.loopexit ], [ %i.al, %.lr.ph.i ]
  %.lcssa = phi i64 [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.an, %.lr.ph.i ]
  %i.ap = bitcast <16 x i32> %.lcssa11 to <8 x i64>
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %.016.lcssa.i = phi <8 x i64> [ zeroinitializer, %bb.a ], [ %i.ap, %._crit_edge.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %.lcssa10, %._crit_edge.loopexit.i ] ; 2 uses
  %.lcssa.i = phi i64 [ %2, %bb.a ], [ %.lcssa, %._crit_edge.loopexit.i ]
  %i.aq = icmp ult ptr %.0.lcssa.i, %i.a
  br i1 %i.aq, label %bb.b, label %_ZN7simdutf7icelake12_GLOBAL__N_114validate_asciiEPKcm.exit

bb.b:                                             ; preds = %._crit_edge.i
  %notmask.i = shl nsw i64 -1, %.lcssa.i
  %i.ar = xor i64 %notmask.i, -1
  %i.as = bitcast i64 %i.ar to <64 x i1>
  %i.at = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0.lcssa.i, <64 x i1> %i.as, <64 x i8> zeroinitializer)
  %i.au = bitcast <8 x i64> %.016.lcssa.i to <16 x i32>
  %i.av = bitcast <64 x i8> %i.at to <16 x i32>
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.au, <16 x i32> %i.av, <16 x i32> splat (i32 -2139062144), i32 248)
  %i.ax = bitcast <16 x i32> %i.aw to <8 x i64>
  br label %_ZN7simdutf7icelake12_GLOBAL__N_114validate_asciiEPKcm.exit

_ZN7simdutf7icelake12_GLOBAL__N_114validate_asciiEPKcm.exit: ; preds = %._crit_edge.i, %bb.b
  %.1.i = phi <8 x i64> [ %i.ax, %bb.b ], [ %.016.lcssa.i, %._crit_edge.i ]
  %i.ay = bitcast <8 x i64> %.1.i to <64 x i8>
  %i.az = icmp ne <64 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <64 x i1> %i.az to i64
  %i.bb = icmp eq i64 %i.ba, 0
  ret i1 %i.bb
end_hunk_0
begin_hunk_1_@_ZNK7simdutf7icelake14implementation21convert_utf8_to_utf32EPKcmPDi:bb.a
  %i.ii = zext <16 x i8> %i.ih to <16 x i32>
  store <16 x i32> %i.ii, ptr %i.if, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %.01077.lcssa.i, i64 192
  %i.ik = bitcast <8 x i64> %i.ht to <64 x i8>
  %i.il = shufflevector <64 x i8> %i.ik, <64 x i8> poison, <16 x i32> <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.im = zext <16 x i8> %i.il to <16 x i32>
  store <16 x i32> %i.im, ptr %i.ij, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %.01077.lcssa.i, i64 256
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.io = bitcast <8 x i64> %i.ht to <16 x i32>
  %i.ip = bitcast <8 x i64> %.sroa.18.0.lcssa.i to <16 x i32>
  %i.iq = shufflevector <16 x i32> %i.io, <16 x i32> %i.ip, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 11>
  %i.ir = bitcast <16 x i32> %i.iq to <64 x i8>   ; 3 uses
  %i.is = shufflevector <64 x i8> %i.ir, <64 x i8> %i.hu, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.it = bitcast <64 x i8> %i.is to <32 x i16>
  %i.iu = lshr <32 x i16> %i.it, splat (i16 4)
  %i.iv = bitcast <32 x i16> %i.iu to <64 x i8>
  %i.iw = and <64 x i8> %i.iv, splat (i8 15)
  %i.ix = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.iw)
  %i.iy = bitcast <64 x i8> %i.ix to <8 x i64>
  %i.iz = and <64 x i8> %i.is, splat (i8 15)
  %i.ja = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.iz)
  %i.jb = bitcast <64 x i8> %i.ja to <8 x i64>
  %i.jc = bitcast <8 x i64> %i.ht to <32 x i16>
  %i.jd = lshr <32 x i16> %i.jc, splat (i16 4)
  %i.je = bitcast <32 x i16> %i.jd to <64 x i8>
  %i.jf = and <64 x i8> %i.je, splat (i8 15)
  %i.jg = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.jf)
  %i.jh = bitcast <64 x i8> %i.jg to <8 x i64>
  %i.ji = tail call noundef <8 x i64> @llvm.x86.avx512.pternlog.q.512(<8 x i64> %i.iy, <8 x i64> %i.jb, <8 x i64> %i.jh, i32 128)
  %i.jj = bitcast <8 x i64> %i.ji to <16 x i32>
  %i.jk = shufflevector <64 x i8> %i.ir, <64 x i8> %i.hu, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.jl = shufflevector <64 x i8> %i.ir, <64 x i8> %i.hu, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.jm = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.jk, <64 x i8> splat (i8 -33))
  %i.jn = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.jl, <64 x i8> splat (i8 -17))
  %i.jo = or <64 x i8> %i.jm, %i.jn
  %i.jp = add nuw <64 x i8> %i.jo, splat (i8 127)
  %i.jq = bitcast <64 x i8> %i.jp to <16 x i32>
  %i.jr = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.jq, <16 x i32> splat (i32 -2139062144), <16 x i32> %i.jj, i32 106)
  %i.js = bitcast <16 x i32> %i.jr to <8 x i64>
  %i.jt = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.hu, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.ju = bitcast <64 x i8> %i.jt to <8 x i64>
  %i.jv = bitcast <8 x i64> %i.ht to <64 x i8>
  %i.jw = shufflevector <64 x i8> %i.jv, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 4, i32 2, i32 3, i32 4, i32 5, i32 3, i32 4, i32 5, i32 6, i32 4, i32 5, i32 6, i32 7, i32 5, i32 6, i32 7, i32 8, i32 6, i32 7, i32 8, i32 9, i32 7, i32 8, i32 9, i32 10, i32 8, i32 9, i32 10, i32 11, i32 9, i32 10, i32 11, i32 12, i32 10, i32 11, i32 12, i32 13, i32 11, i32 12, i32 13, i32 14, i32 12, i32 13, i32 14, i32 15, i32 13, i32 14, i32 15, i32 16, i32 14, i32 15, i32 16, i32 17, i32 15, i32 16, i32 17, i32 18> ; 2 uses
  %i.jx = bitcast <64 x i8> %i.jw to <16 x i32>
  %i.jy = bitcast <64 x i8> %i.jw to <16 x i32>
  %i.jz = and <16 x i32> %i.jy, splat (i32 192)
  %i.ka = icmp ne <16 x i32> %i.jz, splat (i32 128) ; 2 uses
  %i.kb = bitcast <16 x i1> %i.ka to i16
  %i.kc = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.kb) ; 2 uses
  %i.kd = zext nneg i16 %i.kc to i32              ; 3 uses
  %i.ke = tail call <16 x i32> @llvm.x86.avx512.mask.compress.v16i32(<16 x i32> %i.jx, <16 x i32> zeroinitializer, <16 x i1> %i.ka) ; 3 uses
  %i.kf = bitcast <8 x i64> %i.ht to <64 x i8>
  %i.kg = shufflevector <64 x i8> %i.kf, <64 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 17, i32 18, i32 19, i32 20, i32 18, i32 19, i32 20, i32 21, i32 19, i32 20, i32 21, i32 22, i32 20, i32 21, i32 22, i32 23, i32 21, i32 22, i32 23, i32 24, i32 22, i32 23, i32 24, i32 25, i32 23, i32 24, i32 25, i32 26, i32 24, i32 25, i32 26, i32 27, i32 25, i32 26, i32 27, i32 28, i32 26, i32 27, i32 28, i32 29, i32 27, i32 28, i32 29, i32 30, i32 28, i32 29, i32 30, i32 31, i32 29, i32 30, i32 31, i32 32, i32 30, i32 31, i32 32, i32 33, i32 31, i32 32, i32 33, i32 34> ; 2 uses
  %i.kh = bitcast <64 x i8> %i.kg to <16 x i32>
  %i.ki = bitcast <64 x i8> %i.kg to <16 x i32>
  %i.kj = and <16 x i32> %i.ki, splat (i32 192)
  %i.kk = icmp ne <16 x i32> %i.kj, splat (i32 128) ; 2 uses
  %i.kl = bitcast <16 x i1> %i.kk to i16
  %i.km = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.kl) ; 2 uses
  %i.kn = zext nneg i16 %i.km to i32              ; 3 uses
  %i.ko = tail call <16 x i32> @llvm.x86.avx512.mask.compress.v16i32(<16 x i32> %i.kh, <16 x i32> zeroinitializer, <16 x i1> %i.kk) ; 3 uses
  %i.kp = add nuw nsw i32 %i.kd, %i.kn            ; 3 uses
  %i.kq = icmp samesign ult i32 %i.kp, 17
  br i1 %i.kq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %notmask101.i = shl nsw i32 -1, %i.kn
  %i.kr = xor i32 %notmask101.i, -1
  %i.ks = shl nuw i32 %i.kr, %i.kd
  %i.kt = trunc i32 %i.ks to i16
  %i.ku = bitcast i16 %i.kt to <16 x i1>
  %i.kv = tail call <16 x i32> @llvm.x86.avx512.mask.expand.v16i32(<16 x i32> %i.ko, <16 x i32> %i.ke, <16 x i1> %i.ku) ; 2 uses
  %i.kw = lshr <16 x i32> %i.kv, splat (i32 4)
  %i.kx = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.kw, <16 x i32> splat (i32 15), <16 x i32> splat (i32 -2139062272), i32 234)
  %i.ky = bitcast <16 x i32> %i.kv to <64 x i8>
  %i.kz = and <64 x i8> %i.ky, <i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63>
  %i.la = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.kz, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.lb = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.la, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.lc = bitcast <16 x i32> %i.kx to <64 x i8>   ; 2 uses
  %i.ld = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11>, <64 x i8> %i.lc)
  %i.le = bitcast <64 x i8> %i.ld to <16 x i32>
  %i.lf = tail call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> %i.lb, <16 x i32> %i.le)
  %i.lg = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11>, <64 x i8> %i.lc)
  %i.lh = bitcast <64 x i8> %i.lg to <16 x i32>
  %i.li = tail call <16 x i32> @llvm.x86.avx512.psrlv.d.512(<16 x i32> %i.lf, <16 x i32> %i.lh)
  %notmask102.i = shl nsw i32 -1, %i.kp
  %i.lj = trunc i32 %notmask102.i to i16
  %i.lk = xor i16 %i.lj, -1
  %i.ll = bitcast i16 %i.lk to <16 x i1>
  tail call void @llvm.masked.store.v16i32.p0(<16 x i32> %i.li, ptr align 1 %.01077.lcssa.i, <16 x i1> %i.ll)
  %i.lm = zext nneg i32 %i.kp to i64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.01077.lcssa.i, i64 %i.lm
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.lo = lshr <16 x i32> %i.ke, splat (i32 4)
  %i.lp = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.lo, <16 x i32> splat (i32 15), <16 x i32> splat (i32 -2139062272), i32 234)
  %i.lq = bitcast <16 x i32> %i.ke to <64 x i8>
  %i.lr = and <64 x i8> %i.lq, <i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63>
  %i.ls = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.lr, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.lt = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ls, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.lu = bitcast <16 x i32> %i.lp to <64 x i8>   ; 2 uses
  %i.lv = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11>, <64 x i8> %i.lu)
  %i.lw = bitcast <64 x i8> %i.lv to <16 x i32>
  %i.lx = tail call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> %i.lt, <16 x i32> %i.lw)
  %i.ly = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11>, <64 x i8> %i.lu)
  %i.lz = bitcast <64 x i8> %i.ly to <16 x i32>
  %i.ma = tail call <16 x i32> @llvm.x86.avx512.psrlv.d.512(<16 x i32> %i.lx, <16 x i32> %i.lz)
  %i.mb = lshr <16 x i32> %i.ko, splat (i32 4)
  %i.mc = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.mb, <16 x i32> splat (i32 15), <16 x i32> splat (i32 -2139062272), i32 234)
  %i.md = bitcast <16 x i32> %i.ko to <64 x i8>
  %i.me = and <64 x i8> %i.md, <i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63>
  %i.mf = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.me, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.mg = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.mf, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.mh = bitcast <16 x i32> %i.mc to <64 x i8>   ; 2 uses
  %i.mi = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11>, <64 x i8> %i.mh)
  %i.mj = bitcast <64 x i8> %i.mi to <16 x i32>
  %i.mk = tail call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> %i.mg, <16 x i32> %i.mj)
  %i.ml = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11>, <64 x i8> %i.mh)
  %i.mm = bitcast <64 x i8> %i.ml to <16 x i32>
  %i.mn = tail call <16 x i32> @llvm.x86.avx512.psrlv.d.512(<16 x i32> %i.mk, <16 x i32> %i.mm)
  %notmask.i = shl nsw i32 -1, %i.kd
  %i.mo = trunc i32 %notmask.i to i16
  %i.mp = xor i16 %i.mo, -1
  %i.mq = bitcast i16 %i.mp to <16 x i1>
  tail call void @llvm.masked.store.v16i32.p0(<16 x i32> %i.ma, ptr align 1 %.01077.lcssa.i, <16 x i1> %i.mq)
  %i.mr = zext nneg i16 %i.kc to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.01077.lcssa.i, i64 %i.mr ; 2 uses
  %notmask100.i = shl nsw i32 -1, %i.kn
  %i.mt = trunc i32 %notmask100.i to i16
  %i.mu = xor i16 %i.mt, -1
  %i.mv = bitcast i16 %i.mu to <16 x i1>
  tail call void @llvm.masked.store.v16i32.p0(<16 x i32> %i.mn, ptr align 1 %i.ms, <16 x i1> %i.mv)
  %i.mw = zext nneg i16 %i.km to i64
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.mw
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %storemerge.i = phi ptr [ %i.mx, %bb.n ], [ %i.ln, %bb.m ] ; 2 uses
  %i.my = bitcast <8 x i64> %i.ht to <64 x i8>
  %i.mz = shufflevector <64 x i8> %i.my, <64 x i8> poison, <64 x i32> <i32 32, i32 33, i32 34, i32 35, i32 33, i32 34, i32 35, i32 36, i32 34, i32 35, i32 36, i32 37, i32 35, i32 36, i32 37, i32 38, i32 36, i32 37, i32 38, i32 39, i32 37, i32 38, i32 39, i32 40, i32 38, i32 39, i32 40, i32 41, i32 39, i32 40, i32 41, i32 42, i32 40, i32 41, i32 42, i32 43, i32 41, i32 42, i32 43, i32 44, i32 42, i32 43, i32 44, i32 45, i32 43, i32 44, i32 45, i32 46, i32 44, i32 45, i32 46, i32 47, i32 45, i32 46, i32 47, i32 48, i32 46, i32 47, i32 48, i32 49, i32 47, i32 48, i32 49, i32 50> ; 3 uses
  %i.na = bitcast <64 x i8> %i.mz to <16 x i32>
  %i.nb = bitcast <64 x i8> %i.mz to <16 x i32>
  %i.nc = and <16 x i32> %i.nb, splat (i32 192)
  %i.nd = icmp ne <16 x i32> %i.nc, splat (i32 128) ; 2 uses
  %i.ne = bitcast <16 x i1> %i.nd to i16
  %i.nf = lshr <16 x i32> %i.na, splat (i32 4)
  %i.ng = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.nf, <16 x i32> splat (i32 15), <16 x i32> splat (i32 -2139062272), i32 234)
  %i.nh = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.ne) ; 2 uses
  %i.ni = zext nneg i16 %i.nh to i64
  %i.nj = zext nneg i16 %i.nh to i32
  %i.nk = and <64 x i8> %i.mz, <i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63>
  %i.nl = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.nk, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.nm = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.nl, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.nn = bitcast <16 x i32> %i.ng to <64 x i8>   ; 2 uses
  %i.no = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11>, <64 x i8> %i.nn)
  %i.np = bitcast <64 x i8> %i.no to <16 x i32>
  %i.nq = tail call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> %i.nm, <16 x i32> %i.np)
  %i.nr = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11>, <64 x i8> %i.nn)
  %i.ns = bitcast <64 x i8> %i.nr to <16 x i32>
  %i.nt = tail call <16 x i32> @llvm.x86.avx512.psrlv.d.512(<16 x i32> %i.nq, <16 x i32> %i.ns)
  %i.nu = tail call <16 x i32> @llvm.x86.avx512.mask.compress.v16i32(<16 x i32> %i.nt, <16 x i32> zeroinitializer, <16 x i1> %i.nd)
  %notmask103.i = shl nsw i32 -1, %i.nj
  %i.nv = trunc i32 %notmask103.i to i16
  %i.nw = xor i16 %i.nv, -1
  %i.nx = bitcast i16 %i.nw to <16 x i1>
  tail call void @llvm.masked.store.v16i32.p0(<16 x i32> %i.nu, ptr align 1 %storemerge.i, <16 x i1> %i.nx)
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %storemerge.i, i64 %i.ni
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
  %.sink.i = phi i64 [ 48, %bb.o ], [ 64, %bb.k ]
  %.sroa.25.41097.i = phi <8 x i64> [ %i.ju, %bb.o ], [ %.sroa.25.0.lcssa.i, %bb.k ]
  %.sroa.18.21095.i = phi <8 x i64> [ %i.ht, %bb.o ], [ %.sroa.18.0.lcssa.i, %bb.k ]
  %.sroa.25.0.pn.i = phi <8 x i64> [ %i.js, %bb.o ], [ %.sroa.25.0.lcssa.i, %bb.k ]
  %.21079.i = phi ptr [ %i.ny, %bb.o ], [ %i.in, %bb.k ]
  %i.nz = getelementptr inbounds nuw i8, ptr %.01074.lcssa.i, i64 %.sink.i
  %.sroa.0238.41093.i = or <8 x i64> %.sroa.25.0.pn.i, %.sroa.0238.0.lcssa.i
  %i.oa = getelementptr inbounds nuw i8, ptr %.01074.lcssa.i, i64 64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i
  %.sroa.0238.1.i = phi <8 x i64> [ %.sroa.0238.41093.i, %bb.p ], [ %.sroa.0238.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.18.1.i = phi <8 x i64> [ %.sroa.18.21095.i, %bb.p ], [ %.sroa.18.0.lcssa.i, %._crit_edge.i ]
  %.sroa.25.1.i = phi <8 x i64> [ %.sroa.25.41097.i, %bb.p ], [ %.sroa.25.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.31080.i = phi ptr [ %.21079.i, %bb.p ], [ %.01077.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.3.i = phi ptr [ %i.nz, %bb.p ], [ %.01074.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0.i = phi ptr [ %i.oa, %bb.p ], [ %.01074.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not.i = icmp eq ptr %i.a, %.0.i
  br i1 %.not.i, label %_ZN7simdutf7icelake12_GLOBAL__N_131validating_utf8_to_fixed_lengthILNS_10endiannessE0EjEESt4pairIPKcPT0_ES6_mS8_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ob = ptrtoint ptr %.0.i to i64
  %reass.sub = sub i64 %i.ob, %i.b
  %i.oc = add i64 %reass.sub, 64
  %i.od = lshr i64 -1, %i.oc
  %i.oe = bitcast i64 %i.od to <64 x i1>
  %i.of = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.0.i, <64 x i1> %i.oe, <64 x i8> zeroinitializer) ; 6 uses
  %i.og = icmp slt <64 x i8> %i.of, zeroinitializer
  %i.oh = bitcast <64 x i1> %i.og to i64
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.oj = or <8 x i64> %.sroa.25.1.i, %.sroa.0238.1.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_131validating_utf8_to_fixed_lengthILNS_10endiannessE0EjEESt4pairIPKcPT0_ES6_mS8_.exit

bb.t:                                             ; preds = %bb.r
  %i.ok = bitcast <8 x i64> %.sroa.18.1.i to <64 x i8> ; 3 uses
  %4 = shufflevector <64 x i8> %i.ok, <64 x i8> %i.of, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.ol = bitcast <64 x i8> %4 to <32 x i16>
  %i.om = lshr <32 x i16> %i.ol, splat (i16 4)
  %i.on = bitcast <32 x i16> %i.om to <64 x i8>
  %i.oo = and <64 x i8> %i.on, splat (i8 15)
  %i.op = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.oo)
  %i.oq = bitcast <64 x i8> %i.op to <8 x i64>
  %i.or = and <64 x i8> %4, splat (i8 15)
  %i.os = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.or)
  %i.ot = bitcast <64 x i8> %i.os to <8 x i64>
  %i.ou = bitcast <64 x i8> %i.of to <32 x i16>
  %i.ov = lshr <32 x i16> %i.ou, splat (i16 4)
  %i.ow = bitcast <32 x i16> %i.ov to <64 x i8>
  %i.ox = and <64 x i8> %i.ow, splat (i8 15)
  %i.oy = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.ox)
  %i.oz = bitcast <64 x i8> %i.oy to <8 x i64>
  %i.pa = tail call noundef <8 x i64> @llvm.x86.avx512.pternlog.q.512(<8 x i64> %i.oq, <8 x i64> %i.ot, <8 x i64> %i.oz, i32 128)
  %i.pb = bitcast <8 x i64> %i.pa to <16 x i32>
  %5 = shufflevector <64 x i8> %i.ok, <64 x i8> %i.of, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %6 = shufflevector <64 x i8> %i.ok, <64 x i8> %i.of, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.pc = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %5, <64 x i8> splat (i8 -33))
  %i.pd = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %6, <64 x i8> splat (i8 -17))
  %i.pe = or <64 x i8> %i.pc, %i.pd
  %i.pf = add nuw <64 x i8> %i.pe, splat (i8 127)
  %i.pg = bitcast <64 x i8> %i.pf to <16 x i32>
  %i.ph = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.pg, <16 x i32> splat (i32 -2139062144), <16 x i32> %i.pb, i32 106)
  %i.pi = bitcast <16 x i32> %i.ph to <8 x i64>
  %i.pj = or <8 x i64> %.sroa.0238.1.i, %i.pi
  %i.pk = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.of, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.pl = bitcast <64 x i8> %i.pk to <8 x i64>
  br label %_ZN7simdutf7icelake12_GLOBAL__N_131validating_utf8_to_fixed_lengthILNS_10endiannessE0EjEESt4pairIPKcPT0_ES6_mS8_.exit

_ZN7simdutf7icelake12_GLOBAL__N_131validating_utf8_to_fixed_lengthILNS_10endiannessE0EjEESt4pairIPKcPT0_ES6_mS8_.exit: ; preds = %bb.q, %bb.s, %bb.t
  %.sroa.0238.2.i = phi <8 x i64> [ %.sroa.0238.1.i, %bb.q ], [ %i.oj, %bb.s ], [ %i.pj, %bb.t ]
  %.sroa.25.2.i = phi <8 x i64> [ %.sroa.25.1.i, %bb.q ], [ %.sroa.25.1.i, %bb.s ], [ %i.pl, %bb.t ]
  %i.pm = or <8 x i64> %.sroa.25.2.i, %.sroa.0238.2.i
  %i.pn = bitcast <8 x i64> %i.pm to <64 x i8>
  %i.po = icmp ne <64 x i8> %i.pn, zeroinitializer
  %i.pp = bitcast <64 x i1> %i.po to i64
  %.not1099.i = icmp ne i64 %i.pp, 0
  %i.pq = icmp eq ptr %.31080.i, null
  %i.pr = select i1 %.not1099.i, i1 true, i1 %i.pq
  br i1 %i.pr, label %.critedge33, label %bb.u

bb.u:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_131validating_utf8_to_fixed_lengthILNS_10endiannessE0EjEESt4pairIPKcPT0_ES6_mS8_.exit
  %i.ps = ptrtoint ptr %.31080.i to i64
  %i.pt = ptrtoint ptr %3 to i64
  %i.pu = sub i64 %i.ps, %i.pt                    ; 2 uses
  %i.pv = ashr exact i64 %i.pu, 2                 ; 3 uses
  %i.pw = icmp eq ptr %.3.i, %i.a
  br i1 %i.pw, label %.critedge33, label %.preheader

.preheader:                                       ; preds = %bb.u, %bb.v
  %.sroa.0.037 = phi ptr [ %i.pz, %bb.v ], [ %.3.i, %bb.u ] ; 4 uses
  %i.px = load i8, ptr %.sroa.0.037, align 1
  %i.py = icmp slt i8 %i.px, -64
  br i1 %i.py, label %bb.v, label %.critedge

bb.v:                                             ; preds = %.preheader
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0.037, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.pz, %i.a
  br i1 %.not, label %.critedge33, label %.preheader, !llvm.loop !257

.critedge:                                        ; preds = %.preheader
  %i.qa = ptrtoint ptr %.sroa.0.037 to i64
  %i.qb = ptrtoint ptr %1 to i64
  %.neg = add i64 %2, %i.qb
  %i.qc = sub i64 %.neg, %i.qa
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 %i.pu
  %i.qe = tail call fastcc noundef i64 @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf327convertEPKcmPDi(ptr noundef nonnull %.sroa.0.037, i64 noundef %i.qc, ptr noundef %i.qd) ; 2 uses
  %.not32 = icmp eq i64 %i.qe, 0
  %i.qf = add nsw i64 %i.qe, %i.pv
  %spec.select = select i1 %.not32, i64 0, i64 %i.qf
  br label %.critedge33

.critedge33:                                      ; preds = %bb.v, %.critedge, %bb.u, %_ZN7simdutf7icelake12_GLOBAL__N_131validating_utf8_to_fixed_lengthILNS_10endiannessE0EjEESt4pairIPKcPT0_ES6_mS8_.exit
  %.2 = phi i64 [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_131validating_utf8_to_fixed_lengthILNS_10endiannessE0EjEESt4pairIPKcPT0_ES6_mS8_.exit ], [ %spec.select, %.critedge ], [ %i.pv, %bb.u ], [ %i.pv, %bb.v ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7icelake14implementation33convert_utf8_to_utf32_with_errorsEPKcmPDi(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #11 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.loopexit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = icmp sgt i64 %2, 67
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.i
  %.011061192.i = phi ptr [ %.11107.i, %bb.i ], [ %1, %bb.b ] ; 5 uses
  %.011091191.i = phi ptr [ %.11110.i, %bb.i ], [ %3, %bb.b ] ; 9 uses
  %.sroa.27.01190.i = phi <8 x i64> [ %.sroa.27.51123.i, %bb.i ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.20.01189.i = phi <8 x i64> [ %.sroa.20.31120.i, %bb.i ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.0248.01188.i = phi <8 x i64> [ %.sroa.0248.51117.i, %bb.i ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.e = load <8 x i64>, ptr %.011061192.i, align 1, !noalias !258 ; 12 uses
  %i.f = bitcast <8 x i64> %i.e to <16 x i32>     ; 2 uses
  %i.g = bitcast <8 x i64> %i.e to <64 x i8>      ; 5 uses
  %i.h = icmp slt <64 x i8> %i.g, zeroinitializer
  %i.i = bitcast <64 x i1> %i.h to i64
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit121.i, label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit121.thread.i

_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit121.i: ; preds = %.lr.ph.i
  %i.k = or <8 x i64> %.sroa.0248.01188.i, %.sroa.27.01190.i ; 2 uses
  %i.l = bitcast <8 x i64> %i.k to <64 x i8>
  %i.m = icmp ne <64 x i8> %i.l, zeroinitializer
  %i.n = bitcast <64 x i1> %i.m to i64
  %.not1178.i = icmp eq i64 %i.n, 0
  br i1 %.not1178.i, label %bb.c, label %.loopexit81

_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit121.thread.i: ; preds = %.lr.ph.i
  %i.o = bitcast <8 x i64> %.sroa.20.01189.i to <16 x i32>
  %i.p = shufflevector <16 x i32> %i.f, <16 x i32> %i.o, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 11>
  %i.q = bitcast <16 x i32> %i.p to <64 x i8>     ; 3 uses
  %i.r = shufflevector <64 x i8> %i.q, <64 x i8> %i.g, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.s = bitcast <64 x i8> %i.r to <32 x i16>
  %i.t = lshr <32 x i16> %i.s, splat (i16 4)
  %i.u = bitcast <32 x i16> %i.t to <64 x i8>
  %i.v = and <64 x i8> %i.u, splat (i8 15)
  %i.w = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.v)
  %i.x = bitcast <64 x i8> %i.w to <8 x i64>
  %i.y = and <64 x i8> %i.r, splat (i8 15)
  %i.z = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.y)
  %i.aa = bitcast <64 x i8> %i.z to <8 x i64>
  %i.ab = bitcast <8 x i64> %i.e to <32 x i16>
  %i.ac = lshr <32 x i16> %i.ab, splat (i16 4)
  %i.ad = bitcast <32 x i16> %i.ac to <64 x i8>
  %i.ae = and <64 x i8> %i.ad, splat (i8 15)
  %i.af = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.ae)
  %i.ag = bitcast <64 x i8> %i.af to <8 x i64>
  %i.ah = tail call noundef <8 x i64> @llvm.x86.avx512.pternlog.q.512(<8 x i64> %i.x, <8 x i64> %i.aa, <8 x i64> %i.ag, i32 128)
  %i.ai = bitcast <8 x i64> %i.ah to <16 x i32>
  %i.aj = shufflevector <64 x i8> %i.q, <64 x i8> %i.g, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ak = shufflevector <64 x i8> %i.q, <64 x i8> %i.g, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.al = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.aj, <64 x i8> splat (i8 -33))
  %i.am = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.ak, <64 x i8> splat (i8 -17))
  %i.an = or <64 x i8> %i.al, %i.am
  %i.ao = add nuw <64 x i8> %i.an, splat (i8 127)
  %i.ap = bitcast <64 x i8> %i.ao to <16 x i32>
  %i.aq = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ap, <16 x i32> splat (i32 -2139062144), <16 x i32> %i.ai, i32 106)
  %i.ar = bitcast <16 x i32> %i.aq to <8 x i64>
  %i.as = or <8 x i64> %.sroa.0248.01188.i, %i.ar ; 3 uses
  %i.at = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.g, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.au = bitcast <64 x i8> %i.at to <8 x i64>    ; 2 uses
  %i.av = bitcast <8 x i64> %i.as to <64 x i8>
  %i.aw = icmp ne <64 x i8> %i.av, zeroinitializer
  %i.ax = bitcast <64 x i1> %i.aw to i64
  %.not1177.i = icmp eq i64 %i.ax, 0
  br i1 %.not1177.i, label %.thread.i, label %.loopexit81

bb.c:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit121.i
  %i.ay = bitcast <8 x i64> %i.e to <64 x i8>
  %i.az = shufflevector <64 x i8> %i.ay, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ba = zext <16 x i8> %i.az to <16 x i32>
  store <16 x i32> %i.ba, ptr %.011091191.i, align 1, !noalias !258
  %i.bb = getelementptr inbounds nuw i8, ptr %.011091191.i, i64 64
  %i.bc = bitcast <8 x i64> %i.e to <64 x i8>
  %i.bd = shufflevector <64 x i8> %i.bc, <64 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.be = zext <16 x i8> %i.bd to <16 x i32>
  store <16 x i32> %i.be, ptr %i.bb, align 1, !noalias !258
  %i.bf = getelementptr inbounds nuw i8, ptr %.011091191.i, i64 128
  %i.bg = bitcast <8 x i64> %i.e to <64 x i8>
  %i.bh = shufflevector <64 x i8> %i.bg, <64 x i8> poison, <16 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.bi = zext <16 x i8> %i.bh to <16 x i32>
  store <16 x i32> %i.bi, ptr %i.bf, align 1, !noalias !258
  %i.bj = getelementptr inbounds nuw i8, ptr %.011091191.i, i64 192
  %i.bk = bitcast <8 x i64> %i.e to <64 x i8>
  %i.bl = shufflevector <64 x i8> %i.bk, <64 x i8> poison, <16 x i32> <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bm = zext <16 x i8> %i.bl to <16 x i32>
  store <16 x i32> %i.bm, ptr %i.bj, align 1, !noalias !258
  %i.bn = getelementptr inbounds nuw i8, ptr %.011091191.i, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %.011061192.i, i64 64
  br label %bb.i, !llvm.loop !261

.thread.i:                                        ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit121.thread.i
  %i.bp = bitcast <8 x i64> %i.e to <64 x i8>
  %i.bq = shufflevector <64 x i8> %i.bp, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 4, i32 2, i32 3, i32 4, i32 5, i32 3, i32 4, i32 5, i32 6, i32 4, i32 5, i32 6, i32 7, i32 5, i32 6, i32 7, i32 8, i32 6, i32 7, i32 8, i32 9, i32 7, i32 8, i32 9, i32 10, i32 8, i32 9, i32 10, i32 11, i32 9, i32 10, i32 11, i32 12, i32 10, i32 11, i32 12, i32 13, i32 11, i32 12, i32 13, i32 14, i32 12, i32 13, i32 14, i32 15, i32 13, i32 14, i32 15, i32 16, i32 14, i32 15, i32 16, i32 17, i32 15, i32 16, i32 17, i32 18> ; 2 uses
  %i.br = bitcast <64 x i8> %i.bq to <16 x i32>
  %i.bs = bitcast <64 x i8> %i.bq to <16 x i32>
  %i.bt = and <16 x i32> %i.bs, splat (i32 192)
  %i.bu = icmp ne <16 x i32> %i.bt, splat (i32 128) ; 2 uses
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.bv) ; 2 uses
  %i.bx = zext nneg i16 %i.bw to i32              ; 3 uses
  %i.by = tail call <16 x i32> @llvm.x86.avx512.mask.compress.v16i32(<16 x i32> %i.br, <16 x i32> zeroinitializer, <16 x i1> %i.bu) ; 3 uses
  %i.bz = bitcast <8 x i64> %i.e to <64 x i8>
  %i.ca = shufflevector <64 x i8> %i.bz, <64 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 17, i32 18, i32 19, i32 20, i32 18, i32 19, i32 20, i32 21, i32 19, i32 20, i32 21, i32 22, i32 20, i32 21, i32 22, i32 23, i32 21, i32 22, i32 23, i32 24, i32 22, i32 23, i32 24, i32 25, i32 23, i32 24, i32 25, i32 26, i32 24, i32 25, i32 26, i32 27, i32 25, i32 26, i32 27, i32 28, i32 26, i32 27, i32 28, i32 29, i32 27, i32 28, i32 29, i32 30, i32 28, i32 29, i32 30, i32 31, i32 29, i32 30, i32 31, i32 32, i32 30, i32 31, i32 32, i32 33, i32 31, i32 32, i32 33, i32 34> ; 2 uses
  %i.cb = bitcast <64 x i8> %i.ca to <16 x i32>
  %i.cc = bitcast <64 x i8> %i.ca to <16 x i32>
  %i.cd = and <16 x i32> %i.cc, splat (i32 192)
  %i.ce = icmp ne <16 x i32> %i.cd, splat (i32 128) ; 2 uses
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %i.cg = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.cf) ; 2 uses
  %i.ch = zext nneg i16 %i.cg to i32              ; 3 uses
  %i.ci = tail call <16 x i32> @llvm.x86.avx512.mask.compress.v16i32(<16 x i32> %i.cb, <16 x i32> zeroinitializer, <16 x i1> %i.ce) ; 3 uses
  %i.cj = add nuw nsw i32 %i.bx, %i.ch            ; 3 uses
  %i.ck = icmp samesign ult i32 %i.cj, 17
  br i1 %i.ck, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread.i
  %notmask113.i = shl nsw i32 -1, %i.ch
  %i.cl = xor i32 %notmask113.i, -1
  %i.cm = shl nuw i32 %i.cl, %i.bx
  %i.cn = trunc i32 %i.cm to i16
  %i.co = bitcast i16 %i.cn to <16 x i1>
  %i.cp = tail call <16 x i32> @llvm.x86.avx512.mask.expand.v16i32(<16 x i32> %i.ci, <16 x i32> %i.by, <16 x i1> %i.co) ; 2 uses
  %i.cq = lshr <16 x i32> %i.cp, splat (i32 4)
  %i.cr = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cq, <16 x i32> splat (i32 15), <16 x i32> splat (i32 -2139062272), i32 234)
  %i.cs = bitcast <16 x i32> %i.cp to <64 x i8>
  %i.ct = and <64 x i8> %i.cs, <i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63>
  %i.cu = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.ct, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.cv = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.cu, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.cw = bitcast <16 x i32> %i.cr to <64 x i8>   ; 2 uses
  %i.cx = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11>, <64 x i8> %i.cw)
  %i.cy = bitcast <64 x i8> %i.cx to <16 x i32>
  %i.cz = tail call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> %i.cv, <16 x i32> %i.cy)
  %i.da = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11>, <64 x i8> %i.cw)
  %i.db = bitcast <64 x i8> %i.da to <16 x i32>
end_hunk_1
begin_hunk_2_@_ZNK7simdutf7icelake14implementation33convert_utf8_to_utf32_with_errorsEPKcmPDi:bb.a
  %i.je = bitcast <64 x i8> %i.jd to <8 x i64>
  %i.jf = tail call noundef <8 x i64> @llvm.x86.avx512.pternlog.q.512(<8 x i64> %i.iv, <8 x i64> %i.iy, <8 x i64> %i.je, i32 128)
  %i.jg = bitcast <8 x i64> %i.jf to <16 x i32>
  %i.jh = shufflevector <64 x i8> %i.io, <64 x i8> %i.id, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ji = shufflevector <64 x i8> %i.io, <64 x i8> %i.id, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.jj = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.jh, <64 x i8> splat (i8 -33))
  %i.jk = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.ji, <64 x i8> splat (i8 -17))
  %i.jl = or <64 x i8> %i.jj, %i.jk
  %i.jm = add nuw <64 x i8> %i.jl, splat (i8 127)
  %i.jn = bitcast <64 x i8> %i.jm to <16 x i32>
  %i.jo = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.jn, <16 x i32> splat (i32 -2139062144), <16 x i32> %i.jg, i32 106)
  %i.jp = bitcast <16 x i32> %i.jo to <8 x i64>
  %i.jq = or <8 x i64> %.sroa.0248.0.lcssa.i, %i.jp ; 2 uses
  %i.jr = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.id, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.js = bitcast <64 x i8> %i.jr to <8 x i64>
  %i.jt = bitcast <8 x i64> %i.jq to <64 x i8>
  %i.ju = icmp ne <64 x i8> %i.jt, zeroinitializer
  %i.jv = bitcast <64 x i1> %i.ju to i64
  %.not1174.i = icmp eq i64 %i.jv, 0
  br i1 %.not1174.i, label %.thread1157.i, label %.loopexit81

bb.k:                                             ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit120.i
  %i.jw = bitcast <8 x i64> %i.ic to <64 x i8>
  %i.jx = shufflevector <64 x i8> %i.jw, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jy = zext <16 x i8> %i.jx to <16 x i32>
  store <16 x i32> %i.jy, ptr %.01109.lcssa.i, align 1, !noalias !258
  %i.jz = getelementptr inbounds nuw i8, ptr %.01109.lcssa.i, i64 64
  %i.ka = bitcast <8 x i64> %i.ic to <64 x i8>
  %i.kb = shufflevector <64 x i8> %i.ka, <64 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.kc = zext <16 x i8> %i.kb to <16 x i32>
  store <16 x i32> %i.kc, ptr %i.jz, align 1, !noalias !258
  %i.kd = getelementptr inbounds nuw i8, ptr %.01109.lcssa.i, i64 128
  %i.ke = bitcast <8 x i64> %i.ic to <64 x i8>
  %i.kf = shufflevector <64 x i8> %i.ke, <64 x i8> poison, <16 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.kg = zext <16 x i8> %i.kf to <16 x i32>
  store <16 x i32> %i.kg, ptr %i.kd, align 1, !noalias !258
  %i.kh = getelementptr inbounds nuw i8, ptr %.01109.lcssa.i, i64 192
  %i.ki = bitcast <8 x i64> %i.ic to <64 x i8>
  %i.kj = shufflevector <64 x i8> %i.ki, <64 x i8> poison, <16 x i32> <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.kk = zext <16 x i8> %i.kj to <16 x i32>
  store <16 x i32> %i.kk, ptr %i.kh, align 1, !noalias !258
  %i.kl = getelementptr inbounds nuw i8, ptr %.01109.lcssa.i, i64 256
  br label %bb.o

.thread1157.i:                                    ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit120.thread.i
  %i.km = bitcast <8 x i64> %i.ic to <64 x i8>
  %i.kn = shufflevector <64 x i8> %i.km, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 4, i32 2, i32 3, i32 4, i32 5, i32 3, i32 4, i32 5, i32 6, i32 4, i32 5, i32 6, i32 7, i32 5, i32 6, i32 7, i32 8, i32 6, i32 7, i32 8, i32 9, i32 7, i32 8, i32 9, i32 10, i32 8, i32 9, i32 10, i32 11, i32 9, i32 10, i32 11, i32 12, i32 10, i32 11, i32 12, i32 13, i32 11, i32 12, i32 13, i32 14, i32 12, i32 13, i32 14, i32 15, i32 13, i32 14, i32 15, i32 16, i32 14, i32 15, i32 16, i32 17, i32 15, i32 16, i32 17, i32 18> ; 2 uses
  %i.ko = bitcast <64 x i8> %i.kn to <16 x i32>
  %i.kp = bitcast <64 x i8> %i.kn to <16 x i32>
  %i.kq = and <16 x i32> %i.kp, splat (i32 192)
  %i.kr = icmp ne <16 x i32> %i.kq, splat (i32 128) ; 2 uses
  %i.ks = bitcast <16 x i1> %i.kr to i16
  %i.kt = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.ks) ; 2 uses
  %i.ku = zext nneg i16 %i.kt to i32              ; 3 uses
  %i.kv = tail call <16 x i32> @llvm.x86.avx512.mask.compress.v16i32(<16 x i32> %i.ko, <16 x i32> zeroinitializer, <16 x i1> %i.kr) ; 3 uses
  %i.kw = bitcast <8 x i64> %i.ic to <64 x i8>
  %i.kx = shufflevector <64 x i8> %i.kw, <64 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 17, i32 18, i32 19, i32 20, i32 18, i32 19, i32 20, i32 21, i32 19, i32 20, i32 21, i32 22, i32 20, i32 21, i32 22, i32 23, i32 21, i32 22, i32 23, i32 24, i32 22, i32 23, i32 24, i32 25, i32 23, i32 24, i32 25, i32 26, i32 24, i32 25, i32 26, i32 27, i32 25, i32 26, i32 27, i32 28, i32 26, i32 27, i32 28, i32 29, i32 27, i32 28, i32 29, i32 30, i32 28, i32 29, i32 30, i32 31, i32 29, i32 30, i32 31, i32 32, i32 30, i32 31, i32 32, i32 33, i32 31, i32 32, i32 33, i32 34> ; 2 uses
  %i.ky = bitcast <64 x i8> %i.kx to <16 x i32>
  %i.kz = bitcast <64 x i8> %i.kx to <16 x i32>
  %i.la = and <16 x i32> %i.kz, splat (i32 192)
  %i.lb = icmp ne <16 x i32> %i.la, splat (i32 128) ; 2 uses
  %i.lc = bitcast <16 x i1> %i.lb to i16
  %i.ld = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.lc) ; 2 uses
  %i.le = zext nneg i16 %i.ld to i32              ; 3 uses
  %i.lf = tail call <16 x i32> @llvm.x86.avx512.mask.compress.v16i32(<16 x i32> %i.ky, <16 x i32> zeroinitializer, <16 x i1> %i.lb) ; 3 uses
  %i.lg = add nuw nsw i32 %i.ku, %i.le            ; 3 uses
  %i.lh = icmp samesign ult i32 %i.lg, 17
  br i1 %i.lh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread1157.i
  %notmask107.i = shl nsw i32 -1, %i.le
  %i.li = xor i32 %notmask107.i, -1
  %i.lj = shl nuw i32 %i.li, %i.ku
  %i.lk = trunc i32 %i.lj to i16
  %i.ll = bitcast i16 %i.lk to <16 x i1>
  %i.lm = tail call <16 x i32> @llvm.x86.avx512.mask.expand.v16i32(<16 x i32> %i.lf, <16 x i32> %i.kv, <16 x i1> %i.ll) ; 2 uses
  %i.ln = lshr <16 x i32> %i.lm, splat (i32 4)
  %i.lo = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ln, <16 x i32> splat (i32 15), <16 x i32> splat (i32 -2139062272), i32 234)
  %i.lp = bitcast <16 x i32> %i.lm to <64 x i8>
  %i.lq = and <64 x i8> %i.lp, <i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63>
  %i.lr = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.lq, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ls = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.lr, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.lt = bitcast <16 x i32> %i.lo to <64 x i8>   ; 2 uses
  %i.lu = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11>, <64 x i8> %i.lt)
  %i.lv = bitcast <64 x i8> %i.lu to <16 x i32>
  %i.lw = tail call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> %i.ls, <16 x i32> %i.lv)
  %i.lx = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11>, <64 x i8> %i.lt)
  %i.ly = bitcast <64 x i8> %i.lx to <16 x i32>
  %i.lz = tail call <16 x i32> @llvm.x86.avx512.psrlv.d.512(<16 x i32> %i.lw, <16 x i32> %i.ly)
  %notmask108.i = shl nsw i32 -1, %i.lg
  %i.ma = trunc i32 %notmask108.i to i16
  %i.mb = xor i16 %i.ma, -1
  %i.mc = bitcast i16 %i.mb to <16 x i1>
  tail call void @llvm.masked.store.v16i32.p0(<16 x i32> %i.lz, ptr align 1 %.01109.lcssa.i, <16 x i1> %i.mc), !noalias !258
  %i.md = zext nneg i32 %i.lg to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.01109.lcssa.i, i64 %i.md
  br label %bb.n

bb.m:                                             ; preds = %.thread1157.i
  %i.mf = lshr <16 x i32> %i.kv, splat (i32 4)
  %i.mg = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.mf, <16 x i32> splat (i32 15), <16 x i32> splat (i32 -2139062272), i32 234)
  %i.mh = bitcast <16 x i32> %i.kv to <64 x i8>
  %i.mi = and <64 x i8> %i.mh, <i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63>
  %i.mj = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.mi, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.mk = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.mj, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ml = bitcast <16 x i32> %i.mg to <64 x i8>   ; 2 uses
  %i.mm = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11>, <64 x i8> %i.ml)
  %i.mn = bitcast <64 x i8> %i.mm to <16 x i32>
  %i.mo = tail call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> %i.mk, <16 x i32> %i.mn)
  %i.mp = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11>, <64 x i8> %i.ml)
  %i.mq = bitcast <64 x i8> %i.mp to <16 x i32>
  %i.mr = tail call <16 x i32> @llvm.x86.avx512.psrlv.d.512(<16 x i32> %i.mo, <16 x i32> %i.mq)
  %i.ms = lshr <16 x i32> %i.lf, splat (i32 4)
  %i.mt = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ms, <16 x i32> splat (i32 15), <16 x i32> splat (i32 -2139062272), i32 234)
  %i.mu = bitcast <16 x i32> %i.lf to <64 x i8>
  %i.mv = and <64 x i8> %i.mu, <i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63>
  %i.mw = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.mv, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.mx = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.mw, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.my = bitcast <16 x i32> %i.mt to <64 x i8>   ; 2 uses
  %i.mz = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11>, <64 x i8> %i.my)
  %i.na = bitcast <64 x i8> %i.mz to <16 x i32>
  %i.nb = tail call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> %i.mx, <16 x i32> %i.na)
  %i.nc = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11>, <64 x i8> %i.my)
  %i.nd = bitcast <64 x i8> %i.nc to <16 x i32>
  %i.ne = tail call <16 x i32> @llvm.x86.avx512.psrlv.d.512(<16 x i32> %i.nb, <16 x i32> %i.nd)
  %notmask.i = shl nsw i32 -1, %i.ku
  %i.nf = trunc i32 %notmask.i to i16
  %i.ng = xor i16 %i.nf, -1
  %i.nh = bitcast i16 %i.ng to <16 x i1>
  tail call void @llvm.masked.store.v16i32.p0(<16 x i32> %i.mr, ptr align 1 %.01109.lcssa.i, <16 x i1> %i.nh), !noalias !258
  %i.ni = zext nneg i16 %i.kt to i64
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %.01109.lcssa.i, i64 %i.ni ; 2 uses
  %notmask106.i = shl nsw i32 -1, %i.le
  %i.nk = trunc i32 %notmask106.i to i16
  %i.nl = xor i16 %i.nk, -1
  %i.nm = bitcast i16 %i.nl to <16 x i1>
  tail call void @llvm.masked.store.v16i32.p0(<16 x i32> %i.ne, ptr align 1 %i.nj, <16 x i1> %i.nm), !noalias !258
  %i.nn = zext nneg i16 %i.ld to i64
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.nn
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %storemerge.i = phi ptr [ %i.no, %bb.m ], [ %i.me, %bb.l ] ; 2 uses
  %i.np = bitcast <8 x i64> %i.ic to <64 x i8>
  %i.nq = shufflevector <64 x i8> %i.np, <64 x i8> poison, <64 x i32> <i32 32, i32 33, i32 34, i32 35, i32 33, i32 34, i32 35, i32 36, i32 34, i32 35, i32 36, i32 37, i32 35, i32 36, i32 37, i32 38, i32 36, i32 37, i32 38, i32 39, i32 37, i32 38, i32 39, i32 40, i32 38, i32 39, i32 40, i32 41, i32 39, i32 40, i32 41, i32 42, i32 40, i32 41, i32 42, i32 43, i32 41, i32 42, i32 43, i32 44, i32 42, i32 43, i32 44, i32 45, i32 43, i32 44, i32 45, i32 46, i32 44, i32 45, i32 46, i32 47, i32 45, i32 46, i32 47, i32 48, i32 46, i32 47, i32 48, i32 49, i32 47, i32 48, i32 49, i32 50> ; 3 uses
  %i.nr = bitcast <64 x i8> %i.nq to <16 x i32>
  %i.ns = bitcast <64 x i8> %i.nq to <16 x i32>
  %i.nt = and <16 x i32> %i.ns, splat (i32 192)
  %i.nu = icmp ne <16 x i32> %i.nt, splat (i32 128) ; 2 uses
  %i.nv = bitcast <16 x i1> %i.nu to i16
  %i.nw = lshr <16 x i32> %i.nr, splat (i32 4)
  %i.nx = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.nw, <16 x i32> splat (i32 15), <16 x i32> splat (i32 -2139062272), i32 234)
  %i.ny = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.nv) ; 2 uses
  %i.nz = zext nneg i16 %i.ny to i64
  %i.oa = zext nneg i16 %i.ny to i32
  %i.ob = and <64 x i8> %i.nq, <i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63, i8 127, i8 63, i8 63, i8 63>
  %i.oc = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.ob, <64 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.od = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.oc, <32 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.oe = bitcast <16 x i32> %i.nx to <64 x i8>   ; 2 uses
  %i.of = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 0, i8 0, i8 0, i8 0, i8 9, i8 9, i8 10, i8 11>, <64 x i8> %i.oe)
  %i.og = bitcast <64 x i8> %i.of to <16 x i32>
  %i.oh = tail call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> %i.od, <16 x i32> %i.og)
  %i.oi = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 25, i8 0, i8 0, i8 0, i8 0, i8 21, i8 21, i8 16, i8 11>, <64 x i8> %i.oe)
  %i.oj = bitcast <64 x i8> %i.oi to <16 x i32>
  %i.ok = tail call <16 x i32> @llvm.x86.avx512.psrlv.d.512(<16 x i32> %i.oh, <16 x i32> %i.oj)
  %i.ol = tail call <16 x i32> @llvm.x86.avx512.mask.compress.v16i32(<16 x i32> %i.ok, <16 x i32> zeroinitializer, <16 x i1> %i.nu)
  %notmask109.i = shl nsw i32 -1, %i.oa
  %i.om = trunc i32 %notmask109.i to i16
  %i.on = xor i16 %i.om, -1
  %i.oo = bitcast i16 %i.on to <16 x i1>
  tail call void @llvm.masked.store.v16i32.p0(<16 x i32> %i.ol, ptr align 1 %storemerge.i, <16 x i1> %i.oo), !noalias !258
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %storemerge.i, i64 %i.nz
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.sink.i = phi i64 [ 64, %bb.k ], [ 48, %bb.n ]
  %.sroa.0248.411491165.i = phi <8 x i64> [ %i.ih, %bb.k ], [ %i.jq, %bb.n ]
  %.sroa.20.211521163.i = phi <8 x i64> [ %.sroa.20.0.lcssa.i, %bb.k ], [ %i.ic, %bb.n ]
  %.sroa.27.411551161.i = phi <8 x i64> [ %.sroa.27.0.lcssa.i, %bb.k ], [ %i.js, %bb.n ]
  %.21111.i = phi ptr [ %i.kl, %bb.k ], [ %i.op, %bb.n ]
  %i.oq = getelementptr inbounds nuw i8, ptr %.01106.lcssa.i, i64 %.sink.i
  %i.or = getelementptr inbounds nuw i8, ptr %.01106.lcssa.i, i64 64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %.sroa.0248.1.i = phi <8 x i64> [ %.sroa.0248.411491165.i, %bb.o ], [ %.sroa.0248.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.20.1.i = phi <8 x i64> [ %.sroa.20.211521163.i, %bb.o ], [ %.sroa.20.0.lcssa.i, %._crit_edge.i ]
  %.sroa.27.1.i = phi <8 x i64> [ %.sroa.27.411551161.i, %bb.o ], [ %.sroa.27.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.41113.i = phi ptr [ %.21111.i, %bb.o ], [ %.01109.lcssa.i, %._crit_edge.i ]
  %.4.i = phi ptr [ %i.oq, %bb.o ], [ %.01106.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.1104.i = phi ptr [ %i.or, %bb.o ], [ %.01106.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not.i = icmp eq ptr %i.b, %.1104.i
  br i1 %.not.i, label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.os = ptrtoint ptr %.1104.i to i64
  %reass.sub = sub i64 %i.os, %i.c
  %i.ot = add i64 %reass.sub, 64
  %i.ou = lshr i64 -1, %i.ot
  %i.ov = bitcast i64 %i.ou to <64 x i1>
  %i.ow = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.1104.i, <64 x i1> %i.ov, <64 x i8> zeroinitializer), !noalias !258 ; 6 uses
  %i.ox = icmp slt <64 x i8> %i.ow, zeroinitializer
  %i.oy = bitcast <64 x i1> %i.ox to i64
  %i.oz = icmp eq i64 %i.oy, 0
  br i1 %i.oz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.pa = or <8 x i64> %.sroa.27.1.i, %.sroa.0248.1.i
  br label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit.i

bb.s:                                             ; preds = %bb.q
  %i.pb = bitcast <8 x i64> %.sroa.20.1.i to <64 x i8> ; 3 uses
  %4 = shufflevector <64 x i8> %i.pb, <64 x i8> %i.ow, <64 x i32> <i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.pc = bitcast <64 x i8> %4 to <32 x i16>
  %i.pd = lshr <32 x i16> %i.pc, splat (i16 4)
  %i.pe = bitcast <32 x i16> %i.pd to <64 x i8>
  %i.pf = and <64 x i8> %i.pe, splat (i8 15)
  %i.pg = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.pf)
  %i.ph = bitcast <64 x i8> %i.pg to <8 x i64>
  %i.pi = and <64 x i8> %4, splat (i8 15)
  %i.pj = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.pi)
  %i.pk = bitcast <64 x i8> %i.pj to <8 x i64>
  %i.pl = bitcast <64 x i8> %i.ow to <32 x i16>
  %i.pm = lshr <32 x i16> %i.pl, splat (i16 4)
  %i.pn = bitcast <32 x i16> %i.pm to <64 x i8>
  %i.po = and <64 x i8> %i.pn, splat (i8 15)
  %i.pp = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.po)
  %i.pq = bitcast <64 x i8> %i.pp to <8 x i64>
  %i.pr = tail call noundef <8 x i64> @llvm.x86.avx512.pternlog.q.512(<8 x i64> %i.ph, <8 x i64> %i.pk, <8 x i64> %i.pq, i32 128)
  %i.ps = bitcast <8 x i64> %i.pr to <16 x i32>
  %5 = shufflevector <64 x i8> %i.pb, <64 x i8> %i.ow, <64 x i32> <i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %6 = shufflevector <64 x i8> %i.pb, <64 x i8> %i.ow, <64 x i32> <i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.pt = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %5, <64 x i8> splat (i8 -33))
  %i.pu = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %6, <64 x i8> splat (i8 -17))
  %i.pv = or <64 x i8> %i.pt, %i.pu
  %i.pw = add nuw <64 x i8> %i.pv, splat (i8 127)
  %i.px = bitcast <64 x i8> %i.pw to <16 x i32>
  %i.py = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.px, <16 x i32> splat (i32 -2139062144), <16 x i32> %i.ps, i32 106)
  %i.pz = bitcast <16 x i32> %i.py to <8 x i64>
  %i.qa = or <8 x i64> %.sroa.0248.1.i, %i.pz
  %i.qb = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.ow, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.qc = bitcast <64 x i8> %i.qb to <8 x i64>
  br label %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit.i

_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit.i: ; preds = %bb.s, %bb.r, %bb.p
  %.sroa.0248.2.i = phi <8 x i64> [ %.sroa.0248.1.i, %bb.p ], [ %i.pa, %bb.r ], [ %i.qa, %bb.s ]
  %.sroa.27.2.i = phi <8 x i64> [ %.sroa.27.1.i, %bb.p ], [ %.sroa.27.1.i, %bb.r ], [ %i.qc, %bb.s ]
  %i.qd = or <8 x i64> %.sroa.27.2.i, %.sroa.0248.2.i
  %i.qe = bitcast <8 x i64> %i.qd to <64 x i8>
  %i.qf = icmp ne <64 x i8> %i.qe, zeroinitializer
  %i.qg = bitcast <64 x i1> %i.qf to i64
  %.not1176.i = icmp eq i64 %i.qg, 0
  br i1 %.not1176.i, label %_ZN7simdutf7icelake12_GLOBAL__N_152validating_utf8_to_fixed_length_with_constant_checksILNS_10endiannessE0EjEESt5tupleIJPKcPT0_bEES6_mS8_.exit, label %.loopexit81

.loopexit81:                                      ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit121.i, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit121.thread.i, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit120.i, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit120.thread.i, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit.i
  %.sroa.13.1.ph = phi ptr [ %.4.i, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit.i ], [ %.01106.lcssa.i, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit120.thread.i ], [ %.01106.lcssa.i, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit120.i ], [ %.011061192.i, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit121.thread.i ], [ %.011061192.i, %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit121.i ]
  %i.qh = ptrtoint ptr %.sroa.13.1.ph to i64
  %i.qi = ptrtoint ptr %1 to i64
  %i.qj = sub i64 %i.qh, %i.qi                    ; 6 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 %i.qj ; 4 uses
  %i.ql = load i8, ptr %i.qk, align 1             ; 2 uses
  %i.qm = icmp sgt i8 %i.ql, -65
  %i.qn = icmp ugt i64 %i.qj, 63                  ; 2 uses
  %or.cond = and i1 %i.qm, %i.qn
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit81
  %i.qo = add i64 %i.qj, -1
  br label %.critedge60

bb.u:                                             ; preds = %.loopexit81
  %i.qp = icmp slt i8 %i.ql, -64
  %or.cond3 = and i1 %i.qp, %i.qn
  br i1 %or.cond3, label %bb.v, label %.critedge60

bb.v:                                             ; preds = %bb.u
  %i.qq = getelementptr i8, ptr %i.qk, i64 -1
  %i.qr = load i8, ptr %i.qq, align 1
  %i.qs = icmp sgt i8 %i.qr, -65
  %i.qt = getelementptr i8, ptr %i.qk, i64 -2
  %i.qu = load i8, ptr %i.qt, align 1
  %i.qv = icmp sgt i8 %i.qu, -65
  %i.qw = getelementptr i8, ptr %i.qk, i64 -3
  %i.qx = load i8, ptr %i.qw, align 1
  %i.qy = icmp sgt i8 %i.qx, -65
  %or.cond5.not56 = select i1 %i.qs, i1 true, i1 %i.qv
  %or.cond7.not = select i1 %or.cond5.not56, i1 true, i1 %i.qy
  br i1 %or.cond7.not, label %.critedge60, label %.loopexit

.critedge60:                                      ; preds = %bb.v, %bb.u, %bb.t
  %.0 = phi i64 [ %i.qo, %bb.t ], [ %i.qj, %bb.u ], [ %i.qj, %bb.v ] ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.ra = sub i64 %2, %.0
  %i.rb = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3230rewind_and_convert_with_errorsEmPKcmPDi(i64 noundef %.0, ptr noundef %i.qz, i64 noundef %i.ra, ptr noundef %3) ; 2 uses
  %i.rc = extractvalue { i32, i64 } %i.rb, 0
  %i.rd = extractvalue { i32, i64 } %i.rb, 1
  %i.re = add i64 %i.rd, %.0
  br label %.loopexit

_ZN7simdutf7icelake12_GLOBAL__N_152validating_utf8_to_fixed_length_with_constant_checksILNS_10endiannessE0EjEESt5tupleIJPKcPT0_bEES6_mS8_.exit: ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_119avx512_utf8_checker16check_next_inputEDv8_x.exit.i
  %i.rf = ptrtoint ptr %.41113.i to i64
  %i.rg = ptrtoint ptr %3 to i64
  %i.rh = sub i64 %i.rf, %i.rg                    ; 2 uses
  %i.ri = ashr exact i64 %i.rh, 2                 ; 3 uses
  %i.rj = icmp eq ptr %.4.i, %i.b
  br i1 %i.rj, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_152validating_utf8_to_fixed_length_with_constant_checksILNS_10endiannessE0EjEESt5tupleIJPKcPT0_bEES6_mS8_.exit, %bb.w
  %.sroa.13.084 = phi ptr [ %i.rm, %bb.w ], [ %.4.i, %_ZN7simdutf7icelake12_GLOBAL__N_152validating_utf8_to_fixed_length_with_constant_checksILNS_10endiannessE0EjEESt5tupleIJPKcPT0_bEES6_mS8_.exit ] ; 4 uses
  %i.rk = load i8, ptr %.sroa.13.084, align 1
  %i.rl = icmp slt i8 %i.rk, -64
  br i1 %i.rl, label %bb.w, label %.critedge

bb.w:                                             ; preds = %.preheader
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.13.084, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.rm, %i.b
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !262

.critedge:                                        ; preds = %.preheader
  %i.rn = ptrtoint ptr %.sroa.13.084 to i64       ; 2 uses
  %i.ro = ptrtoint ptr %1 to i64                  ; 2 uses
  %.neg = add i64 %2, %i.ro
  %i.rp = sub i64 %.neg, %i.rn
  %i.rq = getelementptr inbounds nuw i8, ptr %3, i64 %i.rh
  %i.rr = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3219convert_with_errorsEPKcmPDi(ptr noundef nonnull %.sroa.13.084, i64 noundef %i.rp, ptr noundef %i.rq) ; 2 uses
  %i.rs = extractvalue { i32, i64 } %i.rr, 0      ; 2 uses
  %i.rt = extractvalue { i32, i64 } %i.rr, 1      ; 2 uses
  %.not58 = icmp eq i32 %i.rs, 0
  br i1 %.not58, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.ru = sub i64 %i.rn, %i.ro
  %i.rv = add i64 %i.ru, %i.rt
  br label %.loopexit

bb.y:                                             ; preds = %.critedge
  %i.rw = add i64 %i.rt, %i.ri
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %.critedge60, %bb.v, %_ZN7simdutf7icelake12_GLOBAL__N_152validating_utf8_to_fixed_length_with_constant_checksILNS_10endiannessE0EjEESt5tupleIJPKcPT0_bEES6_mS8_.exit, %bb.y, %bb.x, %bb.a
  %.sroa.071.1 = phi i32 [ 0, %bb.a ], [ 3, %bb.v ], [ %i.rs, %bb.x ], [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_152validating_utf8_to_fixed_length_with_constant_checksILNS_10endiannessE0EjEESt5tupleIJPKcPT0_bEES6_mS8_.exit ], [ %i.rc, %.critedge60 ], [ 0, %bb.y ], [ 0, %bb.w ]
  %.sroa.772.1 = phi i64 [ 0, %bb.a ], [ %i.qj, %bb.v ], [ %i.rv, %bb.x ], [ %i.ri, %_ZN7simdutf7icelake12_GLOBAL__N_152validating_utf8_to_fixed_length_with_constant_checksILNS_10endiannessE0EjEESt5tupleIJPKcPT0_bEES6_mS8_.exit ], [ %i.re, %.critedge60 ], [ %i.rw, %bb.y ], [ %i.ri, %bb.w ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.071.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.772.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3230rewind_and_convert_with_errorsEmPKcmPDi(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #9 {
bb.a:
  %spec.select = tail call i64 @llvm.umin.i64(i64 %0, i64 3)
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %i.b = icmp slt i8 %i.a, -64                    ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.f, %bb.d, %bb.a
  %.02971.lcssa = phi i64 [ 0, %bb.a ], [ 1, %bb.d ], [ 2, %bb.f ], [ 3, %bb.h ] ; 3 uses
  %.lcssa87 = phi i64 [ 0, %bb.a ], [ -1, %bb.d ], [ -2, %bb.f ], [ -3, %bb.h ]
  %.lcssa = phi i8 [ %i.a, %bb.a ], [ %i.e, %bb.d ], [ %i.h, %bb.f ], [ %i.k, %bb.h ]
  %i.c = icmp sgt i8 %.lcssa, -1
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.i, label %bb.k

bb.c:                                             ; preds = %bb.a
  %exitcond.not = icmp eq i64 %0, 0
  br i1 %exitcond.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds i8, ptr %1, i64 -1
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = icmp sgt i8 %i.e, -65
  br i1 %i.f, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond.not.1 = icmp eq i64 %0, 1
  br i1 %exitcond.not.1, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds i8, ptr %1, i64 -2
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = icmp sgt i8 %i.h, -65
  br i1 %i.i, label %bb.b, label %bb.g

bb.g:                                             ; preds = %bb.f
  %exitcond.not.2 = icmp eq i64 %0, 2
  br i1 %exitcond.not.2, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds i8, ptr %1, i64 -3
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = icmp sgt i8 %i.k, -65
  br i1 %i.l, label %bb.b, label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.m = sub nsw i64 1, %.02971.lcssa
  br label %bb.l

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %i.n = sub nsw i64 0, %spec.select
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.lcssa87
  %i.p = add i64 %.02971.lcssa, %2
  %i.q = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf3219convert_with_errorsEPKcmPDi(ptr noundef nonnull %i.o, i64 noundef %i.p, ptr noundef %3) ; 2 uses
  %i.r = extractvalue { i32, i64 } %i.q, 0        ; 2 uses
  %i.s = extractvalue { i32, i64 } %i.q, 1
  %.not37 = icmp eq i32 %i.r, 0
  %i.t = select i1 %.not37, i64 0, i64 %.02971.lcssa
  %spec.select38 = sub i64 %i.s, %i.t
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %.sroa.4.3 = phi i64 [ %spec.select38, %bb.k ], [ %i.n, %bb.j ], [ %i.m, %bb.i ]
  %.sroa.0.3 = phi i32 [ %i.r, %bb.k ], [ 3, %bb.j ], [ 3, %bb.i ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.3, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387903) i64 @_ZNK7simdutf7icelake14implementation27convert_valid_utf8_to_utf32EPKcmPDi(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp sgt i64 %2, 67
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.i
  %.0773780.i = phi ptr [ %.1774.i, %bb.i ], [ %1, %bb.a ] ; 3 uses
  %.0776779.i = phi ptr [ %.1777.i, %bb.i ], [ %3, %bb.a ] ; 9 uses
  %i.d = load <8 x i64>, ptr %.0773780.i, align 1 ; 9 uses
  %i.e = bitcast <8 x i64> %i.d to <16 x i32>
  %i.f = bitcast <8 x i64> %i.d to <64 x i8>
end_hunk_2
