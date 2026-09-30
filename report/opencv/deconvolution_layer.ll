Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/deconvolution_layer?download=true
inline.NumInlined: 1197
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv3dnn22DeConvolutionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i285: ; preds = %bb.eh
  %i.lv = load i64, ptr %i.lt, align 8, !tbaa !22
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i286: ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i285
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.body263

bb.ei:                                            ; preds = %.lr.ph, %bb.eq
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.eq ] ; 4 uses
  %i.lx = add nuw nsw i64 %indvars.iv, 2          ; 4 uses
  %i.ly = load i32, ptr %i.hr, align 4, !tbaa !69
  %i.lz = sext i32 %i.ly to i64
  %i.ma = icmp slt i64 %i.lx, %i.lz
  br i1 %i.ma, label %bb.em, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc297 unwind label %bb.er

.noexc297:                                        ; preds = %bb.ej
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.16, i32 noundef 103) #24
          to label %bb.ek unwind label %bb.el

bb.ek:                                            ; preds = %.noexc297
  unreachable

bb.el:                                            ; preds = %.noexc297
  %i.mb = landingpad { ptr, i32 }
          cleanup
  %i.mc = load ptr, ptr %14, align 8, !tbaa !46   ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.me = icmp eq ptr %i.mc, %i.md
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i294: ; preds = %bb.el
  %i.mf = load i64, ptr %i.md, align 8, !tbaa !22
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i295: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.body263

bb.em:                                            ; preds = %bb.ei
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.lx
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !58
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0545.0600, i64 %indvars.iv
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !58
  %i.mk = icmp slt i64 %i.lx, %i.kg
  br i1 %i.mk, label %bb.eq, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc306 unwind label %bb.er

.noexc306:                                        ; preds = %bb.en
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.16, i32 noundef 97) #24
          to label %bb.eo unwind label %bb.ep

bb.eo:                                            ; preds = %.noexc306
  unreachable

bb.ep:                                            ; preds = %.noexc306
  %i.ml = landingpad { ptr, i32 }
          cleanup
  %i.mm = load ptr, ptr %12, align 8, !tbaa !46   ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.mo = icmp eq ptr %i.mm, %i.mn
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i303: ; preds = %bb.ep
  %i.mp = load i64, ptr %i.mn, align 8, !tbaa !22
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i304

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i304: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body263

bb.eq:                                            ; preds = %bb.em
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.lx
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !58
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %indvars.iv
  store i32 %i.ms, ptr %i.mt, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit626, label %bb.ei, !llvm.loop !175

bb.er:                                            ; preds = %bb.en, %bb.ej
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %.body263

.loopexit626.sink.split:                          ; preds = %bb.ee, %bb.du
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.du ], [ %.sink.sroa.gep1427, %bb.ee ]
  %i.mv = load i32, ptr %.sink.sroa.phi, align 4, !tbaa !58
  store i32 %i.mv, ptr %i.jz, align 4, !tbaa !58
  br label %.loopexit626

.loopexit626:                                     ; preds = %bb.eq, %.loopexit626.sink.split, %.preheader625
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 320
  invoke void @_ZN2cv3dnn19getConvPoolPaddingsERKSt6vectorIiSaIiEERKS1_ImSaImEES9_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_SI_(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %i.mw, ptr noundef nonnull align 8 dereferenceable(32) %i.mx, ptr noundef nonnull align 8 dereferenceable(24) %i.my, ptr noundef nonnull align 8 dereferenceable(24) %i.mz)
          to label %bb.es unwind label %bb.dz

bb.es:                                            ; preds = %.loopexit626
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !55
  %i.nc = load ptr, ptr %i.my, align 8, !tbaa !56 ; 3 uses
  %i.nd = ptrtoint ptr %i.nb to i64
  %i.ne = ptrtoint ptr %i.nc to i64
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = icmp eq i64 %i.nf, 16
  br i1 %i.ng, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !57
  %i.nj = load i64, ptr %i.nc, align 8, !tbaa !57
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 172
  %.sroa.4.0.insert.ext = shl i64 %i.nj, 32
  %.sroa.0542.0.insert.ext = and i64 %i.ni, 4294967295
  %.sroa.0542.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.ext, %.sroa.0542.0.insert.ext
  store i64 %.sroa.0542.0.insert.insert, ptr %i.nk, align 4, !tbaa !58
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  %i.nl = load ptr, ptr %31, align 8, !tbaa !72
  %i.nm = mul nsw i32 %i.jb, %i.dg
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %54, ptr noundef nonnull align 8 dereferenceable(208) %i.nl, i32 noundef 1, i32 noundef %i.nm)
          to label %bb.ev unwind label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #22
  %i.nn = mul nsw i32 %i.jb, %i.cu
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %55, ptr noundef nonnull align 8 dereferenceable(208) %51, i32 noundef 1, i32 noundef %i.nn)
          to label %.preheader624 unwind label %bb.ex

