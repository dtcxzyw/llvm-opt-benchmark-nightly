Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/DeboneProcess?download=true
inline.NumInlined: 781
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6Assimp13DeboneProcess10UpdateNodeEP6aiNode:bb.a
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit65

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i57
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZNSt6vectorIjSaIjEE9push_backERKj.exit65:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i62, %bb.j, %.lr.ph137
  %.sroa.0.5 = phi ptr [ %.sroa.0.4132, %.lr.ph137 ], [ %i.by, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i62 ], [ %.sroa.0.4132, %bb.j ] ; 2 uses
  %.sroa.12.5 = phi ptr [ %.sroa.12.4133, %.lr.ph137 ], [ %i.cc, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i62 ], [ %i.bn, %bb.j ] ; 2 uses
  %.sroa.22.5 = phi ptr [ %.sroa.22.4134, %.lr.ph137 ], [ %i.cd, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i62 ], [ %.sroa.22.4134, %bb.j ] ; 2 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %._crit_edge138, label %.lr.ph137, !llvm.loop !52

bb.o:                                             ; preds = %._crit_edge147
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 1128 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.cf) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.ce, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge147
  %i.ch = ptrtoint ptr %.sroa.12.3.lcssa to i64
  %i.ci = ptrtoint ptr %.sroa.0.3.lcssa to i64    ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 5 uses
  %i.ck = lshr exact i64 %i.cj, 2
  %i.cl = trunc i64 %i.ck to i32                  ; 2 uses
  store i32 %i.cl, ptr %i.a, align 8
  %.not52 = icmp eq i32 %i.cl, 0
  br i1 %.not52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = and i64 %i.cj, 17179869180
  %i.cn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cm) #20
          to label %bb.t unwind label %bb.x       ; 3 uses

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 1128
  store ptr %i.cn, ptr %i.co, align 8
  %i.cp = icmp sgt i64 %i.cj, 4
  br i1 %i.cp, label %bb.u, label %bb.v, !prof !23

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr align 4 %.sroa.0.3.lcssa, i64 %i.cj, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.t
  %i.cq = icmp eq i64 %i.cj, 4
  br i1 %i.cq, label %bb.w, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.v
  %i.cr = load i32, ptr %.sroa.0.3.lcssa, align 4
  store i32 %i.cr, ptr %i.cn, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit

bb.x:                                             ; preds = %bb.s
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.w, %bb.v, %bb.u, %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8
  %.not158 = icmp eq i32 %i.cu, 0
  br i1 %.not158, label %._crit_edge153, label %.lr.ph152

.lr.ph152:                                        ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 1112
  br label %bb.z

._crit_edge153:                                   ; preds = %bb.aa, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit
  %.not.i.i.i66 = icmp eq ptr %.sroa.0.3.lcssa, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge153
  %i.cw = ptrtoint ptr %.sroa.22.3.lcssa to i64
  %i.cx = sub i64 %i.cw, %i.ci
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3.lcssa, i64 noundef %i.cx) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge153, %bb.y
  ret void

bb.z:                                             ; preds = %.lr.ph152, %bb.aa
  %indvars.iv183 = phi i64 [ 0, %.lr.ph152 ], [ %indvars.iv.next184, %bb.aa ] ; 2 uses
  %i.cy = load ptr, ptr %i.cv, align 8
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv183
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void @_ZNK6Assimp13DeboneProcess10UpdateNodeEP6aiNode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.da)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %i.db = load i32, ptr %i.ct, align 8
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp samesign ult i64 %indvars.iv.next184, %i.dc
  br i1 %i.dd, label %bb.z, label %._crit_edge153, !llvm.loop !53

bb.ab:                                            ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit84, %.loopexit.split-lp85, %bb.ab, %bb.x
  %.sroa.0.6 = phi ptr [ %.sroa.0.3.lcssa, %bb.x ], [ %.sroa.0.1117, %.loopexit.split-lp85 ], [ %.sroa.0.3.lcssa, %bb.ab ], [ %.sroa.0.1117, %.loopexit84 ], [ %.sroa.0.4132, %.loopexit ], [ %.sroa.0.4132, %.loopexit.split-lp ] ; 3 uses
  %.sroa.22.6 = phi ptr [ %.sroa.22.3.lcssa, %bb.x ], [ %.sroa.22.1119, %.loopexit.split-lp85 ], [ %.sroa.22.3.lcssa, %bb.ab ], [ %.sroa.22.1119, %.loopexit84 ], [ %.sroa.22.4134, %.loopexit ], [ %.sroa.22.4134, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.x ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp85 ], [ %i.de, %bb.ab ], [ %lpad.loopexit86, %.loopexit84 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i67 = icmp eq ptr %.sroa.0.6, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIjSaIjEED2Ev.exit68, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = ptrtoint ptr %.sroa.22.6 to i64
  %i.dg = ptrtoint ptr %.sroa.0.6 to i64
  %i.dh = sub i64 %i.df, %i.dg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.6, i64 noundef %i.dh) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit68

