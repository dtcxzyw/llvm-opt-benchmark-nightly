Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_xpm2ps?download=true
inline.NumInlined: 1528
inline.NumDeleted: 598
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZL6ps_matPKcN3gmx8ArrayRefI8t_matrixEES4_bbbbbbifffS0_S0_i:bb.a
  call void @_ZdlPvm(ptr noundef %i.akr, i64 noundef %i.aku) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
  %i.akv = load ptr, ptr %38, align 8, !tbaa !37  ; 2 uses
  %i.akw = icmp eq ptr %i.akv, %i.ahz
  br i1 %i.akw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.akx = load i64, ptr %i.ahz, align 8, !tbaa !17
  %i.aky = add i64 %i.akx, 1
  call void @_ZdlPvm(ptr noundef %i.akv, i64 noundef %i.aky) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

.loopexit519:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit521 = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

.loopexit.split-lp520:                            ; preds = %bb.ig
  %lpad.loopexit.split-lp522 = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.io:                                            ; preds = %.loopexit.split-lp520, %.loopexit519
  %lpad.phi523 = phi { ptr, i32 } [ %lpad.loopexit521, %.loopexit519 ], [ %lpad.loopexit.split-lp522, %.loopexit.split-lp520 ] ; 2 uses
  %i.akz = load ptr, ptr %38, align 8, !tbaa !37  ; 2 uses
  %i.ala = icmp eq ptr %i.akz, %i.ahz
  br i1 %i.ala, label %.body309, label %.body309.sink.split

.body309.sink.split:                              ; preds = %bb.io, %bb.if
  %.sink = phi ptr [ %i.ajl, %bb.if ], [ %i.akz, %bb.io ]
  %.pn.ph = phi { ptr, i32 } [ %lpad.phi518, %bb.if ], [ %lpad.phi523, %bb.io ]
  %i.alb = load i64, ptr %i.ahz, align 8, !tbaa !17
  %i.alc = add i64 %i.alb, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.alc) #28
  br label %.body309

.body309:                                         ; preds = %.body309.sink.split, %bb.io, %bb.if
  %.pn = phi { ptr, i32 } [ %lpad.phi518, %bb.if ], [ %lpad.phi523, %bb.io ], [ %.pn.ph, %.body309.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  br label %bb.iq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319
  %i.ald = getelementptr inbounds nuw [288 x i8], ptr %1, i64 %.0187590
  %i.ale = getelementptr i8, ptr %i.ald, i64 8
  %.val = load i32, ptr %i.ale, align 8, !tbaa !77
  %.val244 = load float, ptr %i.dg, align 4, !tbaa !221
  %i.alf = sitofp i32 %.val to float
  %i.alg = fmul float %.val244, %i.alf
  %i.alh = fadd float %.0201589, %i.alg
  %i.ali = load float, ptr %i.cq, align 4, !tbaa !217
  %i.alj = fadd float %i.ali, %i.alh
  invoke void @_Z8ps_ctextP8t_psdataffRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull %34, float noundef %i.aie, float noundef %i.alj, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 0)
          to label %bb.ip unwind label %bb.id

bb.ip:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.alk = load ptr, ptr %36, align 8, !tbaa !37  ; 2 uses
  %i.all = icmp eq ptr %i.alk, %i.ahx
  br i1 %i.all, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %bb.ip
  %i.alm = load i64, ptr %i.ahx, align 8, !tbaa !17
  %i.aln = add i64 %i.alm, 1
  call void @_ZdlPvm(ptr noundef %i.alk, i64 noundef %i.aln) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %bb.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  br label %bb.ir

bb.iq:                                            ; preds = %.body309, %bb.id
  %.pn222 = phi { ptr, i32 } [ %i.aja, %bb.id ], [ %.pn, %.body309 ]
  %i.alo = load ptr, ptr %36, align 8, !tbaa !37  ; 2 uses
  %i.alp = icmp eq ptr %i.alo, %i.ahx
  br i1 %i.alp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %bb.iq
  %i.alq = load i64, ptr %i.ahx, align 8, !tbaa !17
  %i.alr = add i64 %i.alq, 1
  call void @_ZdlPvm(ptr noundef %i.alo, i64 noundef %i.alr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %bb.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  br label %.body301

bb.ir:                                            ; preds = %bb.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %39, ptr noundef nonnull @.str.129, i64 noundef %.0187590)
          to label %bb.is unwind label %bb.iw