.preheader624:                                    ; preds = %bb.ev
  %i.no = icmp sgt i32 %i.jb, 0
  br i1 %i.no, label %.preheader.lr.ph, label %._crit_edge770

.preheader.lr.ph:                                 ; preds = %.preheader624
  %i.np = getelementptr inbounds nuw i8, ptr %57, i64 4
  %i.nq = getelementptr inbounds nuw i8, ptr %59, i64 4
  %i.nr = getelementptr inbounds nuw i8, ptr %61, i64 4
  %i.ns = getelementptr inbounds nuw i8, ptr %63, i64 4
  %i.nt = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.nv = getelementptr inbounds nuw i8, ptr %64, i64 24
  %i.nw = getelementptr inbounds nuw i8, ptr %64, i64 32
  %i.nx = getelementptr inbounds nuw i8, ptr %64, i64 36
  %i.ny = getelementptr inbounds nuw i8, ptr %64, i64 37
  %i.nz = getelementptr inbounds nuw i8, ptr %64, i64 38
  %i.oa = getelementptr inbounds nuw i8, ptr %64, i64 39
  %i.ob = getelementptr inbounds nuw i8, ptr %64, i64 40
  %i.oc = getelementptr inbounds nuw i8, ptr %65, i64 4
  %i.od = sitofp i32 %i.dt to double
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.oh = getelementptr inbounds nuw i8, ptr %56, i64 24 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %62, i64 24
  %i.oj = zext i1 %i.ds to i8
  %i.ok = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.oo = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.op = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 6 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 6 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 6 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 6 uses
  %i.pc = ptrtoint ptr %.0.i.i.i.i.i602 to i64    ; 2 uses
  %i.pd = ptrtoint ptr %.sroa.0545.0600 to i64
  %i.pe = sub i64 %i.pc, %i.pd                    ; 10 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 3 uses
  %i.ph = icmp sgt i64 %i.pe, 4                   ; 2 uses
  %i.pi = icmp eq i64 %i.pe, 4                    ; 2 uses
  %i.pj = icmp ugt i64 %i.pe, 9223372036854775804
  %i.pk = getelementptr inbounds nuw i8, ptr %6, i64 184
  %i.pl = getelementptr inbounds nuw i8, ptr %6, i64 188
  %i.pm = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.pn = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.po = load i32, ptr %i.ab, align 8, !tbaa !54 ; 2 uses
  %i.pp = icmp sgt i32 %i.po, 0
  br i1 %i.pp, label %.preheader, label %._crit_edge770

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.pq = phi i32 [ %i.pv, %._crit_edge ], [ %i.po, %.preheader.lr.ph ] ; 3 uses
  %.0124769 = phi i32 [ %i.pw, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.pr = icmp sgt i32 %i.pq, 0
  br i1 %i.pr, label %.lr.ph768, label %._crit_edge

._crit_edge770:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader624
  %i.ps = icmp eq i32 %i.h, 720896
  br i1 %i.ps, label %bb.ka, label %bb.ki

bb.ew:                                            ; preds = %bb.eu
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

bb.ex:                                            ; preds = %bb.ev
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.kq

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit381, %.preheader
  %i.pv = phi i32 [ %i.pq, %.preheader ], [ %i.afd, %_ZNSt6vectorIiSaIiEED2Ev.exit381 ]
  %i.pw = add nuw nsw i32 %.0124769, 1            ; 2 uses
  %exitcond900.not = icmp eq i32 %i.pw, %i.jb
  br i1 %exitcond900.not, label %._crit_edge770, label %.preheader, !llvm.loop !176

.lr.ph768:                                        ; preds = %.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit381
  %i.px = phi i32 [ %i.afd, %_ZNSt6vectorIiSaIiEED2Ev.exit381 ], [ %i.pq, %.preheader ]
  %.0123767 = phi i32 [ %i.afc, %_ZNSt6vectorIiSaIiEED2Ev.exit381 ], [ 0, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  %i.py = mul nuw nsw i32 %i.px, %.0124769
  %i.pz = add nsw i32 %i.py, %.0123767
  %i.qa = mul nsw i32 %i.pz, %i.hc                ; 2 uses
  %i.qb = add nsw i32 %i.qa, %i.hc
  store i32 %i.qa, ptr %57, align 4, !tbaa !98
  store i32 %i.qb, ptr %i.np, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !193
  store i64 9223372034707292160, ptr %11, align 8, !noalias !193
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %56, ptr noundef nonnull align 8 dereferenceable(208) %55, ptr noundef nonnull align 4 dereferenceable(8) %57, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.ey unwind label %bb.jm

bb.ey:                                            ; preds = %.lr.ph768
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #22
  %i.qc = load ptr, ptr %32, align 8              ; 2 uses
  %spec.select = select i1 %i.ds, ptr %56, ptr %i.qc
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  %i.qd = load i32, ptr %i.ab, align 8, !tbaa !54
  %i.qe = mul nsw i32 %i.qd, %.0124769
  %i.qf = add nsw i32 %i.qe, %.0123767
  %i.qg = mul nsw i32 %i.qf, %i.hb                ; 2 uses
  %i.qh = add nsw i32 %i.qg, %i.hb
  store i32 %i.qg, ptr %59, align 4, !tbaa !98
  store i32 %i.qh, ptr %i.nq, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !194
  store i64 9223372034707292160, ptr %10, align 8, !noalias !194
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %58, ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 4 dereferenceable(8) %59, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.ez unwind label %bb.jn

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  %i.qi = mul nsw i32 %.0123767, %i.hb            ; 2 uses
  %i.qj = add nsw i32 %i.qi, %i.hb
  store i32 %i.qi, ptr %61, align 4, !tbaa !98
  store i32 %i.qj, ptr %i.nr, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !195
  store i64 9223372034707292160, ptr %9, align 8, !noalias !195
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %60, ptr noundef nonnull align 8 dereferenceable(208) %i.ep, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %61)
          to label %bb.fa unwind label %bb.jo

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !195
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #22
  %i.qk = mul nsw i32 %.0123767, %i.hc            ; 2 uses
  %i.ql = add nsw i32 %i.qk, %i.hc
  store i32 %i.qk, ptr %63, align 4, !tbaa !98
  store i32 %i.ql, ptr %i.ns, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !196
  store i64 9223372034707292160, ptr %8, align 8, !noalias !196
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %62, ptr noundef nonnull align 8 dereferenceable(208) %i.fk, ptr noundef nonnull align 4 dereferenceable(8) %63, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %bb.fb unwind label %bb.jp

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn22DeConvolutionLayerImpl13MatMulInvokerE, i64 16), ptr %64, align 8, !tbaa !12
  store ptr %60, ptr %i.nt, align 8, !tbaa !102
  store ptr %58, ptr %i.nu, align 8, !tbaa !103
  store ptr %spec.select, ptr %i.nv, align 8, !tbaa !104
  store i32 %i.dt, ptr %i.nw, align 8, !tbaa !105
  %i.qm = invoke noundef zeroext i1 @_ZN2cv20checkHardwareSupportEi(i32 noundef 10)
          to label %bb.fc unwind label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  %i.qn = zext i1 %i.qm to i8
  store i8 %i.qn, ptr %i.nx, align 4, !tbaa !197
  %i.qo = invoke noundef zeroext i1 @_ZN2cv20checkHardwareSupportEi(i32 noundef 11)
          to label %bb.fd unwind label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.qp = zext i1 %i.qo to i8
  store i8 %i.qp, ptr %i.ny, align 1, !tbaa !198
  store i8 0, ptr %i.nz, align 2, !tbaa !199
  %i.qq = invoke noundef zeroext i1 @_ZN2cv20checkHardwareSupportEi(i32 noundef 210)
          to label %bb.fe unwind label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.qr = zext i1 %i.qq to i8
  store i8 %i.qr, ptr %i.oa, align 1, !tbaa !200
  %i.qs = invoke noundef zeroext i1 @_ZN2cv20checkHardwareSupportEi(i32 noundef 231)
          to label %bb.fg unwind label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fc, %bb.fb
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %.body316

