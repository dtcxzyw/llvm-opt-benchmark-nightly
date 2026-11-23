Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_func?download=true
inline.NumInlined: 459
inline.NumDeleted: 216
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8nanobind6detailL26nb_func_vectorcall_complexEP7_objectPKS2_mS2_:bb.a
bb.al:                                            ; preds = %._crit_edge380.us
  call void @_ZN8nanobind6detail12cleanup_list6expandEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #25
  %.pre437 = load i32, ptr %4, align 8
  br label %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit269.us

_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit269.us: ; preds = %bb.al, %._crit_edge380.us
  %i.fc = phi i32 [ %.pre437, %bb.al ], [ %i.fa, %._crit_edge380.us ] ; 2 uses
  %i.fd = load ptr, ptr %i.u, align 8
  %i.fe = add i32 %i.fc, 1
  store i32 %i.fe, ptr %4, align 8
  %i.ff = zext i32 %i.fc to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.ff
  store ptr %i.ei, ptr %i.fg, align 8
  br label %bb.am

bb.am:                                            ; preds = %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit269.us, %bb.ah
  br i1 %.not251.us, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fh = invoke ptr @PyDict_New()
          to label %.preheader339.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.lr.ph382.us:                                     ; preds = %.preheader339.us, %bb.ap
  %.0205381.us = phi i64 [ %i.fq, %bb.ap ], [ 0, %.preheader339.us ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.0205381.us
  %i.fj = load i8, ptr %i.fi, align 1, !range !7, !noundef !8
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph382.us
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.0219, i64 %.0205381.us
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.0205381.us
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = invoke i32 @PyDict_SetItem(ptr noundef %i.fh, ptr noundef %i.fm, ptr noundef %i.fo)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ap:                                            ; preds = %bb.ao, %.lr.ph382.us
  %i.fq = add nuw i64 %.0205381.us, 1             ; 2 uses
  %exitcond433.not = icmp eq i64 %i.fq, %i.e
  br i1 %exitcond433.not, label %._crit_edge383.us, label %.lr.ph382.us, !llvm.loop !40

._crit_edge383.us:                                ; preds = %bb.ap, %.preheader339.us
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.dg
  store ptr %i.fh, ptr %i.fr, align 8
  %i.fs = load i32, ptr %4, align 8               ; 2 uses
  %i.ft = load i32, ptr %i.t, align 4
  %.not.i267.us = icmp ult i32 %i.fs, %i.ft
  br i1 %.not.i267.us, label %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit.us, label %bb.aq, !prof !5

bb.aq:                                            ; preds = %._crit_edge383.us
  call void @_ZN8nanobind6detail12cleanup_list6expandEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #25
  %.pre438 = load i32, ptr %4, align 8
  br label %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit.us

_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit.us: ; preds = %bb.aq, %._crit_edge383.us
  %i.fu = phi i32 [ %.pre438, %bb.aq ], [ %i.fs, %._crit_edge383.us ] ; 2 uses
  %i.fv = load ptr, ptr %i.u, align 8
  %i.fw = add i32 %i.fu, 1
  store i32 %i.fw, ptr %4, align 8
  %i.fx = zext i32 %i.fu to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fx
  store ptr %i.fh, ptr %i.fy, align 8
  br label %.critedge

bb.ar:                                            ; preds = %bb.am
  br i1 %brmerge408.not.not, label %.critedge, label %iter.check

iter.check:                                       ; preds = %bb.ar
  br i1 %min.iters.check, label %.lr.ph386.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check482, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <16 x i1> [ %i.gd, %vector.body ], [ splat (i1 true), %vector.main.loop.iter.check ]
  %vec.phi483 = phi <16 x i1> [ %i.ge, %vector.body ], [ splat (i1 true), %vector.main.loop.iter.check ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load = load <16 x i8>, ptr %i.fz, align 16
  %wide.load484 = load <16 x i8>, ptr %i.ga, align 16
  %i.gb = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.gc = icmp ne <16 x i8> %wide.load484, zeroinitializer
  %i.gd = and <16 x i1> %vec.phi, %i.gb           ; 2 uses
  %i.ge = and <16 x i1> %vec.phi483, %i.gc        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <16 x i1> %i.ge, %i.gd
  %i.gg = bitcast <16 x i1> %bin.rdx to i16
  %i.gh = icmp eq i16 %i.gg, -1                   ; 3 uses
  br i1 %cmp.n, label %._crit_edge387.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph386.us.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.gh, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %i.gi = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index486 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next489, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi487 = phi <4 x i1> [ %i.gi, %vec.epilog.ph ], [ %i.gl, %vec.epilog.vector.body ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index486
  %wide.load488 = load <4 x i8>, ptr %i.gj, align 4
  %i.gk = icmp ne <4 x i8> %wide.load488, zeroinitializer
  %i.gl = and <4 x i1> %vec.phi487, %i.gk         ; 2 uses
  %index.next489 = add nuw i64 %index486, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next489, %n.vec485
  br i1 %i.gm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gn = bitcast <4 x i1> %i.gl to i4
  %i.go = icmp eq i4 %i.gn, -1                    ; 2 uses
  br i1 %cmp.n490, label %._crit_edge387.us, label %.lr.ph386.us.preheader

.lr.ph386.us.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0203385.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec485, %vec.epilog.middle.block ]
  %.0204384.us.ph = phi i1 [ true, %iter.check ], [ %i.gh, %vec.epilog.iter.check ], [ %i.go, %vec.epilog.middle.block ]
  br label %.lr.ph386.us

.lr.ph386.us:                                     ; preds = %.lr.ph386.us.preheader, %.lr.ph386.us
  %.0203385.us = phi i64 [ %i.gt, %.lr.ph386.us ], [ %.0203385.us.ph, %.lr.ph386.us.preheader ] ; 2 uses
  %.0204384.us = phi i1 [ %i.gs, %.lr.ph386.us ], [ %.0204384.us.ph, %.lr.ph386.us.preheader ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.0203385.us
  %i.gq = load i8, ptr %i.gp, align 1, !range !7, !noundef !8
  %i.gr = icmp ne i8 %i.gq, 0
  %i.gs = and i1 %.0204384.us, %i.gr              ; 2 uses
  %i.gt = add nuw nsw i64 %.0203385.us, 1         ; 2 uses
  %exitcond434.not = icmp eq i64 %i.gt, %i.e
  br i1 %exitcond434.not, label %._crit_edge387.us, label %.lr.ph386.us, !llvm.loop !43

.critedge:                                        ; preds = %bb.ar, %._crit_edge387.us, %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit.us
  br i1 %i.l, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge
  %i.gu = load ptr, ptr %i.ab, align 16
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.critedge
  %.0202.us = phi ptr [ %i.gu, %bb.as ], [ null, %.critedge ] ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8
  br i1 %.0215395.us, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gx = load i32, ptr %i.cs, align 8
  %i.gy = lshr i32 %i.gx, 14
  %.lobit.i.us = and i32 %i.gy, 1
  %i.gz = or disjoint i32 %.lobit.i.us, %i.co
  %i.ha = xor i32 %i.gz, 1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hb = phi i32 [ %i.co, %bb.at ], [ %i.ha, %bb.au ] ; 2 uses
  br i1 %.not334, label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hc = load i32, ptr %i.cs, align 8
  %i.hd = lshr i32 %i.hc, 2
  %i.he = and i32 %i.hd, 32
  %i.hf = or i32 %i.hb, %i.he
  br label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us

_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us: ; preds = %bb.aw, %bb.av
  %i.hg = phi i32 [ %i.hb, %bb.av ], [ %i.hf, %bb.aw ]
  %i.hh = invoke noundef ptr %i.gw(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.ab, i32 noundef %i.hg, ptr noundef nonnull %4)
          to label %bb.ba unwind label %bb.ax     ; 2 uses

bb.ax:                                            ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us
  %i.hi = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi117builtin_exceptionE
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr null                          ; 2 uses
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0      ; 2 uses
  %i.hk = extractvalue { ptr, i32 } %i.hi, 1      ; 2 uses
  %i.hl = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE) #25
  %i.hm = icmp eq i32 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ay, label %.split398.us

bb.ay:                                            ; preds = %bb.ax
  %i.hn = call ptr @__cxa_begin_catch(ptr %i.hj) #25
  %i.ho = invoke fastcc noundef zeroext i1 @_ZN8nanobind6detailL28set_builtin_exception_statusERNS_4abi117builtin_exceptionE(ptr noundef nonnull align 8 dereferenceable(20) %i.hn)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %spec.select.us = select i1 %i.ho, ptr null, ptr inttoptr (i64 1 to ptr)
  invoke void @__cxa_end_catch()
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us
  %.not258.us = icmp eq ptr %i.hh, null
  br i1 %.not258.us, label %.thread321, label %bb.bb, !prof !6

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.3238.us = phi ptr [ %spec.select.us, %bb.az ], [ %i.hh, %bb.ba ] ; 6 uses
  %.not259.us = icmp eq ptr %.3238.us, inttoptr (i64 1 to ptr)
  br i1 %.not259.us, label %.thread309.us, label %.split402.us

.thread309.us:                                    ; preds = %bb.bb, %._crit_edge387.us, %.thread288.us, %bb.s
  %.5240313.us = phi ptr [ %.3238.us, %bb.bb ], [ %.1236389.us, %bb.s ], [ %.1236389.us, %.thread288.us ], [ %.1236389.us, %._crit_edge387.us ] ; 3 uses
  %i.hp = add nuw i64 %.0214390.us, 1             ; 2 uses
  %exitcond435.not = icmp eq i64 %i.hp, %.val
  br i1 %exitcond435.not, label %._crit_edge392.us, label %bb.s, !llvm.loop !44

.preheader339.us:                                 ; preds = %bb.an
  br i1 %.not409, label %._crit_edge383.us, label %.lr.ph382.us

.preheader340.us:                                 ; preds = %bb.ai
  br i1 %i.dh, label %._crit_edge380.us, label %.lr.ph379.us

.lr.ph372.us:                                     ; preds = %bb.t
  %i.hq = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  br label %bb.u

.lr.ph379.us:                                     ; preds = %.preheader340.us
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 3 uses
  %i.hs = sub i64 %2, %i.db
  %.neg = add nuw nsw i64 %i.db, 1
  %xtraiter511 = and i64 %i.hs, 1
  %lcmp.mod512.not = icmp eq i64 %xtraiter511, 0
  br i1 %lcmp.mod512.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph379.us
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.db
  %i.hu = load ptr, ptr %i.ht, align 8            ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 8
  %i.hw = add i32 %i.hv, 1                        ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %_ZL10_Py_NewRefP7_object.exit274.us.prol, label %bb.bc

bb.bc:                                            ; preds = %.prol.preheader
  store i32 %i.hw, ptr %i.hu, align 8
  br label %_ZL10_Py_NewRefP7_object.exit274.us.prol

_ZL10_Py_NewRefP7_object.exit274.us.prol:         ; preds = %bb.bc, %.prol.preheader
  store ptr %i.hu, ptr %i.hr, align 8
  %i.hy = add nuw nsw i64 %i.db, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZL10_Py_NewRefP7_object.exit274.us.prol, %.lr.ph379.us
  %.0206378.us.unr = phi i64 [ %i.db, %.lr.ph379.us ], [ %i.hy, %_ZL10_Py_NewRefP7_object.exit274.us.prol ]
  %i.hz = icmp eq i64 %i.c, %.neg
  br i1 %i.hz, label %._crit_edge380.us, label %.lr.ph379.us.new

._crit_edge387.us:                                ; preds = %.lr.ph386.us, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i1 [ %i.go, %vec.epilog.middle.block ], [ %i.gh, %middle.block ], [ %i.gs, %.lr.ph386.us ]
  br i1 %.lcssa, label %.critedge, label %.thread309.us

._crit_edge392.us:                                ; preds = %.thread309.us
  br i1 %.0215395.us, label %.preheader341.us, label %.thread321, !llvm.loop !45

.split398.us:                                     ; preds = %bb.ax
  %i.ia = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi112python_errorE) #25
  %i.ib = icmp eq i32 %i.hk, %i.ia
  %i.ic = call ptr @__cxa_begin_catch(ptr %i.hj) #25
  br i1 %i.ib, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.split398.us
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8
  call void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef %i.ie) #25
  store ptr null, ptr %i.id, align 8
  br label %.invoke