_ZNSt6vectorIjSaIjEED2Ev.exit68:                  ; preds = %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp13DeboneProcess14ApplyTransformEP6aiMeshRK12aiMatrix4x4tIfE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 4 dereferenceable(64) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %3 = alloca %class.aiMatrix4x4t, align 8        ; 13 uses
  %i.a = tail call noundef zeroext i1 @_ZNK12aiMatrix4x4tIfE10IsIdentityEf(ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef f0x3C23D70A)
  br i1 %i.a, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i = icmp ne ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp ne i32 %i.e, 0
  %i.g = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %i.g, label %.lr.ph, label %.loopexit104

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 44
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load <3 x float>, ptr %i.m, align 4      ; 5 uses
  %i.p = load float, ptr %i.m, align 4
  %i.q = load <8 x float>, ptr %2, align 4        ; 4 uses
  %i.r = shufflevector <3 x float> %i.o, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.s = shufflevector <8 x float> %i.q, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.t = fmul <2 x float> %i.r, %i.s
  %i.u = shufflevector <8 x float> %i.q, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.v = shufflevector <3 x float> %i.o, <3 x float> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.v, <2 x float> %i.t)
  %i.x = shufflevector <8 x float> %i.q, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.y = shufflevector <3 x float> %i.o, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.y, <2 x float> %i.w)
  %i.aa = shufflevector <8 x float> %i.q, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ab = fadd <2 x float> %i.z, %i.aa
  %i.ac = load float, ptr %i.h, align 4
  %i.ad = load float, ptr %i.i, align 4
  %i.ae = extractelement <3 x float> %i.o, i64 1
  %i.af = fmul float %i.ae, %i.ad
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.p, float %i.af)
  %i.ah = load float, ptr %i.j, align 4
  %i.ai = extractelement <3 x float> %i.o, i64 2
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ai, float %i.ag)
  %i.ak = load float, ptr %i.k, align 4
  %i.al = fadd float %i.ak, %i.aj
  store <2 x float> %i.ab, ptr %i.m, align 4
  store float %i.al, ptr %i.n, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.d, align 4             ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.c, label %.loopexit104, !llvm.loop !54

.loopexit104:                                     ; preds = %bb.c, %bb.b
  %i.ap = phi i32 [ %i.e, %bb.b ], [ %i.am, %bb.c ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %.not.i47 = icmp ne ptr %i.ar, null
  %i.as = icmp ne i32 %i.ap, 0
  %i.at = select i1 %.not.i47, i1 %i.as, i1 false
  br i1 %i.at, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit104
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %.not.i48 = icmp eq ptr %i.av, null
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not1.i = icmp eq ptr %i.ax, null
  %or.cond.i.not101 = select i1 %.not.i48, i1 true, i1 %.not1.i
  %.not = icmp eq i32 %i.ap, 0
  %brmerge.not = select i1 %or.cond.i.not101, i1 true, i1 %.not
  br i1 %brmerge.not, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false)
  %i.ay = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %3) ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 36 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.bf = load float, ptr %i.bd, align 4
  %i.bg = load float, ptr %i.be, align 4
  store float %i.bg, ptr %i.bd, align 4
  store float %i.bf, ptr %i.be, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = load <12 x float>, ptr %i.az, align 4
  store float %i.bc, ptr %i.ba, align 4
  store float %i.bj, ptr %i.bh, align 4
  %i.bl = shufflevector <12 x float> %i.bk, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.bl, ptr %i.az, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 52 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 28 ; 2 uses
  %i.bo = load float, ptr %i.bm, align 4
  %i.bp = load float, ptr %i.bn, align 4
  store float %i.bp, ptr %i.bm, align 4
  store float %i.bo, ptr %i.bn, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 56 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 44 ; 2 uses
  %i.bs = load float, ptr %i.bq, align 4
  %i.bt = load float, ptr %i.br, align 4
  store float %i.bt, ptr %i.bq, align 4
  store float %i.bs, ptr %i.br, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load float, ptr %i.bv, align 8          ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bz = load <2 x float>, ptr %3, align 8       ; 3 uses
  %i.ca = load float, ptr %i.bu, align 4          ; 3 uses
  %i.cb = load <2 x float>, ptr %i.bx, align 8    ; 3 uses
  %i.cc = load float, ptr %i.by, align 4          ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ce = load float, ptr %i.cd, align 8          ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cg = load float, ptr %i.cf, align 8          ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ci = load float, ptr %i.ch, align 4          ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ck = load float, ptr %i.cj, align 8          ; 3 uses
  %i.cl = load ptr, ptr %i.aq, align 8
  %.not.i49 = icmp ne ptr %i.cl, null
  %i.cm = load i32, ptr %i.d, align 4             ; 2 uses
  %i.cn = icmp ne i32 %i.cm, 0
  %i.co = select i1 %.not.i49, i1 %i.cn, i1 false
  br i1 %i.co, label %.lr.ph107.preheader, label %.loopexit