bb.fg:                                            ; preds = %bb.fe
  %i.qu = zext i1 %i.qs to i8
  store i8 %i.qu, ptr %i.ob, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #22
  store i32 0, ptr %65, align 4, !tbaa !98
  store i32 %i.dt, ptr %i.oc, align 4, !tbaa !99
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %65, ptr noundef nonnull align 8 dereferenceable(8) %64, double noundef %i.od)
          to label %bb.fh unwind label %bb.jq

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  %i.qv = load ptr, ptr %i.jc, align 8, !tbaa !106 ; 5 uses
  %i.qw = load ptr, ptr %i.jd, align 8, !tbaa !106 ; 2 uses
  %i.qx = ptrtoint ptr %i.qw to i64
  %i.qy = ptrtoint ptr %i.qv to i64
  %i.qz = sub i64 %i.qx, %i.qy                    ; 2 uses
  %i.ra = ashr exact i64 %i.qz, 3                 ; 8 uses
  %i.rb = icmp ugt i64 %i.ra, 2305843009213693951
  br i1 %i.rb, label %bb.fi, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.fi:                                            ; preds = %bb.fh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.fi
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.fh
  %.not.i.i.i = icmp eq ptr %i.qw, %i.qv
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr null, i64 %i.ra
  br label %_ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPmS_ImSaImEEEEvEET_S9_RKS0_.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.rd = ashr exact i64 %i.qz, 1
  %i.re = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rd) #21
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i.loopexit ; 5 uses

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %min.iters.check1318 = icmp ult i64 %i.ra, 4
  br i1 %min.iters.check1318, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %vector.ph1319