bb.be:                                            ; preds = %.split398.us
  call fastcc void @_ZN8nanobind6detailL29nb_func_convert_cpp_exceptionEP7_object(ptr noundef nonnull %0) #25
  br label %.invoke

.invoke:                                          ; preds = %bb.bd, %bb.be
  invoke void @__cxa_end_catch()
          to label %.thread321 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split402.us:                                     ; preds = %bb.bb
  %i.if = icmp ne ptr %.3238.us, null
  %or.cond10 = and i1 %i.l, %i.if
  br i1 %or.cond10, label %bb.bf, label %.thread321

bb.bf:                                            ; preds = %.split402.us
  %i.ig = getelementptr inbounds nuw i8, ptr %.0202.us, i64 20 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 4             ; 3 uses
  %i.ii = and i8 %i.ih, -20
  %i.ij = or disjoint i8 %i.ii, 18
  store i8 %i.ij, ptr %i.ig, align 4
  %i.ik = and i8 %i.ih, 64
  %.not260 = icmp eq i8 %i.ik, 0
  br i1 %.not260, label %.thread321, label %bb.bg, !prof !5

bb.bg:                                            ; preds = %bb.bf
  %i.il = getelementptr i8, ptr %.0202.us, i64 8
  %.0202.val = load ptr, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %.0202.val, i64 1024
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = ptrtoint ptr %.0202.us to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %.0202.us, i64 16
  %i.iq = load i32, ptr %i.ip, align 8
  %i.ir = sext i32 %i.iq to i64
  %i.is = add nsw i64 %i.ir, %i.io
  %i.it = inttoptr i64 %i.is to ptr               ; 2 uses
  %i.iu = and i8 %i.ih, 4
  %.not.i275 = icmp eq i8 %i.iu, 0
  br i1 %.not.i275, label %bb.bh, label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