.lr.ph107.preheader:                              ; preds = %bb.e
  %i.cp = extractelement <2 x float> %i.bz, i64 0
  %i.cq = extractelement <2 x float> %i.cb, i64 0
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %_ZN10aiVector3tIfE9NormalizeEv.exit
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ 0, %.lr.ph107.preheader ] ; 2 uses
  %i.cr = load ptr, ptr %i.aq, align 8
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.cr, i64 %indvars.iv114 ; 4 uses
  %i.ct = load float, ptr %i.cs, align 4          ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cv = load float, ptr %i.cu, align 4          ; 3 uses
  %i.cw = fmul float %i.ca, %i.cv
  %i.cx = call float @llvm.fmuladd.f32(float %i.cp, float %i.ct, float %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4          ; 3 uses
  %i.da = call float @llvm.fmuladd.f32(float %i.bw, float %i.cz, float %i.cx) ; 4 uses
  %.sroa.0.0.vec.insert.i50 = insertelement <2 x float> poison, float %i.da, i64 0
  %i.db = fmul float %i.cc, %i.cv
  %i.dc = call float @llvm.fmuladd.f32(float %i.cq, float %i.ct, float %i.db)
  %i.dd = call float @llvm.fmuladd.f32(float %i.ce, float %i.cz, float %i.dc) ; 4 uses
  %.sroa.0.4.vec.insert.i51 = insertelement <2 x float> %.sroa.0.0.vec.insert.i50, float %i.dd, i64 1
  %i.de = fmul float %i.ci, %i.cv
  %i.df = call float @llvm.fmuladd.f32(float %i.cg, float %i.ct, float %i.de)
  %i.dg = call float @llvm.fmuladd.f32(float %i.ck, float %i.cz, float %i.df) ; 4 uses
  %i.dh = fmul float %i.dd, %i.dd
  %i.di = call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.dh)
  %i.dj = call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.di) ; 2 uses
  %i.dk = fcmp oeq float %i.dj, 0.000000e+00
  br i1 %i.dk, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %.lr.ph107
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.dj)
  %i.dl = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.dm = fmul float %i.da, %i.dl
  %.sroa.078.0.vec.insert = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dn = fmul float %i.dd, %i.dl
  %.sroa.078.4.vec.insert = insertelement <2 x float> %.sroa.078.0.vec.insert, float %i.dn, i64 1
  %i.do = fmul float %i.dg, %i.dl
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %.lr.ph107, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.881.0 = phi float [ %i.dg, %.lr.ph107 ], [ %i.do, %_ZN10aiVector3tIfEdVEf.exit.i ]
  %.sroa.078.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i51, %.lr.ph107 ], [ %.sroa.078.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i ]
  store <2 x float> %.sroa.078.0, ptr %i.cs, align 4
  store float %.sroa.881.0, ptr %i.cy, align 4
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.dp = load i32, ptr %i.d, align 4             ; 2 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %indvars.iv.next115, %i.dq
  br i1 %i.dr, label %.lr.ph107, label %.loopexit, !llvm.loop !55