vector.ph1319:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec1320 = and i64 %i.ra, 2305843009213693948 ; 4 uses
  %i.rf = and i64 %i.ra, 3
  %i.rg = shl nuw nsw i64 %n.vec1320, 2
  %i.rh = getelementptr i8, ptr %i.re, i64 %i.rg  ; 2 uses
  %i.ri = shl nuw i64 %n.vec1320, 3
  %i.rj = getelementptr i8, ptr %i.qv, i64 %i.ri
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %vector.ph1319
  %index1322 = phi i64 [ 0, %vector.ph1319 ], [ %index.next1327, %vector.body1321 ] ; 3 uses
  %i.rk = shl i64 %index1322, 2
  %next.gep1323 = getelementptr i8, ptr %i.re, i64 %i.rk ; 2 uses
  %i.rl = shl i64 %index1322, 3
  %next.gep1324 = getelementptr i8, ptr %i.qv, i64 %i.rl ; 2 uses
  %i.rm = getelementptr i8, ptr %next.gep1324, i64 16
  %wide.load1325 = load <2 x i64>, ptr %next.gep1324, align 8, !tbaa !57
  %wide.load1326 = load <2 x i64>, ptr %i.rm, align 8, !tbaa !57
  %i.rn = trunc <2 x i64> %wide.load1325 to <2 x i32>
  %i.ro = trunc <2 x i64> %wide.load1326 to <2 x i32>
  %i.rp = getelementptr i8, ptr %next.gep1323, i64 8
  store <2 x i32> %i.rn, ptr %next.gep1323, align 4, !tbaa !58
  store <2 x i32> %i.ro, ptr %i.rp, align 4, !tbaa !58
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn22DeConvolutionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
bb.hd:                                            ; preds = %bb.hc
  %i.aak = icmp sgt i64 %i.zp, 4
  br i1 %i.aak, label %bb.he, label %bb.hf, !prof !119

bb.he:                                            ; preds = %bb.hd
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.zr, ptr align 4 %.sroa.0516.0, i64 %i.zp, i1 false)
  br label %bb.ho

bb.hf:                                            ; preds = %bb.hd
  %i.aal = icmp eq i64 %i.zp, 4
  br i1 %i.aal, label %bb.hg, label %bb.ho

bb.hg:                                            ; preds = %bb.hf
  %i.aam = load i32, ptr %.sroa.0516.0, align 4, !tbaa !58
  store i32 %i.aam, ptr %i.zr, align 4, !tbaa !58
  br label %bb.ho

bb.hh:                                            ; preds = %bb.hc
  %i.aan = icmp sgt i64 %i.aaj, 4
  br i1 %i.aan, label %bb.hi, label %bb.hj, !prof !119

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.zr, ptr align 4 %.sroa.0516.0, i64 %i.aaj, i1 false)
  %.pre25.i455 = load ptr, ptr %i.ox, align 8, !tbaa !96 ; 2 uses
  %.pre26.i456 = load ptr, ptr %i.ov, align 8, !tbaa !94
  %.pre28.i458 = ptrtoint ptr %.pre25.i455 to i64
  %.pre29.i459 = ptrtoint ptr %.pre26.i456 to i64
  %.pre31.i460 = sub i64 %.pre28.i458, %.pre29.i459
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i451

bb.hj:                                            ; preds = %bb.hh
  %i.aao = icmp eq i64 %i.aaj, 4
  br i1 %i.aao, label %bb.hk, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i451

bb.hk:                                            ; preds = %bb.hj
  %i.aap = load i32, ptr %.sroa.0516.0, align 4, !tbaa !58
  store i32 %i.aap, ptr %i.zr, align 4, !tbaa !58
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i451

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i451:            ; preds = %bb.hk, %bb.hj, %bb.hi
  %.pre-phi32.i453 = phi i64 [ %.pre31.i460, %bb.hi ], [ %i.aaj, %bb.hj ], [ 4, %bb.hk ]
  %i.aaq = phi ptr [ %.pre25.i455, %bb.hi ], [ %i.aah, %bb.hj ], [ %i.aah, %bb.hk ] ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.0516.0, i64 %.pre-phi32.i453 ; 3 uses
  %i.aas = ptrtoint ptr %i.aar to i64
  %i.aat = sub i64 %.08.lcssa.i.i.i.i.i.i.i.i.i.i346, %i.aas ; 3 uses
  %i.aau = icmp sgt i64 %i.aat, 4
  br i1 %i.aau, label %bb.hl, label %bb.hm, !prof !119