bb.bh:                                            ; preds = %bb.bg
  %i.iv = load ptr, ptr %i.it, align 8
  br label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit: ; preds = %bb.bg, %bb.bh
  %i.iw = phi ptr [ %i.iv, %bb.bh ], [ %i.it, %bb.bg ]
  call void %i.in(ptr noundef %i.iw, ptr noundef nonnull %.0202.us) #25
  br label %.thread321

.thread321:                                       ; preds = %._crit_edge392.us, %bb.ba, %.invoke, %.loopexit346, %.split402.us, %bb.bf, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit
  %.7242325 = phi ptr [ null, %.loopexit346 ], [ null, %.invoke ], [ null, %bb.ba ], [ %.3238.us, %bb.bf ], [ %.3238.us, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ %.3238.us, %.split402.us ], [ %.5240313.us, %._crit_edge392.us ]
  %.not261 = phi i1 [ false, %.loopexit346 ], [ true, %.invoke ], [ false, %bb.ba ], [ true, %bb.bf ], [ true, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ true, %.split402.us ], [ false, %._crit_edge392.us ]
  %.7 = phi ptr [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %.loopexit346 ], [ null, %.invoke ], [ @_ZN8nanobind6detailL23nb_func_error_noconvertEP7_objectPKS2_mS2_, %bb.ba ], [ null, %bb.bf ], [ null, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ null, %.split402.us ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %._crit_edge392.us ]
  %i.ix = load i32, ptr %4, align 8
  %.not335 = icmp eq i32 %i.ix, 1
  br i1 %.not335, label %bb.bj, label %bb.bi, !prof !5

bb.bi:                                            ; preds = %.thread321
  call void @_ZN8nanobind6detail12cleanup_list7releaseEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #25
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.thread321
  br i1 %.not261, label %bb.bl, label %bb.bk, !prof !5