.loopexit:                                        ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %bb.e
  %i.ds = phi i32 [ %i.cm, %bb.e ], [ %i.dp, %_ZN10aiVector3tIfE9NormalizeEv.exit ]
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8
  %.not.i54 = icmp eq ptr %i.du, null
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8
  %.not1.i55 = icmp eq ptr %i.dw, null
  %or.cond.i56 = select i1 %.not.i54, i1 true, i1 %.not1.i55
  %.not.a = icmp eq i32 %i.ds, 0
  %or.cond = select i1 %or.cond.i56, i1 true, i1 %.not.a
  br i1 %or.cond, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit57.thread, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %.loopexit
  %i.dx = extractelement <2 x float> %i.bz, i64 0
  %i.dy = extractelement <2 x float> %i.cb, i64 0
  %i.dz = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.cc, i64 1
  %i.eb = shufflevector <2 x float> %i.bz, <2 x float> %i.cb, <2 x i32> <i32 0, i32 2>
  %i.ec = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ed = insertelement <2 x float> %i.ec, float %i.ce, i64 1
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %_ZN10aiVector3tIfE9NormalizeEv.exit71
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %_ZN10aiVector3tIfE9NormalizeEv.exit71 ], [ 0, %.lr.ph109.preheader ] ; 3 uses
  %i.ee = load ptr, ptr %i.dt, align 8
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %indvars.iv117 ; 4 uses
  %i.eg = load float, ptr %i.ef, align 4          ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ei = load float, ptr %i.eh, align 4          ; 3 uses
  %i.ej = fmul float %i.ca, %i.ei
  %i.ek = call float @llvm.fmuladd.f32(float %i.dx, float %i.eg, float %i.ej)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.em = load float, ptr %i.el, align 4          ; 3 uses
  %i.en = call float @llvm.fmuladd.f32(float %i.bw, float %i.em, float %i.ek) ; 4 uses
  %.sroa.0.0.vec.insert.i58 = insertelement <2 x float> poison, float %i.en, i64 0
  %i.eo = fmul float %i.cc, %i.ei
  %i.ep = call float @llvm.fmuladd.f32(float %i.dy, float %i.eg, float %i.eo)
  %i.eq = call float @llvm.fmuladd.f32(float %i.ce, float %i.em, float %i.ep) ; 4 uses
  %.sroa.0.4.vec.insert.i59 = insertelement <2 x float> %.sroa.0.0.vec.insert.i58, float %i.eq, i64 1
  %i.er = fmul float %i.ci, %i.ei
  %i.es = call float @llvm.fmuladd.f32(float %i.cg, float %i.eg, float %i.er)
  %i.et = call float @llvm.fmuladd.f32(float %i.ck, float %i.em, float %i.es) ; 4 uses
  %i.eu = fmul float %i.eq, %i.eq
  %i.ev = call float @llvm.fmuladd.f32(float %i.en, float %i.en, float %i.eu)
  %i.ew = call noundef float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.ev) ; 2 uses
  %i.ex = fcmp oeq float %i.ew, 0.000000e+00
  br i1 %i.ex, label %_ZN10aiVector3tIfE9NormalizeEv.exit64, label %_ZN10aiVector3tIfEdVEf.exit.i62

_ZN10aiVector3tIfEdVEf.exit.i62:                  ; preds = %.lr.ph109
  %sqrt.i.i63 = call noundef float @llvm.sqrt.f32(float %i.ew)
  %i.ey = fdiv float 1.000000e+00, %sqrt.i.i63    ; 3 uses
  %i.ez = fmul float %i.en, %i.ey
  %.sroa.074.0.vec.insert = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fa = fmul float %i.eq, %i.ey
  %.sroa.074.4.vec.insert = insertelement <2 x float> %.sroa.074.0.vec.insert, float %i.fa, i64 1
  %i.fb = fmul float %i.et, %i.ey
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit64

_ZN10aiVector3tIfE9NormalizeEv.exit64:            ; preds = %.lr.ph109, %_ZN10aiVector3tIfEdVEf.exit.i62
  %.sroa.877.0 = phi float [ %i.et, %.lr.ph109 ], [ %i.fb, %_ZN10aiVector3tIfEdVEf.exit.i62 ]
  %.sroa.074.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i59, %.lr.ph109 ], [ %.sroa.074.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i62 ]
  store <2 x float> %.sroa.074.0, ptr %i.ef, align 4
  store float %.sroa.877.0, ptr %i.el, align 4
  %i.fc = load ptr, ptr %i.dv, align 8
  %i.fd = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %indvars.iv117 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.fg = load float, ptr %i.fe, align 4          ; 2 uses
  %i.fh = load float, ptr %i.fd, align 4          ; 2 uses
  %i.fi = load float, ptr %i.ff, align 4          ; 2 uses
  %i.fj = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x float> %i.ea, %i.fk
  %i.fm = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.fn, <2 x float> %i.fl)
  %i.fp = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.fq, <2 x float> %i.fo) ; 5 uses
  %i.fs = fmul float %i.ci, %i.fg
  %i.ft = call float @llvm.fmuladd.f32(float %i.cg, float %i.fh, float %i.fs)
  %i.fu = call float @llvm.fmuladd.f32(float %i.ck, float %i.fi, float %i.ft) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.fr, %i.fr
  %i.fv = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fw = extractelement <2 x float> %i.fr, i64 0 ; 2 uses
  %i.fx = call float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %i.fv)
  %i.fy = call noundef float @llvm.fmuladd.f32(float %i.fu, float %i.fu, float %i.fx) ; 2 uses
  %i.fz = fcmp oeq float %i.fy, 0.000000e+00
end_hunk_0