bb.hl:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i451
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aaq, ptr align 4 %i.aar, i64 %i.aat, i1 false)
  br label %bb.ho

bb.hm:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i451
  %i.aav = icmp eq i64 %i.aat, 4
  br i1 %i.aav, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.aaw = load i32, ptr %i.aar, align 4, !tbaa !58
  store i32 %i.aaw, ptr %i.aaq, align 4, !tbaa !58
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm, %bb.hl, %bb.hg, %bb.hf, %bb.he, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i465
  %i.aax = load ptr, ptr %i.ov, align 8, !tbaa !94
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 %i.zp
  store ptr %i.aay, ptr %i.ox, align 8, !tbaa !96
  %i.aaz = ptrtoint ptr %.sroa.0509.0 to i64      ; 2 uses
  %i.aba = sub i64 %.08.lcssa.i.i.i.i.i.i.i.i.i.i362, %i.aaz ; 12 uses
  %i.abb = load ptr, ptr %i.oz, align 8, !tbaa !95
  %i.abc = load ptr, ptr %i.oy, align 8, !tbaa !94 ; 5 uses
  %i.abd = ptrtoint ptr %i.abb to i64
  %i.abe = ptrtoint ptr %i.abc to i64             ; 2 uses
  %i.abf = sub i64 %i.abd, %i.abe
  %i.abg = icmp ugt i64 %i.aba, %i.abf
  br i1 %i.abg, label %bb.hp, label %bb.hu

bb.hp:                                            ; preds = %bb.ho
  %i.abh = icmp ugt i64 %i.aba, 9223372036854775804
  br i1 %i.abh, label %.invoke1333, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i442, !prof !118

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i442: ; preds = %bb.hp
  %i.abi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aba) #21
          to label %.noexc447 unwind label %.loopexit ; 4 uses

.noexc447:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i442
  %i.abj = icmp samesign ugt i64 %i.aba, 4
  br i1 %i.abj, label %bb.hq, label %bb.hr, !prof !119

bb.hq:                                            ; preds = %.noexc447
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.abi, ptr align 4 %.sroa.0509.0, i64 %i.aba, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i443

bb.hr:                                            ; preds = %.noexc447
  %i.abk = icmp eq i64 %i.aba, 4
  br i1 %i.abk, label %bb.hs, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i443

bb.hs:                                            ; preds = %bb.hr
  %i.abl = load i32, ptr %.sroa.0509.0, align 4, !tbaa !58
  store i32 %i.abl, ptr %i.abi, align 4, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i443

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i443: ; preds = %bb.hs, %bb.hr, %bb.hq
  %i.abm = load ptr, ptr %i.oy, align 8, !tbaa !94 ; 3 uses
  %.not.i.i444 = icmp eq ptr %i.abm, null
  br i1 %.not.i.i444, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i445, label %bb.ht

bb.ht:                                            ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i443
  %i.abn = load ptr, ptr %i.oz, align 8, !tbaa !95
  %i.abo = ptrtoint ptr %i.abn to i64
  %i.abp = ptrtoint ptr %i.abm to i64
  %i.abq = sub i64 %i.abo, %i.abp
  call void @_ZdlPvm(ptr noundef nonnull %i.abm, i64 noundef %i.abq) #23
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i445

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i445: ; preds = %bb.ht, %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i443
  store ptr %i.abi, ptr %i.oy, align 8, !tbaa !94
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.aba
  store ptr %i.abr, ptr %i.oz, align 8, !tbaa !95
  br label %bb.ig

bb.hu:                                            ; preds = %bb.ho
  %i.abs = load ptr, ptr %i.pa, align 8, !tbaa !96 ; 3 uses
  %i.abt = ptrtoint ptr %i.abs to i64
  %i.abu = sub i64 %i.abt, %i.abe                 ; 5 uses
  %.not24.i430 = icmp ult i64 %i.abu, %i.aba
  br i1 %.not24.i430, label %bb.hz, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.abv = icmp sgt i64 %i.aba, 4
  br i1 %i.abv, label %bb.hw, label %bb.hx, !prof !119

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.abc, ptr align 4 %.sroa.0509.0, i64 %i.aba, i1 false)
  br label %bb.ig

bb.hx:                                            ; preds = %bb.hv
  %i.abw = icmp eq i64 %i.aba, 4
  br i1 %i.abw, label %bb.hy, label %bb.ig