bb.bk:                                            ; preds = %bb.bj
  %i.iy = call noundef ptr %.7(ptr noundef %0, ptr noundef %1, i64 noundef %i.c, ptr noundef %3) #25, !callees !12
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %.0 = phi ptr [ %.7242325, %bb.bj ], [ %i.iy, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.bm

bb.bm:                                            ; preds = %bb.f, %bb.bl
  %.1 = phi ptr [ %.0, %bb.bl ], [ null, %bb.f ]
  ret ptr %.1

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.ay, %bb.an, %bb.ai, %bb.ao, %bb.p, %_ZL10_Py_NewRefP7_object.exit, %.invoke, %bb.f
  %lpad.loopexit.split-lp506 = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %lpad.loopexit.split-lp506, 0
  call void @__clang_call_terminate(ptr %i.iz) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN8nanobind6detailL25nb_func_vectorcall_mediumEP7_objectPKS2_mS2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #5 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN8nanobind6detailL26nb_func_vectorcall_complexEP7_objectPKS2_mS2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef ptr @_ZN8nanobind6detailL29nb_func_vectorcall_medium_posEP7_objectPKS2_mS2_(ptr noundef %0, ptr noundef %1, i64 noundef %2) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN8nanobind6detailL27nb_func_vectorcall_simple_0EP7_objectPKS2_mS2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %2, 4611686018427387903          ; 2 uses
  %i.b = icmp eq ptr %3, null
  %i.c = icmp eq i64 %i.a, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %.thread35

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8
  %i.i = lshr i32 %i.h, 14
  %.lobit.i = and i32 %i.i, 1
  %i.j = xor i32 %.lobit.i, 1
  %i.k = invoke noundef ptr %i.f(ptr noundef nonnull %i.d, ptr noundef %1, i32 noundef %i.j, ptr noundef null)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %magicptr = ptrtoint ptr %i.k to i64
  switch i64 %magicptr, label %.thread [
    i64 1, label %.thread35
    i64 0, label %bb.j
  ]

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi117builtin_exceptionE
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr null                          ; 2 uses
  %i.m = extractvalue { ptr, i32 } %i.l, 0        ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8nanobind6detailL27nb_func_vectorcall_simple_2EP7_objectPKS2_mS2_:bb.a
  br label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit: ; preds = %bb.n, %bb.o
  %i.bh = phi ptr [ %i.bg, %bb.o ], [ %i.be, %bb.n ]
  call void %i.ay(ptr noundef %i.bh, ptr noundef nonnull %i.av) #25
  br label %bb.p

bb.p:                                             ; preds = %.invoke, %bb.g, %bb.m, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit, %bb.d, %bb.l, %bb.k
  %.142 = phi ptr [ null, %.invoke ], [ %spec.select, %bb.g ], [ null, %bb.l ], [ @_ZN8nanobind6detailL23nb_func_error_noconvertEP7_objectPKS2_mS2_, %bb.k ], [ null, %bb.m ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.d ], [ null, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ] ; 2 uses
  %.0 = phi ptr [ null, %.invoke ], [ null, %bb.g ], [ %i.ac, %bb.l ], [ null, %bb.k ], [ %i.ac, %bb.m ], [ %i.ac, %bb.d ], [ %i.ac, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ]
  %i.bi = load i32, ptr %4, align 8
  %.not59 = icmp eq i32 %i.bi, 1
  br i1 %.not59, label %bb.r, label %bb.q, !prof !5

bb.q:                                             ; preds = %bb.p
  call void @_ZN8nanobind6detail12cleanup_list7releaseEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.not51 = icmp eq ptr %.142, null
  br i1 %.not51, label %bb.s, label %.thread, !prof !13

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.r
  %.24355 = phi ptr [ %.142, %bb.r ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.c ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.b ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.a ]
  %i.bj = call noundef ptr %.24355(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.b, ptr noundef %3) #25, !callees !12
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %.2 = phi ptr [ %i.bj, %.thread ], [ %.0, %bb.r ]
  ret ptr %.2

bb.t:                                             ; preds = %.invoke, %bb.g, %bb.f
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN8nanobind6detailL25nb_func_vectorcall_simpleEP7_objectPKS2_mS2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::cleanup_list", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8
  %.val.fr = freeze i64 %.val                     ; 4 uses
  %i.c = and i64 %2, 4611686018427387903          ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = and i32 %i.e, 64
  %i.g = icmp ne i32 %i.f, 0
  %i.h = and i32 %i.e, 128                        ; 2 uses
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp ne i64 %i.c, 0                      ; 2 uses
  %or.cond = and i1 %i.j, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  store i32 1, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 5, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.n, ptr %i.r, align 8
  store ptr %i.l, ptr %i.q, align 8
  %i.s = icmp ne ptr %3, null                     ; 3 uses
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %min.iters.check = icmp samesign ult i64 %i.c, 4
  br i1 %min.iters.check, label %.lr.ph.preheader247, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, 4611686018427387900        ; 3 uses
  %i.t = insertelement <2 x i1> <i1 poison, i1 false>, i1 %i.s, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i1> [ %i.t, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi230 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x ptr>, ptr %i.u, align 8
  %wide.load231 = load <2 x ptr>, ptr %i.v, align 8
  %i.w = icmp eq <2 x ptr> %wide.load, <ptr @_Py_NoneStruct, ptr @_Py_NoneStruct>
  %i.x = icmp eq <2 x ptr> %wide.load231, <ptr @_Py_NoneStruct, ptr @_Py_NoneStruct>
  %i.y = or <2 x i1> %vec.phi, %i.w               ; 2 uses
  %i.z = or <2 x i1> %vec.phi230, %i.x            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.z, %i.y
  %i.ab = bitcast <2 x i1> %bin.rdx to i2
  %i.ac = icmp ne i2 %i.ab, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader247

.lr.ph.preheader247:                              ; preds = %.lr.ph.preheader, %middle.block
  %.070133.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.071.in132.ph = phi i1 [ %i.s, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  %.071.in.lcssa = phi i1 [ %i.s, %bb.c ], [ %i.ac, %middle.block ], [ %i.ag, %.lr.ph ]
  br i1 %.071.in.lcssa, label %.thread112, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader247, %.lr.ph
  %.070133 = phi i64 [ %i.ah, %.lr.ph ], [ %.070133.ph, %.lr.ph.preheader247 ] ; 2 uses
  %.071.in132 = phi i1 [ %i.ag, %.lr.ph ], [ %.071.in132.ph, %.lr.ph.preheader247 ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.070133
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, @_Py_NoneStruct
  %i.ag = or i1 %.071.in132, %i.af                ; 2 uses
  %i.ah = add nuw nsw i64 %.070133, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !50

bb.d:                                             ; preds = %._crit_edge
  %.not173 = icmp eq i64 %.val.fr, 0
  %i.ai = and i64 %2, 4611686018427387904
  %.not118 = icmp eq i64 %i.ai, 0                 ; 2 uses
  %i.aj = lshr exact i32 %i.h, 6                  ; 3 uses
  br i1 %.not173, label %.thread112, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.d
  %i.ak = icmp ne i64 %.val.fr, 1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge137.us
  %.069146.us = phi i1 [ false, %._crit_edge137.us ], [ %i.ak, %.preheader.us.preheader ] ; 2 uses
  %.075145.us = phi ptr [ %.us-phi144.us, %._crit_edge137.us ], [ null, %.preheader.us.preheader ] ; 2 uses
  br i1 %.069146.us, label %.lr.ph136.split.us.us, label %.lr.ph136.split.us148

.lr.ph136.split.us148:                            ; preds = %.preheader.us, %bb.j
  %.067135.us149 = phi i64 [ %i.bi, %bb.j ], [ 0, %.preheader.us ] ; 2 uses
  %.176134.us150 = phi ptr [ %.479.us157, %bb.j ], [ %.075145.us, %.preheader.us ]
  %i.al = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %.067135.us149 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  %i.an = load i16, ptr %i.am, align 4
  %i.ao = zext i16 %i.an to i64
  %.not.us151 = icmp eq i64 %i.c, %i.ao
  br i1 %.not.us151, label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us152, label %bb.j

_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us152: ; preds = %.lr.ph136.split.us148
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = lshr i32 %i.as, 14
  %.lobit.i.us = and i32 %i.at, 1
  %i.au = lshr i32 %i.as, 2
  %i.av = and i32 %i.au, 32
  %i.aw = select i1 %.not118, i32 0, i32 %i.av
  %i.ax = or disjoint i32 %.lobit.i.us, %i.aw
  %i.ay = or disjoint i32 %i.ax, %i.aj
  %i.az = xor i32 %i.ay, 1
  %i.ba = invoke noundef ptr %i.aq(ptr noundef nonnull %i.al, ptr noundef %1, i32 noundef %i.az, ptr noundef nonnull %4)
          to label %bb.h unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us152
  %i.bb = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi117builtin_exceptionE
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr null                          ; 2 uses
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0      ; 2 uses
  %i.bd = extractvalue { ptr, i32 } %i.bb, 1      ; 2 uses
  %i.be = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE) #25
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.f, label %.split.us

bb.f:                                             ; preds = %bb.e
  %i.bg = call ptr @__cxa_begin_catch(ptr %i.bc) #25
  %i.bh = invoke fastcc noundef zeroext i1 @_ZN8nanobind6detailL28set_builtin_exception_statusERNS_4abi117builtin_exceptionE(ptr noundef nonnull align 8 dereferenceable(20) %i.bg)
          to label %bb.g unwind label %.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %spec.select.us153 = select i1 %i.bh, ptr null, ptr inttoptr (i64 1 to ptr)
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us152
  %.not84.us154 = icmp eq ptr %i.ba, null
  br i1 %.not84.us154, label %.thread112, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h, %bb.g
  %.378.us155 = phi ptr [ %spec.select.us153, %bb.g ], [ %i.ba, %bb.h ] ; 3 uses
  %.not85.us156 = icmp eq ptr %.378.us155, inttoptr (i64 1 to ptr)
  br i1 %.not85.us156, label %bb.j, label %.split142.us

bb.j:                                             ; preds = %bb.i, %.lr.ph136.split.us148
  %.479.us157 = phi ptr [ %.378.us155, %bb.i ], [ %.176134.us150, %.lr.ph136.split.us148 ] ; 2 uses
  %i.bi = add nuw i64 %.067135.us149, 1           ; 2 uses
  %exitcond192.not = icmp eq i64 %i.bi, %.val.fr
  br i1 %exitcond192.not, label %._crit_edge137.us, label %.lr.ph136.split.us148, !llvm.loop !51

.lr.ph136.split.us.us:                            ; preds = %.preheader.us, %bb.r
  %.067135.us.us = phi i64 [ %i.cd, %bb.r ], [ 0, %.preheader.us ] ; 2 uses
  %.176134.us.us = phi ptr [ %.479.us.us, %bb.r ], [ %.075145.us, %.preheader.us ]
  %i.bj = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %.067135.us.us ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 60
  %i.bl = load i16, ptr %i.bk, align 4
  %i.bm = zext i16 %i.bl to i64
  %.not.us.us = icmp eq i64 %i.c, %i.bm
  br i1 %.not.us.us, label %bb.k, label %bb.r

bb.k:                                             ; preds = %.lr.ph136.split.us.us
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  br i1 %.not118, label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = lshr i32 %i.bq, 2
  %i.bs = and i32 %i.br, 32
  %i.bt = or disjoint i32 %i.aj, %i.bs
  br label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us.us

_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us.us: ; preds = %bb.l, %bb.k
  %i.bu = phi i32 [ %i.aj, %bb.k ], [ %i.bt, %bb.l ]
  %i.bv = invoke noundef ptr %i.bo(ptr noundef nonnull %i.bj, ptr noundef %1, i32 noundef %i.bu, ptr noundef nonnull %4)
          to label %bb.p unwind label %bb.m       ; 2 uses

bb.m:                                             ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us.us
  %i.bw = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi117builtin_exceptionE
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr null                          ; 2 uses
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0      ; 2 uses
  %i.by = extractvalue { ptr, i32 } %i.bw, 1      ; 2 uses
  %i.bz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE) #25
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.n, label %.split.us

bb.n:                                             ; preds = %bb.m
  %i.cb = call ptr @__cxa_begin_catch(ptr %i.bx) #25
  %i.cc = invoke fastcc noundef zeroext i1 @_ZN8nanobind6detailL28set_builtin_exception_statusERNS_4abi117builtin_exceptionE(ptr noundef nonnull align 8 dereferenceable(20) %i.cb)
          to label %bb.o unwind label %.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %spec.select.us.us = select i1 %i.cc, ptr null, ptr inttoptr (i64 1 to ptr)
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us.us
  %.not84.us.us = icmp eq ptr %i.bv, null
  br i1 %.not84.us.us, label %.thread112, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p, %bb.o
  %.378.us.us = phi ptr [ %spec.select.us.us, %bb.o ], [ %i.bv, %bb.p ] ; 3 uses
  %.not85.us.us = icmp eq ptr %.378.us.us, inttoptr (i64 1 to ptr)
  br i1 %.not85.us.us, label %bb.r, label %.split142.us

bb.r:                                             ; preds = %bb.q, %.lr.ph136.split.us.us
  %.479.us.us = phi ptr [ %.378.us.us, %bb.q ], [ %.176134.us.us, %.lr.ph136.split.us.us ] ; 2 uses
  %i.cd = add nuw i64 %.067135.us.us, 1           ; 2 uses
  %exitcond193.not = icmp eq i64 %i.cd, %.val.fr
  br i1 %exitcond193.not, label %._crit_edge137.us, label %.lr.ph136.split.us.us, !llvm.loop !51

._crit_edge137.us:                                ; preds = %bb.j, %bb.r
  %.us-phi144.us = phi ptr [ %.479.us.us, %bb.r ], [ %.479.us157, %bb.j ] ; 2 uses
  br i1 %.069146.us, label %.preheader.us, label %.thread112, !llvm.loop !52

.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.o, %bb.g, %bb.f, %.invoke
  %lpad.loopexit.split-lp234 = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %lpad.loopexit.split-lp234, 0
  call void @__clang_call_terminate(ptr %i.ce) #26
  unreachable

.split.us:                                        ; preds = %bb.e, %bb.m
  %.us-phi = phi ptr [ %i.bx, %bb.m ], [ %i.bc, %bb.e ]
  %.us-phi139 = phi i32 [ %i.by, %bb.m ], [ %i.bd, %bb.e ]
  %i.cf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi112python_errorE) #25
  %i.cg = icmp eq i32 %.us-phi139, %i.cf
  %i.ch = call ptr @__cxa_begin_catch(ptr %.us-phi) #25
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.split.us
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  call void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef %i.cj) #25
  store ptr null, ptr %i.ci, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.t, %bb.s
  invoke void @__cxa_end_catch()
          to label %.thread112 unwind label %.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %.split.us
  call fastcc void @_ZN8nanobind6detailL29nb_func_convert_cpp_exceptionEP7_object(ptr noundef nonnull %0) #25
  br label %.invoke

