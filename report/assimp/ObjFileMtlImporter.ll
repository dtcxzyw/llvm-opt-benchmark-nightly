inline.NumInlined: 1119
inline.NumDeleted: 346
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 38
loop-unroll.NumUnrolledNotLatch: 32
begin_hunk_0_@_ZN6Assimp8IOSystemD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp18ObjFileMtlImporter4loadEv(ptr nofree noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca i64, align 8                      ; 8 uses
  %i.h = alloca float, align 4                    ; 5 uses
  %i.i = alloca float, align 4                    ; 5 uses
  %i.j = alloca i64, align 8                      ; 8 uses
  %i.k = alloca float, align 4                    ; 5 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca float, align 4                    ; 5 uses
  %i.n = alloca i64, align 8                      ; 8 uses
  %i.o = alloca float, align 4                    ; 5 uses
  %i.p = alloca float, align 4                    ; 5 uses
  %i.q = alloca i64, align 8                      ; 6 uses
  %i.r = alloca float, align 4                    ; 5 uses
  %i.s = alloca i64, align 8                      ; 6 uses
  %i.t = alloca float, align 4                    ; 5 uses
  %i.u = alloca i64, align 8                      ; 6 uses
  %i.v = alloca float, align 4                    ; 5 uses
  %i.w = alloca float, align 4                    ; 5 uses
  %i.x = alloca float, align 4                    ; 5 uses
  %1 = alloca %struct.aiColor3D, align 8          ; 6 uses
  %i.y = alloca float, align 4                    ; 5 uses
  %i.z = alloca float, align 4                    ; 5 uses
  %i.aa = alloca float, align 4                   ; 5 uses
  %i.ab = alloca float, align 4                   ; 5 uses
  %i.ac = alloca float, align 4                   ; 5 uses
  %i.ad = alloca float, align 4                   ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 82 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 25 uses
  %i.ag = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 27 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 42 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 26 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.hl
  %i.bh = phi ptr [ %i.ah, %.lr.ph ], [ %i.bgi, %bb.hl ] ; 72 uses
  %i.bi = phi ptr [ %i.ag, %.lr.ph ], [ %i.bgh, %bb.hl ] ; 83 uses
  %i.bj = load i8, ptr %i.bi, align 1
  switch i8 %i.bj, label %bb.hi [
    i8 107, label %bb.c
    i8 75, label %bb.c
    i8 84, label %bb.o
    i8 100, label %bb.z
    i8 78, label %bb.ak
    i8 110, label %bb.ak
    i8 80, label %bb.ba
    i8 109, label %bb.cg
    i8 98, label %bb.cs
    i8 114, label %bb.cv
    i8 105, label %bb.dg
    i8 97, label %bb.dn
    i8 115, label %bb.eq
    i8 99, label %bb.ge
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  store ptr %i.bk, ptr %i.ae, align 8
  %i.bl = load i8, ptr %i.bk, align 1
  switch i8 %i.bl, label %bb.l [
    i8 97, label %bb.d
    i8 100, label %bb.f
    i8 115, label %bb.h
    i8 101, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bm, ptr %i.ae, align 8
  %i.bn = load ptr, ptr %i.ap, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not151 = icmp eq ptr %i.bp, null
  br i1 %.not151, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 20580
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.br, ptr %i.ae, align 8
  %i.bs = load ptr, ptr %i.ap, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not150 = icmp eq ptr %i.bu, null
  br i1 %.not150, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20592
  br label %.sink.split

bb.h:                                             ; preds = %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bw, ptr %i.ae, align 8
  %i.bx = load ptr, ptr %i.ap, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not149 = icmp eq ptr %i.bz, null
  br i1 %.not149, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 20604
  br label %.sink.split

bb.j:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.cb, ptr %i.ae, align 8
  %i.cc = load ptr, ptr %i.ap, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not148 = icmp eq ptr %i.ce, null
  br i1 %.not148, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 20616
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.i, %bb.k, %bb.g
  %.sink = phi ptr [ %i.bv, %bb.g ], [ %i.cf, %bb.k ], [ %i.ca, %bb.i ], [ %i.bq, %bb.e ]
  call void @_ZN6Assimp18ObjFileMtlImporter12getColorRGBAEP9aiColor3D(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.sink)
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.c, %bb.f, %bb.j, %bb.h, %bb.d
  %.sroa.090.0.copyload = load ptr, ptr %i.ae, align 8 ; 5 uses
  %.sroa.089.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %12 = ptrtoaddr ptr %.sroa.089.0.copyload to i64
  %.not.i = icmp ult ptr %.sroa.090.0.copyload, %.sroa.089.0.copyload
  br i1 %.not.i, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %bb.l
  %i.cg = getelementptr inbounds i8, ptr %.sroa.089.0.copyload, i64 -1 ; 2 uses
  %i.ch = icmp eq ptr %.sroa.090.0.copyload, %i.cg
  br i1 %i.ch, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.cj, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.090.0.copyload, %.preheader.i ] ; 6 uses
  %i.ci = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.ci, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, %.sroa.089.0.copyload
  %i.cl = icmp eq ptr %i.cj, %i.cg
  %.0.i.i = or i1 %i.ck, %i.cl
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !8

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.090.0.copyload, %.preheader.i ], [ %i.cj, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.089.0.copyload
  br i1 %.not19.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.cn = load i32, ptr %i.ar, align 8
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.ar, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.cm, %bb.m ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.089.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.n
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.cp = sub i64 %12, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.cp
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.cr, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.cq = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.cq, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.cr, %.sroa.089.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !9

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.lr.ph32.i, %.critedge4.i, %bb.l, %bb.n
  %.sroa.010.3.i = phi ptr [ %.sroa.090.0.copyload, %bb.l ], [ %.sroa.010.1.i, %bb.n ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %i.ae, align 8
  br label %bb.hl

bb.o:                                             ; preds = %bb.b
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  store ptr %i.cs, ptr %i.ae, align 8
  %i.ct = load i8, ptr %i.cs, align 1
  switch i8 %i.ct, label %bb.w [
    i8 102, label %bb.p
    i8 114, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.cu, ptr %i.ae, align 8
  %i.cv = load ptr, ptr %i.ap, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %.not147 = icmp eq ptr %i.cx, null
  br i1 %.not147, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 20644
  call void @_ZN6Assimp18ObjFileMtlImporter12getColorRGBAEP9aiColor3D(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.cy)
  br label %bb.w

bb.r:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 5 uses
  store ptr %i.cz, ptr %i.ae, align 8
  %i.da = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 4 uses
  %i.dc = icmp eq ptr %i.cz, %i.bh
  %i.dd = icmp eq ptr %i.cz, %i.db
  %.0.i6.i.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %.0.i6.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.df, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i ], [ %i.cz, %bb.r ] ; 3 uses
  %i.de = load i8, ptr %.sroa.0.07.i.i.i, align 1
  switch i8 %i.de, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i:           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 1 ; 4 uses
  %i.dg = icmp eq ptr %i.df, %i.bh
  %i.dh = icmp eq ptr %i.df, %i.db
  %.0.i.i.i.i = select i1 %i.dg, i1 true, i1 %i.dh
  br i1 %.0.i.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader, label %.lr.ph.i.i.i, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i, %.lr.ph.i.i.i, %bb.r
  %.sroa.0.0.i.i.ph = phi ptr [ %i.cz, %bb.r ], [ %.sroa.0.07.i.i.i, %.lr.ph.i.i.i ], [ %i.df, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i: ; preds = %bb.t, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i.i.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader ], [ %i.du, %bb.t ] ; 13 uses
  %.0.i.i154 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader ], [ %i.dt, %bb.t ] ; 11 uses
  %i.di = load i8, ptr %.sroa.0.0.i.i, align 1    ; 2 uses
  switch i8 %i.di, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i:     ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i
  %i.dj = icmp eq ptr %.sroa.0.0.i.i, %i.bh
  %i.dk = icmp eq ptr %.sroa.0.0.i.i, %i.db
  %.0.i.i.i = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %.0.i.i.i, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 %.0.i.i154
  store i8 %i.di, ptr %i.dl, align 1
  %i.dm = icmp eq i64 %.0.i.i154, 2046
  br i1 %i.dm, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1: ; preds = %bb.s
  %i.dn = or disjoint i64 %.0.i.i154, 1           ; 8 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1 ; 10 uses
  %i.dp = load i8, ptr %i.do, align 1             ; 2 uses
  switch i8 %i.dp, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1:   ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1
  %i.dq = icmp eq ptr %i.do, %i.bh
  %i.dr = icmp eq ptr %i.do, %i.db
  %.0.i.i.i.1 = select i1 %i.dq, i1 true, i1 %i.dr
  br i1 %.0.i.i.i.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dn
  store i8 %i.dp, ptr %i.ds, align 1
  %i.dt = add nuw nsw i64 %.0.i.i154, 2
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, !llvm.loop !11

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %bb.s, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i
  %.sroa.0.0.i.i.lcssa = phi ptr [ %.sroa.0.0.i.i, %bb.s ], [ %.sroa.0.0.i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %i.do, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.do, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.do, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.do, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.do, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.do, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.do, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1 ]
  %.1.i.i = phi i64 [ 2047, %bb.s ], [ %.0.i.i154, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ], [ %.0.i.i154, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i154, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i154, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i154, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i154, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i154, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %i.dn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.dn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.dn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.dn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.dn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.dn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.dn, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.da, i64 %.1.i.i
  store i8 0, ptr %i.dv, align 1
  store ptr %.sroa.0.0.i.i.lcssa, ptr %i.ae, align 8
  %i.dw = load ptr, ptr %i.aq, align 8            ; 2 uses
  %char0.i = load i8, ptr %i.dw, align 1
  %i.dx = icmp eq i8 %char0.i, 0
  br i1 %i.dx, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit, label %bb.u

bb.u:                                             ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #22
  store float 0.000000e+00, ptr %i.ad, align 4
  %i.dy = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.dw, ptr noundef nonnull align 4 dereferenceable(4) %i.ad, i1 noundef zeroext true) ; 0 uses
  %i.dz = load float, ptr %i.ad, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit: ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i, %bb.u
  %storemerge.i = phi float [ %i.dz, %bb.u ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i ]
  %i.ea = load ptr, ptr %i.ap, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %.not146 = icmp eq ptr %i.ec, null
  br i1 %.not146, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit
  %i.ed = fsub float 1.000000e+00, %storemerge.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 20628
  store float %i.ed, ptr %i.ee, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.o, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit, %bb.v, %bb.p, %bb.q
  %.sroa.087.0.copyload = load ptr, ptr %i.ae, align 8 ; 5 uses
  %.sroa.086.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %13 = ptrtoaddr ptr %.sroa.086.0.copyload to i64
  %.not.i155 = icmp ult ptr %.sroa.087.0.copyload, %.sroa.086.0.copyload
  br i1 %.not.i155, label %.preheader.i157, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit174

.preheader.i157:                                  ; preds = %bb.w
  %i.ef = getelementptr inbounds i8, ptr %.sroa.086.0.copyload, i64 -1 ; 2 uses
  %i.eg = icmp eq ptr %.sroa.087.0.copyload, %i.ef
  br i1 %i.eg, label %.critedge.i160, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %.preheader.i157, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i172
  %.sroa.010.021.i159 = phi ptr [ %i.ei, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i172 ], [ %.sroa.087.0.copyload, %.preheader.i157 ] ; 6 uses
  %i.eh = load i8, ptr %.sroa.010.021.i159, align 1
  switch i8 %i.eh, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i172 [
    i8 13, label %.critedge.i160
    i8 10, label %.critedge.i160
    i8 0, label %.critedge.i160
    i8 12, label %.critedge.i160
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i172:            ; preds = %.lr.ph.i158
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i159, i64 1 ; 4 uses
  %i.ej = icmp eq ptr %i.ei, %.sroa.086.0.copyload
  %i.ek = icmp eq ptr %i.ei, %i.ef
  %.0.i.i173 = or i1 %i.ej, %i.ek
  br i1 %.0.i.i173, label %.critedge.i160, label %.lr.ph.i158, !llvm.loop !8

.critedge.i160:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i172, %.lr.ph.i158, %.lr.ph.i158, %.lr.ph.i158, %.lr.ph.i158, %.preheader.i157
  %.sroa.010.0.lcssa.i161 = phi ptr [ %.sroa.087.0.copyload, %.preheader.i157 ], [ %i.ei, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i172 ], [ %.sroa.010.021.i159, %.lr.ph.i158 ], [ %.sroa.010.021.i159, %.lr.ph.i158 ], [ %.sroa.010.021.i159, %.lr.ph.i158 ], [ %.sroa.010.021.i159, %.lr.ph.i158 ] ; 3 uses
  %.not19.i162 = icmp eq ptr %.sroa.010.0.lcssa.i161, %.sroa.086.0.copyload
  br i1 %.not19.i162, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge.i160
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i161, i64 1
  %i.em = load i32, ptr %i.ar, align 8
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.ar, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge.i160
  %.sroa.010.1.i163 = phi ptr [ %i.el, %bb.x ], [ %.sroa.010.0.lcssa.i161, %.critedge.i160 ] ; 5 uses
  %.not2030.i164 = icmp eq ptr %.sroa.010.1.i163, %.sroa.086.0.copyload
  br i1 %.not2030.i164, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit174, label %.lr.ph32.preheader.i165

.lr.ph32.preheader.i165:                          ; preds = %bb.y
  %.sroa.010.136.i166 = ptrtoaddr ptr %.sroa.010.1.i163 to i64
  %i.eo = sub i64 %13, %.sroa.010.136.i166
  %scevgep.i167 = getelementptr i8, ptr %.sroa.010.1.i163, i64 %i.eo
  br label %.lr.ph32.i168

.lr.ph32.i168:                                    ; preds = %.critedge4.i170, %.lr.ph32.preheader.i165
  %.sroa.010.231.i169 = phi ptr [ %i.eq, %.critedge4.i170 ], [ %.sroa.010.1.i163, %.lr.ph32.preheader.i165 ] ; 3 uses
  %i.ep = load i8, ptr %.sroa.010.231.i169, align 1
  switch i8 %i.ep, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit174 [
    i8 9, label %.critedge4.i170
    i8 32, label %.critedge4.i170
  ]

.critedge4.i170:                                  ; preds = %.lr.ph32.i168, %.lr.ph32.i168
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i169, i64 1 ; 2 uses
  %.not20.i171 = icmp eq ptr %i.eq, %.sroa.086.0.copyload
  br i1 %.not20.i171, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit174, label %.lr.ph32.i168, !llvm.loop !9

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit174: ; preds = %.lr.ph32.i168, %.critedge4.i170, %bb.w, %bb.y
  %.sroa.010.3.i156 = phi ptr [ %.sroa.087.0.copyload, %bb.w ], [ %.sroa.010.1.i163, %bb.y ], [ %.sroa.010.231.i169, %.lr.ph32.i168 ], [ %scevgep.i167, %.critedge4.i170 ]
  store ptr %.sroa.010.3.i156, ptr %i.ae, align 8
  br label %bb.hl

bb.z:                                             ; preds = %bb.b
  %i.er = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 7 uses
  %i.es = load i8, ptr %i.er, align 1
  %i.et = icmp eq i8 %i.es, 105
  br i1 %i.et, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = icmp eq i8 %i.ev, 115
  br i1 %i.ew, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = icmp eq i8 %i.ey, 112
  br i1 %i.ez, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN6Assimp18ObjFileMtlImporter10getTextureEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %bb.hl

.critedge:                                        ; preds = %bb.aa, %bb.z, %bb.ab
  store ptr %i.er, ptr %i.ae, align 8
  %i.fa = load ptr, ptr %i.ap, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %.not145 = icmp eq ptr %i.fc, null
  br i1 %.not145, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %.critedge
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 20628
  %i.fe = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.ff = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 4 uses
  %i.fg = icmp eq ptr %i.er, %i.bh
  %i.fh = icmp eq ptr %i.er, %i.ff
  %.0.i6.i.i.i177 = select i1 %i.fg, i1 true, i1 %i.fh
  br i1 %.0.i6.i.i.i177, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.preheader, label %.lr.ph.i.i.i178

.lr.ph.i.i.i178:                                  ; preds = %bb.ad, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i180
  %.sroa.0.07.i.i.i179 = phi ptr [ %i.fj, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i180 ], [ %i.er, %bb.ad ] ; 3 uses
  %i.fi = load i8, ptr %.sroa.0.07.i.i.i179, align 1
  switch i8 %i.fi, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i180
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i180
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i180:        ; preds = %.lr.ph.i.i.i178, %.lr.ph.i.i.i178
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i179, i64 1 ; 4 uses
  %i.fk = icmp eq ptr %i.fj, %i.bh
  %i.fl = icmp eq ptr %i.fj, %i.ff
  %.0.i.i.i.i181 = select i1 %i.fk, i1 true, i1 %i.fl
  br i1 %.0.i.i.i.i181, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.preheader, label %.lr.ph.i.i.i178, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i180, %.lr.ph.i.i.i178, %bb.ad
  %.sroa.0.0.i.i184.ph = phi ptr [ %i.er, %bb.ad ], [ %.sroa.0.07.i.i.i179, %.lr.ph.i.i.i178 ], [ %i.fj, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i180 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182: ; preds = %bb.af, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.preheader
  %.sroa.0.0.i.i184 = phi ptr [ %.sroa.0.0.i.i184.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.preheader ], [ %i.fy, %bb.af ] ; 13 uses
  %.0.i.i185 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.preheader ], [ %i.fx, %bb.af ] ; 11 uses
  %i.fm = load i8, ptr %.sroa.0.0.i.i184, align 1 ; 2 uses
  switch i8 %i.fm, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182
  %i.fn = icmp eq ptr %.sroa.0.0.i.i184, %i.bh
  %i.fo = icmp eq ptr %.sroa.0.0.i.i184, %i.ff
  %.0.i.i.i191 = select i1 %i.fn, i1 true, i1 %i.fo
  br i1 %.0.i.i.i191, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186, label %bb.ae

bb.ae:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.0.i.i185
  store i8 %i.fm, ptr %i.fp, align 1
  %i.fq = icmp eq i64 %.0.i.i185, 2046
  br i1 %i.fq, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1: ; preds = %bb.ae
  %i.fr = or disjoint i64 %.0.i.i185, 1           ; 8 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i184, i64 1 ; 10 uses
  %i.ft = load i8, ptr %i.fs, align 1             ; 2 uses
  switch i8 %i.ft, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1
  %i.fu = icmp eq ptr %i.fs, %i.bh
  %i.fv = icmp eq ptr %i.fs, %i.ff
  %.0.i.i.i191.1 = select i1 %i.fu, i1 true, i1 %i.fv
  br i1 %.0.i.i.i191.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186, label %bb.af

bb.af:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190.1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fr
  store i8 %i.ft, ptr %i.fw, align 1
  %i.fx = add nuw nsw i64 %.0.i.i185, 2
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i184, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182, !llvm.loop !11

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1, %bb.ae, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182
  %.sroa.0.0.i.i184.lcssa = phi ptr [ %.sroa.0.0.i.i184, %bb.ae ], [ %.sroa.0.0.i.i184, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190 ], [ %.sroa.0.0.i.i184, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.sroa.0.0.i.i184, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.sroa.0.0.i.i184, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.sroa.0.0.i.i184, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.sroa.0.0.i.i184, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.sroa.0.0.i.i184, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %i.fs, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fs, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fs, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fs, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fs, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fs, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fs, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190.1 ]
  %.1.i.i187 = phi i64 [ 2047, %bb.ae ], [ %.0.i.i185, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190 ], [ %.0.i.i185, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.0.i.i185, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.0.i.i185, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.0.i.i185, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.0.i.i185, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.0.i.i185, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %i.fr, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fr, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fr, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fr, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fr, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fr, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fr, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190.1 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.1.i.i187
  store i8 0, ptr %i.fz, align 1
  store ptr %.sroa.0.0.i.i184.lcssa, ptr %i.ae, align 8
  %i.ga = load ptr, ptr %i.aq, align 8            ; 2 uses
  %char0.i188 = load i8, ptr %i.ga, align 1
  %i.gb = icmp eq i8 %char0.i188, 0
  br i1 %i.gb, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit192, label %bb.ag

bb.ag:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #22
  store float 0.000000e+00, ptr %i.ac, align 4
  %i.gc = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.ga, ptr noundef nonnull align 4 dereferenceable(4) %i.ac, i1 noundef zeroext true) ; 0 uses
  %i.gd = load float, ptr %i.ac, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit192

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit192: ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186, %bb.ag
  %storemerge.i189 = phi float [ %i.gd, %bb.ag ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186 ]
  store float %storemerge.i189, ptr %i.fd, align 4
  %.sroa.084.0.copyload.pre = load ptr, ptr %i.ae, align 8
  %.sroa.083.0.copyload.pre = load ptr, ptr %i.af, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit192, %.critedge
  %.sroa.083.0.copyload = phi ptr [ %.sroa.083.0.copyload.pre, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit192 ], [ %i.bh, %.critedge ] ; 7 uses
  %.sroa.084.0.copyload = phi ptr [ %.sroa.084.0.copyload.pre, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit192 ], [ %i.er, %.critedge ] ; 5 uses
  %14 = ptrtoaddr ptr %.sroa.083.0.copyload to i64
  %.not.i193 = icmp ult ptr %.sroa.084.0.copyload, %.sroa.083.0.copyload
  br i1 %.not.i193, label %.preheader.i195, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit212

.preheader.i195:                                  ; preds = %bb.ah
  %i.ge = getelementptr inbounds i8, ptr %.sroa.083.0.copyload, i64 -1 ; 2 uses
  %i.gf = icmp eq ptr %.sroa.084.0.copyload, %i.ge
  br i1 %i.gf, label %.critedge.i198, label %.lr.ph.i196

.lr.ph.i196:                                      ; preds = %.preheader.i195, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i210
  %.sroa.010.021.i197 = phi ptr [ %i.gh, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i210 ], [ %.sroa.084.0.copyload, %.preheader.i195 ] ; 6 uses
  %i.gg = load i8, ptr %.sroa.010.021.i197, align 1
  switch i8 %i.gg, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i210 [
    i8 13, label %.critedge.i198
    i8 10, label %.critedge.i198
    i8 0, label %.critedge.i198
    i8 12, label %.critedge.i198
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i210:            ; preds = %.lr.ph.i196
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i197, i64 1 ; 4 uses
  %i.gi = icmp eq ptr %i.gh, %.sroa.083.0.copyload
  %i.gj = icmp eq ptr %i.gh, %i.ge
  %.0.i.i211 = or i1 %i.gi, %i.gj
  br i1 %.0.i.i211, label %.critedge.i198, label %.lr.ph.i196, !llvm.loop !8

.critedge.i198:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i210, %.lr.ph.i196, %.lr.ph.i196, %.lr.ph.i196, %.lr.ph.i196, %.preheader.i195
  %.sroa.010.0.lcssa.i199 = phi ptr [ %.sroa.084.0.copyload, %.preheader.i195 ], [ %i.gh, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i210 ], [ %.sroa.010.021.i197, %.lr.ph.i196 ], [ %.sroa.010.021.i197, %.lr.ph.i196 ], [ %.sroa.010.021.i197, %.lr.ph.i196 ], [ %.sroa.010.021.i197, %.lr.ph.i196 ] ; 3 uses
  %.not19.i200 = icmp eq ptr %.sroa.010.0.lcssa.i199, %.sroa.083.0.copyload
  br i1 %.not19.i200, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge.i198
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i199, i64 1
  %i.gl = load i32, ptr %i.ar, align 8
  %i.gm = add i32 %i.gl, 1
  store i32 %i.gm, ptr %i.ar, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge.i198
  %.sroa.010.1.i201 = phi ptr [ %i.gk, %bb.ai ], [ %.sroa.010.0.lcssa.i199, %.critedge.i198 ] ; 5 uses
  %.not2030.i202 = icmp eq ptr %.sroa.010.1.i201, %.sroa.083.0.copyload
  br i1 %.not2030.i202, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit212, label %.lr.ph32.preheader.i203

.lr.ph32.preheader.i203:                          ; preds = %bb.aj
  %.sroa.010.136.i204 = ptrtoaddr ptr %.sroa.010.1.i201 to i64
  %i.gn = sub i64 %14, %.sroa.010.136.i204
  %scevgep.i205 = getelementptr i8, ptr %.sroa.010.1.i201, i64 %i.gn
  br label %.lr.ph32.i206

.lr.ph32.i206:                                    ; preds = %.critedge4.i208, %.lr.ph32.preheader.i203
  %.sroa.010.231.i207 = phi ptr [ %i.gp, %.critedge4.i208 ], [ %.sroa.010.1.i201, %.lr.ph32.preheader.i203 ] ; 3 uses
  %i.go = load i8, ptr %.sroa.010.231.i207, align 1
  switch i8 %i.go, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit212 [
    i8 9, label %.critedge4.i208
    i8 32, label %.critedge4.i208
  ]

.critedge4.i208:                                  ; preds = %.lr.ph32.i206, %.lr.ph32.i206
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i207, i64 1 ; 2 uses
  %.not20.i209 = icmp eq ptr %i.gp, %.sroa.083.0.copyload
  br i1 %.not20.i209, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit212, label %.lr.ph32.i206, !llvm.loop !9

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit212: ; preds = %.lr.ph32.i206, %.critedge4.i208, %bb.ah, %bb.aj
  %.sroa.010.3.i194 = phi ptr [ %.sroa.084.0.copyload, %bb.ah ], [ %.sroa.010.1.i201, %bb.aj ], [ %.sroa.010.231.i207, %.lr.ph32.i206 ], [ %scevgep.i205, %.critedge4.i208 ]
  store ptr %.sroa.010.3.i194, ptr %i.ae, align 8
  br label %bb.hl

bb.ak:                                            ; preds = %bb.b, %bb.b
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  store ptr %i.gq, ptr %i.ae, align 8
  %i.gr = load i8, ptr %i.gq, align 1
  switch i8 %i.gr, label %bb.ax [
    i8 115, label %bb.al
    i8 105, label %bb.aq
    i8 101, label %bb.av
    i8 111, label %bb.aw
  ]

bb.al:                                            ; preds = %bb.ak
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 5 uses
  store ptr %i.gs, ptr %i.ae, align 8
  %i.gt = load ptr, ptr %i.ap, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  %i.gv = load ptr, ptr %i.gu, align 8            ; 2 uses
  %.not144 = icmp eq ptr %i.gv, null
  br i1 %.not144, label %bb.ax, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 20632
  %i.gx = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.gy = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 4 uses
  %i.gz = icmp eq ptr %i.gs, %i.bh
  %i.ha = icmp eq ptr %i.gs, %i.gy
  %.0.i6.i.i.i215 = select i1 %i.gz, i1 true, i1 %i.ha
  br i1 %.0.i6.i.i.i215, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.preheader, label %.lr.ph.i.i.i216

.lr.ph.i.i.i216:                                  ; preds = %bb.am, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i218
  %.sroa.0.07.i.i.i217 = phi ptr [ %i.hc, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i218 ], [ %i.gs, %bb.am ] ; 3 uses
  %i.hb = load i8, ptr %.sroa.0.07.i.i.i217, align 1
  switch i8 %i.hb, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i218
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i218
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i218:        ; preds = %.lr.ph.i.i.i216, %.lr.ph.i.i.i216
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i217, i64 1 ; 4 uses
  %i.hd = icmp eq ptr %i.hc, %i.bh
  %i.he = icmp eq ptr %i.hc, %i.gy
  %.0.i.i.i.i219 = select i1 %i.hd, i1 true, i1 %i.he
  br i1 %.0.i.i.i.i219, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.preheader, label %.lr.ph.i.i.i216, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i218, %.lr.ph.i.i.i216, %bb.am
  %.sroa.0.0.i.i222.ph = phi ptr [ %i.gs, %bb.am ], [ %.sroa.0.07.i.i.i217, %.lr.ph.i.i.i216 ], [ %i.hc, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i218 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220: ; preds = %bb.ao, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.preheader
  %.sroa.0.0.i.i222 = phi ptr [ %.sroa.0.0.i.i222.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.preheader ], [ %i.hr, %bb.ao ] ; 13 uses
  %.0.i.i223 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.preheader ], [ %i.hq, %bb.ao ] ; 11 uses
  %i.hf = load i8, ptr %.sroa.0.0.i.i222, align 1 ; 2 uses
  switch i8 %i.hf, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220
  %i.hg = icmp eq ptr %.sroa.0.0.i.i222, %i.bh
  %i.hh = icmp eq ptr %.sroa.0.0.i.i222, %i.gy
  %.0.i.i.i229 = select i1 %i.hg, i1 true, i1 %i.hh
  br i1 %.0.i.i.i229, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224, label %bb.an

bb.an:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.0.i.i223
  store i8 %i.hf, ptr %i.hi, align 1
  %i.hj = icmp eq i64 %.0.i.i223, 2046
  br i1 %i.hj, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1: ; preds = %bb.an
  %i.hk = or disjoint i64 %.0.i.i223, 1           ; 8 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i222, i64 1 ; 10 uses
  %i.hm = load i8, ptr %i.hl, align 1             ; 2 uses
  switch i8 %i.hm, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1
  %i.hn = icmp eq ptr %i.hl, %i.bh
  %i.ho = icmp eq ptr %i.hl, %i.gy
  %.0.i.i.i229.1 = select i1 %i.hn, i1 true, i1 %i.ho
  br i1 %.0.i.i.i229.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224, label %bb.ao

bb.ao:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228.1
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hk
  store i8 %i.hm, ptr %i.hp, align 1
  %i.hq = add nuw nsw i64 %.0.i.i223, 2
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i222, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220, !llvm.loop !11

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1, %bb.an, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220
  %.sroa.0.0.i.i222.lcssa = phi ptr [ %.sroa.0.0.i.i222, %bb.an ], [ %.sroa.0.0.i.i222, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228 ], [ %.sroa.0.0.i.i222, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.sroa.0.0.i.i222, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.sroa.0.0.i.i222, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.sroa.0.0.i.i222, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.sroa.0.0.i.i222, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.sroa.0.0.i.i222, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %i.hl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hl, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228.1 ]
  %.1.i.i225 = phi i64 [ 2047, %bb.an ], [ %.0.i.i223, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228 ], [ %.0.i.i223, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.0.i.i223, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.0.i.i223, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.0.i.i223, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.0.i.i223, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.0.i.i223, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %i.hk, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hk, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hk, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hk, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hk, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hk, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hk, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228.1 ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.1.i.i225
  store i8 0, ptr %i.hs, align 1
  store ptr %.sroa.0.0.i.i222.lcssa, ptr %i.ae, align 8
  %i.ht = load ptr, ptr %i.aq, align 8            ; 2 uses
  %char0.i226 = load i8, ptr %i.ht, align 1
  %i.hu = icmp eq i8 %char0.i226, 0
  br i1 %i.hu, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit230, label %bb.ap

bb.ap:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #22
  store float 0.000000e+00, ptr %i.ab, align 4
  %i.hv = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.ht, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, i1 noundef zeroext true) ; 0 uses
  %i.hw = load float, ptr %i.ab, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit230

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit230: ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224, %bb.ap
  %storemerge.i227 = phi float [ %i.hw, %bb.ap ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224 ]
  store float %storemerge.i227, ptr %i.gw, align 4
  br label %bb.ax

bb.aq:                                            ; preds = %bb.ak
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 5 uses
  store ptr %i.hx, ptr %i.ae, align 8
  %i.hy = load ptr, ptr %i.ap, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  %i.ia = load ptr, ptr %i.hz, align 8            ; 2 uses
  %.not143 = icmp eq ptr %i.ia, null
  br i1 %.not143, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 20640
  %i.ic = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.id = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 4 uses
  %i.ie = icmp eq ptr %i.hx, %i.bh
  %i.if = icmp eq ptr %i.hx, %i.id
  %.0.i6.i.i.i233 = select i1 %i.ie, i1 true, i1 %i.if
  br i1 %.0.i6.i.i.i233, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.preheader, label %.lr.ph.i.i.i234

.lr.ph.i.i.i234:                                  ; preds = %bb.ar, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i236
  %.sroa.0.07.i.i.i235 = phi ptr [ %i.ih, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i236 ], [ %i.hx, %bb.ar ] ; 3 uses
  %i.ig = load i8, ptr %.sroa.0.07.i.i.i235, align 1
  switch i8 %i.ig, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i236
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i236
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i236:        ; preds = %.lr.ph.i.i.i234, %.lr.ph.i.i.i234
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i235, i64 1 ; 4 uses
  %i.ii = icmp eq ptr %i.ih, %i.bh
  %i.ij = icmp eq ptr %i.ih, %i.id
  %.0.i.i.i.i237 = select i1 %i.ii, i1 true, i1 %i.ij
  br i1 %.0.i.i.i.i237, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.preheader, label %.lr.ph.i.i.i234, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i236, %.lr.ph.i.i.i234, %bb.ar
  %.sroa.0.0.i.i240.ph = phi ptr [ %i.hx, %bb.ar ], [ %.sroa.0.07.i.i.i235, %.lr.ph.i.i.i234 ], [ %i.ih, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i236 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238: ; preds = %bb.at, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.preheader
  %.sroa.0.0.i.i240 = phi ptr [ %.sroa.0.0.i.i240.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.preheader ], [ %i.iw, %bb.at ] ; 13 uses
  %.0.i.i241 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.preheader ], [ %i.iv, %bb.at ] ; 11 uses
  %i.ik = load i8, ptr %.sroa.0.0.i.i240, align 1 ; 2 uses
  switch i8 %i.ik, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238
  %i.il = icmp eq ptr %.sroa.0.0.i.i240, %i.bh
  %i.im = icmp eq ptr %.sroa.0.0.i.i240, %i.id
  %.0.i.i.i247 = select i1 %i.il, i1 true, i1 %i.im
  br i1 %.0.i.i.i247, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242, label %bb.as

bb.as:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246
  %i.in = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.0.i.i241
  store i8 %i.ik, ptr %i.in, align 1
  %i.io = icmp eq i64 %.0.i.i241, 2046
  br i1 %i.io, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1: ; preds = %bb.as
  %i.ip = or disjoint i64 %.0.i.i241, 1           ; 8 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i240, i64 1 ; 10 uses
  %i.ir = load i8, ptr %i.iq, align 1             ; 2 uses
  switch i8 %i.ir, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1
  %i.is = icmp eq ptr %i.iq, %i.bh
  %i.it = icmp eq ptr %i.iq, %i.id
  %.0.i.i.i247.1 = select i1 %i.is, i1 true, i1 %i.it
  br i1 %.0.i.i.i247.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242, label %bb.at

bb.at:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246.1
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ip
  store i8 %i.ir, ptr %i.iu, align 1
  %i.iv = add nuw nsw i64 %.0.i.i241, 2
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i240, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238, !llvm.loop !11

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1, %bb.as, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238
  %.sroa.0.0.i.i240.lcssa = phi ptr [ %.sroa.0.0.i.i240, %bb.as ], [ %.sroa.0.0.i.i240, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246 ], [ %.sroa.0.0.i.i240, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238 ], [ %.sroa.0.0.i.i240, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238 ], [ %.sroa.0.0.i.i240, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238 ], [ %.sroa.0.0.i.i240, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238 ], [ %.sroa.0.0.i.i240, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238 ], [ %.sroa.0.0.i.i240, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238 ], [ %i.iq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1 ], [ %i.iq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1 ], [ %i.iq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1 ], [ %i.iq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1 ], [ %i.iq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1 ], [ %i.iq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1 ], [ %i.iq, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246.1 ]
  %.1.i.i243 = phi i64 [ 2047, %bb.as ], [ %.0.i.i241, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246 ], [ %.0.i.i241, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238 ], [ %.0.i.i241, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238 ], [ %.0.i.i241, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238 ], [ %.0.i.i241, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238 ], [ %.0.i.i241, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238 ], [ %.0.i.i241, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238 ], [ %i.ip, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1 ], [ %i.ip, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1 ], [ %i.ip, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1 ], [ %i.ip, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1 ], [ %i.ip, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1 ], [ %i.ip, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1 ], [ %i.ip, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246.1 ]
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.1.i.i243
  store i8 0, ptr %i.ix, align 1
  store ptr %.sroa.0.0.i.i240.lcssa, ptr %i.ae, align 8
  %i.iy = load ptr, ptr %i.aq, align 8            ; 2 uses
  %char0.i244 = load i8, ptr %i.iy, align 1
  %i.iz = icmp eq i8 %char0.i244, 0
  br i1 %i.iz, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit248, label %bb.au

bb.au:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #22
  store float 0.000000e+00, ptr %i.aa, align 4
  %i.ja = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.iy, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, i1 noundef zeroext true) ; 0 uses
  %i.jb = load float, ptr %i.aa, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit248

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit248: ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242, %bb.au
  %storemerge.i245 = phi float [ %i.jb, %bb.au ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242 ]
  store float %storemerge.i245, ptr %i.ib, align 4
  br label %bb.ax

bb.av:                                            ; preds = %bb.ak
  call void @_ZN6Assimp18ObjFileMtlImporter14createMaterialEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ak
  store ptr %i.bi, ptr %i.ae, align 8
  call void @_ZN6Assimp18ObjFileMtlImporter10getTextureEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aq, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit248, %bb.al, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit230, %bb.aw, %bb.av, %bb.ak
  %.sroa.081.0.copyload = load ptr, ptr %i.ae, align 8 ; 5 uses
  %.sroa.080.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %15 = ptrtoaddr ptr %.sroa.080.0.copyload to i64
  %.not.i249 = icmp ult ptr %.sroa.081.0.copyload, %.sroa.080.0.copyload
  br i1 %.not.i249, label %.preheader.i251, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit268

.preheader.i251:                                  ; preds = %bb.ax
  %i.jc = getelementptr inbounds i8, ptr %.sroa.080.0.copyload, i64 -1 ; 2 uses
  %i.jd = icmp eq ptr %.sroa.081.0.copyload, %i.jc
  br i1 %i.jd, label %.critedge.i254, label %.lr.ph.i252

.lr.ph.i252:                                      ; preds = %.preheader.i251, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i266
  %.sroa.010.021.i253 = phi ptr [ %i.jf, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i266 ], [ %.sroa.081.0.copyload, %.preheader.i251 ] ; 6 uses
  %i.je = load i8, ptr %.sroa.010.021.i253, align 1
  switch i8 %i.je, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i266 [
    i8 13, label %.critedge.i254
    i8 10, label %.critedge.i254
    i8 0, label %.critedge.i254
    i8 12, label %.critedge.i254
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i266:            ; preds = %.lr.ph.i252
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i253, i64 1 ; 4 uses
  %i.jg = icmp eq ptr %i.jf, %.sroa.080.0.copyload
  %i.jh = icmp eq ptr %i.jf, %i.jc
  %.0.i.i267 = or i1 %i.jg, %i.jh
  br i1 %.0.i.i267, label %.critedge.i254, label %.lr.ph.i252, !llvm.loop !8

.critedge.i254:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i266, %.lr.ph.i252, %.lr.ph.i252, %.lr.ph.i252, %.lr.ph.i252, %.preheader.i251
  %.sroa.010.0.lcssa.i255 = phi ptr [ %.sroa.081.0.copyload, %.preheader.i251 ], [ %i.jf, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i266 ], [ %.sroa.010.021.i253, %.lr.ph.i252 ], [ %.sroa.010.021.i253, %.lr.ph.i252 ], [ %.sroa.010.021.i253, %.lr.ph.i252 ], [ %.sroa.010.021.i253, %.lr.ph.i252 ] ; 3 uses
  %.not19.i256 = icmp eq ptr %.sroa.010.0.lcssa.i255, %.sroa.080.0.copyload
  br i1 %.not19.i256, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.critedge.i254
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i255, i64 1
  %i.jj = load i32, ptr %i.ar, align 8
  %i.jk = add i32 %i.jj, 1
  store i32 %i.jk, ptr %i.ar, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.critedge.i254
  %.sroa.010.1.i257 = phi ptr [ %i.ji, %bb.ay ], [ %.sroa.010.0.lcssa.i255, %.critedge.i254 ] ; 5 uses
  %.not2030.i258 = icmp eq ptr %.sroa.010.1.i257, %.sroa.080.0.copyload
  br i1 %.not2030.i258, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit268, label %.lr.ph32.preheader.i259

.lr.ph32.preheader.i259:                          ; preds = %bb.az
  %.sroa.010.136.i260 = ptrtoaddr ptr %.sroa.010.1.i257 to i64
  %i.jl = sub i64 %15, %.sroa.010.136.i260
  %scevgep.i261 = getelementptr i8, ptr %.sroa.010.1.i257, i64 %i.jl
  br label %.lr.ph32.i262

.lr.ph32.i262:                                    ; preds = %.critedge4.i264, %.lr.ph32.preheader.i259
  %.sroa.010.231.i263 = phi ptr [ %i.jn, %.critedge4.i264 ], [ %.sroa.010.1.i257, %.lr.ph32.preheader.i259 ] ; 3 uses
  %i.jm = load i8, ptr %.sroa.010.231.i263, align 1
  switch i8 %i.jm, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit268 [
    i8 9, label %.critedge4.i264
    i8 32, label %.critedge4.i264
  ]

.critedge4.i264:                                  ; preds = %.lr.ph32.i262, %.lr.ph32.i262
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i263, i64 1 ; 2 uses
  %.not20.i265 = icmp eq ptr %i.jn, %.sroa.080.0.copyload
  br i1 %.not20.i265, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit268, label %.lr.ph32.i262, !llvm.loop !9

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit268: ; preds = %.lr.ph32.i262, %.critedge4.i264, %bb.ax, %bb.az
  %.sroa.010.3.i250 = phi ptr [ %.sroa.081.0.copyload, %bb.ax ], [ %.sroa.010.1.i257, %bb.az ], [ %.sroa.010.231.i263, %.lr.ph32.i262 ], [ %scevgep.i261, %.critedge4.i264 ]
  store ptr %.sroa.010.3.i250, ptr %i.ae, align 8
  br label %bb.hl

bb.ba:                                            ; preds = %bb.b
  %i.jo = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  store ptr %i.jo, ptr %i.ae, align 8
  %i.jp = load i8, ptr %i.jo, align 1
  switch i8 %i.jp, label %bb.cd [
    i8 114, label %bb.bb
    i8 109, label %bb.bg
    i8 115, label %bb.bl
    i8 99, label %bb.bn
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 5 uses
  store ptr %i.jq, ptr %i.ae, align 8
  %i.jr = load ptr, ptr %i.ap, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  %i.jt = load ptr, ptr %i.js, align 8            ; 3 uses
  %.not142 = icmp eq ptr %i.jt, null
  br i1 %.not142, label %bb.cd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 20664
  %i.jv = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.jw = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 4 uses
  %i.jx = icmp eq ptr %i.jq, %i.bh
  %i.jy = icmp eq ptr %i.jq, %i.jw
  %.0.i6.i.i.i271 = select i1 %i.jx, i1 true, i1 %i.jy
  br i1 %.0.i6.i.i.i271, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.preheader, label %.lr.ph.i.i.i272

.lr.ph.i.i.i272:                                  ; preds = %bb.bc, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i274
  %.sroa.0.07.i.i.i273 = phi ptr [ %i.ka, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i274 ], [ %i.jq, %bb.bc ] ; 3 uses
  %i.jz = load i8, ptr %.sroa.0.07.i.i.i273, align 1
  switch i8 %i.jz, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i274
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i274
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i274:        ; preds = %.lr.ph.i.i.i272, %.lr.ph.i.i.i272
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i273, i64 1 ; 4 uses
  %i.kb = icmp eq ptr %i.ka, %i.bh
  %i.kc = icmp eq ptr %i.ka, %i.jw
  %.0.i.i.i.i275 = select i1 %i.kb, i1 true, i1 %i.kc
  br i1 %.0.i.i.i.i275, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.preheader, label %.lr.ph.i.i.i272, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i274, %.lr.ph.i.i.i272, %bb.bc
  %.sroa.0.0.i.i278.ph = phi ptr [ %i.jq, %bb.bc ], [ %.sroa.0.07.i.i.i273, %.lr.ph.i.i.i272 ], [ %i.ka, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i274 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276: ; preds = %bb.be, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.preheader
  %.sroa.0.0.i.i278 = phi ptr [ %.sroa.0.0.i.i278.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.preheader ], [ %i.kp, %bb.be ] ; 13 uses
  %.0.i.i279 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.preheader ], [ %i.ko, %bb.be ] ; 11 uses
  %i.kd = load i8, ptr %.sroa.0.0.i.i278, align 1 ; 2 uses
  switch i8 %i.kd, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276
  %i.ke = icmp eq ptr %.sroa.0.0.i.i278, %i.bh
  %i.kf = icmp eq ptr %.sroa.0.0.i.i278, %i.jw
  %.0.i.i.i285 = select i1 %i.ke, i1 true, i1 %i.kf
  br i1 %.0.i.i.i285, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280, label %bb.bd

bb.bd:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.0.i.i279
  store i8 %i.kd, ptr %i.kg, align 1
  %i.kh = icmp eq i64 %.0.i.i279, 2046
  br i1 %i.kh, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1: ; preds = %bb.bd
  %i.ki = or disjoint i64 %.0.i.i279, 1           ; 8 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i278, i64 1 ; 10 uses
  %i.kk = load i8, ptr %i.kj, align 1             ; 2 uses
  switch i8 %i.kk, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1
  %i.kl = icmp eq ptr %i.kj, %i.bh
  %i.km = icmp eq ptr %i.kj, %i.jw
  %.0.i.i.i285.1 = select i1 %i.kl, i1 true, i1 %i.km
  br i1 %.0.i.i.i285.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280, label %bb.be

bb.be:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284.1
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.ki
  store i8 %i.kk, ptr %i.kn, align 1
  %i.ko = add nuw nsw i64 %.0.i.i279, 2
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i278, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276, !llvm.loop !11

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1, %bb.bd, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276
  %.sroa.0.0.i.i278.lcssa = phi ptr [ %.sroa.0.0.i.i278, %bb.bd ], [ %.sroa.0.0.i.i278, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284 ], [ %.sroa.0.0.i.i278, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.sroa.0.0.i.i278, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.sroa.0.0.i.i278, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.sroa.0.0.i.i278, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.sroa.0.0.i.i278, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.sroa.0.0.i.i278, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %i.kj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kj, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284.1 ]
  %.1.i.i281 = phi i64 [ 2047, %bb.bd ], [ %.0.i.i279, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284 ], [ %.0.i.i279, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.0.i.i279, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.0.i.i279, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.0.i.i279, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.0.i.i279, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.0.i.i279, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %i.ki, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.ki, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.ki, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.ki, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.ki, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.ki, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.ki, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284.1 ]
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.1.i.i281
  store i8 0, ptr %i.kq, align 1
  store ptr %.sroa.0.0.i.i278.lcssa, ptr %i.ae, align 8
  %i.kr = load ptr, ptr %i.aq, align 8            ; 2 uses
  %char0.i282 = load i8, ptr %i.kr, align 1
  %.not.i283 = icmp eq i8 %char0.i282, 0
  br i1 %.not.i283, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #22
  store float 0.000000e+00, ptr %i.z, align 4
  %i.ks = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.kr, ptr noundef nonnull align 4 dereferenceable(4) %i.z, i1 noundef zeroext true) ; 0 uses
  %i.kt = load float, ptr %i.z, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit: ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280, %bb.bf
  %.sink8.i = phi float [ %i.kt, %bb.bf ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280 ]
  %.sink.i = phi i8 [ 1, %bb.bf ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280 ]
  store float %.sink8.i, ptr %i.ju, align 4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jt, i64 20668
  store i8 %.sink.i, ptr %i.ku, align 4
  br label %bb.cd

bb.bg:                                            ; preds = %bb.ba
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 5 uses
  store ptr %i.kv, ptr %i.ae, align 8
  %i.kw = load ptr, ptr %i.ap, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 64
  %i.ky = load ptr, ptr %i.kx, align 8            ; 3 uses
  %.not141 = icmp eq ptr %i.ky, null
  br i1 %.not141, label %bb.cd, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 20672
  %i.la = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.lb = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 4 uses
  %i.lc = icmp eq ptr %i.kv, %i.bh
  %i.ld = icmp eq ptr %i.kv, %i.lb
  %.0.i6.i.i.i288 = select i1 %i.lc, i1 true, i1 %i.ld
  br i1 %.0.i6.i.i.i288, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.preheader, label %.lr.ph.i.i.i289

.lr.ph.i.i.i289:                                  ; preds = %bb.bh, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i291
  %.sroa.0.07.i.i.i290 = phi ptr [ %i.lf, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i291 ], [ %i.kv, %bb.bh ] ; 3 uses
  %i.le = load i8, ptr %.sroa.0.07.i.i.i290, align 1
  switch i8 %i.le, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i291
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i291
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i291:        ; preds = %.lr.ph.i.i.i289, %.lr.ph.i.i.i289
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i290, i64 1 ; 4 uses
  %i.lg = icmp eq ptr %i.lf, %i.bh
  %i.lh = icmp eq ptr %i.lf, %i.lb
  %.0.i.i.i.i292 = select i1 %i.lg, i1 true, i1 %i.lh
  br i1 %.0.i.i.i.i292, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.preheader, label %.lr.ph.i.i.i289, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i291, %.lr.ph.i.i.i289, %bb.bh
  %.sroa.0.0.i.i295.ph = phi ptr [ %i.kv, %bb.bh ], [ %.sroa.0.07.i.i.i290, %.lr.ph.i.i.i289 ], [ %i.lf, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i291 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293: ; preds = %bb.bj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.preheader
  %.sroa.0.0.i.i295 = phi ptr [ %.sroa.0.0.i.i295.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.preheader ], [ %i.lu, %bb.bj ] ; 13 uses
  %.0.i.i296 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.preheader ], [ %i.lt, %bb.bj ] ; 11 uses
  %i.li = load i8, ptr %.sroa.0.0.i.i295, align 1 ; 2 uses
  switch i8 %i.li, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i303 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i303:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293
  %i.lj = icmp eq ptr %.sroa.0.0.i.i295, %i.bh
end_hunk_0
begin_hunk_1_@_ZN6Assimp18ObjFileMtlImporter4loadEv:bb.a
  br i1 %.0.i.i.i.i332, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.preheader, label %.lr.ph.i.i.i329, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i331, %.lr.ph.i.i.i329, %bb.bu
  %.sroa.0.0.i.i335.ph = phi ptr [ %i.nq, %bb.bu ], [ %.sroa.0.07.i.i.i330, %.lr.ph.i.i.i329 ], [ %i.oa, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i331 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333: ; preds = %bb.bw, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.preheader
  %.sroa.0.0.i.i335 = phi ptr [ %.sroa.0.0.i.i335.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.preheader ], [ %i.op, %bb.bw ] ; 13 uses
  %.0.i.i336 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.preheader ], [ %i.oo, %bb.bw ] ; 11 uses
  %i.od = load i8, ptr %.sroa.0.0.i.i335, align 1 ; 2 uses
  switch i8 %i.od, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333
  %i.oe = icmp eq ptr %.sroa.0.0.i.i335, %i.bh
  %i.of = icmp eq ptr %.sroa.0.0.i.i335, %i.nw
  %.0.i.i.i344 = select i1 %i.oe, i1 true, i1 %i.of
  br i1 %.0.i.i.i344, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337, label %bb.bv

bb.bv:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343
  %i.og = getelementptr inbounds nuw i8, ptr %i.nv, i64 %.0.i.i336
  store i8 %i.od, ptr %i.og, align 1
  %i.oh = icmp eq i64 %.0.i.i336, 2046
  br i1 %i.oh, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1: ; preds = %bb.bv
  %i.oi = or disjoint i64 %.0.i.i336, 1           ; 8 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i335, i64 1 ; 10 uses
  %i.ok = load i8, ptr %i.oj, align 1             ; 2 uses
  switch i8 %i.ok, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1
  %i.ol = icmp eq ptr %i.oj, %i.bh
  %i.om = icmp eq ptr %i.oj, %i.nw
  %.0.i.i.i344.1 = select i1 %i.ol, i1 true, i1 %i.om
  br i1 %.0.i.i.i344.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337, label %bb.bw

bb.bw:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343.1
  %i.on = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.oi
  store i8 %i.ok, ptr %i.on, align 1
  %i.oo = add nuw nsw i64 %.0.i.i336, 2
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i335, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333, !llvm.loop !11

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1, %bb.bv, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333
  %.sroa.0.0.i.i335.lcssa = phi ptr [ %.sroa.0.0.i.i335, %bb.bv ], [ %.sroa.0.0.i.i335, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343 ], [ %.sroa.0.0.i.i335, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333 ], [ %.sroa.0.0.i.i335, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333 ], [ %.sroa.0.0.i.i335, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333 ], [ %.sroa.0.0.i.i335, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333 ], [ %.sroa.0.0.i.i335, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333 ], [ %.sroa.0.0.i.i335, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333 ], [ %i.oj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1 ], [ %i.oj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1 ], [ %i.oj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1 ], [ %i.oj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1 ], [ %i.oj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1 ], [ %i.oj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1 ], [ %i.oj, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343.1 ]
  %.1.i.i338 = phi i64 [ 2047, %bb.bv ], [ %.0.i.i336, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343 ], [ %.0.i.i336, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333 ], [ %.0.i.i336, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333 ], [ %.0.i.i336, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333 ], [ %.0.i.i336, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333 ], [ %.0.i.i336, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333 ], [ %.0.i.i336, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333 ], [ %i.oi, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1 ], [ %i.oi, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1 ], [ %i.oi, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1 ], [ %i.oi, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1 ], [ %i.oi, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1 ], [ %i.oi, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1 ], [ %i.oi, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343.1 ]
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nv, i64 %.1.i.i338
  store i8 0, ptr %i.oq, align 1
  store ptr %.sroa.0.0.i.i335.lcssa, ptr %i.ae, align 8
  %i.or = load ptr, ptr %i.aq, align 8            ; 2 uses
  %char0.i339 = load i8, ptr %i.or, align 1
  %.not.i340 = icmp eq i8 %char0.i339, 0
  br i1 %.not.i340, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit345, label %bb.bx

bb.bx:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #22
  store float 0.000000e+00, ptr %i.w, align 4
  %i.os = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.or, ptr noundef nonnull align 4 dereferenceable(4) %i.w, i1 noundef zeroext true) ; 0 uses
  %i.ot = load float, ptr %i.w, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit345

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit345: ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337, %bb.bx
  %.sink8.i341 = phi float [ %i.ot, %bb.bx ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337 ]
  %.sink.i342 = phi i8 [ 1, %bb.bx ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337 ]
  store float %.sink8.i341, ptr %i.nu, align 4
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nt, i64 20724
  store i8 %.sink.i342, ptr %i.ou, align 4
  br label %bb.cd

bb.by:                                            ; preds = %bb.bn
  %i.ov = load ptr, ptr %i.ap, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 64
  %i.ox = load ptr, ptr %i.ow, align 8            ; 3 uses
  %.not137 = icmp eq ptr %i.ox, null
  br i1 %.not137, label %bb.cd, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 20712
  %i.oz = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.pa = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 4 uses
  %i.pb = icmp eq ptr %i.mj, %i.bh
  %i.pc = icmp eq ptr %i.mj, %i.pa
  %.0.i6.i.i.i348 = select i1 %i.pb, i1 true, i1 %i.pc
  br i1 %.0.i6.i.i.i348, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.preheader, label %.lr.ph.i.i.i349

.lr.ph.i.i.i349:                                  ; preds = %bb.bz, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i351
  %.sroa.0.07.i.i.i350 = phi ptr [ %i.pe, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i351 ], [ %i.mj, %bb.bz ] ; 3 uses
  %i.pd = load i8, ptr %.sroa.0.07.i.i.i350, align 1
  switch i8 %i.pd, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i351
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i351
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i351:        ; preds = %.lr.ph.i.i.i349, %.lr.ph.i.i.i349
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i350, i64 1 ; 4 uses
  %i.pf = icmp eq ptr %i.pe, %i.bh
  %i.pg = icmp eq ptr %i.pe, %i.pa
  %.0.i.i.i.i352 = select i1 %i.pf, i1 true, i1 %i.pg
  br i1 %.0.i.i.i.i352, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.preheader, label %.lr.ph.i.i.i349, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i351, %.lr.ph.i.i.i349, %bb.bz
  %.sroa.0.0.i.i355.ph = phi ptr [ %i.mj, %bb.bz ], [ %.sroa.0.07.i.i.i350, %.lr.ph.i.i.i349 ], [ %i.pe, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i351 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353: ; preds = %bb.cb, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.preheader
  %.sroa.0.0.i.i355 = phi ptr [ %.sroa.0.0.i.i355.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.preheader ], [ %i.pt, %bb.cb ] ; 13 uses
  %.0.i.i356 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.preheader ], [ %i.ps, %bb.cb ] ; 11 uses
  %i.ph = load i8, ptr %.sroa.0.0.i.i355, align 1 ; 2 uses
  switch i8 %i.ph, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i363 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i363:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353
  %i.pi = icmp eq ptr %.sroa.0.0.i.i355, %i.bh
  %i.pj = icmp eq ptr %.sroa.0.0.i.i355, %i.pa
  %.0.i.i.i364 = select i1 %i.pi, i1 true, i1 %i.pj
  br i1 %.0.i.i.i364, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357, label %bb.ca

bb.ca:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i363
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oz, i64 %.0.i.i356
  store i8 %i.ph, ptr %i.pk, align 1
  %i.pl = icmp eq i64 %.0.i.i356, 2046
  br i1 %i.pl, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1: ; preds = %bb.ca
  %i.pm = or disjoint i64 %.0.i.i356, 1           ; 8 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i355, i64 1 ; 10 uses
  %i.po = load i8, ptr %i.pn, align 1             ; 2 uses
  switch i8 %i.po, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i363.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i363.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1
  %i.pp = icmp eq ptr %i.pn, %i.bh
  %i.pq = icmp eq ptr %i.pn, %i.pa
  %.0.i.i.i364.1 = select i1 %i.pp, i1 true, i1 %i.pq
  br i1 %.0.i.i.i364.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357, label %bb.cb

bb.cb:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i363.1
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.pm
  store i8 %i.po, ptr %i.pr, align 1
  %i.ps = add nuw nsw i64 %.0.i.i356, 2
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i355, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353, !llvm.loop !11

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i363.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1, %bb.ca, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i363, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353
  %.sroa.0.0.i.i355.lcssa = phi ptr [ %.sroa.0.0.i.i355, %bb.ca ], [ %.sroa.0.0.i.i355, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i363 ], [ %.sroa.0.0.i.i355, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353 ], [ %.sroa.0.0.i.i355, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353 ], [ %.sroa.0.0.i.i355, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353 ], [ %.sroa.0.0.i.i355, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353 ], [ %.sroa.0.0.i.i355, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353 ], [ %.sroa.0.0.i.i355, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353 ], [ %i.pn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1 ], [ %i.pn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1 ], [ %i.pn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1 ], [ %i.pn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1 ], [ %i.pn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1 ], [ %i.pn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1 ], [ %i.pn, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i363.1 ]
  %.1.i.i358 = phi i64 [ 2047, %bb.ca ], [ %.0.i.i356, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i363 ], [ %.0.i.i356, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353 ], [ %.0.i.i356, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353 ], [ %.0.i.i356, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353 ], [ %.0.i.i356, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353 ], [ %.0.i.i356, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353 ], [ %.0.i.i356, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353 ], [ %i.pm, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1 ], [ %i.pm, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1 ], [ %i.pm, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1 ], [ %i.pm, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1 ], [ %i.pm, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1 ], [ %i.pm, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i353.1 ], [ %i.pm, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i363.1 ]
  %i.pu = getelementptr inbounds nuw i8, ptr %i.oz, i64 %.1.i.i358
  store i8 0, ptr %i.pu, align 1
  store ptr %.sroa.0.0.i.i355.lcssa, ptr %i.ae, align 8
  %i.pv = load ptr, ptr %i.aq, align 8            ; 2 uses
  %char0.i359 = load i8, ptr %i.pv, align 1
  %.not.i360 = icmp eq i8 %char0.i359, 0
  br i1 %.not.i360, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit365, label %bb.cc

bb.cc:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #22
  store float 0.000000e+00, ptr %i.v, align 4
  %i.pw = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.pv, ptr noundef nonnull align 4 dereferenceable(4) %i.v, i1 noundef zeroext true) ; 0 uses
  %i.px = load float, ptr %i.v, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit365

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit365: ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357, %bb.cc
  %.sink8.i361 = phi float [ %i.px, %bb.cc ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357 ]
  %.sink.i362 = phi i8 [ 1, %bb.cc ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i357 ]
  store float %.sink8.i361, ptr %i.oy, align 4
  %i.py = getelementptr inbounds nuw i8, ptr %i.ox, i64 20716
  store i8 %.sink.i362, ptr %i.py, align 4
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit325, %bb.bo, %bb.by, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit365, %bb.bt, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit345, %bb.bl, %bb.bm, %bb.bg, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit305, %bb.bb, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit, %bb.ba
  %.sroa.078.0.copyload = load ptr, ptr %i.ae, align 8 ; 5 uses
  %.sroa.077.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %16 = ptrtoaddr ptr %.sroa.077.0.copyload to i64
  %.not.i366 = icmp ult ptr %.sroa.078.0.copyload, %.sroa.077.0.copyload
  br i1 %.not.i366, label %.preheader.i368, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit385

.preheader.i368:                                  ; preds = %bb.cd
  %i.pz = getelementptr inbounds i8, ptr %.sroa.077.0.copyload, i64 -1 ; 2 uses
  %i.qa = icmp eq ptr %.sroa.078.0.copyload, %i.pz
  br i1 %i.qa, label %.critedge.i371, label %.lr.ph.i369

.lr.ph.i369:                                      ; preds = %.preheader.i368, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i383
  %.sroa.010.021.i370 = phi ptr [ %i.qc, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i383 ], [ %.sroa.078.0.copyload, %.preheader.i368 ] ; 6 uses
  %i.qb = load i8, ptr %.sroa.010.021.i370, align 1
  switch i8 %i.qb, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i383 [
    i8 13, label %.critedge.i371
    i8 10, label %.critedge.i371
    i8 0, label %.critedge.i371
    i8 12, label %.critedge.i371
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i383:            ; preds = %.lr.ph.i369
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i370, i64 1 ; 4 uses
  %i.qd = icmp eq ptr %i.qc, %.sroa.077.0.copyload
  %i.qe = icmp eq ptr %i.qc, %i.pz
  %.0.i.i384 = or i1 %i.qd, %i.qe
  br i1 %.0.i.i384, label %.critedge.i371, label %.lr.ph.i369, !llvm.loop !8

.critedge.i371:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i383, %.lr.ph.i369, %.lr.ph.i369, %.lr.ph.i369, %.lr.ph.i369, %.preheader.i368
  %.sroa.010.0.lcssa.i372 = phi ptr [ %.sroa.078.0.copyload, %.preheader.i368 ], [ %i.qc, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i383 ], [ %.sroa.010.021.i370, %.lr.ph.i369 ], [ %.sroa.010.021.i370, %.lr.ph.i369 ], [ %.sroa.010.021.i370, %.lr.ph.i369 ], [ %.sroa.010.021.i370, %.lr.ph.i369 ] ; 3 uses
  %.not19.i373 = icmp eq ptr %.sroa.010.0.lcssa.i372, %.sroa.077.0.copyload
  br i1 %.not19.i373, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge.i371
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i372, i64 1
  %i.qg = load i32, ptr %i.ar, align 8
  %i.qh = add i32 %i.qg, 1
  store i32 %i.qh, ptr %i.ar, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.critedge.i371
  %.sroa.010.1.i374 = phi ptr [ %i.qf, %bb.ce ], [ %.sroa.010.0.lcssa.i372, %.critedge.i371 ] ; 5 uses
  %.not2030.i375 = icmp eq ptr %.sroa.010.1.i374, %.sroa.077.0.copyload
  br i1 %.not2030.i375, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit385, label %.lr.ph32.preheader.i376

.lr.ph32.preheader.i376:                          ; preds = %bb.cf
  %.sroa.010.136.i377 = ptrtoaddr ptr %.sroa.010.1.i374 to i64
  %i.qi = sub i64 %16, %.sroa.010.136.i377
  %scevgep.i378 = getelementptr i8, ptr %.sroa.010.1.i374, i64 %i.qi
  br label %.lr.ph32.i379

.lr.ph32.i379:                                    ; preds = %.critedge4.i381, %.lr.ph32.preheader.i376
  %.sroa.010.231.i380 = phi ptr [ %i.qk, %.critedge4.i381 ], [ %.sroa.010.1.i374, %.lr.ph32.preheader.i376 ] ; 3 uses
  %i.qj = load i8, ptr %.sroa.010.231.i380, align 1
  switch i8 %i.qj, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit385 [
    i8 9, label %.critedge4.i381
    i8 32, label %.critedge4.i381
  ]

.critedge4.i381:                                  ; preds = %.lr.ph32.i379, %.lr.ph32.i379
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i380, i64 1 ; 2 uses
  %.not20.i382 = icmp eq ptr %i.qk, %.sroa.077.0.copyload
  br i1 %.not20.i382, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit385, label %.lr.ph32.i379, !llvm.loop !9

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit385: ; preds = %.lr.ph32.i379, %.critedge4.i381, %bb.cd, %bb.cf
  %.sroa.010.3.i367 = phi ptr [ %.sroa.078.0.copyload, %bb.cd ], [ %.sroa.010.1.i374, %bb.cf ], [ %.sroa.010.231.i380, %.lr.ph32.i379 ], [ %scevgep.i378, %.critedge4.i381 ]
  store ptr %.sroa.010.3.i367, ptr %i.ae, align 8
  br label %bb.hl

bb.cg:                                            ; preds = %bb.b
  %i.ql = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 2 uses
  %i.qm = icmp eq ptr %i.bi, %i.ql
  br i1 %i.qm, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i386

.lr.ph.i386thread-pre-split:                      ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i
  %.pr = load i8, ptr %i.qo, align 1
  br label %.lr.ph.i386

.lr.ph.i386:                                      ; preds = %bb.cg, %.lr.ph.i386thread-pre-split
  %i.qn = phi i8 [ %.pr, %.lr.ph.i386thread-pre-split ], [ 109, %bb.cg ]
  %.sroa.0.06.i = phi ptr [ %i.qo, %.lr.ph.i386thread-pre-split ], [ %i.bi, %bb.cg ] ; 7 uses
  switch i8 %i.qn, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
    i8 9, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
    i8 13, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
    i8 10, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
    i8 0, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %.lr.ph.i386
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 1 ; 5 uses
  %i.qp = icmp eq ptr %i.qo, %i.bh
  %i.qq = icmp eq ptr %i.qo, %i.ql
  %.0.i.i387 = or i1 %i.qp, %i.qq
  br i1 %.0.i.i387, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i386thread-pre-split, !llvm.loop !12

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit: ; preds = %.lr.ph.i386, %.lr.ph.i386, %.lr.ph.i386, %.lr.ph.i386, %.lr.ph.i386, %.lr.ph.i386, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %bb.cg
  %.sroa.0.0.lcssa.i = phi ptr [ %i.bi, %bb.cg ], [ %i.qo, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ], [ %.sroa.0.06.i, %.lr.ph.i386 ], [ %.sroa.0.06.i, %.lr.ph.i386 ], [ %.sroa.0.06.i, %.lr.ph.i386 ], [ %.sroa.0.06.i, %.lr.ph.i386 ], [ %.sroa.0.06.i, %.lr.ph.i386 ], [ %.sroa.0.06.i, %.lr.ph.i386 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.be, ptr %2, align 8
  store i64 0, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #22
  %i.qr = ptrtoint ptr %.sroa.0.0.lcssa.i to i64  ; 3 uses
  %i.qs = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.qt = sub i64 %i.qr, %i.qs                    ; 10 uses
  store i64 %i.qt, ptr %i.u, align 8
  %i.qu = icmp ugt i64 %i.qt, 15
  br i1 %i.qu, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
  %i.qv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef 0)
          to label %.noexc unwind label %bb.cj    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.qv, ptr %2, align 8
  %i.qw = load i64, ptr %i.u, align 8             ; 2 uses
  store i64 %i.qw, ptr %i.be, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
  %i.qx = phi i64 [ %i.qw, %.noexc ], [ %i.qt, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit ]
  %i.qy = phi ptr [ %i.qv, %.noexc ], [ %i.be, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit ] ; 7 uses
  %.not5.i.i.i = icmp eq ptr %i.bi, %.sroa.0.0.lcssa.i
  br i1 %.not5.i.i.i, label %bb.ch, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i
  %i.qz = ptrtoaddr ptr %i.qy to i64
  %min.iters.check = icmp ult i64 %i.qt, 4
  %i.ra = sub i64 %i.qs, %i.qz
  %diff.check = icmp ugt i64 %i.ra, -32
  %or.cond1483 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1483, label %.lr.ph.i.i.i388.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1325 = icmp ult i64 %i.qt, 32
  br i1 %min.iters.check1325, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.qt, 28
  %n.vec = and i64 %i.qt, -32                     ; 5 uses
  %i.rb = getelementptr i8, ptr %i.qy, i64 %n.vec
  %i.rc = getelementptr i8, ptr %i.bi, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.qy, i64 %index ; 2 uses
  %next.gep1326 = getelementptr i8, ptr %i.bi, i64 %index ; 2 uses
  %i.rd = getelementptr i8, ptr %next.gep1326, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep1326, align 1
  %wide.load1327 = load <16 x i8>, ptr %i.rd, align 1
  %i.re = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load1327, ptr %i.re, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.rf = icmp eq i64 %index.next, %n.vec
  br i1 %i.rf, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qt, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i388.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1330 = and i64 %i.qt, -4                  ; 4 uses
  %i.rg = getelementptr i8, ptr %i.qy, i64 %n.vec1330
  %i.rh = getelementptr i8, ptr %i.bi, i64 %n.vec1330
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1331 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1335, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1332 = getelementptr i8, ptr %i.qy, i64 %index1331
  %next.gep1333 = getelementptr i8, ptr %i.bi, i64 %index1331
  %wide.load1334 = load <4 x i8>, ptr %next.gep1333, align 1
  store <4 x i8> %wide.load1334, ptr %next.gep1332, align 1
  %index.next1335 = add nuw i64 %index1331, 4     ; 2 uses
  %i.ri = icmp eq i64 %index.next1335, %n.vec1330
  br i1 %i.ri, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1336 = icmp eq i64 %i.qt, %n.vec1330
  br i1 %cmp.n1336, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i388.preheader

.lr.ph.i.i.i388.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.i.ph = phi ptr [ %i.qy, %iter.check ], [ %i.rb, %vec.epilog.iter.check ], [ %i.rg, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.02.06.i.i.i.ph = phi ptr [ %i.bi, %iter.check ], [ %i.rc, %vec.epilog.iter.check ], [ %i.rh, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.02.06.i.i.i.ph1501 = ptrtoaddr ptr %.sroa.02.06.i.i.i.ph to i64 ; 2 uses
  %i.rj = sub i64 %i.qr, %.sroa.02.06.i.i.i.ph1501
  %xtraiter1502 = and i64 %i.rj, 7                ; 2 uses
  %lcmp.mod1503.not = icmp eq i64 %xtraiter1502, 0
  br i1 %lcmp.mod1503.not, label %.lr.ph.i.i.i388.prol.loopexit, label %.lr.ph.i.i.i388.prol

.lr.ph.i.i.i388.prol:                             ; preds = %.lr.ph.i.i.i388.preheader, %.lr.ph.i.i.i388.prol
  %.07.i.i.i.prol = phi ptr [ %i.rm, %.lr.ph.i.i.i388.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i388.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i.prol = phi ptr [ %i.rl, %.lr.ph.i.i.i388.prol ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i388.preheader ] ; 2 uses
  %prol.iter1504 = phi i64 [ %prol.iter1504.next, %.lr.ph.i.i.i388.prol ], [ 0, %.lr.ph.i.i.i388.preheader ]
  %i.rk = load i8, ptr %.sroa.02.06.i.i.i.prol, align 1
  store i8 %i.rk, ptr %.07.i.i.i.prol, align 1
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.prol, i64 1 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter1504.next = add i64 %prol.iter1504, 1 ; 2 uses
  %prol.iter1504.cmp.not = icmp eq i64 %prol.iter1504.next, %xtraiter1502
  br i1 %prol.iter1504.cmp.not, label %.lr.ph.i.i.i388.prol.loopexit, label %.lr.ph.i.i.i388.prol, !llvm.loop !18

.lr.ph.i.i.i388.prol.loopexit:                    ; preds = %.lr.ph.i.i.i388.prol, %.lr.ph.i.i.i388.preheader
  %.07.i.i.i.unr = phi ptr [ %.07.i.i.i.ph, %.lr.ph.i.i.i388.preheader ], [ %i.rm, %.lr.ph.i.i.i388.prol ]
  %.sroa.02.06.i.i.i.unr = phi ptr [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i388.preheader ], [ %i.rl, %.lr.ph.i.i.i388.prol ]
  %i.rn = sub i64 %.sroa.02.06.i.i.i.ph1501, %i.qr
  %i.ro = icmp ugt i64 %i.rn, -8
  br i1 %i.ro, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i388

.lr.ph.i.i.i388:                                  ; preds = %.lr.ph.i.i.i388.prol.loopexit, %.lr.ph.i.i.i388
  %.07.i.i.i = phi ptr [ %i.sm, %.lr.ph.i.i.i388 ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i388.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.sl, %.lr.ph.i.i.i388 ], [ %.sroa.02.06.i.i.i.unr, %.lr.ph.i.i.i388.prol.loopexit ] ; 9 uses
  %i.rp = load i8, ptr %.sroa.02.06.i.i.i, align 1
  store i8 %i.rp, ptr %.07.i.i.i, align 1
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 1
  %i.rr = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1
  %i.rs = load i8, ptr %i.rq, align 1
  store i8 %i.rs, ptr %i.rr, align 1
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 2
  %i.ru = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 2
  %i.rv = load i8, ptr %i.rt, align 1
  store i8 %i.rv, ptr %i.ru, align 1
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 3
  %i.rx = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 3
  %i.ry = load i8, ptr %i.rw, align 1
  store i8 %i.ry, ptr %i.rx, align 1
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4
  %i.sa = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4
  %i.sb = load i8, ptr %i.rz, align 1
  store i8 %i.sb, ptr %i.sa, align 1
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 5
  %i.sd = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 5
  %i.se = load i8, ptr %i.sc, align 1
  store i8 %i.se, ptr %i.sd, align 1
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 6
  %i.sg = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 6
  %i.sh = load i8, ptr %i.sf, align 1
  store i8 %i.sh, ptr %i.sg, align 1
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 7
  %i.sj = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 7
  %i.sk = load i8, ptr %i.si, align 1
  store i8 %i.sk, ptr %i.sj, align 1
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8
  %.not.i.i.i.7 = icmp eq ptr %i.sl, %.sroa.0.0.lcssa.i
  br i1 %.not.i.i.i.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i388, !llvm.loop !20

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i388.prol.loopexit, %.lr.ph.i.i.i388, %vec.epilog.middle.block, %middle.block
  %.pre16.i.i = load i64, ptr %i.u, align 8
  %.pre17.i.i = load ptr, ptr %2, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i
  %i.sn = phi ptr [ %.pre17.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.qy, %._crit_edge.i.i ]
  %i.so = phi i64 [ %.pre16.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.qx, %._crit_edge.i.i ] ; 2 uses
  store i64 %i.so, ptr %i.bf, align 8
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.so
  store i8 0, ptr %i.sp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #22
  %.sroa.066.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %i.sq = getelementptr inbounds i8, ptr %.sroa.066.0.copyload, i64 -1 ; 6 uses
  %i.sr = icmp eq ptr %.sroa.0.0.lcssa.i, %.sroa.066.0.copyload
  %i.ss = icmp eq ptr %.sroa.0.0.lcssa.i, %i.sq
  %.0.i6.i = select i1 %i.sr, i1 true, i1 %i.ss
  br i1 %.0.i6.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i389

.lr.ph.i389:                                      ; preds = %bb.ch, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i390
  %.sroa.0.07.i = phi ptr [ %i.su, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i390 ], [ %.sroa.0.0.lcssa.i, %bb.ch ] ; 3 uses
  %i.st = load i8, ptr %.sroa.0.07.i, align 1
  switch i8 %i.st, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i390
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i390
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i390:            ; preds = %.lr.ph.i389, %.lr.ph.i389
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1 ; 4 uses
  %i.sv = icmp eq ptr %i.su, %.sroa.066.0.copyload
  %i.sw = icmp eq ptr %i.su, %i.sq
  %.0.i.i391 = select i1 %i.sv, i1 true, i1 %i.sw
  br i1 %.0.i.i391, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i389, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i390, %.lr.ph.i389, %bb.ch
  %.sroa.0.0.lcssa.i393 = phi ptr [ %.sroa.0.0.lcssa.i, %bb.ch ], [ %i.su, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i390 ], [ %.sroa.0.07.i, %.lr.ph.i389 ] ; 5 uses
  store ptr %.sroa.0.0.lcssa.i393, ptr %i.ae, align 8
  %i.sx = load i64, ptr %i.bf, align 8            ; 6 uses
  %cond = icmp eq i64 %i.sx, 0
  br i1 %cond, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.sx, i64 3)
  %i.sy = load ptr, ptr %2, align 8               ; 4 uses
  %bcmp = call i32 @bcmp(ptr %i.sy, ptr nonnull @.str.2, i64 %spec.select.i.i)
  %.not.i394 = icmp eq i32 %bcmp, 0
  %i.sz = icmp ugt i64 %i.sx, 2
  %or.cond = and i1 %i.sz, %.not.i394
  br i1 %or.cond, label %bb.ci, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread

bb.ci:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  store ptr %i.bi, ptr %i.ae, align 8
  invoke void @_ZN6Assimp18ObjFileMtlImporter10getTextureEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit unwind label %bb.ck

bb.cj:                                            ; preds = %.noexc.i
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428

bb.ck:                                            ; preds = %bb.cp, %bb.ci
  %i.tb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tc = load ptr, ptr %2, align 8               ; 2 uses
  %i.td = icmp eq ptr %i.tc, %i.be
  br i1 %i.td, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  switch i64 %i.sx, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit [
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit398
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit401
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread
  %i.te = load i64, ptr %i.sy, align 1
  %i.tf = icmp ne i64 %i.te, 7163375895056770413
  %i.tg = zext i1 %i.tf to i32
  %i.th = icmp eq i32 %i.tg, 0
  br i1 %i.th, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit398: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread
  %bcmp.i397 = call i32 @bcmp(ptr %i.sy, ptr nonnull @.str.4, i64 %i.sx)
  %i.ti = icmp eq i32 %bcmp.i397, 0
  br i1 %i.ti, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit401: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread
  %bcmp.i400 = call i32 @bcmp(ptr %i.sy, ptr nonnull @.str.5, i64 %i.sx)
  %i.tj = icmp eq i32 %bcmp.i400, 0
  br i1 %i.tj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit401, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit398, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.tk = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i402 = icmp eq ptr %i.tk, null
  br i1 %.not.i402, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 64
  %i.tm = load ptr, ptr %i.tl, align 8            ; 3 uses
  %.not2.i = icmp eq ptr %i.tm, null
  br i1 %.not2.i, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 20672
  %i.to = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.tp = icmp eq ptr %.sroa.0.0.lcssa.i393, %.sroa.066.0.copyload
  %i.tq = icmp eq ptr %.sroa.0.0.lcssa.i393, %i.sq
  %.0.i6.i.i.i.i = select i1 %i.tp, i1 true, i1 %i.tq
  br i1 %.0.i6.i.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.preheader, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cm, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.ts, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i ], [ %.sroa.0.0.lcssa.i393, %bb.cm ] ; 3 uses
  %i.tr = load i8, ptr %.sroa.0.07.i.i.i.i, align 1
  switch i8 %i.tr, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 1 ; 4 uses
  %i.tt = icmp eq ptr %i.ts, %.sroa.066.0.copyload
  %i.tu = icmp eq ptr %i.ts, %i.sq
  %.0.i.i.i.i.i = select i1 %i.tt, i1 true, i1 %i.tu
  br i1 %.0.i.i.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i, %.lr.ph.i.i.i.i, %bb.cm
  %.sroa.0.0.i.i.i.ph = phi ptr [ %.sroa.0.0.lcssa.i393, %bb.cm ], [ %i.ts, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i.i.i.i ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i: ; preds = %bb.co, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.preheader
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.preheader ], [ %i.uh, %bb.co ] ; 13 uses
  %.0.i.i.i403 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.preheader ], [ %i.ug, %bb.co ] ; 11 uses
  %i.tv = load i8, ptr %.sroa.0.0.i.i.i, align 1  ; 2 uses
  switch i8 %i.tv, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i:   ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i
  %i.tw = icmp eq ptr %.sroa.0.0.i.i.i, %.sroa.066.0.copyload
  %i.tx = icmp eq ptr %.sroa.0.0.i.i.i, %i.sq
  %.0.i.i.i.i404 = select i1 %i.tw, i1 true, i1 %i.tx
  br i1 %.0.i.i.i.i404, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i
  %i.ty = getelementptr inbounds nuw i8, ptr %i.to, i64 %.0.i.i.i403
  store i8 %i.tv, ptr %i.ty, align 1
  %i.tz = icmp eq i64 %.0.i.i.i403, 2046
  br i1 %i.tz, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1: ; preds = %bb.cn
  %i.ua = or disjoint i64 %.0.i.i.i403, 1         ; 8 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1 ; 10 uses
  %i.uc = load i8, ptr %i.ub, align 1             ; 2 uses
  switch i8 %i.uc, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1
  %i.ud = icmp eq ptr %i.ub, %.sroa.066.0.copyload
  %i.ue = icmp eq ptr %i.ub, %i.sq
  %.0.i.i.i.i404.1 = select i1 %i.ud, i1 true, i1 %i.ue
  br i1 %.0.i.i.i.i404.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i, label %bb.co

bb.co:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i.1
  %i.uf = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.ua
  store i8 %i.uc, ptr %i.uf, align 1
  %i.ug = add nuw nsw i64 %.0.i.i.i403, 2
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i, !llvm.loop !11

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1, %bb.cn, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i
  %.sroa.0.0.i.i.i.lcssa = phi ptr [ %.sroa.0.0.i.i.i, %bb.cn ], [ %.sroa.0.0.i.i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i ], [ %.sroa.0.0.i.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i ], [ %.sroa.0.0.i.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i ], [ %.sroa.0.0.i.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i ], [ %.sroa.0.0.i.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i ], [ %.sroa.0.0.i.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i ], [ %.sroa.0.0.i.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i ], [ %i.ub, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1 ], [ %i.ub, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1 ], [ %i.ub, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1 ], [ %i.ub, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1 ], [ %i.ub, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1 ], [ %i.ub, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1 ], [ %i.ub, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i.1 ]
  %.1.i.i.i = phi i64 [ 2047, %bb.cn ], [ %.0.i.i.i403, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i ], [ %.0.i.i.i403, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i ], [ %.0.i.i.i403, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i ], [ %.0.i.i.i403, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i ], [ %.0.i.i.i403, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i ], [ %.0.i.i.i403, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i ], [ %.0.i.i.i403, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i ], [ %i.ua, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1 ], [ %i.ua, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1 ], [ %i.ua, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1 ], [ %i.ua, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1 ], [ %i.ua, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1 ], [ %i.ua, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i.1 ], [ %i.ua, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i.1 ]
  %i.ui = getelementptr inbounds nuw i8, ptr %i.to, i64 %.1.i.i.i
  store i8 0, ptr %i.ui, align 1
  store ptr %.sroa.0.0.i.i.i.lcssa, ptr %i.ae, align 8
  %i.uj = load ptr, ptr %i.aq, align 8            ; 2 uses
  %char0.i.i = load i8, ptr %i.uj, align 1
  %.not.i.i = icmp eq i8 %char0.i.i, 0
  br i1 %.not.i.i, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i, label %bb.cp

bb.cp:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #22
  store float 0.000000e+00, ptr %i.t, align 4
  %i.uk = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.uj, ptr noundef nonnull align 4 dereferenceable(4) %i.t, i1 noundef zeroext true)
          to label %.noexc405 unwind label %bb.ck ; 0 uses

.noexc405:                                        ; preds = %bb.cp
  %i.ul = load float, ptr %i.t, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i: ; preds = %.noexc405, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i
  %.sink8.i.i = phi float [ %i.ul, %.noexc405 ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i ]
  %.sink.i.i = phi i8 [ 1, %.noexc405 ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i ]
  store float %.sink8.i.i, ptr %i.tn, align 4
  %i.um = getelementptr inbounds nuw i8, ptr %i.tm, i64 20676
  store i8 %.sink.i.i, ptr %i.um, align 4
  br label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit

_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit398, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i, %bb.cl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit401, %bb.ci
  %.sroa.064.0.copyload = load ptr, ptr %i.ae, align 8 ; 5 uses
  %.sroa.063.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %17 = ptrtoaddr ptr %.sroa.063.0.copyload to i64
  %.not.i406 = icmp ult ptr %.sroa.064.0.copyload, %.sroa.063.0.copyload
  br i1 %.not.i406, label %.preheader.i408, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit425

.preheader.i408:                                  ; preds = %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit
  %i.un = getelementptr inbounds i8, ptr %.sroa.063.0.copyload, i64 -1 ; 2 uses
  %i.uo = icmp eq ptr %.sroa.064.0.copyload, %i.un
  br i1 %i.uo, label %.critedge.i411, label %.lr.ph.i409

.lr.ph.i409:                                      ; preds = %.preheader.i408, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i423
  %.sroa.010.021.i410 = phi ptr [ %i.uq, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i423 ], [ %.sroa.064.0.copyload, %.preheader.i408 ] ; 6 uses
  %i.up = load i8, ptr %.sroa.010.021.i410, align 1
  switch i8 %i.up, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i423 [
    i8 13, label %.critedge.i411
    i8 10, label %.critedge.i411
    i8 0, label %.critedge.i411
    i8 12, label %.critedge.i411
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i423:            ; preds = %.lr.ph.i409
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i410, i64 1 ; 4 uses
  %i.ur = icmp eq ptr %i.uq, %.sroa.063.0.copyload
  %i.us = icmp eq ptr %i.uq, %i.un
  %.0.i.i424 = or i1 %i.ur, %i.us
  br i1 %.0.i.i424, label %.critedge.i411, label %.lr.ph.i409, !llvm.loop !8

.critedge.i411:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i423, %.lr.ph.i409, %.lr.ph.i409, %.lr.ph.i409, %.lr.ph.i409, %.preheader.i408
  %.sroa.010.0.lcssa.i412 = phi ptr [ %.sroa.064.0.copyload, %.preheader.i408 ], [ %i.uq, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i423 ], [ %.sroa.010.021.i410, %.lr.ph.i409 ], [ %.sroa.010.021.i410, %.lr.ph.i409 ], [ %.sroa.010.021.i410, %.lr.ph.i409 ], [ %.sroa.010.021.i410, %.lr.ph.i409 ] ; 3 uses
  %.not19.i413 = icmp eq ptr %.sroa.010.0.lcssa.i412, %.sroa.063.0.copyload
  br i1 %.not19.i413, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.critedge.i411
  %i.ut = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i412, i64 1
  %i.uu = load i32, ptr %i.ar, align 8
  %i.uv = add i32 %i.uu, 1
  store i32 %i.uv, ptr %i.ar, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.critedge.i411
  %.sroa.010.1.i414 = phi ptr [ %i.ut, %bb.cq ], [ %.sroa.010.0.lcssa.i412, %.critedge.i411 ] ; 5 uses
  %.not2030.i415 = icmp eq ptr %.sroa.010.1.i414, %.sroa.063.0.copyload
  br i1 %.not2030.i415, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit425, label %.lr.ph32.preheader.i416

.lr.ph32.preheader.i416:                          ; preds = %bb.cr
  %.sroa.010.136.i417 = ptrtoaddr ptr %.sroa.010.1.i414 to i64
  %i.uw = sub i64 %17, %.sroa.010.136.i417
  %scevgep.i418 = getelementptr i8, ptr %.sroa.010.1.i414, i64 %i.uw
  br label %.lr.ph32.i419

.lr.ph32.i419:                                    ; preds = %.critedge4.i421, %.lr.ph32.preheader.i416
  %.sroa.010.231.i420 = phi ptr [ %i.uy, %.critedge4.i421 ], [ %.sroa.010.1.i414, %.lr.ph32.preheader.i416 ] ; 3 uses
  %i.ux = load i8, ptr %.sroa.010.231.i420, align 1
  switch i8 %i.ux, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit425 [
    i8 9, label %.critedge4.i421
    i8 32, label %.critedge4.i421
  ]

.critedge4.i421:                                  ; preds = %.lr.ph32.i419, %.lr.ph32.i419
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i420, i64 1 ; 2 uses
  %.not20.i422 = icmp eq ptr %i.uy, %.sroa.063.0.copyload
  br i1 %.not20.i422, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit425, label %.lr.ph32.i419, !llvm.loop !9

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit425: ; preds = %.critedge4.i421, %.lr.ph32.i419, %bb.cr, %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit
  %.sroa.010.3.i407 = phi ptr [ %.sroa.064.0.copyload, %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit ], [ %.sroa.010.1.i414, %bb.cr ], [ %.sroa.010.231.i420, %.lr.ph32.i419 ], [ %scevgep.i418, %.critedge4.i421 ]
  store ptr %.sroa.010.3.i407, ptr %i.ae, align 8
  %i.uz = load ptr, ptr %2, align 8               ; 2 uses
  %i.va = icmp eq ptr %i.uz, %i.be
  br i1 %i.va, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit425
  %i.vb = load i64, ptr %i.be, align 8
  %i.vc = add i64 %i.vb, 1
  call void @_ZdlPvm(ptr noundef %i.uz, i64 noundef %i.vc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit425, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.hl

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426: ; preds = %bb.ck
  %i.vd = load i64, ptr %i.be, align 8
  %i.ve = add i64 %i.vd, 1
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.ve) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426, %bb.cj
  %.pn133.pn = phi { ptr, i32 } [ %i.ta, %bb.cj ], [ %i.tb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426 ], [ %i.tb, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.hm

bb.cs:                                            ; preds = %bb.b
  call void @_ZN6Assimp18ObjFileMtlImporter10getTextureEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %.sroa.061.0.copyload = load ptr, ptr %i.ae, align 8 ; 5 uses
  %.sroa.060.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %18 = ptrtoaddr ptr %.sroa.060.0.copyload to i64
  %.not.i429 = icmp ult ptr %.sroa.061.0.copyload, %.sroa.060.0.copyload
  br i1 %.not.i429, label %.preheader.i431, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit448

.preheader.i431:                                  ; preds = %bb.cs
  %i.vf = getelementptr inbounds i8, ptr %.sroa.060.0.copyload, i64 -1 ; 2 uses
  %i.vg = icmp eq ptr %.sroa.061.0.copyload, %i.vf
  br i1 %i.vg, label %.critedge.i434, label %.lr.ph.i432

.lr.ph.i432:                                      ; preds = %.preheader.i431, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i446
  %.sroa.010.021.i433 = phi ptr [ %i.vi, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i446 ], [ %.sroa.061.0.copyload, %.preheader.i431 ] ; 6 uses
  %i.vh = load i8, ptr %.sroa.010.021.i433, align 1
  switch i8 %i.vh, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i446 [
    i8 13, label %.critedge.i434
    i8 10, label %.critedge.i434
    i8 0, label %.critedge.i434
    i8 12, label %.critedge.i434
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i446:            ; preds = %.lr.ph.i432
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i433, i64 1 ; 4 uses
  %i.vj = icmp eq ptr %i.vi, %.sroa.060.0.copyload
  %i.vk = icmp eq ptr %i.vi, %i.vf
  %.0.i.i447 = or i1 %i.vj, %i.vk
  br i1 %.0.i.i447, label %.critedge.i434, label %.lr.ph.i432, !llvm.loop !8

.critedge.i434:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i446, %.lr.ph.i432, %.lr.ph.i432, %.lr.ph.i432, %.lr.ph.i432, %.preheader.i431
  %.sroa.010.0.lcssa.i435 = phi ptr [ %.sroa.061.0.copyload, %.preheader.i431 ], [ %i.vi, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i446 ], [ %.sroa.010.021.i433, %.lr.ph.i432 ], [ %.sroa.010.021.i433, %.lr.ph.i432 ], [ %.sroa.010.021.i433, %.lr.ph.i432 ], [ %.sroa.010.021.i433, %.lr.ph.i432 ] ; 3 uses
  %.not19.i436 = icmp eq ptr %.sroa.010.0.lcssa.i435, %.sroa.060.0.copyload
  br i1 %.not19.i436, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.critedge.i434
  %i.vl = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i435, i64 1
  %i.vm = load i32, ptr %i.ar, align 8
  %i.vn = add i32 %i.vm, 1
  store i32 %i.vn, ptr %i.ar, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.critedge.i434
  %.sroa.010.1.i437 = phi ptr [ %i.vl, %bb.ct ], [ %.sroa.010.0.lcssa.i435, %.critedge.i434 ] ; 5 uses
  %.not2030.i438 = icmp eq ptr %.sroa.010.1.i437, %.sroa.060.0.copyload
  br i1 %.not2030.i438, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit448, label %.lr.ph32.preheader.i439

.lr.ph32.preheader.i439:                          ; preds = %bb.cu
  %.sroa.010.136.i440 = ptrtoaddr ptr %.sroa.010.1.i437 to i64
  %i.vo = sub i64 %18, %.sroa.010.136.i440
  %scevgep.i441 = getelementptr i8, ptr %.sroa.010.1.i437, i64 %i.vo
  br label %.lr.ph32.i442

.lr.ph32.i442:                                    ; preds = %.critedge4.i444, %.lr.ph32.preheader.i439
  %.sroa.010.231.i443 = phi ptr [ %i.vq, %.critedge4.i444 ], [ %.sroa.010.1.i437, %.lr.ph32.preheader.i439 ] ; 3 uses
  %i.vp = load i8, ptr %.sroa.010.231.i443, align 1
  switch i8 %i.vp, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit448 [
    i8 9, label %.critedge4.i444
    i8 32, label %.critedge4.i444
  ]

.critedge4.i444:                                  ; preds = %.lr.ph32.i442, %.lr.ph32.i442
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i443, i64 1 ; 2 uses
  %.not20.i445 = icmp eq ptr %i.vq, %.sroa.060.0.copyload
  br i1 %.not20.i445, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit448, label %.lr.ph32.i442, !llvm.loop !9

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit448: ; preds = %.lr.ph32.i442, %.critedge4.i444, %bb.cs, %bb.cu
  %.sroa.010.3.i430 = phi ptr [ %.sroa.061.0.copyload, %bb.cs ], [ %.sroa.010.1.i437, %bb.cu ], [ %.sroa.010.231.i443, %.lr.ph32.i442 ], [ %scevgep.i441, %.critedge4.i444 ]
  store ptr %.sroa.010.3.i430, ptr %i.ae, align 8
  br label %bb.hl

bb.cv:                                            ; preds = %bb.b
  %i.vr = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 2 uses
  %i.vs = icmp eq ptr %i.bi, %i.vr
  br i1 %i.vs, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit455, label %.lr.ph.i450

.lr.ph.i450thread-pre-split:                      ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i453
  %.pr1319 = load i8, ptr %i.vu, align 1
  br label %.lr.ph.i450

.lr.ph.i450:                                      ; preds = %bb.cv, %.lr.ph.i450thread-pre-split
  %i.vt = phi i8 [ %.pr1319, %.lr.ph.i450thread-pre-split ], [ 114, %bb.cv ]
  %.sroa.0.06.i451 = phi ptr [ %i.vu, %.lr.ph.i450thread-pre-split ], [ %i.bi, %bb.cv ] ; 7 uses
  switch i8 %i.vt, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i453 [
    i8 32, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit455
    i8 9, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit455
    i8 13, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit455
    i8 10, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit455
    i8 0, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit455
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit455
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i453:    ; preds = %.lr.ph.i450
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i451, i64 1 ; 5 uses
  %i.vv = icmp eq ptr %i.vu, %i.bh
  %i.vw = icmp eq ptr %i.vu, %i.vr
  %.0.i.i454 = or i1 %i.vv, %i.vw
  br i1 %.0.i.i454, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit455, label %.lr.ph.i450thread-pre-split, !llvm.loop !12

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit455: ; preds = %.lr.ph.i450, %.lr.ph.i450, %.lr.ph.i450, %.lr.ph.i450, %.lr.ph.i450, %.lr.ph.i450, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i453, %bb.cv
  %.sroa.0.0.lcssa.i452 = phi ptr [ %i.bi, %bb.cv ], [ %i.vu, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i453 ], [ %.sroa.0.06.i451, %.lr.ph.i450 ], [ %.sroa.0.06.i451, %.lr.ph.i450 ], [ %.sroa.0.06.i451, %.lr.ph.i450 ], [ %.sroa.0.06.i451, %.lr.ph.i450 ], [ %.sroa.0.06.i451, %.lr.ph.i450 ], [ %.sroa.0.06.i451, %.lr.ph.i450 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.bc, ptr %3, align 8
  store i64 0, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #22
  %i.vx = ptrtoint ptr %.sroa.0.0.lcssa.i452 to i64 ; 3 uses
  %i.vy = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.vz = sub i64 %i.vx, %i.vy                    ; 10 uses
  store i64 %i.vz, ptr %i.s, align 8
  %i.wa = icmp ugt i64 %i.vz, 15
  br i1 %i.wa, label %.noexc.i465, label %._crit_edge.i.i456

.noexc.i465:                                      ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit455
  %i.wb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef 0)
          to label %.noexc466 unwind label %bb.dc ; 2 uses

.noexc466:                                        ; preds = %.noexc.i465
  store ptr %i.wb, ptr %3, align 8
  %i.wc = load i64, ptr %i.s, align 8             ; 2 uses
  store i64 %i.wc, ptr %i.bc, align 8
  br label %._crit_edge.i.i456

._crit_edge.i.i456:                               ; preds = %.noexc466, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit455
  %i.wd = phi i64 [ %i.wc, %.noexc466 ], [ %i.vz, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit455 ]
  %i.we = phi ptr [ %i.wb, %.noexc466 ], [ %i.bc, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit455 ] ; 7 uses
  %.not5.i.i.i457 = icmp eq ptr %i.bi, %.sroa.0.0.lcssa.i452
  br i1 %.not5.i.i.i457, label %bb.cw, label %iter.check1358

iter.check1358:                                   ; preds = %._crit_edge.i.i456
  %i.wf = ptrtoaddr ptr %i.we to i64
  %min.iters.check1341 = icmp ult i64 %i.vz, 4
  %i.wg = sub i64 %i.vy, %i.wf
  %diff.check1340 = icmp ugt i64 %i.wg, -32
  %or.cond1484 = select i1 %min.iters.check1341, i1 true, i1 %diff.check1340
  br i1 %or.cond1484, label %.lr.ph.i.i.i458.preheader, label %vector.main.loop.iter.check1342

vector.main.loop.iter.check1342:                  ; preds = %iter.check1358
  %min.iters.check1343 = icmp ult i64 %i.vz, 32
  br i1 %min.iters.check1343, label %vec.epilog.ph1362, label %vector.ph1344

vector.ph1344:                                    ; preds = %vector.main.loop.iter.check1342
  %n.mod.vf1345 = and i64 %i.vz, 28
  %n.vec1346 = and i64 %i.vz, -32                 ; 5 uses
  %i.wh = getelementptr i8, ptr %i.we, i64 %n.vec1346
  %i.wi = getelementptr i8, ptr %i.bi, i64 %n.vec1346
  br label %vector.body1347

vector.body1347:                                  ; preds = %vector.body1347, %vector.ph1344
  %index1348 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1353, %vector.body1347 ] ; 3 uses
  %next.gep1349 = getelementptr i8, ptr %i.we, i64 %index1348 ; 2 uses
  %next.gep1350 = getelementptr i8, ptr %i.bi, i64 %index1348 ; 2 uses
  %i.wj = getelementptr i8, ptr %next.gep1350, i64 16
  %wide.load1351 = load <16 x i8>, ptr %next.gep1350, align 1
  %wide.load1352 = load <16 x i8>, ptr %i.wj, align 1
  %i.wk = getelementptr i8, ptr %next.gep1349, i64 16
  store <16 x i8> %wide.load1351, ptr %next.gep1349, align 1
  store <16 x i8> %wide.load1352, ptr %i.wk, align 1
  %index.next1353 = add nuw i64 %index1348, 32    ; 2 uses
  %i.wl = icmp eq i64 %index.next1353, %n.vec1346
  br i1 %i.wl, label %middle.block1354, label %vector.body1347, !llvm.loop !21

middle.block1354:                                 ; preds = %vector.body1347
  %cmp.n1355 = icmp eq i64 %i.vz, %n.vec1346
  br i1 %cmp.n1355, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i462, label %vec.epilog.iter.check1360

vec.epilog.iter.check1360:                        ; preds = %middle.block1354
  %min.epilog.iters.check1361 = icmp eq i64 %n.mod.vf1345, 0
  br i1 %min.epilog.iters.check1361, label %.lr.ph.i.i.i458.preheader, label %vec.epilog.ph1362, !prof !16

vec.epilog.ph1362:                                ; preds = %vector.main.loop.iter.check1342, %vec.epilog.iter.check1360
  %vec.epilog.resume.val1356 = phi i64 [ %n.vec1346, %vec.epilog.iter.check1360 ], [ 0, %vector.main.loop.iter.check1342 ]
  %n.vec1364 = and i64 %i.vz, -4                  ; 4 uses
  %i.wm = getelementptr i8, ptr %i.we, i64 %n.vec1364
  %i.wn = getelementptr i8, ptr %i.bi, i64 %n.vec1364
  br label %vec.epilog.vector.body1365

vec.epilog.vector.body1365:                       ; preds = %vec.epilog.vector.body1365, %vec.epilog.ph1362
  %index1366 = phi i64 [ %vec.epilog.resume.val1356, %vec.epilog.ph1362 ], [ %index.next1370, %vec.epilog.vector.body1365 ] ; 3 uses
  %next.gep1367 = getelementptr i8, ptr %i.we, i64 %index1366
  %next.gep1368 = getelementptr i8, ptr %i.bi, i64 %index1366
  %wide.load1369 = load <4 x i8>, ptr %next.gep1368, align 1
  store <4 x i8> %wide.load1369, ptr %next.gep1367, align 1
  %index.next1370 = add nuw i64 %index1366, 4     ; 2 uses
  %i.wo = icmp eq i64 %index.next1370, %n.vec1364
  br i1 %i.wo, label %vec.epilog.middle.block1371, label %vec.epilog.vector.body1365, !llvm.loop !22

vec.epilog.middle.block1371:                      ; preds = %vec.epilog.vector.body1365
  %cmp.n1372 = icmp eq i64 %i.vz, %n.vec1364
  br i1 %cmp.n1372, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i462, label %.lr.ph.i.i.i458.preheader

.lr.ph.i.i.i458.preheader:                        ; preds = %iter.check1358, %vec.epilog.iter.check1360, %vec.epilog.middle.block1371
  %.07.i.i.i459.ph = phi ptr [ %i.we, %iter.check1358 ], [ %i.wh, %vec.epilog.iter.check1360 ], [ %i.wm, %vec.epilog.middle.block1371 ] ; 2 uses
  %.sroa.02.06.i.i.i460.ph = phi ptr [ %i.bi, %iter.check1358 ], [ %i.wi, %vec.epilog.iter.check1360 ], [ %i.wn, %vec.epilog.middle.block1371 ] ; 3 uses
  %.sroa.02.06.i.i.i460.ph1497 = ptrtoaddr ptr %.sroa.02.06.i.i.i460.ph to i64 ; 2 uses
  %i.wp = sub i64 %i.vx, %.sroa.02.06.i.i.i460.ph1497
  %xtraiter1498 = and i64 %i.wp, 7                ; 2 uses
  %lcmp.mod1499.not = icmp eq i64 %xtraiter1498, 0
  br i1 %lcmp.mod1499.not, label %.lr.ph.i.i.i458.prol.loopexit, label %.lr.ph.i.i.i458.prol

.lr.ph.i.i.i458.prol:                             ; preds = %.lr.ph.i.i.i458.preheader, %.lr.ph.i.i.i458.prol
  %.07.i.i.i459.prol = phi ptr [ %i.ws, %.lr.ph.i.i.i458.prol ], [ %.07.i.i.i459.ph, %.lr.ph.i.i.i458.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i460.prol = phi ptr [ %i.wr, %.lr.ph.i.i.i458.prol ], [ %.sroa.02.06.i.i.i460.ph, %.lr.ph.i.i.i458.preheader ] ; 2 uses
  %prol.iter1500 = phi i64 [ %prol.iter1500.next, %.lr.ph.i.i.i458.prol ], [ 0, %.lr.ph.i.i.i458.preheader ]
  %i.wq = load i8, ptr %.sroa.02.06.i.i.i460.prol, align 1
  store i8 %i.wq, ptr %.07.i.i.i459.prol, align 1
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i460.prol, i64 1 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.07.i.i.i459.prol, i64 1 ; 2 uses
  %prol.iter1500.next = add i64 %prol.iter1500, 1 ; 2 uses
  %prol.iter1500.cmp.not = icmp eq i64 %prol.iter1500.next, %xtraiter1498
  br i1 %prol.iter1500.cmp.not, label %.lr.ph.i.i.i458.prol.loopexit, label %.lr.ph.i.i.i458.prol, !llvm.loop !23

.lr.ph.i.i.i458.prol.loopexit:                    ; preds = %.lr.ph.i.i.i458.prol, %.lr.ph.i.i.i458.preheader
  %.07.i.i.i459.unr = phi ptr [ %.07.i.i.i459.ph, %.lr.ph.i.i.i458.preheader ], [ %i.ws, %.lr.ph.i.i.i458.prol ]
  %.sroa.02.06.i.i.i460.unr = phi ptr [ %.sroa.02.06.i.i.i460.ph, %.lr.ph.i.i.i458.preheader ], [ %i.wr, %.lr.ph.i.i.i458.prol ]
  %i.wt = sub i64 %.sroa.02.06.i.i.i460.ph1497, %i.vx
  %i.wu = icmp ugt i64 %i.wt, -8
  br i1 %i.wu, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i462, label %.lr.ph.i.i.i458

.lr.ph.i.i.i458:                                  ; preds = %.lr.ph.i.i.i458.prol.loopexit, %.lr.ph.i.i.i458
  %.07.i.i.i459 = phi ptr [ %i.xs, %.lr.ph.i.i.i458 ], [ %.07.i.i.i459.unr, %.lr.ph.i.i.i458.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i460 = phi ptr [ %i.xr, %.lr.ph.i.i.i458 ], [ %.sroa.02.06.i.i.i460.unr, %.lr.ph.i.i.i458.prol.loopexit ] ; 9 uses
  %i.wv = load i8, ptr %.sroa.02.06.i.i.i460, align 1
  store i8 %i.wv, ptr %.07.i.i.i459, align 1
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i460, i64 1
  %i.wx = getelementptr inbounds nuw i8, ptr %.07.i.i.i459, i64 1
  %i.wy = load i8, ptr %i.ww, align 1
  store i8 %i.wy, ptr %i.wx, align 1
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i460, i64 2
  %i.xa = getelementptr inbounds nuw i8, ptr %.07.i.i.i459, i64 2
  %i.xb = load i8, ptr %i.wz, align 1
  store i8 %i.xb, ptr %i.xa, align 1
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i460, i64 3
  %i.xd = getelementptr inbounds nuw i8, ptr %.07.i.i.i459, i64 3
  %i.xe = load i8, ptr %i.xc, align 1
  store i8 %i.xe, ptr %i.xd, align 1
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i460, i64 4
  %i.xg = getelementptr inbounds nuw i8, ptr %.07.i.i.i459, i64 4
  %i.xh = load i8, ptr %i.xf, align 1
  store i8 %i.xh, ptr %i.xg, align 1
  %i.xi = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i460, i64 5
  %i.xj = getelementptr inbounds nuw i8, ptr %.07.i.i.i459, i64 5
  %i.xk = load i8, ptr %i.xi, align 1
  store i8 %i.xk, ptr %i.xj, align 1
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i460, i64 6
  %i.xm = getelementptr inbounds nuw i8, ptr %.07.i.i.i459, i64 6
  %i.xn = load i8, ptr %i.xl, align 1
  store i8 %i.xn, ptr %i.xm, align 1
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i460, i64 7
  %i.xp = getelementptr inbounds nuw i8, ptr %.07.i.i.i459, i64 7
  %i.xq = load i8, ptr %i.xo, align 1
  store i8 %i.xq, ptr %i.xp, align 1
  %i.xr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i460, i64 8 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.07.i.i.i459, i64 8
  %.not.i.i.i461.7 = icmp eq ptr %i.xr, %.sroa.0.0.lcssa.i452
  br i1 %.not.i.i.i461.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i462, label %.lr.ph.i.i.i458, !llvm.loop !24

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i462: ; preds = %.lr.ph.i.i.i458.prol.loopexit, %.lr.ph.i.i.i458, %vec.epilog.middle.block1371, %middle.block1354
  %.pre16.i.i463 = load i64, ptr %i.s, align 8
  %.pre17.i.i464 = load ptr, ptr %3, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i462, %._crit_edge.i.i456
  %i.xt = phi ptr [ %.pre17.i.i464, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i462 ], [ %i.we, %._crit_edge.i.i456 ]
  %i.xu = phi i64 [ %.pre16.i.i463, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i462 ], [ %i.wd, %._crit_edge.i.i456 ] ; 2 uses
  store i64 %i.xu, ptr %i.bd, align 8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.xu
  store i8 0, ptr %i.xv, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #22
  %.sroa.050.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %i.xw = getelementptr inbounds i8, ptr %.sroa.050.0.copyload, i64 -1 ; 6 uses
  %i.xx = icmp eq ptr %.sroa.0.0.lcssa.i452, %.sroa.050.0.copyload
  %i.xy = icmp eq ptr %.sroa.0.0.lcssa.i452, %i.xw
  %.0.i6.i468 = select i1 %i.xx, i1 true, i1 %i.xy
  br i1 %.0.i6.i468, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit475, label %.lr.ph.i469

.lr.ph.i469:                                      ; preds = %bb.cw, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i471
  %.sroa.0.07.i470 = phi ptr [ %i.ya, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i471 ], [ %.sroa.0.0.lcssa.i452, %bb.cw ] ; 3 uses
  %i.xz = load i8, ptr %.sroa.0.07.i470, align 1
  switch i8 %i.xz, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit475 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i471
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i471
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i471:            ; preds = %.lr.ph.i469, %.lr.ph.i469
  %i.ya = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i470, i64 1 ; 4 uses
  %i.yb = icmp eq ptr %i.ya, %.sroa.050.0.copyload
  %i.yc = icmp eq ptr %i.ya, %i.xw
  %.0.i.i472 = select i1 %i.yb, i1 true, i1 %i.yc
  br i1 %.0.i.i472, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit475, label %.lr.ph.i469, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit475: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i471, %.lr.ph.i469, %bb.cw
  %.sroa.0.0.lcssa.i474 = phi ptr [ %.sroa.0.0.lcssa.i452, %bb.cw ], [ %i.ya, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i471 ], [ %.sroa.0.07.i470, %.lr.ph.i469 ] ; 5 uses
  store ptr %.sroa.0.0.lcssa.i474, ptr %i.ae, align 8
  %i.yd = load i64, ptr %i.bd, align 8            ; 4 uses
  switch i64 %i.yd, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit505 [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit478
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit481
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit508
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit511
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit478: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit475
  %i.ye = load ptr, ptr %3, align 8               ; 2 uses
  %i.yf = load i64, ptr %i.ye, align 1
  %i.yg = xor i64 %i.yf, 8315173681700892530
  %i.yh = getelementptr i8, ptr %i.ye, i64 8
  %i.yi = load i8, ptr %i.yh, align 1
  %i.yj = zext i8 %i.yi to i64
  %i.yk = xor i64 %i.yj, 115
  %i.yl = or i64 %i.yg, %i.yk
  %i.ym = icmp ne i64 %i.yl, 0
  %i.yn = zext i1 %i.ym to i32
  %i.yo = icmp eq i32 %i.yn, 0
  br i1 %i.yo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit478.thread, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit505

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit481: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit475
  %.pre1117 = load ptr, ptr %3, align 8
  %bcmp.i480 = call i32 @bcmp(ptr %.pre1117, ptr nonnull @.str.7, i64 %i.yd)
  %i.yp = icmp eq i32 %bcmp.i480, 0
  br i1 %i.yp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit478.thread, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit505

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit478.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit481, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit478
  %i.yq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i482 = icmp eq ptr %i.yq, null
  br i1 %.not.i482, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit505, label %bb.cx

bb.cx:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit478.thread
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 64
  %i.ys = load ptr, ptr %i.yr, align 8            ; 3 uses
  %.not2.i483 = icmp eq ptr %i.ys, null
  br i1 %.not2.i483, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit505, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 20664
  %i.yu = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.yv = icmp eq ptr %.sroa.0.0.lcssa.i474, %.sroa.050.0.copyload
  %i.yw = icmp eq ptr %.sroa.0.0.lcssa.i474, %i.xw
  %.0.i6.i.i.i.i486 = select i1 %i.yv, i1 true, i1 %i.yw
  br i1 %.0.i6.i.i.i.i486, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.preheader, label %.lr.ph.i.i.i.i487

.lr.ph.i.i.i.i487:                                ; preds = %bb.cy, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i489
  %.sroa.0.07.i.i.i.i488 = phi ptr [ %i.yy, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i489 ], [ %.sroa.0.0.lcssa.i474, %bb.cy ] ; 3 uses
  %i.yx = load i8, ptr %.sroa.0.07.i.i.i.i488, align 1
  switch i8 %i.yx, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i489
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i489
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i489:      ; preds = %.lr.ph.i.i.i.i487, %.lr.ph.i.i.i.i487
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i488, i64 1 ; 4 uses
  %i.yz = icmp eq ptr %i.yy, %.sroa.050.0.copyload
  %i.za = icmp eq ptr %i.yy, %i.xw
  %.0.i.i.i.i.i490 = select i1 %i.yz, i1 true, i1 %i.za
  br i1 %.0.i.i.i.i.i490, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.preheader, label %.lr.ph.i.i.i.i487, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i489, %.lr.ph.i.i.i.i487, %bb.cy
  %.sroa.0.0.i.i.i493.ph = phi ptr [ %.sroa.0.0.lcssa.i474, %bb.cy ], [ %i.yy, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i489 ], [ %.sroa.0.07.i.i.i.i488, %.lr.ph.i.i.i.i487 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491: ; preds = %bb.da, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.preheader
  %.sroa.0.0.i.i.i493 = phi ptr [ %.sroa.0.0.i.i.i493.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.preheader ], [ %i.zn, %bb.da ] ; 13 uses
  %.0.i.i.i494 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.preheader ], [ %i.zm, %bb.da ] ; 11 uses
  %i.zb = load i8, ptr %.sroa.0.0.i.i.i493, align 1 ; 2 uses
  switch i8 %i.zb, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i502 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i502: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491
  %i.zc = icmp eq ptr %.sroa.0.0.i.i.i493, %.sroa.050.0.copyload
  %i.zd = icmp eq ptr %.sroa.0.0.i.i.i493, %i.xw
  %.0.i.i.i.i503 = select i1 %i.zc, i1 true, i1 %i.zd
  br i1 %.0.i.i.i.i503, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495, label %bb.cz

bb.cz:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i502
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.0.i.i.i494
  store i8 %i.zb, ptr %i.ze, align 1
  %i.zf = icmp eq i64 %.0.i.i.i494, 2046
  br i1 %i.zf, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1: ; preds = %bb.cz
  %i.zg = or disjoint i64 %.0.i.i.i494, 1         ; 8 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i493, i64 1 ; 10 uses
  %i.zi = load i8, ptr %i.zh, align 1             ; 2 uses
  switch i8 %i.zi, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i502.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i502.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1
  %i.zj = icmp eq ptr %i.zh, %.sroa.050.0.copyload
  %i.zk = icmp eq ptr %i.zh, %i.xw
  %.0.i.i.i.i503.1 = select i1 %i.zj, i1 true, i1 %i.zk
  br i1 %.0.i.i.i.i503.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495, label %bb.da

bb.da:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i502.1
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yu, i64 %i.zg
  store i8 %i.zi, ptr %i.zl, align 1
  %i.zm = add nuw nsw i64 %.0.i.i.i494, 2
  %i.zn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i493, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491, !llvm.loop !11

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i502.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1, %bb.cz, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i502, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491
  %.sroa.0.0.i.i.i493.lcssa = phi ptr [ %.sroa.0.0.i.i.i493, %bb.cz ], [ %.sroa.0.0.i.i.i493, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i502 ], [ %.sroa.0.0.i.i.i493, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491 ], [ %.sroa.0.0.i.i.i493, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491 ], [ %.sroa.0.0.i.i.i493, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491 ], [ %.sroa.0.0.i.i.i493, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491 ], [ %.sroa.0.0.i.i.i493, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491 ], [ %.sroa.0.0.i.i.i493, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491 ], [ %i.zh, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1 ], [ %i.zh, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1 ], [ %i.zh, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1 ], [ %i.zh, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1 ], [ %i.zh, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1 ], [ %i.zh, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1 ], [ %i.zh, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i502.1 ]
  %.1.i.i.i496 = phi i64 [ 2047, %bb.cz ], [ %.0.i.i.i494, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i502 ], [ %.0.i.i.i494, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491 ], [ %.0.i.i.i494, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491 ], [ %.0.i.i.i494, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491 ], [ %.0.i.i.i494, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491 ], [ %.0.i.i.i494, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491 ], [ %.0.i.i.i494, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491 ], [ %i.zg, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1 ], [ %i.zg, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1 ], [ %i.zg, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1 ], [ %i.zg, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1 ], [ %i.zg, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1 ], [ %i.zg, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i491.1 ], [ %i.zg, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i502.1 ]
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.1.i.i.i496
  store i8 0, ptr %i.zo, align 1
  store ptr %.sroa.0.0.i.i.i493.lcssa, ptr %i.ae, align 8
  %i.zp = load ptr, ptr %i.aq, align 8            ; 2 uses
  %char0.i.i497 = load i8, ptr %i.zp, align 1
  %.not.i.i498 = icmp eq i8 %char0.i.i497, 0
  br i1 %.not.i.i498, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i499, label %bb.db

bb.db:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #22
  store float 0.000000e+00, ptr %i.r, align 4
  %i.zq = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.zp, ptr noundef nonnull align 4 dereferenceable(4) %i.r, i1 noundef zeroext true)
          to label %.noexc504 unwind label %bb.dd ; 0 uses

.noexc504:                                        ; preds = %bb.db
  %i.zr = load float, ptr %i.r, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i499

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i499: ; preds = %.noexc504, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495
  %.sink8.i.i500 = phi float [ %i.zr, %.noexc504 ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495 ]
  %.sink.i.i501 = phi i8 [ 1, %.noexc504 ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i495 ]
  store float %.sink8.i.i500, ptr %i.yt, align 4
  %i.zs = getelementptr inbounds nuw i8, ptr %i.ys, i64 20668
  store i8 %.sink.i.i501, ptr %i.zs, align 4
  br label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit505

bb.dc:                                            ; preds = %.noexc.i465
  %i.zt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537

bb.dd:                                            ; preds = %bb.db, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit508.thread
  %i.zu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zv = load ptr, ptr %3, align 8               ; 2 uses
  %i.zw = icmp eq ptr %i.zv, %i.bc
  br i1 %i.zw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit508: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit475
  %.pre1118 = load ptr, ptr %3, align 8
  %bcmp.i507 = call i32 @bcmp(ptr %.pre1118, ptr nonnull @.str.8, i64 %i.yd)
  %i.zx = icmp eq i32 %bcmp.i507, 0
  br i1 %i.zx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit508.thread, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit505

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit511: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit475
  %.pre1119 = load ptr, ptr %3, align 8
  %bcmp.i510 = call i32 @bcmp(ptr %.pre1119, ptr nonnull @.str.9, i64 %i.yd)
  %i.zy = icmp eq i32 %bcmp.i510, 0
  br i1 %i.zy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit508.thread, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit505

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit508.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit511, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit508
  store ptr %i.bi, ptr %i.ae, align 8
  invoke void @_ZN6Assimp18ObjFileMtlImporter10getTextureEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit505 unwind label %bb.dd

_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit505: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit508, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit481, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit478, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit475, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i499, %bb.cx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit478.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit511, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit508.thread
  %.sroa.048.0.copyload = load ptr, ptr %i.ae, align 8 ; 5 uses
  %.sroa.047.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %19 = ptrtoaddr ptr %.sroa.047.0.copyload to i64
  %.not.i512 = icmp ult ptr %.sroa.048.0.copyload, %.sroa.047.0.copyload
  br i1 %.not.i512, label %.preheader.i514, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit531

.preheader.i514:                                  ; preds = %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit505
  %i.zz = getelementptr inbounds i8, ptr %.sroa.047.0.copyload, i64 -1 ; 2 uses
  %i.aaa = icmp eq ptr %.sroa.048.0.copyload, %i.zz
  br i1 %i.aaa, label %.critedge.i517, label %.lr.ph.i515

.lr.ph.i515:                                      ; preds = %.preheader.i514, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i529
  %.sroa.010.021.i516 = phi ptr [ %i.aac, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i529 ], [ %.sroa.048.0.copyload, %.preheader.i514 ] ; 6 uses
  %i.aab = load i8, ptr %.sroa.010.021.i516, align 1
  switch i8 %i.aab, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i529 [
    i8 13, label %.critedge.i517
    i8 10, label %.critedge.i517
    i8 0, label %.critedge.i517
    i8 12, label %.critedge.i517
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i529:            ; preds = %.lr.ph.i515
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i516, i64 1 ; 4 uses
  %i.aad = icmp eq ptr %i.aac, %.sroa.047.0.copyload
  %i.aae = icmp eq ptr %i.aac, %i.zz
  %.0.i.i530 = or i1 %i.aad, %i.aae
  br i1 %.0.i.i530, label %.critedge.i517, label %.lr.ph.i515, !llvm.loop !8

.critedge.i517:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i529, %.lr.ph.i515, %.lr.ph.i515, %.lr.ph.i515, %.lr.ph.i515, %.preheader.i514
  %.sroa.010.0.lcssa.i518 = phi ptr [ %.sroa.048.0.copyload, %.preheader.i514 ], [ %i.aac, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i529 ], [ %.sroa.010.021.i516, %.lr.ph.i515 ], [ %.sroa.010.021.i516, %.lr.ph.i515 ], [ %.sroa.010.021.i516, %.lr.ph.i515 ], [ %.sroa.010.021.i516, %.lr.ph.i515 ] ; 3 uses
  %.not19.i519 = icmp eq ptr %.sroa.010.0.lcssa.i518, %.sroa.047.0.copyload
  br i1 %.not19.i519, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.critedge.i517
  %i.aaf = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i518, i64 1
  %i.aag = load i32, ptr %i.ar, align 8
  %i.aah = add i32 %i.aag, 1
  store i32 %i.aah, ptr %i.ar, align 8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.critedge.i517
  %.sroa.010.1.i520 = phi ptr [ %i.aaf, %bb.de ], [ %.sroa.010.0.lcssa.i518, %.critedge.i517 ] ; 5 uses
  %.not2030.i521 = icmp eq ptr %.sroa.010.1.i520, %.sroa.047.0.copyload
  br i1 %.not2030.i521, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit531, label %.lr.ph32.preheader.i522

.lr.ph32.preheader.i522:                          ; preds = %bb.df
  %.sroa.010.136.i523 = ptrtoaddr ptr %.sroa.010.1.i520 to i64
  %i.aai = sub i64 %19, %.sroa.010.136.i523
  %scevgep.i524 = getelementptr i8, ptr %.sroa.010.1.i520, i64 %i.aai
  br label %.lr.ph32.i525

.lr.ph32.i525:                                    ; preds = %.critedge4.i527, %.lr.ph32.preheader.i522
  %.sroa.010.231.i526 = phi ptr [ %i.aak, %.critedge4.i527 ], [ %.sroa.010.1.i520, %.lr.ph32.preheader.i522 ] ; 3 uses
  %i.aaj = load i8, ptr %.sroa.010.231.i526, align 1
  switch i8 %i.aaj, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit531 [
    i8 9, label %.critedge4.i527
    i8 32, label %.critedge4.i527
  ]

.critedge4.i527:                                  ; preds = %.lr.ph32.i525, %.lr.ph32.i525
  %i.aak = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i526, i64 1 ; 2 uses
  %.not20.i528 = icmp eq ptr %i.aak, %.sroa.047.0.copyload
  br i1 %.not20.i528, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit531, label %.lr.ph32.i525, !llvm.loop !9

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit531: ; preds = %.critedge4.i527, %.lr.ph32.i525, %bb.df, %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit505
  %.sroa.010.3.i513 = phi ptr [ %.sroa.048.0.copyload, %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit505 ], [ %.sroa.010.1.i520, %bb.df ], [ %.sroa.010.231.i526, %.lr.ph32.i525 ], [ %scevgep.i524, %.critedge4.i527 ]
  store ptr %.sroa.010.3.i513, ptr %i.ae, align 8
  %i.aal = load ptr, ptr %3, align 8              ; 2 uses
  %i.aam = icmp eq ptr %i.aal, %i.bc
  br i1 %i.aam, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit531
  %i.aan = load i64, ptr %i.bc, align 8
  %i.aao = add i64 %i.aan, 1
  call void @_ZdlPvm(ptr noundef %i.aal, i64 noundef %i.aao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit531, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.hl

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535: ; preds = %bb.dd
  %i.aap = load i64, ptr %i.bc, align 8
  %i.aaq = add i64 %i.aap, 1
  call void @_ZdlPvm(ptr noundef %i.zv, i64 noundef %i.aaq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535, %bb.dc
  %.pn130.pn = phi { ptr, i32 } [ %i.zt, %bb.dc ], [ %i.zu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535 ], [ %i.zu, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.hm

bb.dg:                                            ; preds = %bb.b
  %i.aar = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 8 uses
  %i.aas = icmp eq ptr %i.bi, %i.aar
  br i1 %i.aas, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.ithread-pre-split:                       ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i538
  %.pr1320 = load i8, ptr %i.aau, align 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.dg, %.lr.ph.i.ithread-pre-split
  %i.aat = phi i8 [ %.pr1320, %.lr.ph.i.ithread-pre-split ], [ 105, %bb.dg ]
  %.sroa.0.06.i.i = phi ptr [ %i.aau, %.lr.ph.i.ithread-pre-split ], [ %i.bi, %bb.dg ] ; 7 uses
  switch i8 %i.aat, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i538 [
    i8 32, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 9, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 13, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 10, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 0, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i538:  ; preds = %.lr.ph.i.i
  %i.aau = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 1 ; 5 uses
  %i.aav = icmp eq ptr %i.aau, %i.bh
  %i.aaw = icmp eq ptr %i.aau, %i.aar
  %.0.i.i.i539 = or i1 %i.aav, %i.aaw
  br i1 %.0.i.i.i539, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.ithread-pre-split, !llvm.loop !12

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i538, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %bb.dg
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.bi, %bb.dg ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %i.aau, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i538 ] ; 4 uses
  %i.aax = icmp eq ptr %.sroa.0.0.lcssa.i.i, %i.bh
  %i.aay = icmp eq ptr %.sroa.0.0.lcssa.i.i, %i.aar
  %.0.i6.i.i = or i1 %i.aax, %i.aay
  br i1 %.0.i6.i.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.aba, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ] ; 3 uses
  %i.aaz = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.aaz, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.aba = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.abb = icmp eq ptr %i.aba, %i.bh
  %i.abc = icmp eq ptr %i.aba, %i.aar
  %.0.i.i9.i = or i1 %i.abb, %i.abc
  br i1 %.0.i.i9.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i, !llvm.loop !10

_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit: ; preds = %.lr.ph.i8.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %.sroa.0.0.lcssa.i11.i = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.07.i.i, %.lr.ph.i8.i ], [ %i.aba, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ] ; 6 uses
  store ptr %.sroa.0.0.lcssa.i11.i, ptr %i.ae, align 8
  %i.abd = load ptr, ptr %i.ap, align 8
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 64
  %i.abf = load ptr, ptr %i.abe, align 8          ; 2 uses
  %.not = icmp eq ptr %i.abf, null
  br i1 %.not, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 20636
  %i.abh = load ptr, ptr %i.aq, align 8           ; 3 uses
  %i.abi = icmp eq ptr %.sroa.0.0.lcssa.i11.i, %i.bh
  %i.abj = icmp eq ptr %.sroa.0.0.lcssa.i11.i, %i.aar
  %.0.i6.i.i.i542 = or i1 %i.abi, %i.abj
  br i1 %.0.i6.i.i.i542, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.preheader, label %.lr.ph.i.i.i543

.lr.ph.i.i.i543:                                  ; preds = %bb.dh, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i545
  %.sroa.0.07.i.i.i544 = phi ptr [ %i.abl, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i545 ], [ %.sroa.0.0.lcssa.i11.i, %bb.dh ] ; 3 uses
  %i.abk = load i8, ptr %.sroa.0.07.i.i.i544, align 1
  switch i8 %i.abk, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i545
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i545
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i545:        ; preds = %.lr.ph.i.i.i543, %.lr.ph.i.i.i543
  %i.abl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i544, i64 1 ; 4 uses
  %i.abm = icmp eq ptr %i.abl, %i.bh
  %i.abn = icmp eq ptr %i.abl, %i.aar
  %.0.i.i.i.i546 = or i1 %i.abm, %i.abn
  br i1 %.0.i.i.i.i546, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.preheader, label %.lr.ph.i.i.i543, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i545, %.lr.ph.i.i.i543, %bb.dh
  %.sroa.0.0.i.i549.ph = phi ptr [ %.sroa.0.0.lcssa.i11.i, %bb.dh ], [ %.sroa.0.07.i.i.i544, %.lr.ph.i.i.i543 ], [ %i.abl, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i545 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547: ; preds = %bb.dj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.preheader
  %.sroa.0.0.i.i549 = phi ptr [ %.sroa.0.0.i.i549.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.preheader ], [ %i.aca, %bb.dj ] ; 13 uses
  %.0.i.i550 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.preheader ], [ %i.abz, %bb.dj ] ; 11 uses
  %i.abo = load i8, ptr %.sroa.0.0.i.i549, align 1 ; 2 uses
  switch i8 %i.abo, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i553 [
    i8 32, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit
    i8 9, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit
    i8 13, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit
    i8 10, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit
    i8 0, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit
    i8 12, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i553:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547
  %i.abp = icmp eq ptr %.sroa.0.0.i.i549, %i.bh
  %i.abq = icmp eq ptr %.sroa.0.0.i.i549, %i.aar
  %.0.i.i.i554 = or i1 %i.abp, %i.abq
  br i1 %.0.i.i.i554, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit, label %bb.di

bb.di:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i553
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abh, i64 %.0.i.i550
  store i8 %i.abo, ptr %i.abr, align 1
  %i.abs = icmp eq i64 %.0.i.i550, 2046
  br i1 %i.abs, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1: ; preds = %bb.di
  %i.abt = or disjoint i64 %.0.i.i550, 1          ; 8 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i549, i64 1 ; 10 uses
  %i.abv = load i8, ptr %i.abu, align 1           ; 2 uses
  switch i8 %i.abv, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i553.1 [
    i8 32, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit
    i8 9, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit
    i8 13, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit
    i8 10, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit
    i8 0, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit
    i8 12, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i553.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1
  %i.abw = icmp eq ptr %i.abu, %i.bh
  %i.abx = icmp eq ptr %i.abu, %i.aar
  %.0.i.i.i554.1 = or i1 %i.abw, %i.abx
  br i1 %.0.i.i.i554.1, label %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit, label %bb.dj

bb.dj:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i553.1
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abh, i64 %i.abt
  store i8 %i.abv, ptr %i.aby, align 1
  %i.abz = add nuw nsw i64 %.0.i.i550, 2
  %i.aca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i549, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547, !llvm.loop !11

_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i553.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i553, %bb.di
  %.sroa.0.0.i.i549.lcssa = phi ptr [ %.sroa.0.0.i.i549, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547 ], [ %.sroa.0.0.i.i549, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547 ], [ %.sroa.0.0.i.i549, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547 ], [ %.sroa.0.0.i.i549, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547 ], [ %.sroa.0.0.i.i549, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547 ], [ %.sroa.0.0.i.i549, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547 ], [ %.sroa.0.0.i.i549, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i553 ], [ %.sroa.0.0.i.i549, %bb.di ], [ %i.abu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1 ], [ %i.abu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1 ], [ %i.abu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1 ], [ %i.abu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1 ], [ %i.abu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1 ], [ %i.abu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1 ], [ %i.abu, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i553.1 ]
  %.1.i.i552 = phi i64 [ %.0.i.i550, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547 ], [ %.0.i.i550, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547 ], [ %.0.i.i550, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547 ], [ %.0.i.i550, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547 ], [ %.0.i.i550, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547 ], [ %.0.i.i550, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547 ], [ %.0.i.i550, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i553 ], [ 2047, %bb.di ], [ %i.abt, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1 ], [ %i.abt, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1 ], [ %i.abt, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1 ], [ %i.abt, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1 ], [ %i.abt, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1 ], [ %i.abt, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i547.1 ], [ %i.abt, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i553.1 ]
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abh, i64 %.1.i.i552
  store i8 0, ptr %i.acb, align 1
  store ptr %.sroa.0.0.i.i549.lcssa, ptr %i.ae, align 8
  %i.acc = load ptr, ptr %i.aq, align 8
  %i.acd = call i64 @__isoc23_strtol(ptr noundef nonnull %i.acc, ptr noundef null, i32 noundef 10) #22, !inline_history !25
  %i.ace = trunc i64 %i.acd to i32
  store i32 %i.ace, ptr %i.abg, align 4
  %.sroa.042.0.copyload.pre = load ptr, ptr %i.ae, align 8
  %.sroa.041.0.copyload.pre = load ptr, ptr %i.af, align 8
  br label %bb.dk

bb.dk:                                            ; preds = %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit, %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
  %.sroa.041.0.copyload = phi ptr [ %.sroa.041.0.copyload.pre, %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit ], [ %i.bh, %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit ] ; 7 uses
  %.sroa.042.0.copyload = phi ptr [ %.sroa.042.0.copyload.pre, %_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi.exit ], [ %.sroa.0.0.lcssa.i11.i, %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit ] ; 5 uses
  %20 = ptrtoaddr ptr %.sroa.041.0.copyload to i64
  %.not.i555 = icmp ult ptr %.sroa.042.0.copyload, %.sroa.041.0.copyload
  br i1 %.not.i555, label %.preheader.i557, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit574

.preheader.i557:                                  ; preds = %bb.dk
  %i.acf = getelementptr inbounds i8, ptr %.sroa.041.0.copyload, i64 -1 ; 2 uses
  %i.acg = icmp eq ptr %.sroa.042.0.copyload, %i.acf
  br i1 %i.acg, label %.critedge.i560, label %.lr.ph.i558

.lr.ph.i558:                                      ; preds = %.preheader.i557, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i572
  %.sroa.010.021.i559 = phi ptr [ %i.aci, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i572 ], [ %.sroa.042.0.copyload, %.preheader.i557 ] ; 6 uses
  %i.ach = load i8, ptr %.sroa.010.021.i559, align 1
  switch i8 %i.ach, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i572 [
    i8 13, label %.critedge.i560
    i8 10, label %.critedge.i560
    i8 0, label %.critedge.i560
    i8 12, label %.critedge.i560
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i572:            ; preds = %.lr.ph.i558
  %i.aci = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i559, i64 1 ; 4 uses
  %i.acj = icmp eq ptr %i.aci, %.sroa.041.0.copyload
  %i.ack = icmp eq ptr %i.aci, %i.acf
  %.0.i.i573 = or i1 %i.acj, %i.ack
  br i1 %.0.i.i573, label %.critedge.i560, label %.lr.ph.i558, !llvm.loop !8

.critedge.i560:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i572, %.lr.ph.i558, %.lr.ph.i558, %.lr.ph.i558, %.lr.ph.i558, %.preheader.i557
  %.sroa.010.0.lcssa.i561 = phi ptr [ %.sroa.042.0.copyload, %.preheader.i557 ], [ %i.aci, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i572 ], [ %.sroa.010.021.i559, %.lr.ph.i558 ], [ %.sroa.010.021.i559, %.lr.ph.i558 ], [ %.sroa.010.021.i559, %.lr.ph.i558 ], [ %.sroa.010.021.i559, %.lr.ph.i558 ] ; 3 uses
  %.not19.i562 = icmp eq ptr %.sroa.010.0.lcssa.i561, %.sroa.041.0.copyload
  br i1 %.not19.i562, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %.critedge.i560
  %i.acl = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i561, i64 1
  %i.acm = load i32, ptr %i.ar, align 8
  %i.acn = add i32 %i.acm, 1
  store i32 %i.acn, ptr %i.ar, align 8
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.critedge.i560
  %.sroa.010.1.i563 = phi ptr [ %i.acl, %bb.dl ], [ %.sroa.010.0.lcssa.i561, %.critedge.i560 ] ; 5 uses
  %.not2030.i564 = icmp eq ptr %.sroa.010.1.i563, %.sroa.041.0.copyload
  br i1 %.not2030.i564, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit574, label %.lr.ph32.preheader.i565

.lr.ph32.preheader.i565:                          ; preds = %bb.dm
  %.sroa.010.136.i566 = ptrtoaddr ptr %.sroa.010.1.i563 to i64
  %i.aco = sub i64 %20, %.sroa.010.136.i566
  %scevgep.i567 = getelementptr i8, ptr %.sroa.010.1.i563, i64 %i.aco
  br label %.lr.ph32.i568

.lr.ph32.i568:                                    ; preds = %.critedge4.i570, %.lr.ph32.preheader.i565
  %.sroa.010.231.i569 = phi ptr [ %i.acq, %.critedge4.i570 ], [ %.sroa.010.1.i563, %.lr.ph32.preheader.i565 ] ; 3 uses
  %i.acp = load i8, ptr %.sroa.010.231.i569, align 1
  switch i8 %i.acp, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit574 [
    i8 9, label %.critedge4.i570
    i8 32, label %.critedge4.i570
  ]

.critedge4.i570:                                  ; preds = %.lr.ph32.i568, %.lr.ph32.i568
  %i.acq = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i569, i64 1 ; 2 uses
  %.not20.i571 = icmp eq ptr %i.acq, %.sroa.041.0.copyload
  br i1 %.not20.i571, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit574, label %.lr.ph32.i568, !llvm.loop !9

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit574: ; preds = %.lr.ph32.i568, %.critedge4.i570, %bb.dk, %bb.dm
  %.sroa.010.3.i556 = phi ptr [ %.sroa.042.0.copyload, %bb.dk ], [ %.sroa.010.1.i563, %bb.dm ], [ %.sroa.010.231.i569, %.lr.ph32.i568 ], [ %scevgep.i567, %.critedge4.i570 ]
  store ptr %.sroa.010.3.i556, ptr %i.ae, align 8
  br label %bb.hl

bb.dn:                                            ; preds = %bb.b
  %i.acr = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 2 uses
  %i.acs = icmp eq ptr %i.bi, %i.acr
  br i1 %i.acs, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit581, label %.lr.ph.i576

.lr.ph.i576thread-pre-split:                      ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i579
  %.pr1321 = load i8, ptr %i.acu, align 1
  br label %.lr.ph.i576

.lr.ph.i576:                                      ; preds = %bb.dn, %.lr.ph.i576thread-pre-split
  %i.act = phi i8 [ %.pr1321, %.lr.ph.i576thread-pre-split ], [ 97, %bb.dn ]
  %.sroa.0.06.i577 = phi ptr [ %i.acu, %.lr.ph.i576thread-pre-split ], [ %i.bi, %bb.dn ] ; 7 uses
  switch i8 %i.act, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i579 [
    i8 32, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit581
    i8 9, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit581
    i8 13, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit581
    i8 10, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit581
    i8 0, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit581
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit581
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i579:    ; preds = %.lr.ph.i576
  %i.acu = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i577, i64 1 ; 5 uses
  %i.acv = icmp eq ptr %i.acu, %i.bh
  %i.acw = icmp eq ptr %i.acu, %i.acr
  %.0.i.i580 = or i1 %i.acv, %i.acw
  br i1 %.0.i.i580, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit581, label %.lr.ph.i576thread-pre-split, !llvm.loop !12

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit581: ; preds = %.lr.ph.i576, %.lr.ph.i576, %.lr.ph.i576, %.lr.ph.i576, %.lr.ph.i576, %.lr.ph.i576, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i579, %bb.dn
  %.sroa.0.0.lcssa.i578 = phi ptr [ %i.bi, %bb.dn ], [ %i.acu, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i579 ], [ %.sroa.0.06.i577, %.lr.ph.i576 ], [ %.sroa.0.06.i577, %.lr.ph.i576 ], [ %.sroa.0.06.i577, %.lr.ph.i576 ], [ %.sroa.0.06.i577, %.lr.ph.i576 ], [ %.sroa.0.06.i577, %.lr.ph.i576 ], [ %.sroa.0.06.i577, %.lr.ph.i576 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.ay, ptr %4, align 8
  store i64 0, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #22
  %i.acx = ptrtoint ptr %.sroa.0.0.lcssa.i578 to i64 ; 3 uses
  %i.acy = ptrtoint ptr %i.bi to i64              ; 2 uses
  %i.acz = sub i64 %i.acx, %i.acy                 ; 10 uses
  store i64 %i.acz, ptr %i.q, align 8
  %i.ada = icmp ugt i64 %i.acz, 15
  br i1 %i.ada, label %.noexc.i591, label %._crit_edge.i.i582

.noexc.i591:                                      ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit581
  %i.adb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc592 unwind label %bb.du ; 2 uses

.noexc592:                                        ; preds = %.noexc.i591
  store ptr %i.adb, ptr %4, align 8
  %i.adc = load i64, ptr %i.q, align 8            ; 2 uses
  store i64 %i.adc, ptr %i.ay, align 8
  br label %._crit_edge.i.i582

._crit_edge.i.i582:                               ; preds = %.noexc592, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit581
  %i.add = phi i64 [ %i.adc, %.noexc592 ], [ %i.acz, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit581 ]
  %i.ade = phi ptr [ %i.adb, %.noexc592 ], [ %i.ay, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit581 ] ; 7 uses
  %.not5.i.i.i583 = icmp eq ptr %i.bi, %.sroa.0.0.lcssa.i578
  br i1 %.not5.i.i.i583, label %bb.do, label %iter.check1394

iter.check1394:                                   ; preds = %._crit_edge.i.i582
  %i.adf = ptrtoaddr ptr %i.ade to i64
  %min.iters.check1377 = icmp ult i64 %i.acz, 4
  %i.adg = sub i64 %i.acy, %i.adf
  %diff.check1376 = icmp ugt i64 %i.adg, -32
  %or.cond1485 = select i1 %min.iters.check1377, i1 true, i1 %diff.check1376
  br i1 %or.cond1485, label %.lr.ph.i.i.i584.preheader, label %vector.main.loop.iter.check1378

vector.main.loop.iter.check1378:                  ; preds = %iter.check1394
  %min.iters.check1379 = icmp ult i64 %i.acz, 32
  br i1 %min.iters.check1379, label %vec.epilog.ph1398, label %vector.ph1380

vector.ph1380:                                    ; preds = %vector.main.loop.iter.check1378
  %n.mod.vf1381 = and i64 %i.acz, 28
  %n.vec1382 = and i64 %i.acz, -32                ; 5 uses
  %i.adh = getelementptr i8, ptr %i.ade, i64 %n.vec1382
  %i.adi = getelementptr i8, ptr %i.bi, i64 %n.vec1382
  br label %vector.body1383

vector.body1383:                                  ; preds = %vector.body1383, %vector.ph1380
  %index1384 = phi i64 [ 0, %vector.ph1380 ], [ %index.next1389, %vector.body1383 ] ; 3 uses
  %next.gep1385 = getelementptr i8, ptr %i.ade, i64 %index1384 ; 2 uses
  %next.gep1386 = getelementptr i8, ptr %i.bi, i64 %index1384 ; 2 uses
  %i.adj = getelementptr i8, ptr %next.gep1386, i64 16
  %wide.load1387 = load <16 x i8>, ptr %next.gep1386, align 1
  %wide.load1388 = load <16 x i8>, ptr %i.adj, align 1
  %i.adk = getelementptr i8, ptr %next.gep1385, i64 16
  store <16 x i8> %wide.load1387, ptr %next.gep1385, align 1
  store <16 x i8> %wide.load1388, ptr %i.adk, align 1
  %index.next1389 = add nuw i64 %index1384, 32    ; 2 uses
  %i.adl = icmp eq i64 %index.next1389, %n.vec1382
  br i1 %i.adl, label %middle.block1390, label %vector.body1383, !llvm.loop !26

middle.block1390:                                 ; preds = %vector.body1383
  %cmp.n1391 = icmp eq i64 %i.acz, %n.vec1382
  br i1 %cmp.n1391, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i588, label %vec.epilog.iter.check1396

vec.epilog.iter.check1396:                        ; preds = %middle.block1390
  %min.epilog.iters.check1397 = icmp eq i64 %n.mod.vf1381, 0
  br i1 %min.epilog.iters.check1397, label %.lr.ph.i.i.i584.preheader, label %vec.epilog.ph1398, !prof !16

vec.epilog.ph1398:                                ; preds = %vector.main.loop.iter.check1378, %vec.epilog.iter.check1396
  %vec.epilog.resume.val1392 = phi i64 [ %n.vec1382, %vec.epilog.iter.check1396 ], [ 0, %vector.main.loop.iter.check1378 ]
  %n.vec1400 = and i64 %i.acz, -4                 ; 4 uses
  %i.adm = getelementptr i8, ptr %i.ade, i64 %n.vec1400
  %i.adn = getelementptr i8, ptr %i.bi, i64 %n.vec1400
  br label %vec.epilog.vector.body1401

vec.epilog.vector.body1401:                       ; preds = %vec.epilog.vector.body1401, %vec.epilog.ph1398
  %index1402 = phi i64 [ %vec.epilog.resume.val1392, %vec.epilog.ph1398 ], [ %index.next1406, %vec.epilog.vector.body1401 ] ; 3 uses
  %next.gep1403 = getelementptr i8, ptr %i.ade, i64 %index1402
  %next.gep1404 = getelementptr i8, ptr %i.bi, i64 %index1402
  %wide.load1405 = load <4 x i8>, ptr %next.gep1404, align 1
  store <4 x i8> %wide.load1405, ptr %next.gep1403, align 1
  %index.next1406 = add nuw i64 %index1402, 4     ; 2 uses
  %i.ado = icmp eq i64 %index.next1406, %n.vec1400
  br i1 %i.ado, label %vec.epilog.middle.block1407, label %vec.epilog.vector.body1401, !llvm.loop !27

vec.epilog.middle.block1407:                      ; preds = %vec.epilog.vector.body1401
  %cmp.n1408 = icmp eq i64 %i.acz, %n.vec1400
  br i1 %cmp.n1408, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i588, label %.lr.ph.i.i.i584.preheader

.lr.ph.i.i.i584.preheader:                        ; preds = %iter.check1394, %vec.epilog.iter.check1396, %vec.epilog.middle.block1407
  %.07.i.i.i585.ph = phi ptr [ %i.ade, %iter.check1394 ], [ %i.adh, %vec.epilog.iter.check1396 ], [ %i.adm, %vec.epilog.middle.block1407 ] ; 2 uses
  %.sroa.02.06.i.i.i586.ph = phi ptr [ %i.bi, %iter.check1394 ], [ %i.adi, %vec.epilog.iter.check1396 ], [ %i.adn, %vec.epilog.middle.block1407 ] ; 3 uses
  %.sroa.02.06.i.i.i586.ph1493 = ptrtoaddr ptr %.sroa.02.06.i.i.i586.ph to i64 ; 2 uses
  %i.adp = sub i64 %i.acx, %.sroa.02.06.i.i.i586.ph1493
  %xtraiter1494 = and i64 %i.adp, 7               ; 2 uses
  %lcmp.mod1495.not = icmp eq i64 %xtraiter1494, 0
  br i1 %lcmp.mod1495.not, label %.lr.ph.i.i.i584.prol.loopexit, label %.lr.ph.i.i.i584.prol

.lr.ph.i.i.i584.prol:                             ; preds = %.lr.ph.i.i.i584.preheader, %.lr.ph.i.i.i584.prol
  %.07.i.i.i585.prol = phi ptr [ %i.ads, %.lr.ph.i.i.i584.prol ], [ %.07.i.i.i585.ph, %.lr.ph.i.i.i584.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i586.prol = phi ptr [ %i.adr, %.lr.ph.i.i.i584.prol ], [ %.sroa.02.06.i.i.i586.ph, %.lr.ph.i.i.i584.preheader ] ; 2 uses
  %prol.iter1496 = phi i64 [ %prol.iter1496.next, %.lr.ph.i.i.i584.prol ], [ 0, %.lr.ph.i.i.i584.preheader ]
  %i.adq = load i8, ptr %.sroa.02.06.i.i.i586.prol, align 1
  store i8 %i.adq, ptr %.07.i.i.i585.prol, align 1
  %i.adr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i586.prol, i64 1 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.07.i.i.i585.prol, i64 1 ; 2 uses
  %prol.iter1496.next = add i64 %prol.iter1496, 1 ; 2 uses
  %prol.iter1496.cmp.not = icmp eq i64 %prol.iter1496.next, %xtraiter1494
  br i1 %prol.iter1496.cmp.not, label %.lr.ph.i.i.i584.prol.loopexit, label %.lr.ph.i.i.i584.prol, !llvm.loop !28

.lr.ph.i.i.i584.prol.loopexit:                    ; preds = %.lr.ph.i.i.i584.prol, %.lr.ph.i.i.i584.preheader
  %.07.i.i.i585.unr = phi ptr [ %.07.i.i.i585.ph, %.lr.ph.i.i.i584.preheader ], [ %i.ads, %.lr.ph.i.i.i584.prol ]
  %.sroa.02.06.i.i.i586.unr = phi ptr [ %.sroa.02.06.i.i.i586.ph, %.lr.ph.i.i.i584.preheader ], [ %i.adr, %.lr.ph.i.i.i584.prol ]
  %i.adt = sub i64 %.sroa.02.06.i.i.i586.ph1493, %i.acx
  %i.adu = icmp ugt i64 %i.adt, -8
  br i1 %i.adu, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i588, label %.lr.ph.i.i.i584

.lr.ph.i.i.i584:                                  ; preds = %.lr.ph.i.i.i584.prol.loopexit, %.lr.ph.i.i.i584
  %.07.i.i.i585 = phi ptr [ %i.aes, %.lr.ph.i.i.i584 ], [ %.07.i.i.i585.unr, %.lr.ph.i.i.i584.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i586 = phi ptr [ %i.aer, %.lr.ph.i.i.i584 ], [ %.sroa.02.06.i.i.i586.unr, %.lr.ph.i.i.i584.prol.loopexit ] ; 9 uses
  %i.adv = load i8, ptr %.sroa.02.06.i.i.i586, align 1
  store i8 %i.adv, ptr %.07.i.i.i585, align 1
  %i.adw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i586, i64 1
  %i.adx = getelementptr inbounds nuw i8, ptr %.07.i.i.i585, i64 1
  %i.ady = load i8, ptr %i.adw, align 1
  store i8 %i.ady, ptr %i.adx, align 1
  %i.adz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i586, i64 2
  %i.aea = getelementptr inbounds nuw i8, ptr %.07.i.i.i585, i64 2
  %i.aeb = load i8, ptr %i.adz, align 1
  store i8 %i.aeb, ptr %i.aea, align 1
  %i.aec = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i586, i64 3
  %i.aed = getelementptr inbounds nuw i8, ptr %.07.i.i.i585, i64 3
  %i.aee = load i8, ptr %i.aec, align 1
  store i8 %i.aee, ptr %i.aed, align 1
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i586, i64 4
  %i.aeg = getelementptr inbounds nuw i8, ptr %.07.i.i.i585, i64 4
  %i.aeh = load i8, ptr %i.aef, align 1
  store i8 %i.aeh, ptr %i.aeg, align 1
  %i.aei = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i586, i64 5
  %i.aej = getelementptr inbounds nuw i8, ptr %.07.i.i.i585, i64 5
  %i.aek = load i8, ptr %i.aei, align 1
  store i8 %i.aek, ptr %i.aej, align 1
  %i.ael = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i586, i64 6
  %i.aem = getelementptr inbounds nuw i8, ptr %.07.i.i.i585, i64 6
  %i.aen = load i8, ptr %i.ael, align 1
  store i8 %i.aen, ptr %i.aem, align 1
  %i.aeo = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i586, i64 7
  %i.aep = getelementptr inbounds nuw i8, ptr %.07.i.i.i585, i64 7
  %i.aeq = load i8, ptr %i.aeo, align 1
  store i8 %i.aeq, ptr %i.aep, align 1
  %i.aer = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i586, i64 8 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.07.i.i.i585, i64 8
  %.not.i.i.i587.7 = icmp eq ptr %i.aer, %.sroa.0.0.lcssa.i578
  br i1 %.not.i.i.i587.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i588, label %.lr.ph.i.i.i584, !llvm.loop !29

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i588: ; preds = %.lr.ph.i.i.i584.prol.loopexit, %.lr.ph.i.i.i584, %vec.epilog.middle.block1407, %middle.block1390
  %.pre16.i.i589 = load i64, ptr %i.q, align 8
  %.pre17.i.i590 = load ptr, ptr %4, align 8
  br label %bb.do

bb.do:                                            ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i588, %._crit_edge.i.i582
  %i.aet = phi ptr [ %.pre17.i.i590, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i588 ], [ %i.ade, %._crit_edge.i.i582 ]
  %i.aeu = phi i64 [ %.pre16.i.i589, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i588 ], [ %i.add, %._crit_edge.i.i582 ] ; 2 uses
  store i64 %i.aeu, ptr %i.az, align 8
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aeu
  store i8 0, ptr %i.aev, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #22
  %.sroa.032.0.copyload = load ptr, ptr %i.af, align 8 ; 11 uses
  %i.aew = getelementptr inbounds i8, ptr %.sroa.032.0.copyload, i64 -1 ; 10 uses
  %i.aex = icmp eq ptr %.sroa.0.0.lcssa.i578, %.sroa.032.0.copyload
  %i.aey = icmp eq ptr %.sroa.0.0.lcssa.i578, %i.aew
  %.0.i6.i594 = select i1 %i.aex, i1 true, i1 %i.aey
  br i1 %.0.i6.i594, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit601, label %.lr.ph.i595

.lr.ph.i595:                                      ; preds = %bb.do, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i597
  %.sroa.0.07.i596 = phi ptr [ %i.afa, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i597 ], [ %.sroa.0.0.lcssa.i578, %bb.do ] ; 3 uses
  %i.aez = load i8, ptr %.sroa.0.07.i596, align 1
  switch i8 %i.aez, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit601 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i597
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i597
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i597:            ; preds = %.lr.ph.i595, %.lr.ph.i595
  %i.afa = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i596, i64 1 ; 4 uses
  %i.afb = icmp eq ptr %i.afa, %.sroa.032.0.copyload
  %i.afc = icmp eq ptr %i.afa, %i.aew
  %.0.i.i598 = select i1 %i.afb, i1 true, i1 %i.afc
  br i1 %.0.i.i598, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit601, label %.lr.ph.i595, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit601: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i597, %.lr.ph.i595, %bb.do
  %.sroa.0.0.lcssa.i600 = phi ptr [ %.sroa.0.0.lcssa.i578, %bb.do ], [ %i.afa, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i597 ], [ %.sroa.0.07.i596, %.lr.ph.i595 ] ; 9 uses
  store ptr %.sroa.0.0.lcssa.i600, ptr %i.ae, align 8
  %i.afd = load i64, ptr %i.az, align 8           ; 9 uses
  %.pre1113 = load ptr, ptr %4, align 8           ; 7 uses
  switch i64 %i.afd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit656.thread1069 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit604
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit607
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit629
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit656
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit604: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit601
  %i.afe = load i32, ptr %.pre1113, align 1
  %i.aff = xor i32 %i.afe, 1936289377
  %i.afg = getelementptr i8, ptr %.pre1113, i64 4
  %i.afh = load i8, ptr %i.afg, align 1
  %i.afi = zext i8 %i.afh to i32
  %i.afj = xor i32 %i.afi, 111
  %i.afk = or i32 %i.aff, %i.afj
  %i.afl = icmp ne i32 %i.afk, 0
  %i.afm = zext i1 %i.afl to i32
  %i.afn = icmp eq i32 %i.afm, 0
  br i1 %i.afn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit604.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit656.thread1069.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit607: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit601
  %bcmp.i606 = call i32 @bcmp(ptr %.pre1113, ptr nonnull @.str.11, i64 %i.afd)
  %i.afo = icmp eq i32 %bcmp.i606, 0
  br i1 %i.afo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit604.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit656.thread1069.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit604.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit607, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit604
  %i.afp = load ptr, ptr %i.ap, align 8           ; 2 uses
  %.not.i608 = icmp eq ptr %i.afp, null
  br i1 %.not.i608, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialEf.exit, label %bb.dp

bb.dp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit604.thread
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 64
  %i.afr = load ptr, ptr %i.afq, align 8          ; 2 uses
  %.not2.i609 = icmp eq ptr %i.afr, null
  br i1 %.not2.i609, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialEf.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 20744
  %i.aft = load ptr, ptr %i.aq, align 8           ; 3 uses
  %i.afu = icmp eq ptr %.sroa.0.0.lcssa.i600, %.sroa.032.0.copyload
  %i.afv = icmp eq ptr %.sroa.0.0.lcssa.i600, %i.aew
  %.0.i6.i.i.i.i612 = select i1 %i.afu, i1 true, i1 %i.afv
  br i1 %.0.i6.i.i.i.i612, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i617.preheader, label %.lr.ph.i.i.i.i613

.lr.ph.i.i.i.i613:                                ; preds = %bb.dq, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i615
  %.sroa.0.07.i.i.i.i614 = phi ptr [ %i.afx, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i615 ], [ %.sroa.0.0.lcssa.i600, %bb.dq ] ; 3 uses
  %i.afw = load i8, ptr %.sroa.0.07.i.i.i.i614, align 1
  switch i8 %i.afw, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i617.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i615
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i615
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i615:      ; preds = %.lr.ph.i.i.i.i613, %.lr.ph.i.i.i.i613
  %i.afx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i614, i64 1 ; 4 uses
  %i.afy = icmp eq ptr %i.afx, %.sroa.032.0.copyload
  %i.afz = icmp eq ptr %i.afx, %i.aew
  %.0.i.i.i.i.i616 = select i1 %i.afy, i1 true, i1 %i.afz
  br i1 %.0.i.i.i.i.i616, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i617.preheader, label %.lr.ph.i.i.i.i613, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i617.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i615, %.lr.ph.i.i.i.i613, %bb.dq
  %.sroa.0.0.i.i.i619.ph = phi ptr [ %.sroa.0.0.lcssa.i600, %bb.dq ], [ %i.afx, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i615 ], [ %.sroa.0.07.i.i.i.i614, %.lr.ph.i.i.i.i613 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i617

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i617: ; preds = %bb.ds, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i617.preheader
  %.sroa.0.0.i.i.i619 = phi ptr [ %.sroa.0.0.i.i.i619.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i617.preheader ], [ %i.agm, %bb.ds ] ; 13 uses
  %.0.i.i.i620 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i617.preheader ], [ %i.agl, %bb.ds ] ; 11 uses
  %i.aga = load i8, ptr %.sroa.0.0.i.i.i619, align 1 ; 2 uses
  switch i8 %i.aga, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i624 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i621
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i621
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i621
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i621
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i621
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i621
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i624: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i617
  %i.agb = icmp eq ptr %.sroa.0.0.i.i.i619, %.sroa.032.0.copyload
  %i.agc = icmp eq ptr %.sroa.0.0.i.i.i619, %i.aew
  %.0.i.i.i.i625 = select i1 %i.agb, i1 true, i1 %i.agc
  br i1 %.0.i.i.i.i625, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i621, label %bb.dr

bb.dr:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i624
  %i.agd = getelementptr inbounds nuw i8, ptr %i.aft, i64 %.0.i.i.i620
  store i8 %i.aga, ptr %i.agd, align 1
  %i.age = icmp eq i64 %.0.i.i.i620, 2046
  br i1 %i.age, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i621, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i617.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i617.1: ; preds = %bb.dr
  %i.agf = or disjoint i64 %.0.i.i.i620, 1        ; 8 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i619, i64 1 ; 10 uses
  %i.agh = load i8, ptr %i.agg, align 1           ; 2 uses
  switch i8 %i.agh, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i624.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i621
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i621
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i621
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i621
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i621
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i621
end_hunk_1
begin_hunk_2_@_ZN6Assimp18ObjFileMtlImporter4loadEv:bb.a
  store i64 %i.aie, ptr %i.bb, align 8, !alias.scope !33
  %i.aif = load ptr, ptr %5, align 8, !alias.scope !33
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 %i.aie
  store i8 0, ptr %i.aig, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22, !noalias !33
  %i.aih = load i64, ptr %i.az, align 8, !noalias !33
  %.not.i657 = icmp eq i64 %i.aih, 0
  br i1 %.not.i657, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i658

.lr.ph.i658:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %.lr.ph.i658
  %.06.i = phi i64 [ %i.aio, %.lr.ph.i658 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  %i.aii = load ptr, ptr %5, align 8, !alias.scope !33
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 %.06.i ; 2 uses
  %i.aik = load i8, ptr %i.aij, align 1
  %i.ail = zext i8 %i.aik to i32
  %i.aim = call i32 @tolower(i32 noundef %i.ail) #26
  %i.ain = trunc i32 %i.aim to i8
  store i8 %i.ain, ptr %i.aij, align 1
  %i.aio = add nuw i64 %.06.i, 1                  ; 2 uses
  %i.aip = load i64, ptr %i.az, align 8, !noalias !33
  %i.aiq = icmp ult i64 %i.aio, %i.aip
  br i1 %i.aiq, label %.lr.ph.i658, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !35

_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i658, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.air = load i64, ptr %i.bb, align 8           ; 2 uses
  %i.ais = icmp eq i64 %i.air, 19
  %.pre1114 = load ptr, ptr %5, align 8           ; 4 uses
  br i1 %i.ais, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ait = load i128, ptr %.pre1114, align 1
  %i.aiu = xor i128 %i.ait, 154696461895569654912241560699701653089
  %i.aiv = getelementptr i8, ptr %.pre1114, i64 3
  %i.aiw = load i128, ptr %i.aiv, align 1
  %i.aix = xor i128 %i.aiw, 146793563361274154606760908926215286643
  %i.aiy = or i128 %i.aiu, %i.aix
  %i.aiz = icmp ne i128 %i.aiy, 0
  %i.aja = zext i1 %i.aiz to i32
  %i.ajb = icmp eq i32 %i.aja, 0
  br label %bb.ee

bb.ee:                                            ; preds = %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.ed
  %.ph = phi i1 [ false, %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.ajb, %bb.ed ]
  %i.ajc = icmp eq ptr %.pre1114, %i.ba
  br i1 %i.ajc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i664, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i663

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i664: ; preds = %bb.ee
  %i.ajd = icmp ult i64 %i.air, 16
  call void @llvm.assume(i1 %i.ajd)
  br label %.critedge153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i663: ; preds = %bb.ee
  %i.aje = load i64, ptr %i.ba, align 8
  %i.ajf = add i64 %i.aje, 1
  call void @_ZdlPvm(ptr noundef %.pre1114, i64 noundef %i.ajf) #24
  br label %.critedge153

.critedge153:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i663, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i664
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.ph, label %.critedge153.thread, label %bb.el

.critedge153.thread:                              ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit656, %.critedge153
  %i.ajg = load ptr, ptr %i.ap, align 8           ; 2 uses
  %.not.i666 = icmp eq ptr %i.ajg, null
  br i1 %.not.i666, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialEf.exit, label %bb.ef

bb.ef:                                            ; preds = %.critedge153.thread
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 64
  %i.aji = load ptr, ptr %i.ajh, align 8          ; 3 uses
  %.not2.i667 = icmp eq ptr %i.aji, null
  br i1 %.not2.i667, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialEf.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 20748
  %.sroa.01.0.copyload.i.i668 = load ptr, ptr %i.ae, align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i669 = load ptr, ptr %i.af, align 8 ; 5 uses
  %i.ajk = load ptr, ptr %i.aq, align 8           ; 3 uses
  %i.ajl = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i669, i64 -1 ; 4 uses
  %i.ajm = icmp eq ptr %.sroa.01.0.copyload.i.i668, %.sroa.0.0.copyload.i.i669
  %i.ajn = icmp eq ptr %.sroa.01.0.copyload.i.i668, %i.ajl
  %.0.i6.i.i.i.i670 = select i1 %i.ajm, i1 true, i1 %i.ajn
  br i1 %.0.i6.i.i.i.i670, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.preheader, label %.lr.ph.i.i.i.i671

.lr.ph.i.i.i.i671:                                ; preds = %bb.eg, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i673
  %.sroa.0.07.i.i.i.i672 = phi ptr [ %i.ajp, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i673 ], [ %.sroa.01.0.copyload.i.i668, %bb.eg ] ; 3 uses
  %i.ajo = load i8, ptr %.sroa.0.07.i.i.i.i672, align 1
  switch i8 %i.ajo, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i673
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i673
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i673:      ; preds = %.lr.ph.i.i.i.i671, %.lr.ph.i.i.i.i671
  %i.ajp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i672, i64 1 ; 4 uses
  %i.ajq = icmp eq ptr %i.ajp, %.sroa.0.0.copyload.i.i669
  %i.ajr = icmp eq ptr %i.ajp, %i.ajl
  %.0.i.i.i.i.i674 = select i1 %i.ajq, i1 true, i1 %i.ajr
  br i1 %.0.i.i.i.i.i674, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.preheader, label %.lr.ph.i.i.i.i671, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i673, %.lr.ph.i.i.i.i671, %bb.eg
  %.sroa.0.0.i.i.i677.ph = phi ptr [ %.sroa.01.0.copyload.i.i668, %bb.eg ], [ %i.ajp, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i673 ], [ %.sroa.0.07.i.i.i.i672, %.lr.ph.i.i.i.i671 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675: ; preds = %bb.ei, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.preheader
  %.sroa.0.0.i.i.i677 = phi ptr [ %.sroa.0.0.i.i.i677.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.preheader ], [ %i.ake, %bb.ei ] ; 13 uses
  %.0.i.i.i678 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.preheader ], [ %i.akd, %bb.ei ] ; 11 uses
  %i.ajs = load i8, ptr %.sroa.0.0.i.i.i677, align 1 ; 2 uses
  switch i8 %i.ajs, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i686 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i686: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675
  %i.ajt = icmp eq ptr %.sroa.0.0.i.i.i677, %.sroa.0.0.copyload.i.i669
  %i.aju = icmp eq ptr %.sroa.0.0.i.i.i677, %i.ajl
  %.0.i.i.i.i687 = select i1 %i.ajt, i1 true, i1 %i.aju
  br i1 %.0.i.i.i.i687, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679, label %bb.eh

bb.eh:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i686
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajk, i64 %.0.i.i.i678
  store i8 %i.ajs, ptr %i.ajv, align 1
  %i.ajw = icmp eq i64 %.0.i.i.i678, 2046
  br i1 %i.ajw, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1: ; preds = %bb.eh
  %i.ajx = or disjoint i64 %.0.i.i.i678, 1        ; 8 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i677, i64 1 ; 10 uses
  %i.ajz = load i8, ptr %i.ajy, align 1           ; 2 uses
  switch i8 %i.ajz, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i686.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i686.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1
  %i.aka = icmp eq ptr %i.ajy, %.sroa.0.0.copyload.i.i669
  %i.akb = icmp eq ptr %i.ajy, %i.ajl
  %.0.i.i.i.i687.1 = select i1 %i.aka, i1 true, i1 %i.akb
  br i1 %.0.i.i.i.i687.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679, label %bb.ei

bb.ei:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i686.1
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajk, i64 %i.ajx
  store i8 %i.ajz, ptr %i.akc, align 1
  %i.akd = add nuw nsw i64 %.0.i.i.i678, 2
  %i.ake = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i677, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675, !llvm.loop !11

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i686.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1, %bb.eh, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i686, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675
  %.sroa.0.0.i.i.i677.lcssa = phi ptr [ %.sroa.0.0.i.i.i677, %bb.eh ], [ %.sroa.0.0.i.i.i677, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i686 ], [ %.sroa.0.0.i.i.i677, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675 ], [ %.sroa.0.0.i.i.i677, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675 ], [ %.sroa.0.0.i.i.i677, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675 ], [ %.sroa.0.0.i.i.i677, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675 ], [ %.sroa.0.0.i.i.i677, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675 ], [ %.sroa.0.0.i.i.i677, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675 ], [ %i.ajy, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1 ], [ %i.ajy, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1 ], [ %i.ajy, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1 ], [ %i.ajy, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1 ], [ %i.ajy, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1 ], [ %i.ajy, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1 ], [ %i.ajy, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i686.1 ]
  %.1.i.i.i680 = phi i64 [ 2047, %bb.eh ], [ %.0.i.i.i678, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i686 ], [ %.0.i.i.i678, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675 ], [ %.0.i.i.i678, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675 ], [ %.0.i.i.i678, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675 ], [ %.0.i.i.i678, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675 ], [ %.0.i.i.i678, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675 ], [ %.0.i.i.i678, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675 ], [ %i.ajx, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1 ], [ %i.ajx, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1 ], [ %i.ajx, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1 ], [ %i.ajx, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1 ], [ %i.ajx, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1 ], [ %i.ajx, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i675.1 ], [ %i.ajx, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i686.1 ]
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajk, i64 %.1.i.i.i680
  store i8 0, ptr %i.akf, align 1
  store ptr %.sroa.0.0.i.i.i677.lcssa, ptr %i.ae, align 8
  %i.akg = load ptr, ptr %i.aq, align 8           ; 2 uses
  %char0.i.i681 = load i8, ptr %i.akg, align 1
  %.not.i.i682 = icmp eq i8 %char0.i.i681, 0
  br i1 %.not.i.i682, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i683, label %bb.ej

bb.ej:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  store float 0.000000e+00, ptr %i.m, align 4
  %i.akh = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.akg, ptr noundef nonnull align 4 dereferenceable(4) %i.m, i1 noundef zeroext true)
          to label %.noexc688 unwind label %bb.dv ; 0 uses

.noexc688:                                        ; preds = %bb.ej
  %i.aki = load float, ptr %i.m, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i683

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i683: ; preds = %.noexc688, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679
  %.sink8.i.i684 = phi float [ %i.aki, %.noexc688 ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679 ]
  %.sink.i.i685 = phi i8 [ 1, %.noexc688 ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i679 ]
  store float %.sink8.i.i684, ptr %i.ajj, align 4
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aji, i64 20752
  store i8 %.sink.i.i685, ptr %i.akj, align 4
  br label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialEf.exit

bb.ek:                                            ; preds = %.noexc.i.i
  %i.akk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ep

bb.el:                                            ; preds = %.critedge153
  %i.akl = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.em unwind label %bb.dv

bb.em:                                            ; preds = %bb.el
  invoke void @_ZN6Assimp6Logger4warnIJRA20_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.akl, ptr noundef nonnull align 1 dereferenceable(20) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialEf.exit unwind label %bb.dv

_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialEf.exit: ; preds = %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i683, %bb.ef, %.critedge153.thread, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i647, %bb.dw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit629.thread, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit.i, %bb.dp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit604.thread, %bb.em
  %.sroa.028.0.copyload = load ptr, ptr %i.ae, align 8 ; 5 uses
  %.sroa.027.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %21 = ptrtoaddr ptr %.sroa.027.0.copyload to i64
  %.not.i690 = icmp ult ptr %.sroa.028.0.copyload, %.sroa.027.0.copyload
  br i1 %.not.i690, label %.preheader.i692, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit709

.preheader.i692:                                  ; preds = %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialEf.exit
  %i.akm = getelementptr inbounds i8, ptr %.sroa.027.0.copyload, i64 -1 ; 2 uses
  %i.akn = icmp eq ptr %.sroa.028.0.copyload, %i.akm
  br i1 %i.akn, label %.critedge.i695, label %.lr.ph.i693

.lr.ph.i693:                                      ; preds = %.preheader.i692, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i707
  %.sroa.010.021.i694 = phi ptr [ %i.akp, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i707 ], [ %.sroa.028.0.copyload, %.preheader.i692 ] ; 6 uses
  %i.ako = load i8, ptr %.sroa.010.021.i694, align 1
  switch i8 %i.ako, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i707 [
    i8 13, label %.critedge.i695
    i8 10, label %.critedge.i695
    i8 0, label %.critedge.i695
    i8 12, label %.critedge.i695
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i707:            ; preds = %.lr.ph.i693
  %i.akp = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i694, i64 1 ; 4 uses
  %i.akq = icmp eq ptr %i.akp, %.sroa.027.0.copyload
  %i.akr = icmp eq ptr %i.akp, %i.akm
  %.0.i.i708 = or i1 %i.akq, %i.akr
  br i1 %.0.i.i708, label %.critedge.i695, label %.lr.ph.i693, !llvm.loop !8

.critedge.i695:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i707, %.lr.ph.i693, %.lr.ph.i693, %.lr.ph.i693, %.lr.ph.i693, %.preheader.i692
  %.sroa.010.0.lcssa.i696 = phi ptr [ %.sroa.028.0.copyload, %.preheader.i692 ], [ %i.akp, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i707 ], [ %.sroa.010.021.i694, %.lr.ph.i693 ], [ %.sroa.010.021.i694, %.lr.ph.i693 ], [ %.sroa.010.021.i694, %.lr.ph.i693 ], [ %.sroa.010.021.i694, %.lr.ph.i693 ] ; 3 uses
  %.not19.i697 = icmp eq ptr %.sroa.010.0.lcssa.i696, %.sroa.027.0.copyload
  br i1 %.not19.i697, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %.critedge.i695
  %i.aks = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i696, i64 1
  %i.akt = load i32, ptr %i.ar, align 8
  %i.aku = add i32 %i.akt, 1
  store i32 %i.aku, ptr %i.ar, align 8
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.critedge.i695
  %.sroa.010.1.i698 = phi ptr [ %i.aks, %bb.en ], [ %.sroa.010.0.lcssa.i696, %.critedge.i695 ] ; 5 uses
  %.not2030.i699 = icmp eq ptr %.sroa.010.1.i698, %.sroa.027.0.copyload
  br i1 %.not2030.i699, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit709, label %.lr.ph32.preheader.i700

.lr.ph32.preheader.i700:                          ; preds = %bb.eo
  %.sroa.010.136.i701 = ptrtoaddr ptr %.sroa.010.1.i698 to i64
  %i.akv = sub i64 %21, %.sroa.010.136.i701
  %scevgep.i702 = getelementptr i8, ptr %.sroa.010.1.i698, i64 %i.akv
  br label %.lr.ph32.i703

.lr.ph32.i703:                                    ; preds = %.critedge4.i705, %.lr.ph32.preheader.i700
  %.sroa.010.231.i704 = phi ptr [ %i.akx, %.critedge4.i705 ], [ %.sroa.010.1.i698, %.lr.ph32.preheader.i700 ] ; 3 uses
  %i.akw = load i8, ptr %.sroa.010.231.i704, align 1
  switch i8 %i.akw, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit709 [
    i8 9, label %.critedge4.i705
    i8 32, label %.critedge4.i705
  ]

.critedge4.i705:                                  ; preds = %.lr.ph32.i703, %.lr.ph32.i703
  %i.akx = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i704, i64 1 ; 2 uses
  %.not20.i706 = icmp eq ptr %i.akx, %.sroa.027.0.copyload
  br i1 %.not20.i706, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit709, label %.lr.ph32.i703, !llvm.loop !9

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit709: ; preds = %.critedge4.i705, %.lr.ph32.i703, %bb.eo, %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialEf.exit
  %.sroa.010.3.i691 = phi ptr [ %.sroa.028.0.copyload, %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialEf.exit ], [ %.sroa.010.1.i698, %bb.eo ], [ %.sroa.010.231.i704, %.lr.ph32.i703 ], [ %scevgep.i702, %.critedge4.i705 ]
  store ptr %.sroa.010.3.i691, ptr %i.ae, align 8
  %i.aky = load ptr, ptr %4, align 8              ; 2 uses
  %i.akz = icmp eq ptr %i.aky, %i.ay
  br i1 %i.akz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i710

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i710: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit709
  %i.ala = load i64, ptr %i.ay, align 8
  %i.alb = add i64 %i.ala, 1
  call void @_ZdlPvm(ptr noundef %i.aky, i64 noundef %i.alb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit709, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i710
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.hl

bb.ep:                                            ; preds = %bb.ek, %bb.dv
  %.pn127 = phi { ptr, i32 } [ %i.akk, %bb.ek ], [ %i.agt, %bb.dv ] ; 2 uses
  %i.alc = load ptr, ptr %4, align 8              ; 2 uses
  %i.ald = icmp eq ptr %i.alc, %i.ay
  br i1 %i.ald, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713: ; preds = %bb.ep
  %i.ale = load i64, ptr %i.ay, align 8
  %i.alf = add i64 %i.ale, 1
  call void @_ZdlPvm(ptr noundef %i.alc, i64 noundef %i.alf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713, %bb.du
  %.pn127.pn = phi { ptr, i32 } [ %i.ags, %bb.du ], [ %.pn127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713 ], [ %.pn127, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.hm

bb.eq:                                            ; preds = %bb.b
  %i.alg = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 2 uses
  %i.alh = icmp eq ptr %i.bi, %i.alg
  br i1 %i.alh, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722, label %.lr.ph.i717

.lr.ph.i717thread-pre-split:                      ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i720
  %.pr1323 = load i8, ptr %i.alj, align 1
  br label %.lr.ph.i717

.lr.ph.i717:                                      ; preds = %bb.eq, %.lr.ph.i717thread-pre-split
  %i.ali = phi i8 [ %.pr1323, %.lr.ph.i717thread-pre-split ], [ 115, %bb.eq ]
  %.sroa.0.06.i718 = phi ptr [ %i.alj, %.lr.ph.i717thread-pre-split ], [ %i.bi, %bb.eq ] ; 7 uses
  switch i8 %i.ali, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i720 [
    i8 32, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722
    i8 9, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722
    i8 13, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722
    i8 10, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722
    i8 0, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i720:    ; preds = %.lr.ph.i717
  %i.alj = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i718, i64 1 ; 5 uses
  %i.alk = icmp eq ptr %i.alj, %i.bh
  %i.all = icmp eq ptr %i.alj, %i.alg
  %.0.i.i721 = or i1 %i.alk, %i.all
  br i1 %.0.i.i721, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722, label %.lr.ph.i717thread-pre-split, !llvm.loop !12

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722: ; preds = %.lr.ph.i717, %.lr.ph.i717, %.lr.ph.i717, %.lr.ph.i717, %.lr.ph.i717, %.lr.ph.i717, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i720, %bb.eq
  %.sroa.0.0.lcssa.i719 = phi ptr [ %i.bi, %bb.eq ], [ %i.alj, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i720 ], [ %.sroa.0.06.i718, %.lr.ph.i717 ], [ %.sroa.0.06.i718, %.lr.ph.i717 ], [ %.sroa.0.06.i718, %.lr.ph.i717 ], [ %.sroa.0.06.i718, %.lr.ph.i717 ], [ %.sroa.0.06.i718, %.lr.ph.i717 ], [ %.sroa.0.06.i718, %.lr.ph.i717 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.as, ptr %6, align 8
  store i64 0, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  %i.alm = ptrtoint ptr %.sroa.0.0.lcssa.i719 to i64 ; 3 uses
  %i.aln = ptrtoint ptr %i.bi to i64              ; 2 uses
  %i.alo = sub i64 %i.alm, %i.aln                 ; 10 uses
  store i64 %i.alo, ptr %i.l, align 8
  %i.alp = icmp ugt i64 %i.alo, 15
  br i1 %i.alp, label %.noexc.i732, label %._crit_edge.i.i723

.noexc.i732:                                      ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722
  %i.alq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc733 unwind label %bb.ex ; 2 uses

.noexc733:                                        ; preds = %.noexc.i732
  store ptr %i.alq, ptr %6, align 8
  %i.alr = load i64, ptr %i.l, align 8            ; 2 uses
  store i64 %i.alr, ptr %i.as, align 8
  br label %._crit_edge.i.i723

._crit_edge.i.i723:                               ; preds = %.noexc733, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722
  %i.als = phi i64 [ %i.alr, %.noexc733 ], [ %i.alo, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722 ]
  %i.alt = phi ptr [ %i.alq, %.noexc733 ], [ %i.as, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722 ] ; 7 uses
  %.not5.i.i.i724 = icmp eq ptr %i.bi, %.sroa.0.0.lcssa.i719
  br i1 %.not5.i.i.i724, label %bb.er, label %iter.check1430

iter.check1430:                                   ; preds = %._crit_edge.i.i723
  %i.alu = ptrtoaddr ptr %i.alt to i64
  %min.iters.check1413 = icmp ult i64 %i.alo, 4
  %i.alv = sub i64 %i.aln, %i.alu
  %diff.check1412 = icmp ugt i64 %i.alv, -32
  %or.cond1486 = select i1 %min.iters.check1413, i1 true, i1 %diff.check1412
  br i1 %or.cond1486, label %.lr.ph.i.i.i725.preheader, label %vector.main.loop.iter.check1414

vector.main.loop.iter.check1414:                  ; preds = %iter.check1430
  %min.iters.check1415 = icmp ult i64 %i.alo, 32
  br i1 %min.iters.check1415, label %vec.epilog.ph1434, label %vector.ph1416

vector.ph1416:                                    ; preds = %vector.main.loop.iter.check1414
  %n.mod.vf1417 = and i64 %i.alo, 28
  %n.vec1418 = and i64 %i.alo, -32                ; 5 uses
  %i.alw = getelementptr i8, ptr %i.alt, i64 %n.vec1418
  %i.alx = getelementptr i8, ptr %i.bi, i64 %n.vec1418
  br label %vector.body1419

vector.body1419:                                  ; preds = %vector.body1419, %vector.ph1416
  %index1420 = phi i64 [ 0, %vector.ph1416 ], [ %index.next1425, %vector.body1419 ] ; 3 uses
  %next.gep1421 = getelementptr i8, ptr %i.alt, i64 %index1420 ; 2 uses
  %next.gep1422 = getelementptr i8, ptr %i.bi, i64 %index1420 ; 2 uses
  %i.aly = getelementptr i8, ptr %next.gep1422, i64 16
  %wide.load1423 = load <16 x i8>, ptr %next.gep1422, align 1
  %wide.load1424 = load <16 x i8>, ptr %i.aly, align 1
  %i.alz = getelementptr i8, ptr %next.gep1421, i64 16
  store <16 x i8> %wide.load1423, ptr %next.gep1421, align 1
  store <16 x i8> %wide.load1424, ptr %i.alz, align 1
  %index.next1425 = add nuw i64 %index1420, 32    ; 2 uses
  %i.ama = icmp eq i64 %index.next1425, %n.vec1418
  br i1 %i.ama, label %middle.block1426, label %vector.body1419, !llvm.loop !36

middle.block1426:                                 ; preds = %vector.body1419
  %cmp.n1427 = icmp eq i64 %i.alo, %n.vec1418
  br i1 %cmp.n1427, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729, label %vec.epilog.iter.check1432

vec.epilog.iter.check1432:                        ; preds = %middle.block1426
  %min.epilog.iters.check1433 = icmp eq i64 %n.mod.vf1417, 0
  br i1 %min.epilog.iters.check1433, label %.lr.ph.i.i.i725.preheader, label %vec.epilog.ph1434, !prof !16

vec.epilog.ph1434:                                ; preds = %vector.main.loop.iter.check1414, %vec.epilog.iter.check1432
  %vec.epilog.resume.val1428 = phi i64 [ %n.vec1418, %vec.epilog.iter.check1432 ], [ 0, %vector.main.loop.iter.check1414 ]
  %n.vec1436 = and i64 %i.alo, -4                 ; 4 uses
  %i.amb = getelementptr i8, ptr %i.alt, i64 %n.vec1436
  %i.amc = getelementptr i8, ptr %i.bi, i64 %n.vec1436
  br label %vec.epilog.vector.body1437

vec.epilog.vector.body1437:                       ; preds = %vec.epilog.vector.body1437, %vec.epilog.ph1434
  %index1438 = phi i64 [ %vec.epilog.resume.val1428, %vec.epilog.ph1434 ], [ %index.next1442, %vec.epilog.vector.body1437 ] ; 3 uses
  %next.gep1439 = getelementptr i8, ptr %i.alt, i64 %index1438
  %next.gep1440 = getelementptr i8, ptr %i.bi, i64 %index1438
  %wide.load1441 = load <4 x i8>, ptr %next.gep1440, align 1
  store <4 x i8> %wide.load1441, ptr %next.gep1439, align 1
  %index.next1442 = add nuw i64 %index1438, 4     ; 2 uses
  %i.amd = icmp eq i64 %index.next1442, %n.vec1436
  br i1 %i.amd, label %vec.epilog.middle.block1443, label %vec.epilog.vector.body1437, !llvm.loop !37

vec.epilog.middle.block1443:                      ; preds = %vec.epilog.vector.body1437
  %cmp.n1444 = icmp eq i64 %i.alo, %n.vec1436
  br i1 %cmp.n1444, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729, label %.lr.ph.i.i.i725.preheader

.lr.ph.i.i.i725.preheader:                        ; preds = %iter.check1430, %vec.epilog.iter.check1432, %vec.epilog.middle.block1443
  %.07.i.i.i726.ph = phi ptr [ %i.alt, %iter.check1430 ], [ %i.alw, %vec.epilog.iter.check1432 ], [ %i.amb, %vec.epilog.middle.block1443 ] ; 2 uses
  %.sroa.02.06.i.i.i727.ph = phi ptr [ %i.bi, %iter.check1430 ], [ %i.alx, %vec.epilog.iter.check1432 ], [ %i.amc, %vec.epilog.middle.block1443 ] ; 3 uses
  %.sroa.02.06.i.i.i727.ph1489 = ptrtoaddr ptr %.sroa.02.06.i.i.i727.ph to i64 ; 2 uses
  %i.ame = sub i64 %i.alm, %.sroa.02.06.i.i.i727.ph1489
  %xtraiter1490 = and i64 %i.ame, 7               ; 2 uses
  %lcmp.mod1491.not = icmp eq i64 %xtraiter1490, 0
  br i1 %lcmp.mod1491.not, label %.lr.ph.i.i.i725.prol.loopexit, label %.lr.ph.i.i.i725.prol

.lr.ph.i.i.i725.prol:                             ; preds = %.lr.ph.i.i.i725.preheader, %.lr.ph.i.i.i725.prol
  %.07.i.i.i726.prol = phi ptr [ %i.amh, %.lr.ph.i.i.i725.prol ], [ %.07.i.i.i726.ph, %.lr.ph.i.i.i725.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i727.prol = phi ptr [ %i.amg, %.lr.ph.i.i.i725.prol ], [ %.sroa.02.06.i.i.i727.ph, %.lr.ph.i.i.i725.preheader ] ; 2 uses
  %prol.iter1492 = phi i64 [ %prol.iter1492.next, %.lr.ph.i.i.i725.prol ], [ 0, %.lr.ph.i.i.i725.preheader ]
  %i.amf = load i8, ptr %.sroa.02.06.i.i.i727.prol, align 1
  store i8 %i.amf, ptr %.07.i.i.i726.prol, align 1
  %i.amg = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727.prol, i64 1 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %.07.i.i.i726.prol, i64 1 ; 2 uses
  %prol.iter1492.next = add i64 %prol.iter1492, 1 ; 2 uses
  %prol.iter1492.cmp.not = icmp eq i64 %prol.iter1492.next, %xtraiter1490
  br i1 %prol.iter1492.cmp.not, label %.lr.ph.i.i.i725.prol.loopexit, label %.lr.ph.i.i.i725.prol, !llvm.loop !38

.lr.ph.i.i.i725.prol.loopexit:                    ; preds = %.lr.ph.i.i.i725.prol, %.lr.ph.i.i.i725.preheader
  %.07.i.i.i726.unr = phi ptr [ %.07.i.i.i726.ph, %.lr.ph.i.i.i725.preheader ], [ %i.amh, %.lr.ph.i.i.i725.prol ]
  %.sroa.02.06.i.i.i727.unr = phi ptr [ %.sroa.02.06.i.i.i727.ph, %.lr.ph.i.i.i725.preheader ], [ %i.amg, %.lr.ph.i.i.i725.prol ]
  %i.ami = sub i64 %.sroa.02.06.i.i.i727.ph1489, %i.alm
  %i.amj = icmp ugt i64 %i.ami, -8
  br i1 %i.amj, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729, label %.lr.ph.i.i.i725

.lr.ph.i.i.i725:                                  ; preds = %.lr.ph.i.i.i725.prol.loopexit, %.lr.ph.i.i.i725
  %.07.i.i.i726 = phi ptr [ %i.anh, %.lr.ph.i.i.i725 ], [ %.07.i.i.i726.unr, %.lr.ph.i.i.i725.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i727 = phi ptr [ %i.ang, %.lr.ph.i.i.i725 ], [ %.sroa.02.06.i.i.i727.unr, %.lr.ph.i.i.i725.prol.loopexit ] ; 9 uses
  %i.amk = load i8, ptr %.sroa.02.06.i.i.i727, align 1
  store i8 %i.amk, ptr %.07.i.i.i726, align 1
  %i.aml = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 1
  %i.amm = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 1
  %i.amn = load i8, ptr %i.aml, align 1
  store i8 %i.amn, ptr %i.amm, align 1
  %i.amo = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 2
  %i.amp = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 2
  %i.amq = load i8, ptr %i.amo, align 1
  store i8 %i.amq, ptr %i.amp, align 1
  %i.amr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 3
  %i.ams = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 3
  %i.amt = load i8, ptr %i.amr, align 1
  store i8 %i.amt, ptr %i.ams, align 1
  %i.amu = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 4
  %i.amv = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 4
  %i.amw = load i8, ptr %i.amu, align 1
  store i8 %i.amw, ptr %i.amv, align 1
  %i.amx = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 5
  %i.amy = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 5
  %i.amz = load i8, ptr %i.amx, align 1
  store i8 %i.amz, ptr %i.amy, align 1
  %i.ana = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 6
  %i.anb = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 6
  %i.anc = load i8, ptr %i.ana, align 1
  store i8 %i.anc, ptr %i.anb, align 1
  %i.and = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 7
  %i.ane = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 7
  %i.anf = load i8, ptr %i.and, align 1
  store i8 %i.anf, ptr %i.ane, align 1
  %i.ang = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 8 ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 8
  %.not.i.i.i728.7 = icmp eq ptr %i.ang, %.sroa.0.0.lcssa.i719
  br i1 %.not.i.i.i728.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729, label %.lr.ph.i.i.i725, !llvm.loop !39

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729: ; preds = %.lr.ph.i.i.i725.prol.loopexit, %.lr.ph.i.i.i725, %vec.epilog.middle.block1443, %middle.block1426
  %.pre16.i.i730 = load i64, ptr %i.l, align 8
  %.pre17.i.i731 = load ptr, ptr %6, align 8
  br label %bb.er

bb.er:                                            ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729, %._crit_edge.i.i723
  %i.ani = phi ptr [ %.pre17.i.i731, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729 ], [ %i.alt, %._crit_edge.i.i723 ]
  %i.anj = phi i64 [ %.pre16.i.i730, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729 ], [ %i.als, %._crit_edge.i.i723 ] ; 2 uses
  store i64 %i.anj, ptr %i.at, align 8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ani, i64 %i.anj
  store i8 0, ptr %i.ank, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  %.sroa.018.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %i.anl = getelementptr inbounds i8, ptr %.sroa.018.0.copyload, i64 -1 ; 6 uses
  %i.anm = icmp eq ptr %.sroa.0.0.lcssa.i719, %.sroa.018.0.copyload
  %i.ann = icmp eq ptr %.sroa.0.0.lcssa.i719, %i.anl
  %.0.i6.i735 = select i1 %i.anm, i1 true, i1 %i.ann
  br i1 %.0.i6.i735, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit742, label %.lr.ph.i736

.lr.ph.i736:                                      ; preds = %bb.er, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i738
  %.sroa.0.07.i737 = phi ptr [ %i.anp, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i738 ], [ %.sroa.0.0.lcssa.i719, %bb.er ] ; 3 uses
  %i.ano = load i8, ptr %.sroa.0.07.i737, align 1
  switch i8 %i.ano, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit742 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i738
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i738
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i738:            ; preds = %.lr.ph.i736, %.lr.ph.i736
  %i.anp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i737, i64 1 ; 4 uses
  %i.anq = icmp eq ptr %i.anp, %.sroa.018.0.copyload
  %i.anr = icmp eq ptr %i.anp, %i.anl
  %.0.i.i739 = select i1 %i.anq, i1 true, i1 %i.anr
  br i1 %.0.i.i739, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit742, label %.lr.ph.i736, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit742: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i738, %.lr.ph.i736, %bb.er
  %.sroa.0.0.lcssa.i741 = phi ptr [ %.sroa.0.0.lcssa.i719, %bb.er ], [ %i.anp, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i738 ], [ %.sroa.0.07.i737, %.lr.ph.i736 ] ; 5 uses
  store ptr %.sroa.0.0.lcssa.i741, ptr %i.ae, align 8
  %i.ans = load i64, ptr %i.at, align 8           ; 6 uses
  %cond1074 = icmp eq i64 %i.ans, 10
  %.pre1106 = load ptr, ptr %6, align 8           ; 6 uses
  br i1 %cond1074, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit748.thread1071

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit742
  %i.ant = load i64, ptr %.pre1106, align 1
  %i.anu = xor i64 %i.ant, 7018422918076069235
  %i.anv = getelementptr i8, ptr %.pre1106, i64 8
  %i.anw = load i16, ptr %i.anv, align 1
  %i.anx = zext i16 %i.anw to i64
  %i.any = xor i64 %i.anx, 25955
  %i.anz = or i64 %i.anu, %i.any
  %i.aoa = icmp ne i64 %i.anz, 0
  %i.aob = zext i1 %i.aoa to i32
  %i.aoc = icmp eq i32 %i.aob, 0
  br i1 %i.aoc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit748

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit748: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745
  %i.aod = load i64, ptr %.pre1106, align 1
  %i.aoe = xor i64 %i.aod, 7598247072170599283
  %i.aof = getelementptr i8, ptr %.pre1106, i64 8
  %i.aog = load i16, ptr %i.aof, align 1
  %i.aoh = zext i16 %i.aog to i64
  %i.aoi = xor i64 %i.aoh, 26478
  %i.aoj = or i64 %i.aoe, %i.aoi
  %i.aok = icmp ne i64 %i.aoj, 0
  %i.aol = zext i1 %i.aok to i32
  %i.aom = icmp eq i32 %i.aol, 0
  br i1 %i.aom, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745.thread, label %._crit_edge.i.i.i773.thread

._crit_edge.i.i.i773.thread:                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit748
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  store ptr %i.au, ptr %7, align 8, !alias.scope !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22, !noalias !40
  store i64 %i.ans, ptr %i.j, align 8, !noalias !40
  br label %bb.fa

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit748, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745
  %i.aon = load ptr, ptr %i.ap, align 8           ; 2 uses
  %.not.i749 = icmp eq ptr %i.aon, null
  br i1 %.not.i749, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772, label %bb.es

bb.es:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745.thread
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 64
  %i.aop = load ptr, ptr %i.aoo, align 8          ; 3 uses
  %.not2.i750 = icmp eq ptr %i.aop, null
  br i1 %.not2.i750, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 20756
  %i.aor = load ptr, ptr %i.aq, align 8           ; 3 uses
  %i.aos = icmp eq ptr %.sroa.0.0.lcssa.i741, %.sroa.018.0.copyload
  %i.aot = icmp eq ptr %.sroa.0.0.lcssa.i741, %i.anl
  %.0.i6.i.i.i.i753 = select i1 %i.aos, i1 true, i1 %i.aot
  br i1 %.0.i6.i.i.i.i753, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.preheader, label %.lr.ph.i.i.i.i754

.lr.ph.i.i.i.i754:                                ; preds = %bb.et, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i756
  %.sroa.0.07.i.i.i.i755 = phi ptr [ %i.aov, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i756 ], [ %.sroa.0.0.lcssa.i741, %bb.et ] ; 3 uses
  %i.aou = load i8, ptr %.sroa.0.07.i.i.i.i755, align 1
  switch i8 %i.aou, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i756
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i756
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i756:      ; preds = %.lr.ph.i.i.i.i754, %.lr.ph.i.i.i.i754
  %i.aov = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i755, i64 1 ; 4 uses
  %i.aow = icmp eq ptr %i.aov, %.sroa.018.0.copyload
  %i.aox = icmp eq ptr %i.aov, %i.anl
  %.0.i.i.i.i.i757 = select i1 %i.aow, i1 true, i1 %i.aox
  br i1 %.0.i.i.i.i.i757, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.preheader, label %.lr.ph.i.i.i.i754, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i756, %.lr.ph.i.i.i.i754, %bb.et
  %.sroa.0.0.i.i.i760.ph = phi ptr [ %.sroa.0.0.lcssa.i741, %bb.et ], [ %i.aov, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i756 ], [ %.sroa.0.07.i.i.i.i755, %.lr.ph.i.i.i.i754 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758: ; preds = %bb.ev, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.preheader
  %.sroa.0.0.i.i.i760 = phi ptr [ %.sroa.0.0.i.i.i760.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.preheader ], [ %i.apk, %bb.ev ] ; 13 uses
  %.0.i.i.i761 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.preheader ], [ %i.apj, %bb.ev ] ; 11 uses
  %i.aoy = load i8, ptr %.sroa.0.0.i.i.i760, align 1 ; 2 uses
  switch i8 %i.aoy, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758
  %i.aoz = icmp eq ptr %.sroa.0.0.i.i.i760, %.sroa.018.0.copyload
  %i.apa = icmp eq ptr %.sroa.0.0.i.i.i760, %i.anl
  %.0.i.i.i.i770 = select i1 %i.aoz, i1 true, i1 %i.apa
  br i1 %.0.i.i.i.i770, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762, label %bb.eu

bb.eu:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aor, i64 %.0.i.i.i761
  store i8 %i.aoy, ptr %i.apb, align 1
  %i.apc = icmp eq i64 %.0.i.i.i761, 2046
  br i1 %i.apc, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1
end_hunk_2
begin_hunk_3_@_ZN6Assimp18ObjFileMtlImporter4loadEv:bb.a
  %i.aue = load ptr, ptr %8, align 8, !alias.scope !48
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 %i.aud
  store i8 0, ptr %i.auf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22, !noalias !48
  %i.aug = load i64, ptr %i.at, align 8, !noalias !48
  %.not.i840 = icmp eq i64 %i.aug, 0
  br i1 %.not.i840, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit845, label %.lr.ph.i841

.lr.ph.i841:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i839, %.lr.ph.i841
  %.06.i842 = phi i64 [ %i.aun, %.lr.ph.i841 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i839 ] ; 2 uses
  %i.auh = load ptr, ptr %8, align 8, !alias.scope !48
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 %.06.i842 ; 2 uses
  %i.auj = load i8, ptr %i.aui, align 1
  %i.auk = zext i8 %i.auj to i32
  %i.aul = call i32 @tolower(i32 noundef %i.auk) #26
  %i.aum = trunc i32 %i.aul to i8
  store i8 %i.aum, ptr %i.aui, align 1
  %i.aun = add nuw i64 %.06.i842, 1               ; 2 uses
  %i.auo = load i64, ptr %i.at, align 8, !noalias !48
  %i.aup = icmp ult i64 %i.aun, %i.auo
  br i1 %i.aup, label %.lr.ph.i841, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit845, !llvm.loop !35

_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit845: ; preds = %.lr.ph.i841, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i839
  %i.auq = load i64, ptr %i.ax, align 8           ; 2 uses
  %i.aur = icmp eq i64 %i.auq, 9
  %.pre1109 = load ptr, ptr %8, align 8           ; 4 uses
  br i1 %i.aur, label %bb.fr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit848

bb.fr:                                            ; preds = %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit845
  %i.aus = load i64, ptr %.pre1109, align 1
  %i.aut = xor i64 %i.aus, 7956018234223061107
  %i.auu = getelementptr i8, ptr %.pre1109, i64 8
  %i.auv = load i8, ptr %i.auu, align 1
  %i.auw = zext i8 %i.auv to i64
  %i.aux = xor i64 %i.auw, 116
  %i.auy = or i64 %i.aut, %i.aux
  %i.auz = icmp ne i64 %i.auy, 0
  %i.ava = zext i1 %i.auz to i32
  %i.avb = icmp eq i32 %i.ava, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit848

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit848: ; preds = %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit845, %bb.fr
  %i.avc = phi i1 [ false, %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit845 ], [ %i.avb, %bb.fr ]
  %i.avd = icmp eq ptr %.pre1109, %i.aw
  br i1 %i.avd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i850, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i849

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i850: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit848
  %i.ave = icmp ult i64 %i.auq, 16
  call void @llvm.assume(i1 %i.ave)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i849: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit848
  %i.avf = load i64, ptr %i.aw, align 8
  %i.avg = add i64 %i.avf, 1
  call void @_ZdlPvm(ptr noundef %.pre1109, i64 noundef %i.avg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i850, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i849
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.avc, label %bb.fs, label %bb.fz

bb.fs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851
  %i.avh = load ptr, ptr %i.ap, align 8           ; 2 uses
  %.not.i852 = icmp eq ptr %i.avh, null
  br i1 %.not.i852, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 64
  %i.avj = load ptr, ptr %i.avi, align 8          ; 3 uses
  %.not2.i853 = icmp eq ptr %i.avj, null
  br i1 %.not2.i853, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 20704
  %.sroa.01.0.copyload.i.i854 = load ptr, ptr %i.ae, align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i855 = load ptr, ptr %i.af, align 8 ; 5 uses
  %i.avl = load ptr, ptr %i.aq, align 8           ; 3 uses
  %i.avm = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i855, i64 -1 ; 4 uses
  %i.avn = icmp eq ptr %.sroa.01.0.copyload.i.i854, %.sroa.0.0.copyload.i.i855
  %i.avo = icmp eq ptr %.sroa.01.0.copyload.i.i854, %i.avm
  %.0.i6.i.i.i.i856 = select i1 %i.avn, i1 true, i1 %i.avo
  br i1 %.0.i6.i.i.i.i856, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.preheader, label %.lr.ph.i.i.i.i857

.lr.ph.i.i.i.i857:                                ; preds = %bb.fu, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i859
  %.sroa.0.07.i.i.i.i858 = phi ptr [ %i.avq, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i859 ], [ %.sroa.01.0.copyload.i.i854, %bb.fu ] ; 3 uses
  %i.avp = load i8, ptr %.sroa.0.07.i.i.i.i858, align 1
  switch i8 %i.avp, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i859
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i859
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i859:      ; preds = %.lr.ph.i.i.i.i857, %.lr.ph.i.i.i.i857
  %i.avq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i858, i64 1 ; 4 uses
  %i.avr = icmp eq ptr %i.avq, %.sroa.0.0.copyload.i.i855
  %i.avs = icmp eq ptr %i.avq, %i.avm
  %.0.i.i.i.i.i860 = select i1 %i.avr, i1 true, i1 %i.avs
  br i1 %.0.i.i.i.i.i860, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.preheader, label %.lr.ph.i.i.i.i857, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i859, %.lr.ph.i.i.i.i857, %bb.fu
  %.sroa.0.0.i.i.i863.ph = phi ptr [ %.sroa.01.0.copyload.i.i854, %bb.fu ], [ %i.avq, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i859 ], [ %.sroa.0.07.i.i.i.i858, %.lr.ph.i.i.i.i857 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861: ; preds = %bb.fw, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.preheader
  %.sroa.0.0.i.i.i863 = phi ptr [ %.sroa.0.0.i.i.i863.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.preheader ], [ %i.awf, %bb.fw ] ; 13 uses
  %.0.i.i.i864 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.preheader ], [ %i.awe, %bb.fw ] ; 11 uses
  %i.avt = load i8, ptr %.sroa.0.0.i.i.i863, align 1 ; 2 uses
  switch i8 %i.avt, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861
  %i.avu = icmp eq ptr %.sroa.0.0.i.i.i863, %.sroa.0.0.copyload.i.i855
  %i.avv = icmp eq ptr %.sroa.0.0.i.i.i863, %i.avm
  %.0.i.i.i.i873 = select i1 %i.avu, i1 true, i1 %i.avv
  br i1 %.0.i.i.i.i873, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865, label %bb.fv

bb.fv:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avl, i64 %.0.i.i.i864
  store i8 %i.avt, ptr %i.avw, align 1
  %i.avx = icmp eq i64 %.0.i.i.i864, 2046
  br i1 %i.avx, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1: ; preds = %bb.fv
  %i.avy = or disjoint i64 %.0.i.i.i864, 1        ; 8 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i863, i64 1 ; 10 uses
  %i.awa = load i8, ptr %i.avz, align 1           ; 2 uses
  switch i8 %i.awa, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1
  %i.awb = icmp eq ptr %i.avz, %.sroa.0.0.copyload.i.i855
  %i.awc = icmp eq ptr %i.avz, %i.avm
  %.0.i.i.i.i873.1 = select i1 %i.awb, i1 true, i1 %i.awc
  br i1 %.0.i.i.i.i873.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865, label %bb.fw

bb.fw:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872.1
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avl, i64 %i.avy
  store i8 %i.awa, ptr %i.awd, align 1
  %i.awe = add nuw nsw i64 %.0.i.i.i864, 2
  %i.awf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i863, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861, !llvm.loop !11

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1, %bb.fv, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861
  %.sroa.0.0.i.i.i863.lcssa = phi ptr [ %.sroa.0.0.i.i.i863, %bb.fv ], [ %.sroa.0.0.i.i.i863, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872 ], [ %.sroa.0.0.i.i.i863, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.sroa.0.0.i.i.i863, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.sroa.0.0.i.i.i863, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.sroa.0.0.i.i.i863, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.sroa.0.0.i.i.i863, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.sroa.0.0.i.i.i863, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %i.avz, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.avz, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.avz, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.avz, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.avz, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.avz, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.avz, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872.1 ]
  %.1.i.i.i866 = phi i64 [ 2047, %bb.fv ], [ %.0.i.i.i864, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872 ], [ %.0.i.i.i864, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.0.i.i.i864, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.0.i.i.i864, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.0.i.i.i864, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.0.i.i.i864, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.0.i.i.i864, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %i.avy, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.avy, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.avy, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.avy, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.avy, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.avy, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.avy, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872.1 ]
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avl, i64 %.1.i.i.i866
  store i8 0, ptr %i.awg, align 1
  store ptr %.sroa.0.0.i.i.i863.lcssa, ptr %i.ae, align 8
  %i.awh = load ptr, ptr %i.aq, align 8           ; 2 uses
  %char0.i.i867 = load i8, ptr %i.awh, align 1
  %.not.i.i868 = icmp eq i8 %char0.i.i867, 0
  br i1 %.not.i.i868, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i869, label %bb.fx

bb.fx:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store float 0.000000e+00, ptr %i.f, align 4
  %i.awi = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.awh, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i1 noundef zeroext true)
          to label %.noexc874 unwind label %bb.ey ; 0 uses

.noexc874:                                        ; preds = %bb.fx
  %i.awj = load float, ptr %i.f, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i869

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i869: ; preds = %.noexc874, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
  %.sink8.i.i870 = phi float [ %i.awj, %.noexc874 ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865 ]
  %.sink.i.i871 = phi i8 [ 1, %.noexc874 ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865 ]
  store float %.sink8.i.i870, ptr %i.avk, align 4
  %i.awk = getelementptr inbounds nuw i8, ptr %i.avj, i64 20708
  store i8 %.sink.i.i871, ptr %i.awk, align 4
  br label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772

bb.fy:                                            ; preds = %.noexc.i.i843
  %i.awl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.gd

bb.fz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851
  %i.awm = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ga unwind label %bb.ey

bb.ga:                                            ; preds = %bb.fz
  invoke void @_ZN6Assimp6Logger4warnIJRA20_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.awm, ptr noundef nonnull align 1 dereferenceable(20) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772 unwind label %bb.ey

_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772: ; preds = %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i869, %bb.ft, %bb.fs, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i831, %bb.fk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit813.thread, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i804, %bb.fd, %bb.fc, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i766, %bb.es, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745.thread, %bb.ga
  %.sroa.016.0.copyload = load ptr, ptr %i.ae, align 8 ; 5 uses
  %.sroa.015.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %22 = ptrtoaddr ptr %.sroa.015.0.copyload to i64
  %.not.i876 = icmp ult ptr %.sroa.016.0.copyload, %.sroa.015.0.copyload
  br i1 %.not.i876, label %.preheader.i878, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit895

.preheader.i878:                                  ; preds = %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772
  %i.awn = getelementptr inbounds i8, ptr %.sroa.015.0.copyload, i64 -1 ; 2 uses
  %i.awo = icmp eq ptr %.sroa.016.0.copyload, %i.awn
  br i1 %i.awo, label %.critedge.i881, label %.lr.ph.i879

.lr.ph.i879:                                      ; preds = %.preheader.i878, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i893
  %.sroa.010.021.i880 = phi ptr [ %i.awq, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i893 ], [ %.sroa.016.0.copyload, %.preheader.i878 ] ; 6 uses
  %i.awp = load i8, ptr %.sroa.010.021.i880, align 1
  switch i8 %i.awp, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i893 [
    i8 13, label %.critedge.i881
    i8 10, label %.critedge.i881
    i8 0, label %.critedge.i881
    i8 12, label %.critedge.i881
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i893:            ; preds = %.lr.ph.i879
  %i.awq = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i880, i64 1 ; 4 uses
  %i.awr = icmp eq ptr %i.awq, %.sroa.015.0.copyload
  %i.aws = icmp eq ptr %i.awq, %i.awn
  %.0.i.i894 = or i1 %i.awr, %i.aws
  br i1 %.0.i.i894, label %.critedge.i881, label %.lr.ph.i879, !llvm.loop !8

.critedge.i881:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i893, %.lr.ph.i879, %.lr.ph.i879, %.lr.ph.i879, %.lr.ph.i879, %.preheader.i878
  %.sroa.010.0.lcssa.i882 = phi ptr [ %.sroa.016.0.copyload, %.preheader.i878 ], [ %i.awq, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i893 ], [ %.sroa.010.021.i880, %.lr.ph.i879 ], [ %.sroa.010.021.i880, %.lr.ph.i879 ], [ %.sroa.010.021.i880, %.lr.ph.i879 ], [ %.sroa.010.021.i880, %.lr.ph.i879 ] ; 3 uses
  %.not19.i883 = icmp eq ptr %.sroa.010.0.lcssa.i882, %.sroa.015.0.copyload
  br i1 %.not19.i883, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %.critedge.i881
  %i.awt = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i882, i64 1
  %i.awu = load i32, ptr %i.ar, align 8
  %i.awv = add i32 %i.awu, 1
  store i32 %i.awv, ptr %i.ar, align 8
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %.critedge.i881
  %.sroa.010.1.i884 = phi ptr [ %i.awt, %bb.gb ], [ %.sroa.010.0.lcssa.i882, %.critedge.i881 ] ; 5 uses
  %.not2030.i885 = icmp eq ptr %.sroa.010.1.i884, %.sroa.015.0.copyload
  br i1 %.not2030.i885, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit895, label %.lr.ph32.preheader.i886

.lr.ph32.preheader.i886:                          ; preds = %bb.gc
  %.sroa.010.136.i887 = ptrtoaddr ptr %.sroa.010.1.i884 to i64
  %i.aww = sub i64 %22, %.sroa.010.136.i887
  %scevgep.i888 = getelementptr i8, ptr %.sroa.010.1.i884, i64 %i.aww
  br label %.lr.ph32.i889

.lr.ph32.i889:                                    ; preds = %.critedge4.i891, %.lr.ph32.preheader.i886
  %.sroa.010.231.i890 = phi ptr [ %i.awy, %.critedge4.i891 ], [ %.sroa.010.1.i884, %.lr.ph32.preheader.i886 ] ; 3 uses
  %i.awx = load i8, ptr %.sroa.010.231.i890, align 1
  switch i8 %i.awx, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit895 [
    i8 9, label %.critedge4.i891
    i8 32, label %.critedge4.i891
  ]

.critedge4.i891:                                  ; preds = %.lr.ph32.i889, %.lr.ph32.i889
  %i.awy = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i890, i64 1 ; 2 uses
  %.not20.i892 = icmp eq ptr %i.awy, %.sroa.015.0.copyload
  br i1 %.not20.i892, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit895, label %.lr.ph32.i889, !llvm.loop !9

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit895: ; preds = %.critedge4.i891, %.lr.ph32.i889, %bb.gc, %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772
  %.sroa.010.3.i877 = phi ptr [ %.sroa.016.0.copyload, %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772 ], [ %.sroa.010.1.i884, %bb.gc ], [ %.sroa.010.231.i890, %.lr.ph32.i889 ], [ %scevgep.i888, %.critedge4.i891 ]
  store ptr %.sroa.010.3.i877, ptr %i.ae, align 8
  %i.awz = load ptr, ptr %6, align 8              ; 2 uses
  %i.axa = icmp eq ptr %i.awz, %i.as
  br i1 %i.axa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i896

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i896: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit895
  %i.axb = load i64, ptr %i.as, align 8
  %i.axc = add i64 %i.axb, 1
  call void @_ZdlPvm(ptr noundef %i.awz, i64 noundef %i.axc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit895, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i896
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.hl

bb.gd:                                            ; preds = %bb.fy, %bb.fi, %bb.ey
  %.pn124 = phi { ptr, i32 } [ %i.asg, %bb.fi ], [ %i.apr, %bb.ey ], [ %i.awl, %bb.fy ] ; 2 uses
  %i.axd = load ptr, ptr %6, align 8              ; 2 uses
  %i.axe = icmp eq ptr %i.axd, %i.as
  br i1 %i.axe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i899

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i899: ; preds = %bb.gd
  %i.axf = load i64, ptr %i.as, align 8
  %i.axg = add i64 %i.axf, 1
  call void @_ZdlPvm(ptr noundef %i.axd, i64 noundef %i.axg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901: ; preds = %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i899, %bb.ex
  %.pn124.pn = phi { ptr, i32 } [ %i.apq, %bb.ex ], [ %.pn124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i899 ], [ %.pn124, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.hm

bb.ge:                                            ; preds = %bb.b
  %i.axh = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 2 uses
  %i.axi = icmp eq ptr %i.bi, %i.axh
  br i1 %i.axi, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit908, label %.lr.ph.i903

.lr.ph.i903thread-pre-split:                      ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i906
  %.pr1324 = load i8, ptr %i.axk, align 1
  br label %.lr.ph.i903

.lr.ph.i903:                                      ; preds = %bb.ge, %.lr.ph.i903thread-pre-split
  %i.axj = phi i8 [ %.pr1324, %.lr.ph.i903thread-pre-split ], [ 99, %bb.ge ]
  %.sroa.0.06.i904 = phi ptr [ %i.axk, %.lr.ph.i903thread-pre-split ], [ %i.bi, %bb.ge ] ; 7 uses
  switch i8 %i.axj, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i906 [
    i8 32, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit908
    i8 9, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit908
    i8 13, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit908
    i8 10, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit908
    i8 0, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit908
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit908
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i906:    ; preds = %.lr.ph.i903
  %i.axk = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i904, i64 1 ; 5 uses
  %i.axl = icmp eq ptr %i.axk, %i.bh
  %i.axm = icmp eq ptr %i.axk, %i.axh
  %.0.i.i907 = or i1 %i.axl, %i.axm
  br i1 %.0.i.i907, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit908, label %.lr.ph.i903thread-pre-split, !llvm.loop !12

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit908: ; preds = %.lr.ph.i903, %.lr.ph.i903, %.lr.ph.i903, %.lr.ph.i903, %.lr.ph.i903, %.lr.ph.i903, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i906, %bb.ge
  %.sroa.0.0.lcssa.i905 = phi ptr [ %i.bi, %bb.ge ], [ %i.axk, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i906 ], [ %.sroa.0.06.i904, %.lr.ph.i903 ], [ %.sroa.0.06.i904, %.lr.ph.i903 ], [ %.sroa.0.06.i904, %.lr.ph.i903 ], [ %.sroa.0.06.i904, %.lr.ph.i903 ], [ %.sroa.0.06.i904, %.lr.ph.i903 ], [ %.sroa.0.06.i904, %.lr.ph.i903 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.aj, ptr %9, align 8
  store i64 0, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.axn = ptrtoint ptr %.sroa.0.0.lcssa.i905 to i64 ; 3 uses
  %i.axo = ptrtoint ptr %i.bi to i64              ; 2 uses
  %i.axp = sub i64 %i.axn, %i.axo                 ; 10 uses
  store i64 %i.axp, ptr %i.e, align 8
  %i.axq = icmp ugt i64 %i.axp, 15
  br i1 %i.axq, label %.noexc.i918, label %._crit_edge.i.i909

.noexc.i918:                                      ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit908
  %i.axr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc919 unwind label %bb.gp ; 2 uses

.noexc919:                                        ; preds = %.noexc.i918
  store ptr %i.axr, ptr %9, align 8
  %i.axs = load i64, ptr %i.e, align 8            ; 2 uses
  store i64 %i.axs, ptr %i.aj, align 8
  br label %._crit_edge.i.i909

._crit_edge.i.i909:                               ; preds = %.noexc919, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit908
  %i.axt = phi i64 [ %i.axs, %.noexc919 ], [ %i.axp, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit908 ]
  %i.axu = phi ptr [ %i.axr, %.noexc919 ], [ %i.aj, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit908 ] ; 7 uses
  %.not5.i.i.i910 = icmp eq ptr %i.bi, %.sroa.0.0.lcssa.i905
  br i1 %.not5.i.i.i910, label %bb.gf, label %iter.check1466

iter.check1466:                                   ; preds = %._crit_edge.i.i909
  %i.axv = ptrtoaddr ptr %i.axu to i64
  %min.iters.check1449 = icmp ult i64 %i.axp, 4
  %i.axw = sub i64 %i.axo, %i.axv
  %diff.check1448 = icmp ugt i64 %i.axw, -32
  %or.cond1487 = select i1 %min.iters.check1449, i1 true, i1 %diff.check1448
  br i1 %or.cond1487, label %.lr.ph.i.i.i911.preheader, label %vector.main.loop.iter.check1450

vector.main.loop.iter.check1450:                  ; preds = %iter.check1466
  %min.iters.check1451 = icmp ult i64 %i.axp, 32
  br i1 %min.iters.check1451, label %vec.epilog.ph1470, label %vector.ph1452

vector.ph1452:                                    ; preds = %vector.main.loop.iter.check1450
  %n.mod.vf1453 = and i64 %i.axp, 28
  %n.vec1454 = and i64 %i.axp, -32                ; 5 uses
  %i.axx = getelementptr i8, ptr %i.axu, i64 %n.vec1454
  %i.axy = getelementptr i8, ptr %i.bi, i64 %n.vec1454
  br label %vector.body1455

vector.body1455:                                  ; preds = %vector.body1455, %vector.ph1452
  %index1456 = phi i64 [ 0, %vector.ph1452 ], [ %index.next1461, %vector.body1455 ] ; 3 uses
  %next.gep1457 = getelementptr i8, ptr %i.axu, i64 %index1456 ; 2 uses
  %next.gep1458 = getelementptr i8, ptr %i.bi, i64 %index1456 ; 2 uses
  %i.axz = getelementptr i8, ptr %next.gep1458, i64 16
  %wide.load1459 = load <16 x i8>, ptr %next.gep1458, align 1
  %wide.load1460 = load <16 x i8>, ptr %i.axz, align 1
  %i.aya = getelementptr i8, ptr %next.gep1457, i64 16
  store <16 x i8> %wide.load1459, ptr %next.gep1457, align 1
  store <16 x i8> %wide.load1460, ptr %i.aya, align 1
  %index.next1461 = add nuw i64 %index1456, 32    ; 2 uses
  %i.ayb = icmp eq i64 %index.next1461, %n.vec1454
  br i1 %i.ayb, label %middle.block1462, label %vector.body1455, !llvm.loop !50

middle.block1462:                                 ; preds = %vector.body1455
  %cmp.n1463 = icmp eq i64 %i.axp, %n.vec1454
  br i1 %cmp.n1463, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i915, label %vec.epilog.iter.check1468

vec.epilog.iter.check1468:                        ; preds = %middle.block1462
  %min.epilog.iters.check1469 = icmp eq i64 %n.mod.vf1453, 0
  br i1 %min.epilog.iters.check1469, label %.lr.ph.i.i.i911.preheader, label %vec.epilog.ph1470, !prof !16

vec.epilog.ph1470:                                ; preds = %vector.main.loop.iter.check1450, %vec.epilog.iter.check1468
  %vec.epilog.resume.val1464 = phi i64 [ %n.vec1454, %vec.epilog.iter.check1468 ], [ 0, %vector.main.loop.iter.check1450 ]
  %n.vec1472 = and i64 %i.axp, -4                 ; 4 uses
  %i.ayc = getelementptr i8, ptr %i.axu, i64 %n.vec1472
  %i.ayd = getelementptr i8, ptr %i.bi, i64 %n.vec1472
  br label %vec.epilog.vector.body1473

vec.epilog.vector.body1473:                       ; preds = %vec.epilog.vector.body1473, %vec.epilog.ph1470
  %index1474 = phi i64 [ %vec.epilog.resume.val1464, %vec.epilog.ph1470 ], [ %index.next1478, %vec.epilog.vector.body1473 ] ; 3 uses
  %next.gep1475 = getelementptr i8, ptr %i.axu, i64 %index1474
  %next.gep1476 = getelementptr i8, ptr %i.bi, i64 %index1474
  %wide.load1477 = load <4 x i8>, ptr %next.gep1476, align 1
  store <4 x i8> %wide.load1477, ptr %next.gep1475, align 1
  %index.next1478 = add nuw i64 %index1474, 4     ; 2 uses
  %i.aye = icmp eq i64 %index.next1478, %n.vec1472
  br i1 %i.aye, label %vec.epilog.middle.block1479, label %vec.epilog.vector.body1473, !llvm.loop !51

vec.epilog.middle.block1479:                      ; preds = %vec.epilog.vector.body1473
  %cmp.n1480 = icmp eq i64 %i.axp, %n.vec1472
  br i1 %cmp.n1480, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i915, label %.lr.ph.i.i.i911.preheader

.lr.ph.i.i.i911.preheader:                        ; preds = %iter.check1466, %vec.epilog.iter.check1468, %vec.epilog.middle.block1479
  %.07.i.i.i912.ph = phi ptr [ %i.axu, %iter.check1466 ], [ %i.axx, %vec.epilog.iter.check1468 ], [ %i.ayc, %vec.epilog.middle.block1479 ] ; 2 uses
  %.sroa.02.06.i.i.i913.ph = phi ptr [ %i.bi, %iter.check1466 ], [ %i.axy, %vec.epilog.iter.check1468 ], [ %i.ayd, %vec.epilog.middle.block1479 ] ; 3 uses
  %.sroa.02.06.i.i.i913.ph1488 = ptrtoaddr ptr %.sroa.02.06.i.i.i913.ph to i64 ; 2 uses
  %i.ayf = sub i64 %i.axn, %.sroa.02.06.i.i.i913.ph1488
  %xtraiter = and i64 %i.ayf, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i911.prol.loopexit, label %.lr.ph.i.i.i911.prol

.lr.ph.i.i.i911.prol:                             ; preds = %.lr.ph.i.i.i911.preheader, %.lr.ph.i.i.i911.prol
  %.07.i.i.i912.prol = phi ptr [ %i.ayi, %.lr.ph.i.i.i911.prol ], [ %.07.i.i.i912.ph, %.lr.ph.i.i.i911.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i913.prol = phi ptr [ %i.ayh, %.lr.ph.i.i.i911.prol ], [ %.sroa.02.06.i.i.i913.ph, %.lr.ph.i.i.i911.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i911.prol ], [ 0, %.lr.ph.i.i.i911.preheader ]
  %i.ayg = load i8, ptr %.sroa.02.06.i.i.i913.prol, align 1
  store i8 %i.ayg, ptr %.07.i.i.i912.prol, align 1
  %i.ayh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i913.prol, i64 1 ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %.07.i.i.i912.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i911.prol.loopexit, label %.lr.ph.i.i.i911.prol, !llvm.loop !52

.lr.ph.i.i.i911.prol.loopexit:                    ; preds = %.lr.ph.i.i.i911.prol, %.lr.ph.i.i.i911.preheader
  %.07.i.i.i912.unr = phi ptr [ %.07.i.i.i912.ph, %.lr.ph.i.i.i911.preheader ], [ %i.ayi, %.lr.ph.i.i.i911.prol ]
  %.sroa.02.06.i.i.i913.unr = phi ptr [ %.sroa.02.06.i.i.i913.ph, %.lr.ph.i.i.i911.preheader ], [ %i.ayh, %.lr.ph.i.i.i911.prol ]
  %i.ayj = sub i64 %.sroa.02.06.i.i.i913.ph1488, %i.axn
  %i.ayk = icmp ugt i64 %i.ayj, -8
  br i1 %i.ayk, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i915, label %.lr.ph.i.i.i911

.lr.ph.i.i.i911:                                  ; preds = %.lr.ph.i.i.i911.prol.loopexit, %.lr.ph.i.i.i911
  %.07.i.i.i912 = phi ptr [ %i.azi, %.lr.ph.i.i.i911 ], [ %.07.i.i.i912.unr, %.lr.ph.i.i.i911.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i913 = phi ptr [ %i.azh, %.lr.ph.i.i.i911 ], [ %.sroa.02.06.i.i.i913.unr, %.lr.ph.i.i.i911.prol.loopexit ] ; 9 uses
  %i.ayl = load i8, ptr %.sroa.02.06.i.i.i913, align 1
  store i8 %i.ayl, ptr %.07.i.i.i912, align 1
  %i.aym = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i913, i64 1
  %i.ayn = getelementptr inbounds nuw i8, ptr %.07.i.i.i912, i64 1
  %i.ayo = load i8, ptr %i.aym, align 1
  store i8 %i.ayo, ptr %i.ayn, align 1
  %i.ayp = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i913, i64 2
  %i.ayq = getelementptr inbounds nuw i8, ptr %.07.i.i.i912, i64 2
  %i.ayr = load i8, ptr %i.ayp, align 1
  store i8 %i.ayr, ptr %i.ayq, align 1
  %i.ays = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i913, i64 3
  %i.ayt = getelementptr inbounds nuw i8, ptr %.07.i.i.i912, i64 3
  %i.ayu = load i8, ptr %i.ays, align 1
  store i8 %i.ayu, ptr %i.ayt, align 1
  %i.ayv = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i913, i64 4
  %i.ayw = getelementptr inbounds nuw i8, ptr %.07.i.i.i912, i64 4
  %i.ayx = load i8, ptr %i.ayv, align 1
  store i8 %i.ayx, ptr %i.ayw, align 1
  %i.ayy = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i913, i64 5
  %i.ayz = getelementptr inbounds nuw i8, ptr %.07.i.i.i912, i64 5
  %i.aza = load i8, ptr %i.ayy, align 1
  store i8 %i.aza, ptr %i.ayz, align 1
  %i.azb = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i913, i64 6
  %i.azc = getelementptr inbounds nuw i8, ptr %.07.i.i.i912, i64 6
  %i.azd = load i8, ptr %i.azb, align 1
  store i8 %i.azd, ptr %i.azc, align 1
  %i.aze = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i913, i64 7
  %i.azf = getelementptr inbounds nuw i8, ptr %.07.i.i.i912, i64 7
  %i.azg = load i8, ptr %i.aze, align 1
  store i8 %i.azg, ptr %i.azf, align 1
  %i.azh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i913, i64 8 ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %.07.i.i.i912, i64 8
  %.not.i.i.i914.7 = icmp eq ptr %i.azh, %.sroa.0.0.lcssa.i905
  br i1 %.not.i.i.i914.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i915, label %.lr.ph.i.i.i911, !llvm.loop !53

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i915: ; preds = %.lr.ph.i.i.i911.prol.loopexit, %.lr.ph.i.i.i911, %vec.epilog.middle.block1479, %middle.block1462
  %.pre16.i.i916 = load i64, ptr %i.e, align 8
  %.pre17.i.i917 = load ptr, ptr %9, align 8
  br label %bb.gf

bb.gf:                                            ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i915, %._crit_edge.i.i909
  %i.azj = phi ptr [ %.pre17.i.i917, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i915 ], [ %i.axu, %._crit_edge.i.i909 ]
  %i.azk = phi i64 [ %.pre16.i.i916, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i915 ], [ %i.axt, %._crit_edge.i.i909 ] ; 2 uses
  store i64 %i.azk, ptr %i.ak, align 8
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azj, i64 %i.azk
  store i8 0, ptr %i.azl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %.sroa.06.0.copyload = load ptr, ptr %i.af, align 8 ; 3 uses
  %i.azm = getelementptr inbounds i8, ptr %.sroa.06.0.copyload, i64 -1 ; 2 uses
  %i.azn = icmp eq ptr %.sroa.0.0.lcssa.i905, %.sroa.06.0.copyload
  %i.azo = icmp eq ptr %.sroa.0.0.lcssa.i905, %i.azm
  %.0.i6.i921 = select i1 %i.azn, i1 true, i1 %i.azo
  br i1 %.0.i6.i921, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit928, label %.lr.ph.i922

.lr.ph.i922:                                      ; preds = %bb.gf, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i924
  %.sroa.0.07.i923 = phi ptr [ %i.azq, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i924 ], [ %.sroa.0.0.lcssa.i905, %bb.gf ] ; 3 uses
  %i.azp = load i8, ptr %.sroa.0.07.i923, align 1
  switch i8 %i.azp, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit928 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i924
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i924
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i924:            ; preds = %.lr.ph.i922, %.lr.ph.i922
  %i.azq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i923, i64 1 ; 4 uses
  %i.azr = icmp eq ptr %i.azq, %.sroa.06.0.copyload
  %i.azs = icmp eq ptr %i.azq, %i.azm
  %.0.i.i925 = select i1 %i.azr, i1 true, i1 %i.azs
  br i1 %.0.i.i925, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit928, label %.lr.ph.i922, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit928: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i924, %.lr.ph.i922, %bb.gf
  %.sroa.0.0.lcssa.i927 = phi ptr [ %.sroa.0.0.lcssa.i905, %bb.gf ], [ %i.azq, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i924 ], [ %.sroa.0.07.i923, %.lr.ph.i922 ]
  store ptr %.sroa.0.0.lcssa.i927, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  store ptr %i.al, ptr %10, align 8, !alias.scope !54
  %i.azt = load ptr, ptr %9, align 8, !noalias !54 ; 2 uses
  %i.azu = load i64, ptr %i.ak, align 8, !noalias !54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22, !noalias !54
  store i64 %i.azu, ptr %i.d, align 8, !noalias !54
  %i.azv = icmp ugt i64 %i.azu, 15
  br i1 %i.azv, label %.noexc.i.i934, label %._crit_edge.i.i.i929

.noexc.i.i934:                                    ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit928
  %i.azw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc935 unwind label %bb.gq ; 2 uses

.noexc935:                                        ; preds = %.noexc.i.i934
  store ptr %i.azw, ptr %10, align 8, !alias.scope !54
  %i.azx = load i64, ptr %i.d, align 8, !noalias !54
  store i64 %i.azx, ptr %i.al, align 8, !alias.scope !54
  br label %._crit_edge.i.i.i929

._crit_edge.i.i.i929:                             ; preds = %.noexc935, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit928
  %i.azy = phi ptr [ %i.azw, %.noexc935 ], [ %i.al, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit928 ] ; 2 uses
  switch i64 %i.azu, label %bb.gh [
    i64 1, label %bb.gg
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i930
  ]

bb.gg:                                            ; preds = %._crit_edge.i.i.i929
  %i.azz = load i8, ptr %i.azt, align 1
  store i8 %i.azz, ptr %i.azy, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i930

bb.gh:                                            ; preds = %._crit_edge.i.i.i929
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.azy, ptr align 1 %i.azt, i64 %i.azu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i930

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i930: ; preds = %bb.gh, %bb.gg, %._crit_edge.i.i.i929
  %i.baa = load i64, ptr %i.d, align 8, !noalias !54 ; 2 uses
  store i64 %i.baa, ptr %i.am, align 8, !alias.scope !54
  %i.bab = load ptr, ptr %10, align 8, !alias.scope !54
  %i.bac = getelementptr inbounds nuw i8, ptr %i.bab, i64 %i.baa
  store i8 0, ptr %i.bac, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22, !noalias !54
  %i.bad = load i64, ptr %i.ak, align 8, !noalias !54
  %.not.i931 = icmp eq i64 %i.bad, 0
  br i1 %.not.i931, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit936, label %.lr.ph.i932

.lr.ph.i932:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i930, %.lr.ph.i932
  %.06.i933 = phi i64 [ %i.bak, %.lr.ph.i932 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i930 ] ; 2 uses
  %i.bae = load ptr, ptr %10, align 8, !alias.scope !54
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 %.06.i933 ; 2 uses
  %i.bag = load i8, ptr %i.baf, align 1
  %i.bah = zext i8 %i.bag to i32
  %i.bai = call i32 @tolower(i32 noundef %i.bah) #26
  %i.baj = trunc i32 %i.bai to i8
  store i8 %i.baj, ptr %i.baf, align 1
  %i.bak = add nuw i64 %.06.i933, 1               ; 2 uses
  %i.bal = load i64, ptr %i.ak, align 8, !noalias !54
  %i.bam = icmp ult i64 %i.bak, %i.bal
  br i1 %i.bam, label %.lr.ph.i932, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit936, !llvm.loop !35

_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit936: ; preds = %.lr.ph.i932, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i930
  %i.ban = load i64, ptr %i.am, align 8           ; 2 uses
  %i.bao = icmp eq i64 %i.ban, 9
  %.pre = load ptr, ptr %10, align 8              ; 4 uses
  br i1 %i.bao, label %bb.gi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit939

bb.gi:                                            ; preds = %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit936
  %i.bap = load i64, ptr %.pre, align 1
  %i.baq = xor i64 %i.bap, 7020939687005351011
  %i.bar = getelementptr i8, ptr %.pre, i64 8
  %i.bas = load i8, ptr %i.bar, align 1
  %i.bat = zext i8 %i.bas to i64
  %i.bau = xor i64 %i.bat, 116
  %i.bav = or i64 %i.baq, %i.bau
  %i.baw = icmp ne i64 %i.bav, 0
  %i.bax = zext i1 %i.baw to i32
  %i.bay = icmp eq i32 %i.bax, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit939

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit939: ; preds = %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit936, %bb.gi
  %i.baz = phi i1 [ false, %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit936 ], [ %i.bay, %bb.gi ]
  %i.bba = icmp eq ptr %.pre, %i.al
  br i1 %i.bba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i941, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i940

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i941: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit939
  %i.bbb = icmp ult i64 %i.ban, 16
  call void @llvm.assume(i1 %i.bbb)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit942

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i940: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit939
  %i.bbc = load i64, ptr %i.al, align 8
  %i.bbd = add i64 %i.bbc, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bbd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit942

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit942: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i941, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i940
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br i1 %i.baz, label %bb.gj, label %bb.gs

bb.gj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit942
end_hunk_3
begin_hunk_4_@_ZN6Assimp18ObjFileMtlImporter4loadEv:bb.a
  store i64 %i.bcs, ptr %i.ao, align 8, !alias.scope !57
  %i.bct = load ptr, ptr %11, align 8, !alias.scope !57
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 %i.bcs
  store i8 0, ptr %i.bcu, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !57
  %i.bcv = load i64, ptr %i.ak, align 8, !noalias !57
  %.not.i969 = icmp eq i64 %i.bcv, 0
  br i1 %.not.i969, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit974, label %.lr.ph.i970

.lr.ph.i970:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i968, %.lr.ph.i970
  %.06.i971 = phi i64 [ %i.bdc, %.lr.ph.i970 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i968 ] ; 2 uses
  %i.bcw = load ptr, ptr %11, align 8, !alias.scope !57
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcw, i64 %.06.i971 ; 2 uses
  %i.bcy = load i8, ptr %i.bcx, align 1
  %i.bcz = zext i8 %i.bcy to i32
  %i.bda = call i32 @tolower(i32 noundef %i.bcz) #26
  %i.bdb = trunc i32 %i.bda to i8
  store i8 %i.bdb, ptr %i.bcx, align 1
  %i.bdc = add nuw i64 %.06.i971, 1               ; 2 uses
  %i.bdd = load i64, ptr %i.ak, align 8, !noalias !57
  %i.bde = icmp ult i64 %i.bdc, %i.bdd
  br i1 %i.bde, label %.lr.ph.i970, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit974, !llvm.loop !35

_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit974: ; preds = %.lr.ph.i970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i968
  %i.bdf = load i64, ptr %i.ao, align 8           ; 2 uses
  %i.bdg = icmp eq i64 %i.bdf, 14
  %.pre1105 = load ptr, ptr %11, align 8          ; 4 uses
  br i1 %i.bdg, label %bb.gv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit977

bb.gv:                                            ; preds = %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit974
  %i.bdh = load i64, ptr %.pre1105, align 1
  %i.bdi = xor i64 %i.bdh, 7020939687005351011
  %i.bdj = getelementptr i8, ptr %.pre1105, i64 6
  %i.bdk = load i64, ptr %i.bdj, align 1
  %i.bdl = xor i64 %i.bdk, 8319115448066269551
  %i.bdm = or i64 %i.bdi, %i.bdl
  %i.bdn = icmp ne i64 %i.bdm, 0
  %i.bdo = zext i1 %i.bdn to i32
  %i.bdp = icmp eq i32 %i.bdo, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit977

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit977: ; preds = %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit974, %bb.gv
  %i.bdq = phi i1 [ false, %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit974 ], [ %i.bdp, %bb.gv ]
  %i.bdr = icmp eq ptr %.pre1105, %i.an
  br i1 %i.bdr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i979, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i978

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i979: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit977
  %i.bds = icmp ult i64 %i.bdf, 16
  call void @llvm.assume(i1 %i.bds)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i978: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit977
  %i.bdt = load i64, ptr %i.an, align 8
  %i.bdu = add i64 %i.bdt, 1
  call void @_ZdlPvm(ptr noundef %.pre1105, i64 noundef %i.bdu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i979, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i978
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %i.bdq, label %bb.gw, label %bb.hd

bb.gw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980
  %i.bdv = load ptr, ptr %i.ap, align 8           ; 2 uses
  %.not.i981 = icmp eq ptr %i.bdv, null
  br i1 %.not.i981, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit966, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 64
  %i.bdx = load ptr, ptr %i.bdw, align 8          ; 3 uses
  %.not2.i982 = icmp eq ptr %i.bdx, null
  br i1 %.not2.i982, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit966, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 20736
  %.sroa.01.0.copyload.i.i983 = load ptr, ptr %i.ae, align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i984 = load ptr, ptr %i.af, align 8 ; 5 uses
  %i.bdz = load ptr, ptr %i.aq, align 8           ; 3 uses
  %i.bea = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i984, i64 -1 ; 4 uses
  %i.beb = icmp eq ptr %.sroa.01.0.copyload.i.i983, %.sroa.0.0.copyload.i.i984
  %i.bec = icmp eq ptr %.sroa.01.0.copyload.i.i983, %i.bea
  %.0.i6.i.i.i.i985 = select i1 %i.beb, i1 true, i1 %i.bec
  br i1 %.0.i6.i.i.i.i985, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.preheader, label %.lr.ph.i.i.i.i986

.lr.ph.i.i.i.i986:                                ; preds = %bb.gy, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i988
  %.sroa.0.07.i.i.i.i987 = phi ptr [ %i.bee, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i988 ], [ %.sroa.01.0.copyload.i.i983, %bb.gy ] ; 3 uses
  %i.bed = load i8, ptr %.sroa.0.07.i.i.i.i987, align 1
  switch i8 %i.bed, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i988
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i988
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i988:      ; preds = %.lr.ph.i.i.i.i986, %.lr.ph.i.i.i.i986
  %i.bee = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i987, i64 1 ; 4 uses
  %i.bef = icmp eq ptr %i.bee, %.sroa.0.0.copyload.i.i984
  %i.beg = icmp eq ptr %i.bee, %i.bea
  %.0.i.i.i.i.i989 = select i1 %i.bef, i1 true, i1 %i.beg
  br i1 %.0.i.i.i.i.i989, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.preheader, label %.lr.ph.i.i.i.i986, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i988, %.lr.ph.i.i.i.i986, %bb.gy
  %.sroa.0.0.i.i.i992.ph = phi ptr [ %.sroa.01.0.copyload.i.i983, %bb.gy ], [ %i.bee, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i988 ], [ %.sroa.0.07.i.i.i.i987, %.lr.ph.i.i.i.i986 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990: ; preds = %bb.ha, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.preheader
  %.sroa.0.0.i.i.i992 = phi ptr [ %.sroa.0.0.i.i.i992.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.preheader ], [ %i.bet, %bb.ha ] ; 13 uses
  %.0.i.i.i993 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.preheader ], [ %i.bes, %bb.ha ] ; 11 uses
  %i.beh = load i8, ptr %.sroa.0.0.i.i.i992, align 1 ; 2 uses
  switch i8 %i.beh, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i1001 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i1001: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990
  %i.bei = icmp eq ptr %.sroa.0.0.i.i.i992, %.sroa.0.0.copyload.i.i984
  %i.bej = icmp eq ptr %.sroa.0.0.i.i.i992, %i.bea
  %.0.i.i.i.i1002 = select i1 %i.bei, i1 true, i1 %i.bej
  br i1 %.0.i.i.i.i1002, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994, label %bb.gz

bb.gz:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i1001
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bdz, i64 %.0.i.i.i993
  store i8 %i.beh, ptr %i.bek, align 1
  %i.bel = icmp eq i64 %.0.i.i.i993, 2046
  br i1 %i.bel, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1: ; preds = %bb.gz
  %i.bem = or disjoint i64 %.0.i.i.i993, 1        ; 8 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i992, i64 1 ; 10 uses
  %i.beo = load i8, ptr %i.ben, align 1           ; 2 uses
  switch i8 %i.beo, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i1001.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i1001.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1
  %i.bep = icmp eq ptr %i.ben, %.sroa.0.0.copyload.i.i984
  %i.beq = icmp eq ptr %i.ben, %i.bea
  %.0.i.i.i.i1002.1 = select i1 %i.bep, i1 true, i1 %i.beq
  br i1 %.0.i.i.i.i1002.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994, label %bb.ha

bb.ha:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i1001.1
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bdz, i64 %i.bem
  store i8 %i.beo, ptr %i.ber, align 1
  %i.bes = add nuw nsw i64 %.0.i.i.i993, 2
  %i.bet = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i992, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990, !llvm.loop !11

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i1001.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1, %bb.gz, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i1001, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990
  %.sroa.0.0.i.i.i992.lcssa = phi ptr [ %.sroa.0.0.i.i.i992, %bb.gz ], [ %.sroa.0.0.i.i.i992, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i1001 ], [ %.sroa.0.0.i.i.i992, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990 ], [ %.sroa.0.0.i.i.i992, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990 ], [ %.sroa.0.0.i.i.i992, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990 ], [ %.sroa.0.0.i.i.i992, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990 ], [ %.sroa.0.0.i.i.i992, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990 ], [ %.sroa.0.0.i.i.i992, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990 ], [ %i.ben, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1 ], [ %i.ben, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1 ], [ %i.ben, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1 ], [ %i.ben, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1 ], [ %i.ben, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1 ], [ %i.ben, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1 ], [ %i.ben, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i1001.1 ]
  %.1.i.i.i995 = phi i64 [ 2047, %bb.gz ], [ %.0.i.i.i993, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i1001 ], [ %.0.i.i.i993, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990 ], [ %.0.i.i.i993, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990 ], [ %.0.i.i.i993, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990 ], [ %.0.i.i.i993, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990 ], [ %.0.i.i.i993, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990 ], [ %.0.i.i.i993, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990 ], [ %i.bem, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1 ], [ %i.bem, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1 ], [ %i.bem, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1 ], [ %i.bem, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1 ], [ %i.bem, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1 ], [ %i.bem, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i990.1 ], [ %i.bem, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i1001.1 ]
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bdz, i64 %.1.i.i.i995
  store i8 0, ptr %i.beu, align 1
  store ptr %.sroa.0.0.i.i.i992.lcssa, ptr %i.ae, align 8
  %i.bev = load ptr, ptr %i.aq, align 8           ; 2 uses
  %char0.i.i996 = load i8, ptr %i.bev, align 1
  %.not.i.i997 = icmp eq i8 %char0.i.i996, 0
  br i1 %.not.i.i997, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i998, label %bb.hb

bb.hb:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store float 0.000000e+00, ptr %i.a, align 4
  %i.bew = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.bev, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true)
          to label %.noexc1003 unwind label %bb.gr ; 0 uses

.noexc1003:                                       ; preds = %bb.hb
  %i.bex = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i998

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i998: ; preds = %.noexc1003, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994
  %.sink8.i.i999 = phi float [ %i.bex, %.noexc1003 ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994 ]
  %.sink.i.i1000 = phi i8 [ 1, %.noexc1003 ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i994 ]
  store float %.sink8.i.i999, ptr %i.bdy, align 4
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bdx, i64 20740
  store i8 %.sink.i.i1000, ptr %i.bey, align 4
  br label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit966

bb.hc:                                            ; preds = %.noexc.i.i972
  %i.bez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.hh

bb.hd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980
  %i.bfa = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.he unwind label %bb.gr

bb.he:                                            ; preds = %bb.hd
  invoke void @_ZN6Assimp6Logger4warnIJRA20_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bfa, ptr noundef nonnull align 1 dereferenceable(20) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit966 unwind label %bb.gr

_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit966: ; preds = %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i998, %bb.gx, %bb.gw, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i960, %bb.gk, %bb.gj, %bb.he
  %.sroa.04.0.copyload = load ptr, ptr %i.ae, align 8 ; 5 uses
  %.sroa.03.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %23 = ptrtoaddr ptr %.sroa.03.0.copyload to i64
  %.not.i1005 = icmp ult ptr %.sroa.04.0.copyload, %.sroa.03.0.copyload
  br i1 %.not.i1005, label %.preheader.i1007, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1024

.preheader.i1007:                                 ; preds = %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit966
  %i.bfb = getelementptr inbounds i8, ptr %.sroa.03.0.copyload, i64 -1 ; 2 uses
  %i.bfc = icmp eq ptr %.sroa.04.0.copyload, %i.bfb
  br i1 %i.bfc, label %.critedge.i1010, label %.lr.ph.i1008

.lr.ph.i1008:                                     ; preds = %.preheader.i1007, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1022
  %.sroa.010.021.i1009 = phi ptr [ %i.bfe, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1022 ], [ %.sroa.04.0.copyload, %.preheader.i1007 ] ; 6 uses
  %i.bfd = load i8, ptr %.sroa.010.021.i1009, align 1
  switch i8 %i.bfd, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1022 [
    i8 13, label %.critedge.i1010
    i8 10, label %.critedge.i1010
    i8 0, label %.critedge.i1010
    i8 12, label %.critedge.i1010
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i1022:           ; preds = %.lr.ph.i1008
  %i.bfe = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i1009, i64 1 ; 4 uses
  %i.bff = icmp eq ptr %i.bfe, %.sroa.03.0.copyload
  %i.bfg = icmp eq ptr %i.bfe, %i.bfb
  %.0.i.i1023 = or i1 %i.bff, %i.bfg
  br i1 %.0.i.i1023, label %.critedge.i1010, label %.lr.ph.i1008, !llvm.loop !8

.critedge.i1010:                                  ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1022, %.lr.ph.i1008, %.lr.ph.i1008, %.lr.ph.i1008, %.lr.ph.i1008, %.preheader.i1007
  %.sroa.010.0.lcssa.i1011 = phi ptr [ %.sroa.04.0.copyload, %.preheader.i1007 ], [ %i.bfe, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1022 ], [ %.sroa.010.021.i1009, %.lr.ph.i1008 ], [ %.sroa.010.021.i1009, %.lr.ph.i1008 ], [ %.sroa.010.021.i1009, %.lr.ph.i1008 ], [ %.sroa.010.021.i1009, %.lr.ph.i1008 ] ; 3 uses
  %.not19.i1012 = icmp eq ptr %.sroa.010.0.lcssa.i1011, %.sroa.03.0.copyload
  br i1 %.not19.i1012, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %.critedge.i1010
  %i.bfh = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i1011, i64 1
  %i.bfi = load i32, ptr %i.ar, align 8
  %i.bfj = add i32 %i.bfi, 1
  store i32 %i.bfj, ptr %i.ar, align 8
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %.critedge.i1010
  %.sroa.010.1.i1013 = phi ptr [ %i.bfh, %bb.hf ], [ %.sroa.010.0.lcssa.i1011, %.critedge.i1010 ] ; 5 uses
  %.not2030.i1014 = icmp eq ptr %.sroa.010.1.i1013, %.sroa.03.0.copyload
  br i1 %.not2030.i1014, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1024, label %.lr.ph32.preheader.i1015

.lr.ph32.preheader.i1015:                         ; preds = %bb.hg
  %.sroa.010.136.i1016 = ptrtoaddr ptr %.sroa.010.1.i1013 to i64
  %i.bfk = sub i64 %23, %.sroa.010.136.i1016
  %scevgep.i1017 = getelementptr i8, ptr %.sroa.010.1.i1013, i64 %i.bfk
  br label %.lr.ph32.i1018

.lr.ph32.i1018:                                   ; preds = %.critedge4.i1020, %.lr.ph32.preheader.i1015
  %.sroa.010.231.i1019 = phi ptr [ %i.bfm, %.critedge4.i1020 ], [ %.sroa.010.1.i1013, %.lr.ph32.preheader.i1015 ] ; 3 uses
  %i.bfl = load i8, ptr %.sroa.010.231.i1019, align 1
  switch i8 %i.bfl, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1024 [
    i8 9, label %.critedge4.i1020
    i8 32, label %.critedge4.i1020
  ]

.critedge4.i1020:                                 ; preds = %.lr.ph32.i1018, %.lr.ph32.i1018
  %i.bfm = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i1019, i64 1 ; 2 uses
  %.not20.i1021 = icmp eq ptr %i.bfm, %.sroa.03.0.copyload
  br i1 %.not20.i1021, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1024, label %.lr.ph32.i1018, !llvm.loop !9

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1024: ; preds = %.critedge4.i1020, %.lr.ph32.i1018, %bb.hg, %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit966
  %.sroa.010.3.i1006 = phi ptr [ %.sroa.04.0.copyload, %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit966 ], [ %.sroa.010.1.i1013, %bb.hg ], [ %.sroa.010.231.i1019, %.lr.ph32.i1018 ], [ %scevgep.i1017, %.critedge4.i1020 ]
  store ptr %.sroa.010.3.i1006, ptr %i.ae, align 8
  %i.bfn = load ptr, ptr %9, align 8              ; 2 uses
  %i.bfo = icmp eq ptr %i.bfn, %i.aj
  br i1 %i.bfo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1027, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1025

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1025: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1024
  %i.bfp = load i64, ptr %i.aj, align 8
  %i.bfq = add i64 %i.bfp, 1
  call void @_ZdlPvm(ptr noundef %i.bfn, i64 noundef %i.bfq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1027

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1027: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1024, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1025
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.hl

bb.hh:                                            ; preds = %bb.hc, %bb.gr, %bb.gq
  %.pn = phi { ptr, i32 } [ %i.bcj, %bb.gq ], [ %i.bck, %bb.gr ], [ %i.bez, %bb.hc ] ; 2 uses
  %i.bfr = load ptr, ptr %9, align 8              ; 2 uses
  %i.bfs = icmp eq ptr %i.bfr, %i.aj
  br i1 %i.bfs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1030, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1028

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1028: ; preds = %bb.hh
  %i.bft = load i64, ptr %i.aj, align 8
  %i.bfu = add i64 %i.bft, 1
  call void @_ZdlPvm(ptr noundef %i.bfr, i64 noundef %i.bfu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1030

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1030: ; preds = %bb.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1028, %bb.gp
  %.pn.pn = phi { ptr, i32 } [ %i.bci, %bb.gp ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1028 ], [ %.pn, %bb.hh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.hm

bb.hi:                                            ; preds = %bb.b
  %24 = ptrtoaddr ptr %i.bh to i64
  %.not.i1031 = icmp ult ptr %i.bi, %i.bh
  br i1 %.not.i1031, label %.preheader.i1033, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1050

.preheader.i1033:                                 ; preds = %bb.hi
  %i.bfv = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 2 uses
  %i.bfw = icmp eq ptr %i.bi, %i.bfv
  br i1 %i.bfw, label %.critedge.i1036, label %.lr.ph.i1034

.lr.ph.i1034:                                     ; preds = %.preheader.i1033, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1048
  %.sroa.010.021.i1035 = phi ptr [ %i.bfy, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1048 ], [ %i.bi, %.preheader.i1033 ] ; 6 uses
  %i.bfx = load i8, ptr %.sroa.010.021.i1035, align 1
  switch i8 %i.bfx, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1048 [
    i8 13, label %.critedge.i1036
    i8 10, label %.critedge.i1036
    i8 0, label %.critedge.i1036
    i8 12, label %.critedge.i1036
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i1048:           ; preds = %.lr.ph.i1034
  %i.bfy = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i1035, i64 1 ; 4 uses
  %i.bfz = icmp eq ptr %i.bfy, %i.bh
  %i.bga = icmp eq ptr %i.bfy, %i.bfv
  %.0.i.i1049 = or i1 %i.bfz, %i.bga
  br i1 %.0.i.i1049, label %.critedge.i1036, label %.lr.ph.i1034, !llvm.loop !8

.critedge.i1036:                                  ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1048, %.lr.ph.i1034, %.lr.ph.i1034, %.lr.ph.i1034, %.lr.ph.i1034, %.preheader.i1033
  %.sroa.010.0.lcssa.i1037 = phi ptr [ %i.bi, %.preheader.i1033 ], [ %i.bfy, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1048 ], [ %.sroa.010.021.i1035, %.lr.ph.i1034 ], [ %.sroa.010.021.i1035, %.lr.ph.i1034 ], [ %.sroa.010.021.i1035, %.lr.ph.i1034 ], [ %.sroa.010.021.i1035, %.lr.ph.i1034 ] ; 3 uses
  %.not19.i1038 = icmp eq ptr %.sroa.010.0.lcssa.i1037, %i.bh
  br i1 %.not19.i1038, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %.critedge.i1036
  %i.bgb = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i1037, i64 1
  %i.bgc = load i32, ptr %i.ar, align 8
  %i.bgd = add i32 %i.bgc, 1
  store i32 %i.bgd, ptr %i.ar, align 8
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %.critedge.i1036
  %.sroa.010.1.i1039 = phi ptr [ %i.bgb, %bb.hj ], [ %.sroa.010.0.lcssa.i1037, %.critedge.i1036 ] ; 5 uses
  %.not2030.i1040 = icmp eq ptr %.sroa.010.1.i1039, %i.bh
  br i1 %.not2030.i1040, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1050, label %.lr.ph32.preheader.i1041

.lr.ph32.preheader.i1041:                         ; preds = %bb.hk
  %.sroa.010.136.i1042 = ptrtoaddr ptr %.sroa.010.1.i1039 to i64
  %i.bge = sub i64 %24, %.sroa.010.136.i1042
  %scevgep.i1043 = getelementptr i8, ptr %.sroa.010.1.i1039, i64 %i.bge
  br label %.lr.ph32.i1044

.lr.ph32.i1044:                                   ; preds = %.critedge4.i1046, %.lr.ph32.preheader.i1041
  %.sroa.010.231.i1045 = phi ptr [ %i.bgg, %.critedge4.i1046 ], [ %.sroa.010.1.i1039, %.lr.ph32.preheader.i1041 ] ; 3 uses
  %i.bgf = load i8, ptr %.sroa.010.231.i1045, align 1
  switch i8 %i.bgf, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1050 [
    i8 9, label %.critedge4.i1046
    i8 32, label %.critedge4.i1046
  ]

.critedge4.i1046:                                 ; preds = %.lr.ph32.i1044, %.lr.ph32.i1044
  %i.bgg = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i1045, i64 1 ; 2 uses
  %.not20.i1047 = icmp eq ptr %i.bgg, %i.bh
  br i1 %.not20.i1047, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1050, label %.lr.ph32.i1044, !llvm.loop !9

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1050: ; preds = %.lr.ph32.i1044, %.critedge4.i1046, %bb.hi, %bb.hk
  %.sroa.010.3.i1032 = phi ptr [ %i.bi, %bb.hi ], [ %.sroa.010.1.i1039, %bb.hk ], [ %.sroa.010.231.i1045, %.lr.ph32.i1044 ], [ %scevgep.i1043, %.critedge4.i1046 ]
  store ptr %.sroa.010.3.i1032, ptr %i.ae, align 8
  br label %bb.hl

bb.hl:                                            ; preds = %bb.ac, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit212, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1050, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1027, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit574, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit448, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit385, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit268, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit174, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit
  %i.bgh = load ptr, ptr %i.ae, align 8           ; 2 uses
  %i.bgi = load ptr, ptr %i.af, align 8           ; 2 uses
  %.not1073 = icmp eq ptr %i.bgh, %i.bgi
  br i1 %.not1073, label %.loopexit, label %bb.b, !llvm.loop !60

.loopexit:                                        ; preds = %bb.hl, %bb.a
  ret void

bb.hm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1030, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428
  %.pn133.pn.pn = phi { ptr, i32 } [ %.pn133.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428 ], [ %.pn130.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537 ], [ %.pn127.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715 ], [ %.pn124.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1030 ]
  resume { ptr, i32 } %.pn133.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp18ObjFileMtlImporter12getColorRGBAEP9aiColor3D(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 7 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca [1024 x i8], align 16             ; 7 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca [1024 x i8], align 16             ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %i.g, align 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.sroa.06.0.copyload = load ptr, ptr %i.h, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.f, i8 0, i64 1024, i1 false)
  %i.i = getelementptr inbounds i8, ptr %.sroa.06.0.copyload, i64 -1 ; 4 uses
  %i.j = icmp eq ptr %.sroa.07.0.copyload, %.sroa.06.0.copyload
  %i.k = icmp eq ptr %.sroa.07.0.copyload, %i.i
  %.0.i6.i.i.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.0.i6.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.m, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i ], [ %.sroa.07.0.copyload, %bb.a ] ; 3 uses
  %i.l = load i8, ptr %.sroa.0.07.i.i.i, align 1
  switch i8 %i.l, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i:           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 1 ; 4 uses
  %i.n = icmp eq ptr %i.m, %.sroa.06.0.copyload
  %i.o = icmp eq ptr %i.m, %i.i
  %.0.i.i.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %.0.i.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader, label %.lr.ph.i.i.i, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i, %.lr.ph.i.i.i, %bb.a
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.07.0.copyload, %bb.a ], [ %.sroa.0.07.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i: ; preds = %bb.c, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i.i.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader ], [ %i.ab, %bb.c ] ; 13 uses
  %.0.i.i = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader ], [ %i.aa, %bb.c ] ; 11 uses
  %i.p = load i8, ptr %.sroa.0.0.i.i, align 1     ; 2 uses
  switch i8 %i.p, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i [
    i8 32, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 9, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 13, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 10, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 0, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 12, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i:     ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i
  %i.q = icmp eq ptr %.sroa.0.0.i.i, %.sroa.06.0.copyload
  %i.r = icmp eq ptr %.sroa.0.0.i.i, %i.i
  %.0.i.i.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %.0.i.i.i, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0.i.i
  store i8 %i.p, ptr %i.s, align 2
  %i.t = icmp eq i64 %.0.i.i, 1022
  br i1 %i.t, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1: ; preds = %bb.b
  %i.u = or disjoint i64 %.0.i.i, 1               ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1 ; 10 uses
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  switch i8 %i.w, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1 [
    i8 32, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 9, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 13, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 10, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 0, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 12, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1:   ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1
  %i.x = icmp eq ptr %i.v, %.sroa.06.0.copyload
  %i.y = icmp eq ptr %i.v, %i.i
  %.0.i.i.i.1 = select i1 %i.x, i1 true, i1 %i.y
  br i1 %.0.i.i.i.1, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  store i8 %i.w, ptr %i.z, align 1
  %i.aa = add nuw nsw i64 %.0.i.i, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, !llvm.loop !11

_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i, %bb.b
  %.sroa.0.0.i.i.lcssa = phi ptr [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ], [ %.sroa.0.0.i.i, %bb.b ], [ %i.v, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.v, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.v, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.v, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.v, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.v, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.v, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1 ]
  %.1.i.i = phi i64 [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ], [ 1023, %bb.b ], [ %i.u, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.u, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.u, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.u, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.u, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.u, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.u, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1.i.i
  store i8 0, ptr %i.ac, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store float 0.000000e+00, ptr %i.e, align 4
  %i.ad = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i1 noundef zeroext true) ; 0 uses
  %i.ae = load float, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  store ptr %.sroa.0.0.i.i.lcssa, ptr %i.g, align 8
  store float %i.ae, ptr %1, align 4
  %i.af = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ah = icmp ult i8 %i.ag, 14
  %switch.maskindex = zext nneg i8 %i.ag to i16
  %switch.shifted = lshr i16 13313, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.ah, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
  %.sroa.03.0.copyload = load ptr, ptr %i.h, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.d, i8 0, i64 1024, i1 false)
  %i.ai = getelementptr inbounds i8, ptr %.sroa.03.0.copyload, i64 -1 ; 4 uses
  %i.aj = icmp eq ptr %i.af, %.sroa.03.0.copyload
  %i.ak = icmp eq ptr %i.af, %i.ai
  %.0.i6.i.i.i12 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.0.i6.i.i.i12, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.preheader, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i15
  %.sroa.0.07.i.i.i14 = phi ptr [ %i.am, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i15 ], [ %i.af, %_ZN6Assimp9IsLineEndIcEEbT_.exit ] ; 3 uses
  %i.al = load i8, ptr %.sroa.0.07.i.i.i14, align 1
  switch i8 %i.al, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i15
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i15
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i15:         ; preds = %.lr.ph.i.i.i13, %.lr.ph.i.i.i13
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i14, i64 1 ; 4 uses
  %i.an = icmp eq ptr %i.am, %.sroa.03.0.copyload
  %i.ao = icmp eq ptr %i.am, %i.ai
  %.0.i.i.i.i16 = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %.0.i.i.i.i16, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.preheader, label %.lr.ph.i.i.i13, !llvm.loop !10

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i15, %.lr.ph.i.i.i13, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %.sroa.0.0.i.i19.ph = phi ptr [ %i.af, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.sroa.0.07.i.i.i14, %.lr.ph.i.i.i13 ], [ %i.am, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i15 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17: ; preds = %bb.e, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.preheader
  %.sroa.0.0.i.i19 = phi ptr [ %.sroa.0.0.i.i19.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.preheader ], [ %i.bb, %bb.e ] ; 13 uses
  %.0.i.i20 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.preheader ], [ %i.ba, %bb.e ] ; 11 uses
  %i.ap = load i8, ptr %.sroa.0.0.i.i19, align 1  ; 2 uses
  switch i8 %i.ap, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22 [
    i8 32, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 9, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 13, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 10, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 0, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 12, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22:   ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17
  %i.aq = icmp eq ptr %.sroa.0.0.i.i19, %.sroa.03.0.copyload
  %i.ar = icmp eq ptr %.sroa.0.0.i.i19, %i.ai
  %.0.i.i.i23 = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %.0.i.i.i23, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.i.i20
  store i8 %i.ap, ptr %i.as, align 2
end_hunk_4
begin_hunk_5_@_ZN6Assimp18ObjFileMtlImporter16getTextureOptionERbRiRP8aiString:bb.a
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174:  ; preds = %.lr.ph.i.i163
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i164, i64 1 ; 4 uses
  %i.fs = icmp eq ptr %i.fr, %.sroa.0.0.copyload
  %i.ft = icmp eq ptr %i.fr, %i.fn
  %.0.i.i.i175 = select i1 %i.fs, i1 true, i1 %i.ft
  br i1 %.0.i.i.i175, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165, label %.lr.ph.i.i163, !llvm.loop !12

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174, %.lr.ph.i.i163, %.lr.ph.i.i163, %.lr.ph.i.i163, %.lr.ph.i.i163, %.lr.ph.i.i163, %.lr.ph.i.i163, %bb.an
  %.sroa.0.0.lcssa.i.i166 = phi ptr [ %.promoted, %bb.an ], [ %.sroa.0.06.i.i164, %.lr.ph.i.i163 ], [ %.sroa.0.06.i.i164, %.lr.ph.i.i163 ], [ %.sroa.0.06.i.i164, %.lr.ph.i.i163 ], [ %.sroa.0.06.i.i164, %.lr.ph.i.i163 ], [ %.sroa.0.06.i.i164, %.lr.ph.i.i163 ], [ %.sroa.0.06.i.i164, %.lr.ph.i.i163 ], [ %i.fr, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174 ] ; 4 uses
  %i.fu = icmp eq ptr %.sroa.0.0.lcssa.i.i166, %.sroa.0.0.copyload
  %i.fv = icmp eq ptr %.sroa.0.0.lcssa.i.i166, %i.fn
  %.0.i6.i.i167 = select i1 %i.fu, i1 true, i1 %i.fv
  br i1 %.0.i6.i.i167, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176, label %.lr.ph.i8.i168

.lr.ph.i8.i168:                                   ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170
  %.sroa.0.07.i.i169 = phi ptr [ %i.fx, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170 ], [ %.sroa.0.0.lcssa.i.i166, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165 ] ; 3 uses
  %i.fw = load i8, ptr %.sroa.0.07.i.i169, align 1
  switch i8 %i.fw, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170:          ; preds = %.lr.ph.i8.i168, %.lr.ph.i8.i168
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i169, i64 1 ; 4 uses
  %i.fy = icmp eq ptr %i.fx, %.sroa.0.0.copyload
  %i.fz = icmp eq ptr %i.fx, %i.fn
  %.0.i.i9.i171 = select i1 %i.fy, i1 true, i1 %i.fz
  br i1 %.0.i.i9.i171, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176, label %.lr.ph.i8.i168, !llvm.loop !10

_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176: ; preds = %.lr.ph.i8.i168, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165
  %.sroa.035.0.copyload = phi ptr [ %.sroa.0.0.lcssa.i.i166, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165 ], [ %.sroa.0.07.i.i169, %.lr.ph.i8.i168 ], [ %i.fx, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170 ] ; 6 uses
  store ptr %.sroa.035.0.copyload, ptr %i.e, align 8
  br i1 %exitcond.not, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176
  %i.ga = icmp eq ptr %.sroa.035.0.copyload, %.sroa.0.0.copyload
  %i.gb = icmp eq ptr %.sroa.035.0.copyload, %i.fn
  %.0.i5.i.i162.1 = select i1 %i.ga, i1 true, i1 %i.gb
  br i1 %.0.i5.i.i162.1, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.1, label %.lr.ph.i.i163.1

.lr.ph.i.i163.1:                                  ; preds = %bb.ao, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.1
  %.sroa.0.06.i.i164.1 = phi ptr [ %i.gd, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.1 ], [ %.sroa.035.0.copyload, %bb.ao ] ; 8 uses
  %i.gc = load i8, ptr %.sroa.0.06.i.i164.1, align 1
  switch i8 %i.gc, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.1 [
    i8 32, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.1
    i8 9, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.1
    i8 13, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.1
    i8 10, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.1
    i8 0, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.1
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.1
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.1: ; preds = %.lr.ph.i.i163.1
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i164.1, i64 1 ; 4 uses
  %i.ge = icmp eq ptr %i.gd, %.sroa.0.0.copyload
  %i.gf = icmp eq ptr %i.gd, %i.fn
  %.0.i.i.i175.1 = select i1 %i.ge, i1 true, i1 %i.gf
  br i1 %.0.i.i.i175.1, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.1, label %.lr.ph.i.i163.1, !llvm.loop !12

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.1: ; preds = %.lr.ph.i.i163.1, %.lr.ph.i.i163.1, %.lr.ph.i.i163.1, %.lr.ph.i.i163.1, %.lr.ph.i.i163.1, %.lr.ph.i.i163.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.1, %bb.ao
  %.sroa.0.0.lcssa.i.i166.1 = phi ptr [ %.sroa.035.0.copyload, %bb.ao ], [ %.sroa.0.06.i.i164.1, %.lr.ph.i.i163.1 ], [ %.sroa.0.06.i.i164.1, %.lr.ph.i.i163.1 ], [ %.sroa.0.06.i.i164.1, %.lr.ph.i.i163.1 ], [ %.sroa.0.06.i.i164.1, %.lr.ph.i.i163.1 ], [ %.sroa.0.06.i.i164.1, %.lr.ph.i.i163.1 ], [ %.sroa.0.06.i.i164.1, %.lr.ph.i.i163.1 ], [ %i.gd, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.1 ] ; 4 uses
  %i.gg = icmp eq ptr %.sroa.0.0.lcssa.i.i166.1, %.sroa.0.0.copyload
  %i.gh = icmp eq ptr %.sroa.0.0.lcssa.i.i166.1, %i.fn
  %.0.i6.i.i167.1 = select i1 %i.gg, i1 true, i1 %i.gh
  br i1 %.0.i6.i.i167.1, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176.1, label %.lr.ph.i8.i168.1

.lr.ph.i8.i168.1:                                 ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.1, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.1
  %.sroa.0.07.i.i169.1 = phi ptr [ %i.gj, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.1 ], [ %.sroa.0.0.lcssa.i.i166.1, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.1 ] ; 3 uses
  %i.gi = load i8, ptr %.sroa.0.07.i.i169.1, align 1
  switch i8 %i.gi, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176.1 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.1
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.1
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.1:        ; preds = %.lr.ph.i8.i168.1, %.lr.ph.i8.i168.1
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i169.1, i64 1 ; 4 uses
  %i.gk = icmp eq ptr %i.gj, %.sroa.0.0.copyload
  %i.gl = icmp eq ptr %i.gj, %i.fn
  %.0.i.i9.i171.1 = select i1 %i.gk, i1 true, i1 %i.gl
  br i1 %.0.i.i9.i171.1, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176.1, label %.lr.ph.i8.i168.1, !llvm.loop !10

_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176.1: ; preds = %.lr.ph.i8.i168.1, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.1, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.1
  %.sroa.035.0.copyload.1 = phi ptr [ %.sroa.0.0.lcssa.i.i166.1, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.1 ], [ %.sroa.0.07.i.i169.1, %.lr.ph.i8.i168.1 ], [ %i.gj, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.1 ] ; 6 uses
  store ptr %.sroa.035.0.copyload.1, ptr %i.e, align 8
  br i1 %exitcond.not.1, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176.1
  %i.gm = icmp eq ptr %.sroa.035.0.copyload.1, %.sroa.0.0.copyload
  %i.gn = icmp eq ptr %.sroa.035.0.copyload.1, %i.fn
  %.0.i5.i.i162.2 = select i1 %i.gm, i1 true, i1 %i.gn
  br i1 %.0.i5.i.i162.2, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.2, label %.lr.ph.i.i163.2

.lr.ph.i.i163.2:                                  ; preds = %bb.ap, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.2
  %.sroa.0.06.i.i164.2 = phi ptr [ %i.gp, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.2 ], [ %.sroa.035.0.copyload.1, %bb.ap ] ; 8 uses
  %i.go = load i8, ptr %.sroa.0.06.i.i164.2, align 1
  switch i8 %i.go, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.2 [
    i8 32, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.2
    i8 9, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.2
    i8 13, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.2
    i8 10, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.2
    i8 0, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.2
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.2
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.2: ; preds = %.lr.ph.i.i163.2
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i164.2, i64 1 ; 4 uses
  %i.gq = icmp eq ptr %i.gp, %.sroa.0.0.copyload
  %i.gr = icmp eq ptr %i.gp, %i.fn
  %.0.i.i.i175.2 = select i1 %i.gq, i1 true, i1 %i.gr
  br i1 %.0.i.i.i175.2, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.2, label %.lr.ph.i.i163.2, !llvm.loop !12

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.2: ; preds = %.lr.ph.i.i163.2, %.lr.ph.i.i163.2, %.lr.ph.i.i163.2, %.lr.ph.i.i163.2, %.lr.ph.i.i163.2, %.lr.ph.i.i163.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.2, %bb.ap
  %.sroa.0.0.lcssa.i.i166.2 = phi ptr [ %.sroa.035.0.copyload.1, %bb.ap ], [ %.sroa.0.06.i.i164.2, %.lr.ph.i.i163.2 ], [ %.sroa.0.06.i.i164.2, %.lr.ph.i.i163.2 ], [ %.sroa.0.06.i.i164.2, %.lr.ph.i.i163.2 ], [ %.sroa.0.06.i.i164.2, %.lr.ph.i.i163.2 ], [ %.sroa.0.06.i.i164.2, %.lr.ph.i.i163.2 ], [ %.sroa.0.06.i.i164.2, %.lr.ph.i.i163.2 ], [ %i.gp, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.2 ] ; 4 uses
  %i.gs = icmp eq ptr %.sroa.0.0.lcssa.i.i166.2, %.sroa.0.0.copyload
  %i.gt = icmp eq ptr %.sroa.0.0.lcssa.i.i166.2, %i.fn
  %.0.i6.i.i167.2 = select i1 %i.gs, i1 true, i1 %i.gt
  br i1 %.0.i6.i.i167.2, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176.2, label %.lr.ph.i8.i168.2

.lr.ph.i8.i168.2:                                 ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.2, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.2
  %.sroa.0.07.i.i169.2 = phi ptr [ %i.gv, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.2 ], [ %.sroa.0.0.lcssa.i.i166.2, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.2 ] ; 3 uses
  %i.gu = load i8, ptr %.sroa.0.07.i.i169.2, align 1
  switch i8 %i.gu, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176.2 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.2
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.2
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.2:        ; preds = %.lr.ph.i8.i168.2, %.lr.ph.i8.i168.2
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i169.2, i64 1 ; 4 uses
  %i.gw = icmp eq ptr %i.gv, %.sroa.0.0.copyload
  %i.gx = icmp eq ptr %i.gv, %i.fn
  %.0.i.i9.i171.2 = select i1 %i.gw, i1 true, i1 %i.gx
  br i1 %.0.i.i9.i171.2, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176.2, label %.lr.ph.i8.i168.2, !llvm.loop !10

_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176.2: ; preds = %.lr.ph.i8.i168.2, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.2, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.2
  %.sroa.035.0.copyload.2 = phi ptr [ %.sroa.0.0.lcssa.i.i166.2, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.2 ], [ %.sroa.0.07.i.i169.2, %.lr.ph.i8.i168.2 ], [ %i.gv, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.2 ] ; 6 uses
  store ptr %.sroa.035.0.copyload.2, ptr %i.e, align 8
  br i1 %exitcond.not.2, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176.2
  %i.gy = icmp eq ptr %.sroa.035.0.copyload.2, %.sroa.0.0.copyload
  %i.gz = icmp eq ptr %.sroa.035.0.copyload.2, %i.fn
  %.0.i5.i.i162.3 = select i1 %i.gy, i1 true, i1 %i.gz
  br i1 %.0.i5.i.i162.3, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.3, label %.lr.ph.i.i163.3

.lr.ph.i.i163.3:                                  ; preds = %bb.aq, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.3
  %.sroa.0.06.i.i164.3 = phi ptr [ %i.hb, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.3 ], [ %.sroa.035.0.copyload.2, %bb.aq ] ; 8 uses
  %i.ha = load i8, ptr %.sroa.0.06.i.i164.3, align 1
  switch i8 %i.ha, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.3 [
    i8 32, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.3
    i8 9, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.3
    i8 13, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.3
    i8 10, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.3
    i8 0, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.3
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.3
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.3: ; preds = %.lr.ph.i.i163.3
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i164.3, i64 1 ; 4 uses
  %i.hc = icmp eq ptr %i.hb, %.sroa.0.0.copyload
  %i.hd = icmp eq ptr %i.hb, %i.fn
  %.0.i.i.i175.3 = select i1 %i.hc, i1 true, i1 %i.hd
  br i1 %.0.i.i.i175.3, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.3, label %.lr.ph.i.i163.3, !llvm.loop !12

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.3: ; preds = %.lr.ph.i.i163.3, %.lr.ph.i.i163.3, %.lr.ph.i.i163.3, %.lr.ph.i.i163.3, %.lr.ph.i.i163.3, %.lr.ph.i.i163.3, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.3, %bb.aq
  %.sroa.0.0.lcssa.i.i166.3 = phi ptr [ %.sroa.035.0.copyload.2, %bb.aq ], [ %.sroa.0.06.i.i164.3, %.lr.ph.i.i163.3 ], [ %.sroa.0.06.i.i164.3, %.lr.ph.i.i163.3 ], [ %.sroa.0.06.i.i164.3, %.lr.ph.i.i163.3 ], [ %.sroa.0.06.i.i164.3, %.lr.ph.i.i163.3 ], [ %.sroa.0.06.i.i164.3, %.lr.ph.i.i163.3 ], [ %.sroa.0.06.i.i164.3, %.lr.ph.i.i163.3 ], [ %i.hb, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i174.3 ] ; 4 uses
  %i.he = icmp eq ptr %.sroa.0.0.lcssa.i.i166.3, %.sroa.0.0.copyload
  %i.hf = icmp eq ptr %.sroa.0.0.lcssa.i.i166.3, %i.fn
  %.0.i6.i.i167.3 = select i1 %i.he, i1 true, i1 %i.hf
  br i1 %.0.i6.i.i167.3, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176.3, label %.lr.ph.i8.i168.3

.lr.ph.i8.i168.3:                                 ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.3, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.3
  %.sroa.0.07.i.i169.3 = phi ptr [ %i.hh, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.3 ], [ %.sroa.0.0.lcssa.i.i166.3, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.3 ] ; 3 uses
  %i.hg = load i8, ptr %.sroa.0.07.i.i169.3, align 1
  switch i8 %i.hg, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176.3 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.3
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.3
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.3:        ; preds = %.lr.ph.i8.i168.3, %.lr.ph.i8.i168.3
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i169.3, i64 1 ; 4 uses
  %i.hi = icmp eq ptr %i.hh, %.sroa.0.0.copyload
  %i.hj = icmp eq ptr %i.hh, %i.fn
  %.0.i.i9.i171.3 = select i1 %i.hi, i1 true, i1 %i.hj
  br i1 %.0.i.i9.i171.3, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176.3, label %.lr.ph.i8.i168.3, !llvm.loop !10

_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit176.3: ; preds = %.lr.ph.i8.i168.3, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.3, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.3
  %.sroa.035.0.copyload.3 = phi ptr [ %.sroa.0.0.lcssa.i.i166.3, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i165.3 ], [ %.sroa.0.07.i.i169.3, %.lr.ph.i8.i168.3 ], [ %i.hh, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i170.3 ] ; 2 uses
  store ptr %.sroa.035.0.copyload.3, ptr %i.e, align 8
  br label %.loopexit

.critedge:                                        ; preds = %bb.b, %.loopexit, %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZN6Assimp7getNameIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EE(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = ptrtoaddr ptr %0 to i64
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull @.str.1, i64 noundef 0) ; 0 uses
  %i.e = icmp eq ptr %0, %1
  %i.f = getelementptr inbounds i8, ptr %1, i64 -1 ; 2 uses
  %i.g = icmp eq ptr %0, %i.f
  %.0.i = select i1 %i.e, i1 true, i1 %i.g
  br i1 %.0.i, label %bb.i, label %.preheader26

.preheader26:                                     ; preds = %bb.a, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %.sroa.018.027 = phi ptr [ %i.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %0, %bb.a ] ; 6 uses
  %i.h = load i8, ptr %.sroa.018.027, align 1
  switch i8 %i.h, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 0, label %.critedge
    i8 12, label %.critedge
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %.preheader26
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.027, i64 1 ; 4 uses
  %i.j = icmp eq ptr %i.i, %1
  %i.k = icmp eq ptr %i.i, %i.f
  %.0.i13 = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.0.i13, label %.critedge, label %.preheader26, !llvm.loop !91

.critedge:                                        ; preds = %.preheader26, %.preheader26, %.preheader26, %.preheader26, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %.sroa.018.0.lcssa = phi ptr [ %.sroa.018.027, %.preheader26 ], [ %.sroa.018.027, %.preheader26 ], [ %.sroa.018.027, %.preheader26 ], [ %.sroa.018.027, %.preheader26 ], [ %i.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit ] ; 3 uses
  %.sroa.018.0.lcssa28 = ptrtoaddr ptr %.sroa.018.0.lcssa to i64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %.sroa.018.0.lcssa28, %.critedge ] ; 2 uses
  %.sroa.018.1 = phi ptr [ %i.s, %bb.c ], [ %.sroa.018.0.lcssa, %.critedge ] ; 2 uses
  %i.l = load i8, ptr %.sroa.018.1, align 1
  switch i8 %i.l, label %.preheader.preheader [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

.preheader.preheader:                             ; preds = %bb.b
  %i.m = sub i64 0, %.sroa.018.0.lcssa28
  %scevgep = getelementptr i8, ptr %.sroa.018.0.lcssa, i64 %i.m
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %indvars.iv)
  %scevgep29 = getelementptr i8, ptr %scevgep, i64 %umax ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.n, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %5 = ptrtoint ptr %scevgep29 to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %5, %i.p                         ; 4 uses
  store i64 %i.q, ptr %i.a, align 8
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.s = getelementptr inbounds i8, ptr %.sroa.018.1, i64 -1
  %indvars.iv.next = add i64 %indvars.iv, -1
  br label %bb.b, !llvm.loop !92

.noexc.i:                                         ; preds = %.preheader.preheader
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %4, align 8
  %i.u = load i64, ptr %i.a, align 8
  store i64 %i.u, ptr %i.n, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.preheader.preheader
  %i.v = phi ptr [ %i.t, %.noexc.i ], [ %i.n, %.preheader.preheader ] ; 2 uses
  switch i64 %i.q, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %0, align 1
  store i8 %i.w, ptr %i.v, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %0, i64 %i.q, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.x = load i64, ptr %i.a, align 8              ; 2 uses
  store i64 %i.x, ptr %i.o, align 8
  %i.y = load ptr, ptr %4, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.aa = load i64, ptr %i.o, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %4, align 8               ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.n
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.af = load i64, ptr %i.n, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.g, %bb.f
  %i.ah = load ptr, ptr %4, align 8               ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.n
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.aj = load i64, ptr %i.n, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.ac

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.sroa.09.0 = phi ptr [ %scevgep29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %1, %bb.a ]
  ret ptr %.sroa.09.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZ12ai_trim_leftRS8_EUlhE_EEET_SF_SF_T0_St26random_access_iterator_tag(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 2                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = and i64 %i.c, -4
  %scevgep = getelementptr i8, ptr %0, i64 %i.f   ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.051 = phi i64 [ %i.w, %bb.e ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.sroa.031.050 = phi ptr [ %i.v, %bb.e ], [ %0, %.lr.ph.preheader ] ; 9 uses
  %i.g = load i8, ptr %.sroa.031.050, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = tail call i32 @isspace(i32 noundef %i.h) #26
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 @isspace(i32 noundef %i.l) #26
  %.not.i.i16 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i16, label %.loopexit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 @isspace(i32 noundef %i.p) #26
  %.not.i.i17 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i17, label %.loopexit.loopexit.split.loop.exit56, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 3
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = tail call i32 @isspace(i32 noundef %i.t) #26
  %.not.i.i18 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i18, label %.loopexit.loopexit.split.loop.exit58, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 4
  %i.w = add nsw i64 %.051, -1
  %i.x = icmp sgt i64 %.051, 1
  br i1 %i.x, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !93

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = ptrtoint ptr %scevgep to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %.sroa.031.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 5 uses
  %i.y = sub i64 %i.a, %.pre-phi
  switch i64 %i.y, label %.loopexit [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.z = load i8, ptr %.sroa.031.0.lcssa, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = tail call i32 @isspace(i32 noundef %i.aa) #26
  %.not.i.i19 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i19, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.031.1 = phi ptr [ %i.ac, %bb.g ], [ %.sroa.031.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ad = load i8, ptr %.sroa.031.1, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = tail call i32 @isspace(i32 noundef %i.ae) #26
  %.not.i.i20 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i20, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.031.1, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.031.2 = phi ptr [ %i.ag, %bb.i ], [ %.sroa.031.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ah = load i8, ptr %.sroa.031.2, align 1
  %i.ai = zext i8 %i.ah to i32
end_hunk_5