bb.hy:                                            ; preds = %bb.hx
  %i.abx = load i32, ptr %.sroa.0509.0, align 4, !tbaa !58
  store i32 %i.abx, ptr %i.abc, align 4, !tbaa !58
  br label %bb.ig

bb.hz:                                            ; preds = %bb.hu
  %i.aby = icmp sgt i64 %i.abu, 4
  br i1 %i.aby, label %bb.ia, label %bb.ib, !prof !119

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.abc, ptr align 4 %.sroa.0509.0, i64 %i.abu, i1 false)
  %.pre25.i435 = load ptr, ptr %i.pa, align 8, !tbaa !96 ; 2 uses
  %.pre26.i436 = load ptr, ptr %i.oy, align 8, !tbaa !94
  %.pre28.i438 = ptrtoint ptr %.pre25.i435 to i64
  %.pre29.i439 = ptrtoint ptr %.pre26.i436 to i64
  %.pre31.i440 = sub i64 %.pre28.i438, %.pre29.i439
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i431

bb.ib:                                            ; preds = %bb.hz
  %i.abz = icmp eq i64 %i.abu, 4
  br i1 %i.abz, label %bb.ic, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i431

bb.ic:                                            ; preds = %bb.ib
  %i.aca = load i32, ptr %.sroa.0509.0, align 4, !tbaa !58
  store i32 %i.aca, ptr %i.abc, align 4, !tbaa !58
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i431

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i431:            ; preds = %bb.ic, %bb.ib, %bb.ia
  %.pre-phi32.i433 = phi i64 [ %.pre31.i440, %bb.ia ], [ %i.abu, %bb.ib ], [ 4, %bb.ic ]
  %i.acb = phi ptr [ %.pre25.i435, %bb.ia ], [ %i.abs, %bb.ib ], [ %i.abs, %bb.ic ] ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.sroa.0509.0, i64 %.pre-phi32.i433 ; 3 uses
  %i.acd = ptrtoint ptr %i.acc to i64
  %i.ace = sub i64 %.08.lcssa.i.i.i.i.i.i.i.i.i.i362, %i.acd ; 3 uses
  %i.acf = icmp sgt i64 %i.ace, 4
  br i1 %i.acf, label %bb.id, label %bb.ie, !prof !119

bb.id:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i431
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.acb, ptr align 4 %i.acc, i64 %i.ace, i1 false)
  br label %bb.ig

bb.ie:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i431
  %i.acg = icmp eq i64 %i.ace, 4
  br i1 %i.acg, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.ach = load i32, ptr %i.acc, align 4, !tbaa !58
  store i32 %i.ach, ptr %i.acb, align 4, !tbaa !58
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie, %bb.id, %bb.hy, %bb.hx, %bb.hw, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i445
  %i.aci = load ptr, ptr %i.oy, align 8, !tbaa !94
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.aba
  store ptr %i.acj, ptr %i.pa, align 8, !tbaa !96
  %i.ack = load ptr, ptr %i.pf, align 8, !tbaa !95
  %i.acl = load ptr, ptr %i.pb, align 8, !tbaa !94 ; 5 uses
  %i.acm = ptrtoint ptr %i.ack to i64
  %i.acn = ptrtoint ptr %i.acl to i64             ; 2 uses
  %i.aco = sub i64 %i.acm, %i.acn
  %i.acp = icmp ugt i64 %i.pe, %i.aco
  br i1 %i.acp, label %bb.ih, label %bb.im

bb.ih:                                            ; preds = %bb.ig
  br i1 %i.pj, label %.invoke1333, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i425, !prof !118

.invoke1333:                                      ; preds = %bb.ih, %bb.hp, %bb.gx, %bb.gf, %bb.fn
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke1333
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i425: ; preds = %bb.ih
  %i.acq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pe) #21
          to label %.noexc428 unwind label %.loopexit ; 4 uses

.noexc428:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i425
  br i1 %i.ph, label %bb.ii, label %bb.ij, !prof !119

bb.ii:                                            ; preds = %.noexc428
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.acq, ptr align 4 %.sroa.0545.0600, i64 %i.pe, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i

bb.ij:                                            ; preds = %.noexc428
  br i1 %i.pi, label %bb.ik, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i

bb.ik:                                            ; preds = %bb.ij
  %i.acr = load i32, ptr %.sroa.0545.0600, align 4, !tbaa !58
  store i32 %i.acr, ptr %i.acq, align 4, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i: ; preds = %bb.ik, %bb.ij, %bb.ii
  %i.acs = load ptr, ptr %i.pb, align 8, !tbaa !94 ; 3 uses
  %.not.i.i426 = icmp eq ptr %i.acs, null
  br i1 %.not.i.i426, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.il