.split142.us:                                     ; preds = %bb.i, %bb.q
  %.us-phi143 = phi ptr [ %.378.us.us, %bb.q ], [ %.378.us155, %bb.i ] ; 4 uses
  %i.ck = icmp ne ptr %.us-phi143, null
  %or.cond3 = and i1 %i.i, %i.ck
  br i1 %or.cond3, label %bb.u, label %.thread112

bb.u:                                             ; preds = %.split142.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 4             ; 3 uses
  %i.cn = and i8 %i.cm, -20
  %i.co = or disjoint i8 %i.cn, 18
  store i8 %i.co, ptr %i.cl, align 4
  %i.cp = and i8 %i.cm, 64
  %.not86 = icmp eq i8 %i.cp, 0
  br i1 %.not86, label %.thread112, label %bb.v, !prof !5

bb.v:                                             ; preds = %bb.u
  %i.cq = getelementptr i8, ptr %i.l, i64 8
  %.val89 = load ptr, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.val89, i64 1024
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = ptrtoint ptr %i.l to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = sext i32 %i.cv to i64
  %i.cx = add nsw i64 %i.cw, %i.ct
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = and i8 %i.cm, 4
  %.not.i = icmp eq i8 %i.cz, 0
  br i1 %.not.i, label %bb.w, label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

bb.w:                                             ; preds = %bb.v
  %i.da = load ptr, ptr %i.cy, align 8
  br label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit: ; preds = %bb.v, %bb.w
  %i.db = phi ptr [ %i.da, %bb.w ], [ %i.cy, %bb.v ]
  call void %i.cs(ptr noundef %i.db, ptr noundef nonnull %i.l) #25
  br label %.thread112

.thread112:                                       ; preds = %._crit_edge137.us, %bb.h, %bb.p, %.invoke, %bb.d, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit, %bb.u, %.split142.us, %._crit_edge
  %.7 = phi ptr [ null, %._crit_edge ], [ null, %bb.p ], [ %.us-phi143, %.split142.us ], [ %.us-phi143, %bb.u ], [ %.us-phi143, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ null, %bb.h ], [ null, %.invoke ], [ null, %bb.d ], [ %.us-phi144.us, %._crit_edge137.us ]
  %.not87 = phi i1 [ false, %._crit_edge ], [ false, %bb.p ], [ true, %.split142.us ], [ true, %bb.u ], [ true, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ false, %bb.h ], [ true, %.invoke ], [ false, %bb.d ], [ false, %._crit_edge137.us ]
  %.6 = phi ptr [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %._crit_edge ], [ @_ZN8nanobind6detailL23nb_func_error_noconvertEP7_objectPKS2_mS2_, %bb.p ], [ null, %.split142.us ], [ null, %bb.u ], [ null, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ @_ZN8nanobind6detailL23nb_func_error_noconvertEP7_objectPKS2_mS2_, %bb.h ], [ null, %.invoke ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.d ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %._crit_edge137.us ]
  %i.dc = load i32, ptr %4, align 8
  %.not119 = icmp eq i32 %i.dc, 1
  br i1 %.not119, label %bb.y, label %bb.x, !prof !5

bb.x:                                             ; preds = %.thread112
  call void @_ZN8nanobind6detail12cleanup_list7releaseEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread112
  br i1 %.not87, label %bb.aa, label %bb.z, !prof !5

bb.z:                                             ; preds = %bb.y
  %i.dd = call noundef ptr %.6(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.c, ptr noundef %3) #25, !callees !12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.0 = phi ptr [ %.7, %bb.y ], [ %i.dd, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @_ZN8nanobind6detail22implicitly_convertibleEPNS0_12nb_internalsEPKSt9type_infoPvb(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #12

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN8nanobind6detail13nb_type_checkEPNS0_12nb_internalsEP7_object(ptr noundef, ptr noundef) local_unnamed_addr #12