bb.is:                                            ; preds = %bb.ir
  %i.als = load ptr, ptr %39, align 8, !tbaa !37
  invoke void @_Z10ps_commentP8t_psdataPKc(ptr noundef nonnull %34, ptr noundef %i.als)
          to label %bb.it unwind label %bb.ix

bb.it:                                            ; preds = %bb.is
  %i.alt = load ptr, ptr %39, align 8, !tbaa !37  ; 2 uses
  %i.alu = icmp eq ptr %i.alt, %i.aif
  br i1 %i.alu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %bb.it
  %i.alv = load i64, ptr %i.aif, align 8, !tbaa !17
  %i.alw = add i64 %i.alv, 1
  call void @_ZdlPvm(ptr noundef %i.alt, i64 noundef %i.alw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %bb.it, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  %i.alx = getelementptr inbounds nuw [288 x i8], ptr %1, i64 %.0187590 ; 5 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 4 ; 2 uses
  %i.alz = load i32, ptr %i.aly, align 4, !tbaa !76
  %i.ama = icmp sgt i32 %i.alz, 0
  br i1 %i.ama, label %.lr.ph586, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331._ZL10box_dh_topbP7t_psrec.exit_crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331._ZL10box_dh_topbP7t_psrec.exit_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  %.phi.trans.insert = getelementptr i8, ptr %i.alx, i64 8
  %.val245.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !77
  br label %_ZL10box_dh_topbP7t_psrec.exit

.lr.ph586:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alx, i64 256 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alx, i64 240 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alx, i64 8 ; 2 uses
  br label %bb.iu

bb.iu:                                            ; preds = %.lr.ph586, %._crit_edge584
  %indvars.iv599 = phi i64 [ 0, %.lr.ph586 ], [ %indvars.iv.next600, %._crit_edge584 ] ; 7 uses
  %i.ame = trunc nuw nsw i64 %indvars.iv599 to i32
  %i.amf = uitofp nneg i32 %i.ame to float
  %i.amg = load float, ptr %i.dd, align 4, !tbaa !220
  %i.amh = call float @llvm.fmuladd.f32(float %i.amf, float %i.amg, float %.2.i)
  invoke void @_Z9ps_movetoP8t_psdataff(ptr noundef nonnull %34, float noundef %i.amh, float noundef %.0201589)
          to label %bb.iv unwind label %.loopexit.split-lp510

bb.iv:                                            ; preds = %bb.iu
  %i.ami = icmp eq i64 %indvars.iv599, 0          ; 2 uses
  %i.amj = and i1 %7, %i.ami
  %narrow = or i1 %i.lt, %i.amj
  %i.amk = zext i1 %narrow to i8
  %.not776 = xor i1 %i.ami, true
  %brmerge = or i1 %6, %.not776
  br i1 %brmerge, label %.split, label %bb.iy

.split:                                           ; preds = %bb.iv
  %i.aml = load ptr, ptr %i.amb, align 8, !tbaa !84
  %i.amm = load i64, ptr %i.amc, align 8
  %i.amn = mul nsw i64 %i.amm, %indvars.iv599
  %i.amo = getelementptr [2 x i8], ptr %i.aml, i64 %i.amn
  %i.amp = load i16, ptr %i.amo, align 2, !tbaa !83
  %i.amq = sext i16 %i.amp to i32
  br label %bb.iy

bb.iw:                                            ; preds = %bb.ir
  %i.amr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336

bb.ix:                                            ; preds = %bb.is
  %i.ams = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amt = load ptr, ptr %39, align 8, !tbaa !37  ; 2 uses
  %i.amu = icmp eq ptr %i.amt, %i.aif
  br i1 %i.amu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334: ; preds = %bb.ix
  %i.amv = load i64, ptr %i.aif, align 8, !tbaa !17
  %i.amw = add i64 %i.amv, 1
  call void @_ZdlPvm(ptr noundef %i.amt, i64 noundef %i.amw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336: ; preds = %bb.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334, %bb.iw
  %.pn224 = phi { ptr, i32 } [ %i.amr, %bb.iw ], [ %i.ams, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334 ], [ %i.ams, %bb.ix ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  br label %.body301

.loopexit509:                                     ; preds = %.invoke774, %bb.jc
  %lpad.loopexit511 = landingpad { ptr, i32 }
          cleanup
  br label %.body301

.loopexit.split-lp510:                            ; preds = %bb.iu
  %lpad.loopexit.split-lp512 = landingpad { ptr, i32 }
          cleanup
  br label %.body301

bb.iy:                                            ; preds = %bb.iv, %.split
  %.0202 = phi i32 [ %i.amq, %.split ], [ -1, %bb.iv ]
  %i.amx = load i32, ptr %i.amd, align 8, !tbaa !77 ; 3 uses
  %.not227577 = icmp slt i32 %i.amx, 1
  br i1 %.not227577, label %._crit_edge584, label %.lr.ph583

.lr.ph583:                                        ; preds = %bb.iy, %bb.jd
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.jd ], [ 1, %bb.iy ] ; 8 uses
  %i.amy = phi i32 [ %i.anv, %bb.jd ], [ %i.amx, %bb.iy ]
  %.0199580 = phi i8 [ %.1200, %bb.jd ], [ %i.amk, %bb.iy ] ; 3 uses
  %.1203579 = phi i32 [ %.2204, %bb.jd ], [ %.0202, %bb.iy ] ; 4 uses
  %.1206578 = phi i32 [ %.2207, %bb.jd ], [ 0, %bb.iy ] ; 2 uses
  %i.amz = icmp samesign ult i64 %indvars.iv599, %indvars.iv
  %or.cond237 = select i1 %i.lt, i1 true, i1 %i.amz
  %i.ana = icmp eq i64 %indvars.iv599, %indvars.iv ; 2 uses
  %i.anb = and i1 %7, %i.ana
  %narrow495 = or i1 %or.cond237, %i.anb
  %i.anc = zext i1 %narrow495 to i8               ; 3 uses
  %i.and = zext i32 %i.amy to i64                 ; 2 uses
  %i.ane = icmp eq i64 %indvars.iv, %i.and
  %or.cond239 = and i1 %i.ana, %.not238
  %or.cond490 = or i1 %i.ane, %or.cond239
  br i1 %or.cond490, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %.lr.ph583
  %i.anf = load ptr, ptr %i.amb, align 8, !tbaa !84
  %i.ang = load i64, ptr %i.amc, align 8
  %i.anh = mul nsw i64 %i.ang, %indvars.iv599
  %i.ani = getelementptr [2 x i8], ptr %i.anf, i64 %i.anh
  %i.anj = getelementptr [2 x i8], ptr %i.ani, i64 %indvars.iv
  %i.ank = load i16, ptr %i.anj, align 2, !tbaa !83
  %i.anl = sext i16 %i.ank to i32
  br label %bb.ja

bb.ja:                                            ; preds = %.lr.ph583, %bb.iz
  %.0 = phi i32 [ %i.anl, %bb.iz ], [ -1, %.lr.ph583 ] ; 3 uses
  %.not228.a = icmp ne i64 %indvars.iv, %i.and
  %.not228 = icmp eq i32 %.1203579, %.0
  %or.cond240 = select i1 %.not228.a, i1 %.not228, i1 false
  %.not229 = icmp eq i8 %.0199580, %i.anc
  %or.cond241.not = select i1 %or.cond240, i1 %.not229, i1 false
  br i1 %or.cond241.not, label %bb.jd, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.anm = icmp sgt i32 %.1203579, -1
  %i.ann = trunc nuw nsw i64 %indvars.iv to i32   ; 3 uses
  br i1 %i.anm, label %.invoke774, label %bb.jc

.invoke774:                                       ; preds = %bb.jb
  %41 = trunc nuw i8 %.0199580 to i1
  %i.ano = zext nneg i32 %.1203579 to i64
  %i.anp = sub nsw i32 %i.ann, %.1206578
  %i.anq = sitofp i32 %i.anp to float
  %. = select i1 %41, ptr %1, ptr %3
  %i.anr = getelementptr inbounds nuw [288 x i8], ptr %., i64 %.0187590
  %.sink775.in = getelementptr inbounds nuw i8, ptr %i.anr, i64 264
  %.sink775 = load ptr, ptr %.sink775.in, align 8, !tbaa !42
  %i.ans = getelementptr inbounds nuw [64 x i8], ptr %.sink775, i64 %i.ano
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 40
  invoke void @_Z11ps_rgb_nboxP8t_psdataP5t_rgbf(ptr noundef nonnull %34, ptr noundef nonnull %i.ant, float noundef %i.anq)
          to label %bb.jd unwind label %.loopexit509

bb.jc:                                            ; preds = %bb.jb
  %i.anu = load float, ptr %i.dg, align 4, !tbaa !221
  invoke void @_Z10ps_moverelP8t_psdataff(ptr noundef nonnull %34, float noundef 0.000000e+00, float noundef %i.anu)
          to label %bb.jd unwind label %.loopexit509

bb.jd:                                            ; preds = %.invoke774, %bb.jc, %bb.ja
  %.2207 = phi i32 [ %.1206578, %bb.ja ], [ %i.ann, %bb.jc ], [ %i.ann, %.invoke774 ]
  %.2204 = phi i32 [ %.1203579, %bb.ja ], [ %.0, %bb.jc ], [ %.0, %.invoke774 ]
  %.1200 = phi i8 [ %.0199580, %bb.ja ], [ %i.anc, %bb.jc ], [ %i.anc, %.invoke774 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.anv = load i32, ptr %i.amd, align 8, !tbaa !77 ; 3 uses
  %i.anw = sext i32 %i.anv to i64
  %.not227.not = icmp slt i64 %indvars.iv, %i.anw
  br i1 %.not227.not, label %.lr.ph583, label %._crit_edge584, !llvm.loop !206

._crit_edge584:                                   ; preds = %bb.jd, %bb.iy
  %.val245607 = phi i32 [ %i.amx, %bb.iy ], [ %i.anv, %bb.jd ]
  %indvars.iv.next600 = add nuw nsw i64 %indvars.iv599, 1 ; 2 uses
  %i.anx = load i32, ptr %i.aly, align 4, !tbaa !76
  %i.any = sext i32 %i.anx to i64
  %i.anz = icmp slt i64 %indvars.iv.next600, %i.any
  br i1 %i.anz, label %bb.iu, label %_ZL10box_dh_topbP7t_psrec.exit, !llvm.loop !207

_ZL10box_dh_topbP7t_psrec.exit:                   ; preds = %._crit_edge584, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331._ZL10box_dh_topbP7t_psrec.exit_crit_edge
  %.val245 = phi i32 [ %.val245.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331._ZL10box_dh_topbP7t_psrec.exit_crit_edge ], [ %.val245607, %._crit_edge584 ]
  %.val246 = load float, ptr %i.dg, align 4, !tbaa !221
  %i.aoa = sitofp i32 %.val245 to float
  %i.aob = fmul float %.val246, %i.aoa
  %.val247 = load float, ptr %i.dj, align 4, !tbaa !222
  %i.aoc = fadd float %i.aob, %.val247
  %i.aod = add nuw nsw i64 %.0187590, 1           ; 2 uses
  %i.aoe = icmp eq i64 %i.aod, %.pre-phi621       ; 2 uses
  %i.aof = load i8, ptr %i.nv, align 4, !tbaa !246, !range !23, !noundef !24
  %i.aog = trunc nuw i8 %i.aof to i1
  %i.aoh = load i8, ptr %i.nw, align 1, !range !23
  %i.aoi = trunc nuw i8 %i.aoh to i1
  %or.cond.i340 = and i1 %i.aoe, %i.aoi
  %or.cond492 = select i1 %i.aog, i1 true, i1 %or.cond.i340
  %i.aoj = load float, ptr %i.cq, align 4
  %i.aok = fmul float %i.aoj, 2.000000e+00
  %.0.i = select i1 %or.cond492, float %i.aok, float 0.000000e+00
  %i.aol = fadd float %i.aoc, %.0.i
  %i.aom = fadd float %.0201589, %i.aol
  br i1 %i.aoe, label %._crit_edge594, label %bb.hw, !llvm.loop !208

bb.je:                                            ; preds = %._crit_edge594
  invoke void @_Z10ps_commentP8t_psdataPKc(ptr noundef nonnull %34, ptr noundef nonnull @.str.130)
          to label %bb.jf unwind label %.loopexit.split-lp499.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jf:                                            ; preds = %bb.je
  %i.aon = fadd float %.2.i, -1.500000e+00        ; 3 uses
  %i.aoo = load float, ptr %i.ee, align 4, !tbaa !227
  %i.aop = fptosi float %i.aoo to i32
  invoke void @_Z12ps_linewidthP8t_psdatai(ptr noundef nonnull %34, i32 noundef %i.aop)
          to label %.noexc354 unwind label %.loopexit.split-lp499.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc354:                                        ; preds = %bb.jf
  br i1 %.not493566, label %_ZL14draw_zerolinesP8t_psdatafffN3gmx8ArrayRefI8t_matrixEEP7t_psrec.exit, label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %.noexc354
  %i.aoq = fadd float %.3.i, -1.500000e+00
  %i.aor = fpext float %i.aon to double
  %i.aos = fadd float %.086.lcssa.i, %i.aon
  %i.aot = fadd float %i.aos, 2.000000e+00
  %.val58.pre.i = load float, ptr %i.dg, align 4, !tbaa !221
  br label %bb.jg

bb.jg:                                            ; preds = %_ZL10box_dh_topbP7t_psrec.exit.i347, %.lr.ph86.i
  %.val58.i341 = phi float [ %.val58.pre.i, %.lr.ph86.i ], [ %.val56.i, %_ZL10box_dh_topbP7t_psrec.exit.i347 ]
  %.05085.i = phi float [ %i.aoq, %.lr.ph86.i ], [ %i.asb, %_ZL10box_dh_topbP7t_psrec.exit.i347 ] ; 4 uses
  %.sroa.0.084.i = phi ptr [ %1, %.lr.ph86.i ], [ %i.ars, %_ZL10box_dh_topbP7t_psrec.exit.i347 ] ; 5 uses
  %i.aou = getelementptr i8, ptr %.sroa.0.084.i, i64 8 ; 4 uses
  %.val57.i = load i32, ptr %i.aou, align 8, !tbaa !77
  %i.aov = sitofp i32 %.val57.i to float
  %i.aow = fmul float %.val58.i341, %i.aov
  %i.aox = load i32, ptr %i.eh, align 4, !tbaa !228 ; 2 uses
  %.not.i342 = icmp eq i32 %i.aox, 0
  br i1 %.not.i342, label %.loopexit79.i, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.aoy = sext i32 %i.aox to i64
  %i.aoz = getelementptr inbounds [8 x i8], ptr @_ZL10linecolors, i64 %i.aoy
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !254
  invoke void @_Z6ps_rgbP8t_psdataPK5t_rgb(ptr noundef nonnull %34, ptr noundef %i.apa)
          to label %.noexc355 unwind label %.loopexit.split-lp499.loopexit.split-lp.loopexit

.noexc355:                                        ; preds = %bb.jh
  %i.apb = getelementptr inbounds nuw i8, ptr %.sroa.0.084.i, i64 4 ; 2 uses
  %i.apc = load i32, ptr %i.apb, align 4, !tbaa !76 ; 3 uses
  %i.apd = icmp sgt i32 %i.apc, 0
  br i1 %i.apd, label %bb.ji, label %.loopexit79.i

bb.ji:                                            ; preds = %.noexc355
  %i.ape = getelementptr inbounds nuw i8, ptr %.sroa.0.084.i, i64 152
  %i.apf = fadd float %.05085.i, %i.aow
  %i.apg = fadd float %i.apf, 2.000000e+00
  %.not107.i = icmp eq i32 %i.apc, 1
  br i1 %.not107.i, label %.loopexit79.i, label %.peel.next.i350

.peel.next.i350:                                  ; preds = %bb.ji, %bb.jl
  %i.aph = phi i32 [ %i.aqe, %bb.jl ], [ %i.apc, %bb.ji ] ; 3 uses
  %indvars.iv.i351 = phi i64 [ %indvars.iv.next.i352, %bb.jl ], [ 1, %bb.ji ] ; 4 uses
  %i.api = trunc nuw nsw i64 %indvars.iv.i351 to i32
  %i.apj = uitofp nneg i32 %i.api to double
  %i.apk = fadd double %i.apj, f0x3FE6666666666666
  %i.apl = load float, ptr %i.dd, align 4, !tbaa !220
  %i.apm = fpext float %i.apl to double
  %i.apn = call double @llvm.fmuladd.f64(double %i.apk, double %i.apm, double %i.aor)
  %i.apo = fptrunc double %i.apn to float         ; 2 uses
  %i.app = add nsw i32 %i.aph, -1
  %i.apq = sext i32 %i.app to i64
  %i.apr = icmp slt i64 %indvars.iv.i351, %i.apq
  br i1 %i.apr, label %bb.jj, label %bb.jl

bb.jj:                                            ; preds = %.peel.next.i350
  %i.aps = load ptr, ptr %i.ape, align 8, !tbaa !81
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %i.aps, i64 %indvars.iv.i351 ; 2 uses
  %i.apu = load float, ptr %i.apt, align 4, !tbaa !22 ; 2 uses
  %i.apv = call noundef float @llvm.fabs.f32(float %i.apu)
  %i.apw = fpext float %i.apv to double
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apt, i64 4
  %i.apy = load float, ptr %i.apx, align 4, !tbaa !22
  %i.apz = fsub float %i.apy, %i.apu
  %i.aqa = call noundef float @llvm.fabs.f32(float %i.apz)
  %i.aqb = fpext float %i.aqa to double
  %i.aqc = fmul double %i.aqb, 1.000000e-01
  %i.aqd = fcmp ogt double %i.aqc, %i.apw
  br i1 %i.aqd, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  invoke void @_Z7ps_lineP8t_psdataffff(ptr noundef nonnull %34, float noundef %i.apo, float noundef %.05085.i, float noundef %i.apo, float noundef %i.apg)
          to label %.noexc356 unwind label %.loopexit.split-lp499.loopexit

.noexc356:                                        ; preds = %bb.jk
  %.pre.i353 = load i32, ptr %i.apb, align 4, !tbaa !76
  br label %bb.jl

bb.jl:                                            ; preds = %.noexc356, %bb.jj, %.peel.next.i350
  %i.aqe = phi i32 [ %i.aph, %.peel.next.i350 ], [ %i.aph, %bb.jj ], [ %.pre.i353, %.noexc356 ] ; 2 uses
  %indvars.iv.next.i352 = add nuw nsw i64 %indvars.iv.i351, 1 ; 2 uses
  %i.aqf = sext i32 %i.aqe to i64
  %i.aqg = icmp slt i64 %indvars.iv.next.i352, %i.aqf
  br i1 %i.aqg, label %.peel.next.i350, label %.loopexit79.i, !llvm.loop !209

.loopexit79.i:                                    ; preds = %bb.jl, %bb.ji, %.noexc355, %bb.jg
  %i.aqh = load i32, ptr %i.fk, align 4, !tbaa !237 ; 2 uses
  %.not53.i343 = icmp eq i32 %i.aqh, 0
  br i1 %.not53.i343, label %.loopexit79..loopexit_crit_edge.i, label %bb.jm

.loopexit79..loopexit_crit_edge.i:                ; preds = %.loopexit79.i
  %.val.pre.i = load i32, ptr %i.aou, align 8, !tbaa !77
  br label %.loopexit.i

bb.jm:                                            ; preds = %.loopexit79.i
  %i.aqi = sext i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds [8 x i8], ptr @_ZL10linecolors, i64 %i.aqi
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !254
  invoke void @_Z6ps_rgbP8t_psdataPK5t_rgb(ptr noundef nonnull %34, ptr noundef %i.aqk)
          to label %.noexc357 unwind label %.loopexit.split-lp499.loopexit.split-lp.loopexit

.noexc357:                                        ; preds = %bb.jm
  %i.aql = load i32, ptr %i.aou, align 8, !tbaa !77 ; 4 uses
  %i.aqm = icmp sgt i32 %i.aql, 0
  br i1 %i.aqm, label %bb.jn, label %.loopexit.i

bb.jn:                                            ; preds = %.noexc357
  %i.aqn = fpext float %.05085.i to double
  %i.aqo = getelementptr inbounds nuw i8, ptr %.sroa.0.084.i, i64 176
  %.not108.i = icmp eq i32 %i.aql, 1
  br i1 %.not108.i, label %.loopexit.i, label %.peel.next93.i

.peel.next93.i:                                   ; preds = %bb.jn, %bb.jq
  %i.aqp = phi i32 [ %i.arm, %bb.jq ], [ %i.aql, %bb.jn ] ; 3 uses
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i, %bb.jq ], [ 1, %bb.jn ] ; 4 uses
  %i.aqq = trunc nuw nsw i64 %indvars.iv89.i to i32
  %i.aqr = uitofp nneg i32 %i.aqq to double
  %i.aqs = fadd double %i.aqr, f0x3FE6666666666666
  %i.aqt = load float, ptr %i.dg, align 4, !tbaa !221
  %i.aqu = fpext float %i.aqt to double
  %i.aqv = call double @llvm.fmuladd.f64(double %i.aqs, double %i.aqu, double %i.aqn)
  %i.aqw = fptrunc double %i.aqv to float         ; 2 uses
  %i.aqx = add nsw i32 %i.aqp, -1
  %i.aqy = sext i32 %i.aqx to i64
  %i.aqz = icmp slt i64 %indvars.iv89.i, %i.aqy
  br i1 %i.aqz, label %bb.jo, label %bb.jq

bb.jo:                                            ; preds = %.peel.next93.i
  %i.ara = load ptr, ptr %i.aqo, align 8, !tbaa !81
end_hunk_0