bb.il:                                            ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i
  %i.act = load ptr, ptr %i.pf, align 8, !tbaa !95
  %i.acu = ptrtoint ptr %i.act to i64
  %i.acv = ptrtoint ptr %i.acs to i64
  %i.acw = sub i64 %i.acu, %i.acv
  call void @_ZdlPvm(ptr noundef nonnull %i.acs, i64 noundef %i.acw) #23
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.il, %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i
  store ptr %i.acq, ptr %i.pb, align 8, !tbaa !94
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acq, i64 %i.pe
  store ptr %i.acx, ptr %i.pf, align 8, !tbaa !95
  br label %bb.iy

bb.im:                                            ; preds = %bb.ig
  %i.acy = load ptr, ptr %i.pg, align 8, !tbaa !96 ; 3 uses
  %i.acz = ptrtoint ptr %i.acy to i64
  %i.ada = sub i64 %i.acz, %i.acn                 ; 5 uses
  %.not24.i = icmp ult i64 %i.ada, %i.pe
  br i1 %.not24.i, label %bb.ir, label %bb.in

bb.in:                                            ; preds = %bb.im
  br i1 %i.ph, label %bb.io, label %bb.ip, !prof !119

bb.io:                                            ; preds = %bb.in
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.acl, ptr align 4 %.sroa.0545.0600, i64 %i.pe, i1 false)
  br label %bb.iy

bb.ip:                                            ; preds = %bb.in
  br i1 %i.pi, label %bb.iq, label %bb.iy

bb.iq:                                            ; preds = %bb.ip
  %i.adb = load i32, ptr %.sroa.0545.0600, align 4, !tbaa !58
  store i32 %i.adb, ptr %i.acl, align 4, !tbaa !58
  br label %bb.iy

bb.ir:                                            ; preds = %bb.im
  %i.adc = icmp sgt i64 %i.ada, 4
  br i1 %i.adc, label %bb.is, label %bb.it, !prof !119

bb.is:                                            ; preds = %bb.ir
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.acl, ptr align 4 %.sroa.0545.0600, i64 %i.ada, i1 false)
  %.pre25.i = load ptr, ptr %i.pg, align 8, !tbaa !96 ; 2 uses
  %.pre26.i = load ptr, ptr %i.pb, align 8, !tbaa !94
  %.pre28.i = ptrtoint ptr %.pre25.i to i64
  %.pre29.i = ptrtoint ptr %.pre26.i to i64
  %.pre31.i = sub i64 %.pre28.i, %.pre29.i
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i

bb.it:                                            ; preds = %bb.ir
  %i.add = icmp eq i64 %i.ada, 4
  br i1 %i.add, label %bb.iu, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i

bb.iu:                                            ; preds = %bb.it
  %i.ade = load i32, ptr %.sroa.0545.0600, align 4, !tbaa !58
  store i32 %i.ade, ptr %i.acl, align 4, !tbaa !58
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.iu, %bb.it, %bb.is
  %.pre-phi32.i = phi i64 [ %.pre31.i, %bb.is ], [ %i.ada, %bb.it ], [ 4, %bb.iu ]
  %i.adf = phi ptr [ %.pre25.i, %bb.is ], [ %i.acy, %bb.it ], [ %i.acy, %bb.iu ] ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %.sroa.0545.0600, i64 %.pre-phi32.i ; 3 uses
  %i.adh = ptrtoint ptr %i.adg to i64
  %i.adi = sub i64 %i.pc, %i.adh                  ; 3 uses
  %i.adj = icmp sgt i64 %i.adi, 4
  br i1 %i.adj, label %bb.iv, label %bb.iw, !prof !119

bb.iv:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.adf, ptr align 4 %i.adg, i64 %i.adi, i1 false)
  br label %bb.iy

bb.iw:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i
  %i.adk = icmp eq i64 %i.adi, 4
  br i1 %i.adk, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.adl = load i32, ptr %i.adg, align 4, !tbaa !58
  store i32 %i.adl, ptr %i.adf, align 4, !tbaa !58
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw, %bb.iv, %bb.iq, %bb.ip, %bb.io, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
  %i.adm = load ptr, ptr %i.pb, align 8, !tbaa !94
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 %i.pe
  store ptr %i.adn, ptr %i.pg, align 8, !tbaa !96
  store i32 %i.wq, ptr %i.pk, align 8, !tbaa !120
  store i8 %i.oj, ptr %i.pl, align 4, !tbaa !121
  store ptr %i.wp, ptr %i.om, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i32 0, ptr %7, align 4, !tbaa !98
  store i32 %i.wq, ptr %i.pm, align 4, !tbaa !99
  %i.ado = sitofp i32 %i.wq to double
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6, double noundef %i.ado)
          to label %_ZN2cv3dnn22DeConvolutionLayerImpl13Col2ImInvoker3runEPKfiRKSt6vectorIiSaIiEES9_S9_S9_S9_S9_PfS4_b.exit unwind label %bb.iz