declare i32 @PyObject_SetAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN8nanobind6detail19nb_method_descr_getEP7_objectS2_S2_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 32
  %i.e = tail call ptr @_PyObject_GC_New(ptr noundef %i.d) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @_ZN8nanobind6detailL26nb_bound_method_vectorcallEP7_objectPKS2_mS2_, ptr %i.h, align 8
  %i.i = load i32, ptr %0, align 8
  %i.j = add i32 %i.i, 1                          ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZL9Py_INCREFP7_object.exit16, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.j, ptr %0, align 8
  br label %_ZL9Py_INCREFP7_object.exit16

_ZL9Py_INCREFP7_object.exit16:                    ; preds = %bb.b, %bb.c
  %i.l = load i32, ptr %1, align 8
  %i.m = add i32 %i.l, 1                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZL9Py_INCREFP7_object.exit15, label %bb.d

bb.d:                                             ; preds = %_ZL9Py_INCREFP7_object.exit16
  store i32 %i.m, ptr %1, align 8
  br label %_ZL9Py_INCREFP7_object.exit15

_ZL9Py_INCREFP7_object.exit15:                    ; preds = %_ZL9Py_INCREFP7_object.exit16, %bb.d
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.e)
  br label %_ZL9Py_INCREFP7_object.exit

bb.e:                                             ; preds = %bb.a
  %i.o = load i32, ptr %0, align 8
  %i.p = add i32 %i.o, 1                          ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZL9Py_INCREFP7_object.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 8
  br label %_ZL9Py_INCREFP7_object.exit

_ZL9Py_INCREFP7_object.exit:                      ; preds = %bb.f, %bb.e, %_ZL9Py_INCREFP7_object.exit15
  %.0 = phi ptr [ %i.e, %_ZL9Py_INCREFP7_object.exit15 ], [ %0, %bb.e ], [ %0, %bb.f ]
  ret ptr %.0
}

declare ptr @_PyObject_GC_New(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN8nanobind6detailL26nb_bound_method_vectorcallEP7_objectPKS2_mS2_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 4 uses
  %i.b = and i64 %2, 4611686018427387903          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %.not = icmp sgt i64 %2, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.pre = add nuw nsw i64 %i.b, 1
  br label %.thread44

bb.c:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.b, 1                  ; 4 uses
  %.not40 = icmp eq ptr %3, null
  br i1 %.not40, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.f, align 8
  %i.g = add i64 %.val, %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i64 [ %i.g, %bb.d ], [ %i.e, %bb.c ] ; 4 uses
  %i.h = icmp ugt i64 %.029, 4                    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8nanobind6detailL29nb_func_vectorcall_medium_posEP7_objectPKS2_mS2_:bb.a
  br i1 %or.cond44.us90, label %bb.g, label %.thread.us

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.110260.us86
  store ptr %i.ao, ptr %i.aq, align 8
  %i.ar = add nuw nsw i64 %.110260.us86, 1        ; 2 uses
  %exitcond121.not = icmp eq i64 %i.ar, %i.af
  br i1 %exitcond121.not, label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us, label %.lr.ph.split.us85, !llvm.loop !73

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us, %bb.k
  %.110260.us.us = phi i64 [ %i.bj, %bb.k ], [ 0, %.lr.ph.us ] ; 7 uses
  %i.as = icmp samesign ult i64 %.110260.us.us, %i.c
  br i1 %i.as, label %bb.h, label %.thread2.us.us

.thread2.us.us:                                   ; preds = %.lr.ph.split.us.us
  %i.at = load ptr, ptr %i.am, align 8
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %.110260.us.us
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.us
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.110260.us.us
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = load ptr, ptr %i.am, align 8
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %.110260.us.us ; 2 uses
  %.not.us.us = icmp eq ptr %i.aw, null
  br i1 %.not.us.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %.thread2.us.us
  %i.az = phi ptr [ %i.au, %.thread2.us.us ], [ %i.ay, %bb.h ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = phi ptr [ %i.ay, %bb.h ], [ %i.az, %bb.i ]
  %.0100.us.us = phi ptr [ %i.aw, %bb.h ], [ %i.bb, %bb.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = and i32 %i.be, 4
  %i.bg = icmp ne i32 %i.bf, 0
  %.not125.us.us = icmp ne ptr %.0100.us.us, null
  %i.bh = icmp ne ptr %.0100.us.us, @_Py_NoneStruct
  %brmerge.us.us = select i1 %i.bh, i1 true, i1 %i.bg
  %or.cond44.us.us = select i1 %.not125.us.us, i1 %brmerge.us.us, i1 false
  br i1 %or.cond44.us.us, label %bb.k, label %.thread.us

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.110260.us.us
  store ptr %.0100.us.us, ptr %i.bi, align 8
  %i.bj = add nuw nsw i64 %.110260.us.us, 1       ; 2 uses
  %exitcond122.not = icmp eq i64 %i.bj, %i.af
  br i1 %exitcond122.not, label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us, label %.lr.ph.split.us.us, !llvm.loop !73

.preheader.us:                                    ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %.not109 = icmp eq i16 %i.ae, 0
  br i1 %.not109, label %.thread.us, label %.lr.ph69.us

.lr.ph69.us:                                      ; preds = %.preheader.us
  br i1 %i.ac, label %.lr.ph69.split.us.us, label %.lr.ph69.split.us95.preheader

.lr.ph69.split.us95.preheader:                    ; preds = %.lr.ph69.us
  br i1 %i.x, label %.lr.ph69.split.us95.epil.preheader, label %.lr.ph69.split.us95

.lr.ph69.split.us95:                              ; preds = %.lr.ph69.split.us95.preheader, %bb.l
  %.010168.us96 = phi i64 [ %i.ce, %bb.l ], [ 0, %.lr.ph69.split.us95.preheader ] ; 7 uses
  %niter = phi i64 [ %niter.next.3, %bb.l ], [ 0, %.lr.ph69.split.us95.preheader ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.010168.us96
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = icmp eq ptr %i.bm, @_Py_NoneStruct
  br i1 %i.bn, label %.thread.us, label %.lr.ph69.split.us95.1, !prof !6

.lr.ph69.split.us95.1:                            ; preds = %.lr.ph69.split.us95
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.010168.us96
  store ptr %i.bm, ptr %i.bo, align 16
  %i.bp = or disjoint i64 %.010168.us96, 1        ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = icmp eq ptr %i.br, @_Py_NoneStruct
  br i1 %i.bs, label %.thread.us, label %.lr.ph69.split.us95.2, !prof !6

.lr.ph69.split.us95.2:                            ; preds = %.lr.ph69.split.us95.1
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  store ptr %i.br, ptr %i.bt, align 8
  %i.bu = or disjoint i64 %.010168.us96, 2        ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = icmp eq ptr %i.bw, @_Py_NoneStruct
  br i1 %i.bx, label %.thread.us, label %.lr.ph69.split.us95.3, !prof !6

.lr.ph69.split.us95.3:                            ; preds = %.lr.ph69.split.us95.2
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bu
  store ptr %i.bw, ptr %i.by, align 16
  %i.bz = or disjoint i64 %.010168.us96, 3        ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = icmp eq ptr %i.cb, @_Py_NoneStruct
  br i1 %i.cc, label %.thread.us, label %bb.l, !prof !6

bb.l:                                             ; preds = %.lr.ph69.split.us95.3
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bz
  store ptr %i.cb, ptr %i.cd, align 8
  %i.ce = add nuw nsw i64 %.010168.us96, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.thread.us.loopexit163.unr-lcssa, label %.lr.ph69.split.us95, !llvm.loop !74

.lr.ph69.split.us.us:                             ; preds = %.lr.ph69.us, %bb.n
  %.010168.us.us = phi i64 [ %i.cp, %bb.n ], [ 0, %.lr.ph69.us ] ; 5 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.010168.us.us
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ch = icmp eq ptr %i.cg, @_Py_NoneStruct
  br i1 %i.ch, label %bb.m, label %bb.n, !prof !6

bb.m:                                             ; preds = %.lr.ph69.split.us.us
  %i.ci = load ptr, ptr %i.bk, align 8
  %i.cj = getelementptr inbounds nuw [40 x i8], ptr %i.ci, i64 %.010168.us.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = and i32 %i.cl, 4
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.thread.us, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph69.split.us.us
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.010168.us.us
  store ptr %i.cg, ptr %i.co, align 8
  %i.cp = add nuw nsw i64 %.010168.us.us, 1       ; 2 uses
  %exitcond124.not = icmp eq i64 %i.cp, %i.c
  br i1 %exitcond124.not, label %.thread.us, label %.lr.ph69.split.us.us, !llvm.loop !74

.thread.us.loopexit163.unr-lcssa:                 ; preds = %bb.l
  br i1 %lcmp.mod.not, label %.thread.us, label %.lr.ph69.split.us95.epil.preheader

.lr.ph69.split.us95.epil.preheader:               ; preds = %.thread.us.loopexit163.unr-lcssa, %.lr.ph69.split.us95.preheader
  %.010168.us96.epil.init = phi i64 [ 0, %.lr.ph69.split.us95.preheader ], [ %i.ce, %.thread.us.loopexit163.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod175)
  br label %.lr.ph69.split.us95.epil

.lr.ph69.split.us95.epil:                         ; preds = %bb.o, %.lr.ph69.split.us95.epil.preheader
  %.010168.us96.epil = phi i64 [ %i.cu, %bb.o ], [ %.010168.us96.epil.init, %.lr.ph69.split.us95.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.o ], [ 0, %.lr.ph69.split.us95.epil.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.010168.us96.epil
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp eq ptr %i.cr, @_Py_NoneStruct
  br i1 %i.cs, label %.thread.us, label %bb.o, !prof !6

bb.o:                                             ; preds = %.lr.ph69.split.us95.epil
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.010168.us96.epil
  store ptr %i.cr, ptr %i.ct, align 8
  %i.cu = add nuw nsw i64 %.010168.us96.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread.us, label %.lr.ph69.split.us95.epil, !llvm.loop !75

.thread.us:                                       ; preds = %.lr.ph.split.us85, %bb.f, %bb.j, %.thread.us.loopexit163.unr-lcssa, %.lr.ph69.split.us95.epil, %bb.o, %.lr.ph69.split.us95, %.lr.ph69.split.us95.1, %.lr.ph69.split.us95.2, %.lr.ph69.split.us95.3, %bb.n, %bb.m, %.preheader.us, %.preheader45.us
  %.2.us = phi i64 [ %i.c, %bb.n ], [ %.110260.us.us, %bb.j ], [ %i.c, %bb.o ], [ 0, %.preheader45.us ], [ 0, %.preheader.us ], [ %.010168.us.us, %bb.m ], [ %i.c, %.thread.us.loopexit163.unr-lcssa ], [ %i.bz, %.lr.ph69.split.us95.3 ], [ %.010168.us96, %.lr.ph69.split.us95 ], [ %i.bp, %.lr.ph69.split.us95.1 ], [ %i.bu, %.lr.ph69.split.us95.2 ], [ %.010168.us96.epil, %.lr.ph69.split.us95.epil ], [ %i.c, %.lr.ph.split.us85 ], [ %.110260.us86, %bb.f ]
  %.not126.us = icmp eq i64 %.2.us, %i.af
  br i1 %.not126.us, label %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us, label %bb.u

_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us: ; preds = %bb.g, %bb.k, %.thread.us
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = lshr i32 %.fr108, 14
  %.lobit.i.us = and i32 %i.cx, 1
  %i.cy = xor i32 %.lobit.i.us, 1
  %i.cz = select i1 %.010784.us, i32 0, i32 %i.cy
  %i.da = lshr i32 %.fr108, 2
  %i.db = and i32 %i.da, 32
  %i.dc = select i1 %.not42, i32 0, i32 %i.db
  %i.dd = or disjoint i32 %i.dc, %i.u
  %i.de = or disjoint i32 %i.dd, %i.cz
  %i.df = invoke noundef ptr %i.cw(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, i32 noundef %i.de, ptr noundef nonnull %3)
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us
  %i.dg = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi117builtin_exceptionE
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr null                          ; 2 uses
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0      ; 2 uses
  %i.di = extractvalue { ptr, i32 } %i.dg, 1      ; 2 uses
  %i.dj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE) #25
  %i.dk = icmp eq i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.q, label %.split100.us

bb.q:                                             ; preds = %bb.p
  %i.dl = call ptr @__cxa_begin_catch(ptr %i.dh) #25
  %i.dm = invoke fastcc noundef zeroext i1 @_ZN8nanobind6detailL28set_builtin_exception_statusERNS_4abi117builtin_exceptionE(ptr noundef nonnull align 8 dereferenceable(20) %i.dl)
          to label %bb.r unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %spec.select.us = select i1 %i.dm, ptr null, ptr inttoptr (i64 1 to ptr)
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %_ZN8nanobind6detail19func_dispatch_flagsEPKNS0_9func_dataEbbb.exit.us
  %.not127.us = icmp eq ptr %i.df, null
  br i1 %.not127.us, label %.thread36, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s, %bb.r
  %.3117.us = phi ptr [ %spec.select.us, %bb.r ], [ %i.df, %bb.s ] ; 6 uses
  %.not128.us = icmp eq ptr %.3117.us, inttoptr (i64 1 to ptr)
  br i1 %.not128.us, label %bb.u, label %.split104.us

bb.u:                                             ; preds = %bb.t, %.thread.us, %bb.d
  %.5119.us = phi ptr [ %.111579.us, %bb.d ], [ %.3117.us, %bb.t ], [ %.111579.us, %.thread.us ] ; 3 uses
  %i.dn = add nuw i64 %.010380.us, 1              ; 2 uses
  %exitcond125.not = icmp eq i64 %i.dn, %.val
  br i1 %exitcond125.not, label %._crit_edge.us, label %bb.d, !llvm.loop !76

._crit_edge.us:                                   ; preds = %bb.u
  br i1 %.010784.us, label %.preheader47.us, label %.thread36, !llvm.loop !77

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.q, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.do) #26
  unreachable

.split100.us:                                     ; preds = %bb.p
  %i.dp = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi112python_errorE) #25
  %i.dq = icmp eq i32 %i.di, %i.dp
  %i.dr = call ptr @__cxa_begin_catch(ptr %i.dh) #25
  br i1 %i.dq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.split100.us
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8
  call void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef %i.dt) #25
  store ptr null, ptr %i.ds, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.w, %bb.v
  invoke void @__cxa_end_catch()
          to label %.thread36 unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %.split100.us
  call fastcc void @_ZN8nanobind6detailL29nb_func_convert_cpp_exceptionEP7_object(ptr noundef nonnull %0) #25
  br label %.invoke

.split104.us:                                     ; preds = %bb.t
  %i.du = icmp ne ptr %.3117.us, null
  %or.cond5 = and i1 %i.j, %i.du
  br i1 %or.cond5, label %bb.x, label %.thread36

bb.x:                                             ; preds = %.split104.us
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 4             ; 3 uses
  %i.dx = and i8 %i.dw, -20
  %i.dy = or disjoint i8 %i.dx, 18
  store i8 %i.dy, ptr %i.dv, align 4
  %i.dz = and i8 %i.dw, 64
  %.not129 = icmp eq i8 %i.dz, 0
  br i1 %.not129, label %.thread36, label %bb.y, !prof !5

bb.y:                                             ; preds = %bb.x
  %i.ea = getelementptr i8, ptr %i.m, i64 8
  %.val134 = load ptr, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %.val134, i64 1024
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = ptrtoint ptr %i.m to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = sext i32 %i.ef to i64
  %i.eh = add nsw i64 %i.eg, %i.ed
  %i.ei = inttoptr i64 %i.eh to ptr               ; 2 uses
  %i.ej = and i8 %i.dw, 4
  %.not.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i, label %bb.z, label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

bb.z:                                             ; preds = %bb.y
  %i.ek = load ptr, ptr %i.ei, align 8
  br label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit

_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit: ; preds = %bb.y, %bb.z
  %i.el = phi ptr [ %i.ek, %bb.z ], [ %i.ei, %bb.y ]
  call void %i.ec(ptr noundef %i.el, ptr noundef nonnull %i.m) #25
  br label %.thread36

.thread36:                                        ; preds = %._crit_edge.us, %bb.s, %.invoke, %bb.c, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit, %bb.x, %.split104.us
  %.712140 = phi ptr [ null, %bb.c ], [ %.3117.us, %.split104.us ], [ %.3117.us, %bb.x ], [ %.3117.us, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ null, %bb.s ], [ null, %.invoke ], [ %.5119.us, %._crit_edge.us ]
  %.not130 = phi i1 [ false, %bb.c ], [ true, %.split104.us ], [ true, %bb.x ], [ true, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ false, %bb.s ], [ true, %.invoke ], [ false, %._crit_edge.us ]
  %i.em = phi ptr [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %bb.c ], [ null, %.split104.us ], [ null, %bb.x ], [ null, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit ], [ @_ZN8nanobind6detailL23nb_func_error_noconvertEP7_objectPKS2_mS2_, %bb.s ], [ null, %.invoke ], [ @_ZN8nanobind6detailL22nb_func_error_overloadEP7_objectPKS2_mS2_, %._crit_edge.us ]
  %i.en = load i32, ptr %3, align 8
  %.not43 = icmp eq i32 %i.en, 1
  br i1 %.not43, label %bb.ab, label %bb.aa, !prof !5

bb.aa:                                            ; preds = %.thread36
  call void @_ZN8nanobind6detail12cleanup_list7releaseEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread36
  br i1 %.not130, label %bb.ad, label %bb.ac, !prof !5

bb.ac:                                            ; preds = %bb.ab
  %i.eo = call noundef ptr %i.em(ptr noundef %0, ptr noundef %1, i64 noundef %i.c, ptr noundef null) #25, !callees !12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0 = phi ptr [ %.712140, %bb.ab ], [ %i.eo, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret ptr %.0
}