.loopexit:                                        ; preds = %.noexc368, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i425, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i442, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i462, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i482, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i502
  %lpad.loopexit621 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

.loopexit.split-lp:                               ; preds = %.invoke1333
  %lpad.loopexit.split-lp622 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.adp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ja

bb.ja:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.iz
  %.pn.i = phi { ptr, i32 } [ %i.adp, %bb.iz ], [ %lpad.loopexit621, %.loopexit ], [ %lpad.loopexit.split-lp622, %.loopexit.split-lp ]
  call void @_ZN2cv3dnn22DeConvolutionLayerImpl13Col2ImInvokerD2Ev(ptr noundef nonnull align 8 dead_on_return(189) dereferenceable(189) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.body369

_ZN2cv3dnn22DeConvolutionLayerImpl13Col2ImInvoker3runEPKfiRKSt6vectorIiSaIiEES9_S9_S9_S9_S9_PfS4_b.exit: ; preds = %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn22DeConvolutionLayerImpl13Col2ImInvokerE, i64 16), ptr %6, align 8, !tbaa !12
  %i.adq = load ptr, ptr %i.pb, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i.i423 = icmp eq ptr %i.adq, null
  br i1 %.not.i.i.i.i423, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.jb

bb.jb:                                            ; preds = %_ZN2cv3dnn22DeConvolutionLayerImpl13Col2ImInvoker3runEPKfiRKSt6vectorIiSaIiEES9_S9_S9_S9_S9_PfS4_b.exit
  %i.adr = load ptr, ptr %i.pf, align 8, !tbaa !95
  %i.ads = ptrtoint ptr %i.adr to i64
  %i.adt = ptrtoint ptr %i.adq to i64
  %i.adu = sub i64 %i.ads, %i.adt
  call void @_ZdlPvm(ptr noundef nonnull %i.adq, i64 noundef %i.adu) #23, !inline_history !202
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.jb, %_ZN2cv3dnn22DeConvolutionLayerImpl13Col2ImInvoker3runEPKfiRKSt6vectorIiSaIiEES9_S9_S9_S9_S9_PfS4_b.exit
  %i.adv = load ptr, ptr %i.oy, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.adv, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.jc

bb.jc:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.adw = load ptr, ptr %i.oz, align 8, !tbaa !95
  %i.adx = ptrtoint ptr %i.adw to i64
  %i.ady = ptrtoint ptr %i.adv to i64
  %i.adz = sub i64 %i.adx, %i.ady
  call void @_ZdlPvm(ptr noundef nonnull %i.adv, i64 noundef %i.adz) #23, !inline_history !202
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.jc, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.aea = load ptr, ptr %i.ov, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.aea, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i, label %bb.jd

bb.jd:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.aeb = load ptr, ptr %i.ow, align 8, !tbaa !95
  %i.aec = ptrtoint ptr %i.aeb to i64
  %i.aed = ptrtoint ptr %i.aea to i64
  %i.aee = sub i64 %i.aec, %i.aed
  call void @_ZdlPvm(ptr noundef nonnull %i.aea, i64 noundef %i.aee) #23, !inline_history !202
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i

_ZNSt6vectorIiSaIiEED2Ev.exit4.i:                 ; preds = %bb.jd, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.aef = load ptr, ptr %i.os, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i5.i = icmp eq ptr %i.aef, null
  br i1 %.not.i.i.i5.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit6.i, label %bb.je

bb.je:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i
  %i.aeg = load ptr, ptr %i.ot, align 8, !tbaa !95
  %i.aeh = ptrtoint ptr %i.aeg to i64
  %i.aei = ptrtoint ptr %i.aef to i64
  %i.aej = sub i64 %i.aeh, %i.aei
  call void @_ZdlPvm(ptr noundef nonnull %i.aef, i64 noundef %i.aej) #23, !inline_history !202
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6.i

_ZNSt6vectorIiSaIiEED2Ev.exit6.i:                 ; preds = %bb.je, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i
  %i.aek = load ptr, ptr %i.op, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.aek, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit8.i, label %bb.jf

bb.jf:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6.i
  %i.ael = load ptr, ptr %i.oq, align 8, !tbaa !95
  %i.aem = ptrtoint ptr %i.ael to i64
  %i.aen = ptrtoint ptr %i.aek to i64
  %i.aeo = sub i64 %i.aem, %i.aen
  call void @_ZdlPvm(ptr noundef nonnull %i.aek, i64 noundef %i.aeo) #23, !inline_history !202
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit8.i
end_hunk_1