declare ptr @PyErr_NoMemory() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #10

declare ptr @PyObject_Repr(ptr noundef) local_unnamed_addr #2

declare hidden noundef ptr @_ZN8nanobind6detail11nb_type_c2pEPNS0_12nb_internalsEPKSt9type_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E5eraseIS3_EEmRKT_m(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %.0813.i.i.i.i = and i64 %i.a, %2               ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.0813.i.i.i.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i16, ptr %i.e, align 4
  %.not14.i.i.i.i = icmp slt i16 %i.f, 0
  br i1 %.not14.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %.0816.i.i.i.i = phi i64 [ %.0813.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i, %bb.c ]
  %.015.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.m, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit.loopexit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %.0816.i.i.i.i, 1
  %i.m = add i16 %.015.i.i.i.i, 1                 ; 2 uses
  %.08.i.i.i.i = and i64 %i.l, %i.a               ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.08.i.i.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i16, ptr %i.o, align 4
  %.not.i.i.i.i = icmp sgt i16 %i.m, %i.p
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.b, !llvm.loop !78

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.r
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit.loopexit: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit: ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit.loopexit, %._crit_edge.i.i.i.i
  %i.t = phi i64 [ %i.r, %._crit_edge.i.i.i.i ], [ %.pre, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit.loopexit ]
  %.sroa.09.0.i.i.i.i = phi ptr [ %i.s, %._crit_edge.i.i.i.i ], [ %i.h, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit.loopexit ] ; 3 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.t
  %.not = icmp eq ptr %.sroa.09.0.i.i.i.i, %i.u
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E4findIS3_EENSI_14robin_iteratorILb0EEERKT_m.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 4 ; 2 uses
  %i.w = load i16, ptr %i.v, align 4
  %i.x = icmp eq i16 %i.w, -1
  br i1 %i.x, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i16 -1, ptr %i.v, align 4
  %.pre6 = load ptr, ptr %i.b, align 8
  %.pre7 = load i64, ptr %0, align 8
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS3_ELb1EE5clearEv.exit.i: ; preds = %bb.e, %bb.d
  %i.y = phi i64 [ %.pre7, %bb.e ], [ %i.a, %bb.d ]
  %i.z = phi ptr [ %.pre6, %bb.e ], [ %i.c, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, -1
  store i64 %i.ac, ptr %i.aa, align 8
  %i.ad = ptrtoint ptr %.sroa.09.0.i.i.i.i to i64
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 24                ; 2 uses
  %i.ah = add nsw i64 %i.ag, 1
  %i.ai = and i64 %i.ah, %i.y                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ai ; 2 uses
end_hunk_2
