Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/SortByPTypeProcess?download=true
inline.NumInlined: 539
inline.NumDeleted: 336
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp18SortByPTypeProcess7ExecuteEP7aiScene:bb.a
  store i32 0, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 224
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 1272
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 1312
  store ptr null, ptr %i.ev, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.es, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.et, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.eu, i8 0, i64 36, i1 false)
  %.not.i.i = icmp eq ptr %.sroa.21.2985, %.sroa.39.2984
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.ep, ptr %.sroa.21.2985, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ew = icmp eq i64 %i.em, 9223372036854775800
  br i1 %i.ew, label %bb.aj, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
          to label %.noexc441 unwind label %.loopexit.split-lp608

.noexc441:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.en, i64 1)
  %i.ex = add nsw i64 %.sroa.speculated.i.i.i.i, %i.en ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.en
  %i.ez = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 1152921504606846975)
  %i.fa = select i1 %i.ey, i64 1152921504606846975, i64 %i.ez ; 3 uses
  %.not.i.i.i.i440 = icmp ne i64 %i.fa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i440)
  %i.fb = shl nuw nsw i64 %i.fa, 3
  %i.fc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #21
          to label %.noexc442 unwind label %.loopexit607 ; 4 uses

.noexc442:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 %i.em ; 3 uses
  store ptr %i.ep, ptr %i.fd, align 8
  %i.fe = icmp sgt i64 %i.em, 0
  br i1 %i.fe, label %bb.ak, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ak:                                            ; preds = %.noexc442
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fc, ptr align 8 %.sroa.0533.2986, i64 %i.em, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ak, %.noexc442
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0533.2986, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0533.2986, i64 noundef %i.em) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fa
  %.pre1308 = load ptr, ptr %i.fd, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ah
  %i.fg = phi ptr [ %.pre1308, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ep, %bb.ah ] ; 43 uses
  %.sroa.39.13 = phi ptr [ %i.ff, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.39.2984, %bb.ah ] ; 12 uses
  %.pn = phi ptr [ %i.fd, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.21.2985, %bb.ah ]
  %.sroa.0533.13 = phi ptr [ %i.fc, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0533.2986, %bb.ah ] ; 12 uses
  %.sroa.21.8 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ag
  br i1 %i.fh, label %_ZN8aiStringaSERKS_.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 236
  %i.fj = load i32, ptr %i.ct, align 4
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.fj, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.fi, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 240 ; 2 uses
  %i.fl = zext nneg i32 %spec.select.i to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fk, ptr nonnull align 8 %i.cu, i64 %i.fl, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fl
  store i8 0, ptr %i.fm, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit, %bb.am
  store i32 %i.ei, ptr %i.fg, align 8
  %i.fn = load i32, ptr %i.cv, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 232
  store i32 %i.fn, ptr %i.fo, align 8
  %i.fp = load i32, ptr %i.ee, align 4            ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  store i32 %i.fp, ptr %i.fq, align 8
  %i.fr = zext i32 %i.fp to i64                   ; 5 uses
  %i.fs = shl nuw nsw i64 %i.fr, 4
  %i.ft = or disjoint i64 %i.fs, 8
  %i.fu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ft) #21
          to label %bb.an unwind label %bb.at     ; 2 uses

bb.an:                                            ; preds = %_ZN8aiStringaSERKS_.exit
  store i64 %i.fr, ptr %i.fu, align 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 5 uses
  %i.fw = icmp eq i32 %i.fp, 0
  br i1 %i.fw, label %.loopexit603, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %i.fr
  %i.fy = add nuw nsw i64 %i.fr, 1152921504606846975
  %i.fz = and i64 %i.fy, 1152921504606846975
  %xtraiter = and i64 %i.fr, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ao, %.prol.preheader
  %i.ga = phi ptr [ %i.gc, %.prol.preheader ], [ %i.fv, %bb.ao ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ao ]
  store i32 0, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr null, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !9

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ao
  %.unr = phi ptr [ %i.fv, %bb.ao ], [ %i.gc, %.prol.preheader ]
  %i.gd = icmp samesign ult i64 %i.fz, 7
  br i1 %i.gd, label %.loopexit603, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ge = phi ptr [ %i.gu, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr null, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store i32 0, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  store ptr null, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  store i32 0, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  store ptr null, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  store i32 0, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 56
  store ptr null, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  store i32 0, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  store ptr null, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.ge, i64 80
  store i32 0, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 88
  store ptr null, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ge, i64 96
  store i32 0, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ge, i64 104
  store ptr null, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ge, i64 112
  store i32 0, ptr %i.gs, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ge, i64 120
  store ptr null, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ge, i64 128 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.fx
  br i1 %i.gv, label %.loopexit603, label %.new

.loopexit603:                                     ; preds = %.prol.loopexit, %.new, %bb.an
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fg, i64 208
  store ptr %i.fv, ptr %i.gw, align 8
  %i.gx = icmp eq i64 %indvars.iv1292, 3          ; 2 uses
  br i1 %i.gx, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.loopexit603
  %i.gy = load i32, ptr %i.fq, align 8
  %i.gz = trunc i64 %indvars.iv1292 to i32
  %i.ha = add i32 %i.gz, 1
  %i.hb = mul i32 %i.gy, %i.ha
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit603, %bb.ap
  %i.hc = phi i32 [ %i.hb, %bb.ap ], [ %.0307.lcssa, %.loopexit603 ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 40 uses
  store i32 %i.hc, ptr %i.hd, align 4
  %i.he = load ptr, ptr %i.cw, align 8
  %.not384 = icmp eq ptr %i.he, null
  br i1 %.not384, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hf = zext i32 %i.hc to i64
  %i.hg = mul nuw nsw i64 %i.hf, 12               ; 2 uses
  %i.hh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hg) #21
          to label %bb.as unwind label %bb.au     ; 3 uses

bb.as:                                            ; preds = %bb.ar
  %i.hi = icmp eq i32 %i.hc, 0
  br i1 %i.hi, label %.loopexit602, label %.loopexit602.loopexit

.loopexit602.loopexit:                            ; preds = %bb.as
  %i.hj = add nsw i64 %i.hg, -12                  ; 2 uses
  %i.hk = urem i64 %i.hj, 12
  %i.hl = sub nuw nsw i64 %i.hj, %i.hk
  %i.hm = add nsw i64 %i.hl, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hh, i8 0, i64 range(i64 0, 51539607541) %i.hm, i1 false)
  br label %.loopexit602

.loopexit602:                                     ; preds = %.loopexit602.loopexit, %bb.as
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store ptr %i.hh, ptr %i.hn, align 8
  br label %bb.av

.loopexit607:                                     ; preds = %bb.af, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.39.2984.lcssa = phi ptr [ %.sroa.39.2984, %bb.af ], [ %.sroa.21.2985, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %lpad.loopexit609 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467

.loopexit.split-lp608:                            ; preds = %bb.aj
  %lpad.loopexit.split-lp610 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467

bb.at:                                            ; preds = %_ZN8aiStringaSERKS_.exit
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467

bb.au:                                            ; preds = %bb.db, %.loopexit600, %bb.az, %bb.aw, %bb.ar
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467

bb.av:                                            ; preds = %.loopexit602, %bb.aq
  %.0299 = phi ptr [ %i.hh, %.loopexit602 ], [ null, %bb.aq ]
  %i.hq = load ptr, ptr %i.cx, align 8
  %.not385 = icmp eq ptr %i.hq, null
  br i1 %.not385, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hr = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.hs = zext i32 %i.hr to i64
  %i.ht = mul nuw nsw i64 %i.hs, 12               ; 2 uses
  %i.hu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ht) #21
          to label %bb.ax unwind label %bb.au     ; 3 uses

bb.ax:                                            ; preds = %bb.aw
  %i.hv = icmp eq i32 %i.hr, 0
  br i1 %i.hv, label %.loopexit601, label %.loopexit601.loopexit

.loopexit601.loopexit:                            ; preds = %bb.ax
  %i.hw = add nsw i64 %i.ht, -12                  ; 2 uses
  %i.hx = urem i64 %i.hw, 12
  %i.hy = sub nuw nsw i64 %i.hw, %i.hx
  %i.hz = add nsw i64 %i.hy, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hu, i8 0, i64 range(i64 0, 51539607541) %i.hz, i1 false)
  br label %.loopexit601

.loopexit601:                                     ; preds = %.loopexit601.loopexit, %bb.ax
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store ptr %i.hu, ptr %i.ia, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit601, %bb.av
  %.0294 = phi ptr [ %i.hu, %.loopexit601 ], [ null, %bb.av ]
  %i.ib = load ptr, ptr %i.cy, align 8
  %.not386 = icmp eq ptr %i.ib, null
  br i1 %.not386, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ic = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.id = zext i32 %i.ic to i64
  %i.ie = mul nuw nsw i64 %i.id, 12               ; 2 uses
  %i.if = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ie) #21
          to label %bb.ba unwind label %bb.au     ; 3 uses

bb.ba:                                            ; preds = %bb.az
  %i.ig = icmp eq i32 %i.ic, 0
  br i1 %i.ig, label %.loopexit600, label %.loopexit600.loopexit

.loopexit600.loopexit:                            ; preds = %bb.ba
  %i.ih = add nsw i64 %i.ie, -12                  ; 2 uses
  %i.ii = urem i64 %i.ih, 12
  %i.ij = sub nuw nsw i64 %i.ih, %i.ii
  %i.ik = add nsw i64 %i.ij, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.if, i8 0, i64 range(i64 0, 51539607541) %i.ik, i1 false)
  br label %.loopexit600

.loopexit600:                                     ; preds = %.loopexit600.loopexit, %bb.ba
  %i.il = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  store ptr %i.if, ptr %i.il, align 8
  %i.im = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.in = zext i32 %i.im to i64
  %i.io = mul nuw nsw i64 %i.in, 12               ; 2 uses
  %i.ip = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.io) #21
          to label %bb.bb unwind label %bb.au     ; 3 uses

bb.bb:                                            ; preds = %.loopexit600
  %i.iq = icmp eq i32 %i.im, 0
  br i1 %i.iq, label %.loopexit599, label %.loopexit599.loopexit

.loopexit599.loopexit:                            ; preds = %bb.bb
  %i.ir = add nsw i64 %i.io, -12                  ; 2 uses
  %i.is = urem i64 %i.ir, 12
  %i.it = sub nuw nsw i64 %i.ir, %i.is
  %i.iu = add nsw i64 %i.it, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ip, i8 0, i64 range(i64 0, 51539607541) %i.iu, i1 false)
  br label %.loopexit599

.loopexit599:                                     ; preds = %.loopexit599.loopexit, %bb.bb
  %i.iv = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  store ptr %i.ip, ptr %i.iv, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit599, %bb.ay
  %.0289 = phi ptr [ %i.if, %.loopexit599 ], [ null, %bb.ay ]
  %.0285 = phi ptr [ %i.ip, %.loopexit599 ], [ null, %bb.ay ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.fg, i64 112
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fg, i64 176
  %i.iy = load ptr, ptr %i.cz, align 8
  %.not417 = icmp eq ptr %i.iy, null
  br i1 %.not417, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iz = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.ja = zext i32 %i.iz to i64
  %i.jb = mul nuw nsw i64 %i.ja, 12               ; 2 uses
  %i.jc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jb) #21
          to label %bb.be unwind label %bb.bf     ; 3 uses

bb.be:                                            ; preds = %bb.bd
  %i.jd = icmp eq i32 %i.iz, 0
  br i1 %i.jd, label %.loopexit594, label %.loopexit594.loopexit

.loopexit594.loopexit:                            ; preds = %bb.be
  %i.je = add nsw i64 %i.jb, -12                  ; 2 uses
  %i.jf = urem i64 %i.je, 12
  %i.jg = sub nuw nsw i64 %i.je, %i.jf
  %i.jh = add nsw i64 %i.jg, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jc, i8 0, i64 range(i64 0, 51539607541) %i.jh, i1 false)
  br label %.loopexit594

.loopexit594:                                     ; preds = %.loopexit594.loopexit, %bb.be
  store ptr %i.jc, ptr %i.iw, align 8
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bz, %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.bh, %bb.bd
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467

bb.bg:                                            ; preds = %.loopexit594, %bb.bc
  %.sroa.01298.0 = phi ptr [ null, %bb.bc ], [ %i.jc, %.loopexit594 ]
  %i.jj = load i32, ptr %i.da, align 8
  store i32 %i.jj, ptr %i.ix, align 8
  %i.jk = load ptr, ptr %i.di, align 8
  %.not417.1 = icmp eq ptr %i.jk, null
  br i1 %.not417.1, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jl = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.jm = zext i32 %i.jl to i64
  %i.jn = mul nuw nsw i64 %i.jm, 12               ; 2 uses
  %i.jo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jn) #21
          to label %bb.bi unwind label %bb.bf     ; 3 uses

bb.bi:                                            ; preds = %bb.bh
  %i.jp = icmp eq i32 %i.jl, 0
  br i1 %i.jp, label %.loopexit594.1, label %.loopexit594.loopexit.1

.loopexit594.loopexit.1:                          ; preds = %bb.bi
  %i.jq = add nsw i64 %i.jn, -12                  ; 2 uses
  %i.jr = urem i64 %i.jq, 12
  %i.js = sub nuw nsw i64 %i.jq, %i.jr
  %i.jt = add nsw i64 %i.js, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jo, i8 0, i64 range(i64 0, 51539607541) %i.jt, i1 false)
  br label %.loopexit594.1

.loopexit594.1:                                   ; preds = %.loopexit594.loopexit.1, %bb.bi
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fg, i64 120
  store ptr %i.jo, ptr %i.ju, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit594.1, %bb.bg
  %.sroa.71299.5 = phi ptr [ null, %bb.bg ], [ %i.jo, %.loopexit594.1 ]
  %i.jv = load i32, ptr %i.dj, align 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.fg, i64 180
  store i32 %i.jv, ptr %i.jw, align 4
  %i.jx = load ptr, ptr %i.dk, align 8
  %.not417.2 = icmp eq ptr %i.jx, null
  br i1 %.not417.2, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jy = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.jz = zext i32 %i.jy to i64
  %i.ka = mul nuw nsw i64 %i.jz, 12               ; 2 uses
  %i.kb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ka) #21
          to label %bb.bl unwind label %bb.bf     ; 3 uses

bb.bl:                                            ; preds = %bb.bk
  %i.kc = icmp eq i32 %i.jy, 0
  br i1 %i.kc, label %.loopexit594.2, label %.loopexit594.loopexit.2

.loopexit594.loopexit.2:                          ; preds = %bb.bl
  %i.kd = add nsw i64 %i.ka, -12                  ; 2 uses
  %i.ke = urem i64 %i.kd, 12
  %i.kf = sub nuw nsw i64 %i.kd, %i.ke
  %i.kg = add nsw i64 %i.kf, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kb, i8 0, i64 range(i64 0, 51539607541) %i.kg, i1 false)
  br label %.loopexit594.2

.loopexit594.2:                                   ; preds = %.loopexit594.loopexit.2, %bb.bl
  %i.kh = getelementptr inbounds nuw i8, ptr %i.fg, i64 128
  store ptr %i.kb, ptr %i.kh, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit594.2, %bb.bj
  %.sroa.111300.5 = phi ptr [ null, %bb.bj ], [ %i.kb, %.loopexit594.2 ]
  %i.ki = load i32, ptr %i.dl, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.fg, i64 184
  store i32 %i.ki, ptr %i.kj, align 8
  %i.kk = load ptr, ptr %i.dm, align 8
  %.not417.3 = icmp eq ptr %i.kk, null
  br i1 %.not417.3, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kl = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.km = zext i32 %i.kl to i64
  %i.kn = mul nuw nsw i64 %i.km, 12               ; 2 uses
  %i.ko = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kn) #21
          to label %bb.bo unwind label %bb.bf     ; 3 uses

bb.bo:                                            ; preds = %bb.bn
  %i.kp = icmp eq i32 %i.kl, 0
  br i1 %i.kp, label %.loopexit594.3, label %.loopexit594.loopexit.3

.loopexit594.loopexit.3:                          ; preds = %bb.bo
  %i.kq = add nsw i64 %i.kn, -12                  ; 2 uses
  %i.kr = urem i64 %i.kq, 12
  %i.ks = sub nuw nsw i64 %i.kq, %i.kr
  %i.kt = add nsw i64 %i.ks, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ko, i8 0, i64 range(i64 0, 51539607541) %i.kt, i1 false)
  br label %.loopexit594.3

.loopexit594.3:                                   ; preds = %.loopexit594.loopexit.3, %bb.bo
  %i.ku = getelementptr inbounds nuw i8, ptr %i.fg, i64 136
  store ptr %i.ko, ptr %i.ku, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit594.3, %bb.bm
  %.sroa.151301.5 = phi ptr [ null, %bb.bm ], [ %i.ko, %.loopexit594.3 ]
  %i.kv = load i32, ptr %i.dn, align 4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.fg, i64 188
  store i32 %i.kv, ptr %i.kw, align 4
  %i.kx = load ptr, ptr %i.do, align 8
  %.not417.4 = icmp eq ptr %i.kx, null
  br i1 %.not417.4, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ky = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.kz = zext i32 %i.ky to i64
  %i.la = mul nuw nsw i64 %i.kz, 12               ; 2 uses
  %i.lb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.la) #21
          to label %bb.br unwind label %bb.bf     ; 3 uses

bb.br:                                            ; preds = %bb.bq
  %i.lc = icmp eq i32 %i.ky, 0
  br i1 %i.lc, label %.loopexit594.4, label %.loopexit594.loopexit.4

.loopexit594.loopexit.4:                          ; preds = %bb.br
  %i.ld = add nsw i64 %i.la, -12                  ; 2 uses
  %i.le = urem i64 %i.ld, 12
  %i.lf = sub nuw nsw i64 %i.ld, %i.le
  %i.lg = add nsw i64 %i.lf, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lb, i8 0, i64 range(i64 0, 51539607541) %i.lg, i1 false)
  br label %.loopexit594.4

.loopexit594.4:                                   ; preds = %.loopexit594.loopexit.4, %bb.br
  %i.lh = getelementptr inbounds nuw i8, ptr %i.fg, i64 144
  store ptr %i.lb, ptr %i.lh, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit594.4, %bb.bp
  %.sroa.191302.5 = phi ptr [ null, %bb.bp ], [ %i.lb, %.loopexit594.4 ]
  %i.li = load i32, ptr %i.dp, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.fg, i64 192
  store i32 %i.li, ptr %i.lj, align 8
  %i.lk = load ptr, ptr %i.dq, align 8
  %.not417.5 = icmp eq ptr %i.lk, null
  br i1 %.not417.5, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ll = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.lm = zext i32 %i.ll to i64
  %i.ln = mul nuw nsw i64 %i.lm, 12               ; 2 uses
  %i.lo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ln) #21
          to label %bb.bu unwind label %bb.bf     ; 3 uses

bb.bu:                                            ; preds = %bb.bt
  %i.lp = icmp eq i32 %i.ll, 0
  br i1 %i.lp, label %.loopexit594.5, label %.loopexit594.loopexit.5

.loopexit594.loopexit.5:                          ; preds = %bb.bu
  %i.lq = add nsw i64 %i.ln, -12                  ; 2 uses
  %i.lr = urem i64 %i.lq, 12
  %i.ls = sub nuw nsw i64 %i.lq, %i.lr
  %i.lt = add nsw i64 %i.ls, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lo, i8 0, i64 range(i64 0, 51539607541) %i.lt, i1 false)
  br label %.loopexit594.5

.loopexit594.5:                                   ; preds = %.loopexit594.loopexit.5, %bb.bu
  %i.lu = getelementptr inbounds nuw i8, ptr %i.fg, i64 152
  store ptr %i.lo, ptr %i.lu, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit594.5, %bb.bs
  %.sroa.231303.5 = phi ptr [ null, %bb.bs ], [ %i.lo, %.loopexit594.5 ]
  %i.lv = load i32, ptr %i.dr, align 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.fg, i64 196
  store i32 %i.lv, ptr %i.lw, align 4
  %i.lx = load ptr, ptr %i.ds, align 8
  %.not417.6 = icmp eq ptr %i.lx, null
  br i1 %.not417.6, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ly = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.lz = zext i32 %i.ly to i64
  %i.ma = mul nuw nsw i64 %i.lz, 12               ; 2 uses
  %i.mb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ma) #21
          to label %bb.bx unwind label %bb.bf     ; 3 uses

bb.bx:                                            ; preds = %bb.bw
  %i.mc = icmp eq i32 %i.ly, 0
  br i1 %i.mc, label %.loopexit594.6, label %.loopexit594.loopexit.6

.loopexit594.loopexit.6:                          ; preds = %bb.bx
  %i.md = add nsw i64 %i.ma, -12                  ; 2 uses
  %i.me = urem i64 %i.md, 12
  %i.mf = sub nuw nsw i64 %i.md, %i.me
  %i.mg = add nsw i64 %i.mf, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mb, i8 0, i64 range(i64 0, 51539607541) %i.mg, i1 false)
  br label %.loopexit594.6

.loopexit594.6:                                   ; preds = %.loopexit594.loopexit.6, %bb.bx
  %i.mh = getelementptr inbounds nuw i8, ptr %i.fg, i64 160
  store ptr %i.mb, ptr %i.mh, align 8
  br label %bb.by

bb.by:                                            ; preds = %.loopexit594.6, %bb.bv
  %.sroa.271304.5 = phi ptr [ null, %bb.bv ], [ %i.mb, %.loopexit594.6 ]
  %i.mi = load i32, ptr %i.dt, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.fg, i64 200
  store i32 %i.mi, ptr %i.mj, align 8
  %i.mk = load ptr, ptr %i.du, align 8
  %.not417.7 = icmp eq ptr %i.mk, null
  br i1 %.not417.7, label %.preheader598, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ml = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.mm = zext i32 %i.ml to i64
  %i.mn = mul nuw nsw i64 %i.mm, 12               ; 2 uses
  %i.mo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mn) #21
          to label %bb.ca unwind label %bb.bf     ; 3 uses

bb.ca:                                            ; preds = %bb.bz
  %i.mp = icmp eq i32 %i.ml, 0
  br i1 %i.mp, label %.loopexit594.7, label %.loopexit594.loopexit.7

.loopexit594.loopexit.7:                          ; preds = %bb.ca
  %i.mq = add nsw i64 %i.mn, -12                  ; 2 uses
  %i.mr = urem i64 %i.mq, 12
  %i.ms = sub nuw nsw i64 %i.mq, %i.mr
  %i.mt = add nsw i64 %i.ms, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mo, i8 0, i64 range(i64 0, 51539607541) %i.mt, i1 false)
  br label %.loopexit594.7

.loopexit594.7:                                   ; preds = %.loopexit594.loopexit.7, %bb.ca
  %i.mu = getelementptr inbounds nuw i8, ptr %i.fg, i64 168
  store ptr %i.mo, ptr %i.mu, align 8
  br label %.preheader598

.preheader598:                                    ; preds = %.loopexit594.7, %bb.by
  %.sroa.311305.5 = phi ptr [ null, %bb.by ], [ %i.mo, %.loopexit594.7 ]
  %i.mv = load i32, ptr %i.dv, align 4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.fg, i64 204
  store i32 %i.mv, ptr %i.mw, align 4
  %i.mx = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.my = load ptr, ptr %i.db, align 8
  %.not416 = icmp eq ptr %i.my, null
  br i1 %.not416, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %.preheader598
  %i.mz = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.na = zext i32 %i.mz to i64
  %i.nb = shl nuw nsw i64 %i.na, 4                ; 2 uses
  %i.nc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nb) #21
          to label %bb.cc unwind label %bb.cd     ; 3 uses

bb.cc:                                            ; preds = %bb.cb
  %i.nd = icmp eq i32 %i.mz, 0
  br i1 %i.nd, label %.loopexit593, label %.loopexit593.loopexit

.loopexit593.loopexit:                            ; preds = %bb.cc
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.nc, i8 0, i64 range(i64 0, 68719476721) %i.nb, i1 false)
  br label %.loopexit593

.loopexit593:                                     ; preds = %.loopexit593.loopexit, %bb.cc
  store ptr %i.nc, ptr %i.mx, align 8
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cx, %bb.cu, %bb.cr, %bb.co, %bb.cl, %bb.ci, %bb.cf, %bb.cb
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467

bb.ce:                                            ; preds = %.preheader598, %.loopexit593
  %.sroa.0.0 = phi ptr [ null, %.preheader598 ], [ %i.nc, %.loopexit593 ]
  %i.nf = load ptr, ptr %i.dw, align 8
  %.not416.1 = icmp eq ptr %i.nf, null
  br i1 %.not416.1, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ng = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.nh = zext i32 %i.ng to i64
  %i.ni = shl nuw nsw i64 %i.nh, 4                ; 2 uses
  %i.nj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ni) #21
          to label %bb.cg unwind label %bb.cd     ; 3 uses

bb.cg:                                            ; preds = %bb.cf
  %i.nk = icmp eq i32 %i.ng, 0
  br i1 %i.nk, label %.loopexit593.1, label %.loopexit593.loopexit.1

.loopexit593.loopexit.1:                          ; preds = %bb.cg
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.nj, i8 0, i64 range(i64 0, 68719476721) %i.ni, i1 false)
  br label %.loopexit593.1

.loopexit593.1:                                   ; preds = %.loopexit593.loopexit.1, %bb.cg
  %i.nl = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  store ptr %i.nj, ptr %i.nl, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit593.1, %bb.ce
  %.sroa.7.5 = phi ptr [ null, %bb.ce ], [ %i.nj, %.loopexit593.1 ]
  %i.nm = load ptr, ptr %i.dx, align 8
  %.not416.2 = icmp eq ptr %i.nm, null
  br i1 %.not416.2, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nn = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.no = zext i32 %i.nn to i64
  %i.np = shl nuw nsw i64 %i.no, 4                ; 2 uses
  %i.nq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.np) #21
          to label %bb.cj unwind label %bb.cd     ; 3 uses

bb.cj:                                            ; preds = %bb.ci
  %i.nr = icmp eq i32 %i.nn, 0
  br i1 %i.nr, label %.loopexit593.2, label %.loopexit593.loopexit.2

.loopexit593.loopexit.2:                          ; preds = %bb.cj
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.nq, i8 0, i64 range(i64 0, 68719476721) %i.np, i1 false)
  br label %.loopexit593.2

.loopexit593.2:                                   ; preds = %.loopexit593.loopexit.2, %bb.cj
  %i.ns = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  store ptr %i.nq, ptr %i.ns, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit593.2, %bb.ch
  %.sroa.11.5 = phi ptr [ null, %bb.ch ], [ %i.nq, %.loopexit593.2 ]
  %i.nt = load ptr, ptr %i.dy, align 8
  %.not416.3 = icmp eq ptr %i.nt, null
  br i1 %.not416.3, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nu = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.nv = zext i32 %i.nu to i64
  %i.nw = shl nuw nsw i64 %i.nv, 4                ; 2 uses
  %i.nx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nw) #21
          to label %bb.cm unwind label %bb.cd     ; 3 uses

bb.cm:                                            ; preds = %bb.cl
  %i.ny = icmp eq i32 %i.nu, 0
  br i1 %i.ny, label %.loopexit593.3, label %.loopexit593.loopexit.3

.loopexit593.loopexit.3:                          ; preds = %bb.cm
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.nx, i8 0, i64 range(i64 0, 68719476721) %i.nw, i1 false)
  br label %.loopexit593.3

.loopexit593.3:                                   ; preds = %.loopexit593.loopexit.3, %bb.cm
  %i.nz = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  store ptr %i.nx, ptr %i.nz, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %.loopexit593.3, %bb.ck
  %.sroa.15.5 = phi ptr [ null, %bb.ck ], [ %i.nx, %.loopexit593.3 ]
  %i.oa = load ptr, ptr %i.dz, align 8
  %.not416.4 = icmp eq ptr %i.oa, null
  br i1 %.not416.4, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ob = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %i.od = shl nuw nsw i64 %i.oc, 4                ; 2 uses
  %i.oe = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.od) #21
          to label %bb.cp unwind label %bb.cd     ; 3 uses

bb.cp:                                            ; preds = %bb.co
  %i.of = icmp eq i32 %i.ob, 0
  br i1 %i.of, label %.loopexit593.4, label %.loopexit593.loopexit.4

.loopexit593.loopexit.4:                          ; preds = %bb.cp
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.oe, i8 0, i64 range(i64 0, 68719476721) %i.od, i1 false)
  br label %.loopexit593.4

.loopexit593.4:                                   ; preds = %.loopexit593.loopexit.4, %bb.cp
  %i.og = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  store ptr %i.oe, ptr %i.og, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %.loopexit593.4, %bb.cn
  %.sroa.19.5 = phi ptr [ null, %bb.cn ], [ %i.oe, %.loopexit593.4 ]
  %i.oh = load ptr, ptr %i.ea, align 8
  %.not416.5 = icmp eq ptr %i.oh, null
  br i1 %.not416.5, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.oi = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.oj = zext i32 %i.oi to i64
  %i.ok = shl nuw nsw i64 %i.oj, 4                ; 2 uses
  %i.ol = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ok) #21
          to label %bb.cs unwind label %bb.cd     ; 3 uses

bb.cs:                                            ; preds = %bb.cr
  %i.om = icmp eq i32 %i.oi, 0
  br i1 %i.om, label %.loopexit593.5, label %.loopexit593.loopexit.5

.loopexit593.loopexit.5:                          ; preds = %bb.cs
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ol, i8 0, i64 range(i64 0, 68719476721) %i.ok, i1 false)
  br label %.loopexit593.5

.loopexit593.5:                                   ; preds = %.loopexit593.loopexit.5, %bb.cs
  %i.on = getelementptr inbounds nuw i8, ptr %i.fg, i64 88
  store ptr %i.ol, ptr %i.on, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %.loopexit593.5, %bb.cq
  %.sroa.23.5 = phi ptr [ null, %bb.cq ], [ %i.ol, %.loopexit593.5 ]
  %i.oo = load ptr, ptr %i.eb, align 8
  %.not416.6 = icmp eq ptr %i.oo, null
  br i1 %.not416.6, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.op = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.oq = zext i32 %i.op to i64
  %i.or = shl nuw nsw i64 %i.oq, 4                ; 2 uses
  %i.os = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.or) #21
          to label %bb.cv unwind label %bb.cd     ; 3 uses

bb.cv:                                            ; preds = %bb.cu
  %i.ot = icmp eq i32 %i.op, 0
  br i1 %i.ot, label %.loopexit593.6, label %.loopexit593.loopexit.6

.loopexit593.loopexit.6:                          ; preds = %bb.cv
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.os, i8 0, i64 range(i64 0, 68719476721) %i.or, i1 false)
  br label %.loopexit593.6

.loopexit593.6:                                   ; preds = %.loopexit593.loopexit.6, %bb.cv
  %i.ou = getelementptr inbounds nuw i8, ptr %i.fg, i64 96
  store ptr %i.os, ptr %i.ou, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %.loopexit593.6, %bb.ct
  %.sroa.27.5 = phi ptr [ null, %bb.ct ], [ %i.os, %.loopexit593.6 ]
  %i.ov = load ptr, ptr %i.ec, align 8
  %.not416.7 = icmp eq ptr %i.ov, null
  br i1 %.not416.7, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ow = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.ox = zext i32 %i.ow to i64
  %i.oy = shl nuw nsw i64 %i.ox, 4                ; 2 uses
  %i.oz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oy) #21
          to label %bb.cy unwind label %bb.cd     ; 3 uses

bb.cy:                                            ; preds = %bb.cx
  %i.pa = icmp eq i32 %i.ow, 0
  br i1 %i.pa, label %.loopexit593.7, label %.loopexit593.loopexit.7

.loopexit593.loopexit.7:                          ; preds = %bb.cy
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.oz, i8 0, i64 range(i64 0, 68719476721) %i.oy, i1 false)
  br label %.loopexit593.7

.loopexit593.7:                                   ; preds = %.loopexit593.loopexit.7, %bb.cy
  %i.pb = getelementptr inbounds nuw i8, ptr %i.fg, i64 104
  store ptr %i.oz, ptr %i.pb, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %.loopexit593.7, %bb.cw
  %.sroa.31.5 = phi ptr [ null, %bb.cw ], [ %i.oz, %.loopexit593.7 ]
  %i.pc = load i32, ptr %i.dc, align 8            ; 3 uses
  %.not387 = icmp eq i32 %i.pc, 0
  br i1 %.not387, label %._crit_edge934, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pd = load ptr, ptr %i.dd, align 8
  %.not388 = icmp eq ptr %i.pd, null
  br i1 %.not388, label %.lr.ph933, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pe = getelementptr inbounds nuw i8, ptr %i.fg, i64 1264
  store i32 %i.pc, ptr %i.pe, align 8
  %i.pf = zext i32 %i.pc to i64
  %i.pg = shl nuw nsw i64 %i.pf, 3
  %i.ph = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pg) #21
          to label %bb.dc unwind label %bb.au

bb.dc:                                            ; preds = %bb.db
  %i.pi = getelementptr inbounds nuw i8, ptr %i.fg, i64 1272
  store ptr %i.ph, ptr %i.pi, align 8
  %.pre1309 = load i32, ptr %i.dc, align 8
  %i.pj = icmp eq i32 %.pre1309, 0
  br i1 %i.pj, label %._crit_edge934, label %.lr.ph933

.lr.ph933:                                        ; preds = %bb.da, %bb.dc
  %i.pk = getelementptr inbounds nuw i8, ptr %i.fg, i64 1272
  br label %bb.dd

._crit_edge934:                                   ; preds = %.loopexit585.7, %bb.cz, %bb.dc
  %i.pl = load i32, ptr %i.de, align 8            ; 2 uses
  %i.pm = zext i32 %i.pl to i64                   ; 2 uses
  %.not.i.i.i.i443 = icmp eq i32 %i.pl, 0
  br i1 %.not.i.i.i.i443, label %.preheader597, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge934
  %i.pn = mul nuw nsw i64 %i.pm, 24               ; 3 uses
  %i.po = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pn) #21
          to label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit unwind label %bb.ew ; 7 uses

bb.dd:                                            ; preds = %.lr.ph933, %.loopexit585.7
  %indvars.iv = phi i64 [ 0, %.lr.ph933 ], [ %indvars.iv.next, %.loopexit585.7 ] ; 3 uses
  %i.pp = load ptr, ptr %i.dd, align 8
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %indvars.iv
  %i.pr = load ptr, ptr %i.pq, align 8            ; 20 uses
  %i.ps = invoke noalias noundef nonnull dereferenceable(1200) ptr @_Znwm(i64 noundef 1200) #21
          to label %bb.de unwind label %bb.dh     ; 23 uses

bb.de:                                            ; preds = %bb.dd
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1200) %i.ps, i8 0, i64 1028, i1 false)
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 1032 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.pt, i8 0, i64 168, i1 false)
  %i.pu = load ptr, ptr %i.pk, align 8
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv
  store ptr %i.ps, ptr %i.pv, align 8
  %i.pw = load i32, ptr %i.hd, align 4            ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.ps, i64 1192
  store i32 %i.pw, ptr %i.px, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.pr, i64 1032
  %i.pz = load ptr, ptr %i.py, align 8
  %.not408 = icmp eq ptr %i.pz, null
  br i1 %.not408, label %.loopexit592, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.qa = zext i32 %i.pw to i64
  %i.qb = mul nuw nsw i64 %i.qa, 12               ; 2 uses
  %i.qc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qb) #21
          to label %bb.dg unwind label %bb.dh     ; 3 uses

bb.dg:                                            ; preds = %bb.df
  %i.qd = icmp eq i32 %i.pw, 0
  br i1 %i.qd, label %.loopexit592, label %.loopexit592.loopexit

.loopexit592.loopexit:                            ; preds = %bb.dg
  %i.qe = add nsw i64 %i.qb, -12                  ; 2 uses
  %i.qf = urem i64 %i.qe, 12
  %i.qg = sub nuw nsw i64 %i.qe, %i.qf
  %i.qh = add nsw i64 %i.qg, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qc, i8 0, i64 range(i64 0, 51539607541) %i.qh, i1 false)
  br label %.loopexit592

bb.dh:                                            ; preds = %bb.dm, %bb.dk, %bb.di, %bb.df, %bb.dd
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467

.loopexit592:                                     ; preds = %.loopexit592.loopexit, %bb.de, %bb.dg
  %storemerge = phi ptr [ %i.qc, %bb.dg ], [ null, %bb.de ], [ %i.qc, %.loopexit592.loopexit ]
  store ptr %storemerge, ptr %i.pt, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pr, i64 1040
  %i.qk = load ptr, ptr %i.qj, align 8
  %.not409 = icmp eq ptr %i.qk, null
  br i1 %.not409, label %.loopexit591, label %bb.di

bb.di:                                            ; preds = %.loopexit592
  %i.ql = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.qm = zext i32 %i.ql to i64
  %i.qn = mul nuw nsw i64 %i.qm, 12               ; 2 uses
  %i.qo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qn) #21
          to label %bb.dj unwind label %bb.dh     ; 3 uses

bb.dj:                                            ; preds = %bb.di
  %i.qp = icmp eq i32 %i.ql, 0
  br i1 %i.qp, label %.loopexit591, label %.loopexit591.loopexit

.loopexit591.loopexit:                            ; preds = %bb.dj
  %i.qq = add nsw i64 %i.qn, -12                  ; 2 uses
  %i.qr = urem i64 %i.qq, 12
  %i.qs = sub nuw nsw i64 %i.qq, %i.qr
  %i.qt = add nsw i64 %i.qs, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qo, i8 0, i64 range(i64 0, 51539607541) %i.qt, i1 false)
  br label %.loopexit591

.loopexit591:                                     ; preds = %.loopexit592, %bb.dj, %.loopexit591.loopexit
  %.sink = phi ptr [ %i.qo, %bb.dj ], [ %i.qo, %.loopexit591.loopexit ], [ null, %.loopexit592 ]
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ps, i64 1040
  store ptr %.sink, ptr %i.qu, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pr, i64 1048
  %i.qw = load ptr, ptr %i.qv, align 8
  %.not410 = icmp eq ptr %i.qw, null
  br i1 %.not410, label %.loopexit590, label %bb.dk

bb.dk:                                            ; preds = %.loopexit591
  %i.qx = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.qy = zext i32 %i.qx to i64
  %i.qz = mul nuw nsw i64 %i.qy, 12               ; 2 uses
  %i.ra = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qz) #21
          to label %bb.dl unwind label %bb.dh     ; 3 uses

bb.dl:                                            ; preds = %bb.dk
  %i.rb = icmp eq i32 %i.qx, 0
  br i1 %i.rb, label %.loopexit590, label %.loopexit590.loopexit

.loopexit590.loopexit:                            ; preds = %bb.dl
  %i.rc = add nsw i64 %i.qz, -12                  ; 2 uses
  %i.rd = urem i64 %i.rc, 12
  %i.re = sub nuw nsw i64 %i.rc, %i.rd
  %i.rf = add nsw i64 %i.re, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ra, i8 0, i64 range(i64 0, 51539607541) %i.rf, i1 false)
  br label %.loopexit590

.loopexit590:                                     ; preds = %.loopexit591, %bb.dl, %.loopexit590.loopexit
  %.sink1662 = phi ptr [ %i.ra, %bb.dl ], [ %i.ra, %.loopexit590.loopexit ], [ null, %.loopexit591 ]
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ps, i64 1048
  store ptr %.sink1662, ptr %i.rg, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pr, i64 1056
  %i.ri = load ptr, ptr %i.rh, align 8
  %.not411 = icmp eq ptr %i.ri, null
  br i1 %.not411, label %.loopexit589, label %bb.dm

bb.dm:                                            ; preds = %.loopexit590
  %i.rj = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.rk = zext i32 %i.rj to i64
  %i.rl = mul nuw nsw i64 %i.rk, 12               ; 2 uses
  %i.rm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rl) #21
          to label %bb.dn unwind label %bb.dh     ; 3 uses

bb.dn:                                            ; preds = %bb.dm
  %i.rn = icmp eq i32 %i.rj, 0
  br i1 %i.rn, label %.loopexit589, label %.loopexit589.loopexit

.loopexit589.loopexit:                            ; preds = %bb.dn
  %i.ro = add nsw i64 %i.rl, -12                  ; 2 uses
  %i.rp = urem i64 %i.ro, 12
  %i.rq = sub nuw nsw i64 %i.ro, %i.rp
  %i.rr = add nsw i64 %i.rq, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.rm, i8 0, i64 range(i64 0, 51539607541) %i.rr, i1 false)
  br label %.loopexit589

.loopexit589:                                     ; preds = %.loopexit590, %bb.dn, %.loopexit589.loopexit
  %.sink1664 = phi ptr [ %i.rm, %bb.dn ], [ %i.rm, %.loopexit589.loopexit ], [ null, %.loopexit590 ]
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ps, i64 1056
  store ptr %.sink1664, ptr %i.rs, align 8
  %i.rt = getelementptr inbounds nuw i8, ptr %i.pr, i64 1064
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ps, i64 1064
  %i.rv = load ptr, ptr %i.rt, align 8
  %.not413 = icmp eq ptr %i.rv, null
  br i1 %.not413, label %.loopexit586, label %bb.do

bb.do:                                            ; preds = %.loopexit589
  %i.rw = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.rx = zext i32 %i.rw to i64
  %i.ry = shl nuw nsw i64 %i.rx, 4                ; 2 uses
  %i.rz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ry) #21
          to label %bb.dp unwind label %bb.dq     ; 3 uses

bb.dp:                                            ; preds = %bb.do
  %i.sa = icmp eq i32 %i.rw, 0
  br i1 %i.sa, label %.loopexit586, label %.loopexit586.loopexit

.loopexit586.loopexit:                            ; preds = %bb.dp
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.rz, i8 0, i64 range(i64 0, 68719476721) %i.ry, i1 false)
  br label %.loopexit586

bb.dq:                                            ; preds = %bb.ed, %bb.eb, %bb.dz, %bb.dx, %bb.dv, %bb.dt, %bb.dr, %bb.do
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467

.loopexit586:                                     ; preds = %.loopexit589, %bb.dp, %.loopexit586.loopexit
  %storemerge1388 = phi ptr [ %i.rz, %bb.dp ], [ %i.rz, %.loopexit586.loopexit ], [ null, %.loopexit589 ]
  store ptr %storemerge1388, ptr %i.ru, align 8
  %i.sc = getelementptr inbounds nuw i8, ptr %i.pr, i64 1072
  %i.sd = load ptr, ptr %i.sc, align 8
  %.not413.1 = icmp eq ptr %i.sd, null
  br i1 %.not413.1, label %.loopexit586.1, label %bb.dr

bb.dr:                                            ; preds = %.loopexit586
  %i.se = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.sf = zext i32 %i.se to i64
  %i.sg = shl nuw nsw i64 %i.sf, 4                ; 2 uses
  %i.sh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sg) #21
          to label %bb.ds unwind label %bb.dq     ; 3 uses

bb.ds:                                            ; preds = %bb.dr
  %i.si = icmp eq i32 %i.se, 0
  br i1 %i.si, label %.loopexit586.1, label %.loopexit586.loopexit.1

.loopexit586.loopexit.1:                          ; preds = %bb.ds
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.sh, i8 0, i64 range(i64 0, 68719476721) %i.sg, i1 false)
  br label %.loopexit586.1

.loopexit586.1:                                   ; preds = %.loopexit586, %bb.ds, %.loopexit586.loopexit.1
  %.sink1666 = phi ptr [ %i.sh, %bb.ds ], [ %i.sh, %.loopexit586.loopexit.1 ], [ null, %.loopexit586 ]
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ps, i64 1072
  store ptr %.sink1666, ptr %i.sj, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.pr, i64 1080
  %i.sl = load ptr, ptr %i.sk, align 8
  %.not413.2 = icmp eq ptr %i.sl, null
  br i1 %.not413.2, label %.loopexit586.2, label %bb.dt

bb.dt:                                            ; preds = %.loopexit586.1
  %i.sm = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.sn = zext i32 %i.sm to i64
  %i.so = shl nuw nsw i64 %i.sn, 4                ; 2 uses
  %i.sp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.so) #21
          to label %bb.du unwind label %bb.dq     ; 3 uses

bb.du:                                            ; preds = %bb.dt
  %i.sq = icmp eq i32 %i.sm, 0
  br i1 %i.sq, label %.loopexit586.2, label %.loopexit586.loopexit.2

.loopexit586.loopexit.2:                          ; preds = %bb.du
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.sp, i8 0, i64 range(i64 0, 68719476721) %i.so, i1 false)
  br label %.loopexit586.2

.loopexit586.2:                                   ; preds = %.loopexit586.1, %bb.du, %.loopexit586.loopexit.2
  %.sink1668 = phi ptr [ %i.sp, %bb.du ], [ %i.sp, %.loopexit586.loopexit.2 ], [ null, %.loopexit586.1 ]
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ps, i64 1080
  store ptr %.sink1668, ptr %i.sr, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.pr, i64 1088
  %i.st = load ptr, ptr %i.ss, align 8
  %.not413.3 = icmp eq ptr %i.st, null
  br i1 %.not413.3, label %.loopexit586.3, label %bb.dv

bb.dv:                                            ; preds = %.loopexit586.2
  %i.su = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.sv = zext i32 %i.su to i64
  %i.sw = shl nuw nsw i64 %i.sv, 4                ; 2 uses
  %i.sx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sw) #21
          to label %bb.dw unwind label %bb.dq     ; 3 uses

bb.dw:                                            ; preds = %bb.dv
  %i.sy = icmp eq i32 %i.su, 0
  br i1 %i.sy, label %.loopexit586.3, label %.loopexit586.loopexit.3

.loopexit586.loopexit.3:                          ; preds = %bb.dw
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.sx, i8 0, i64 range(i64 0, 68719476721) %i.sw, i1 false)
  br label %.loopexit586.3

.loopexit586.3:                                   ; preds = %.loopexit586.2, %bb.dw, %.loopexit586.loopexit.3
  %.sink1670 = phi ptr [ %i.sx, %bb.dw ], [ %i.sx, %.loopexit586.loopexit.3 ], [ null, %.loopexit586.2 ]
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ps, i64 1088
  store ptr %.sink1670, ptr %i.sz, align 8
  %i.ta = getelementptr inbounds nuw i8, ptr %i.pr, i64 1096
  %i.tb = load ptr, ptr %i.ta, align 8
  %.not413.4 = icmp eq ptr %i.tb, null
  br i1 %.not413.4, label %.loopexit586.4, label %bb.dx

bb.dx:                                            ; preds = %.loopexit586.3
  %i.tc = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.td = zext i32 %i.tc to i64
  %i.te = shl nuw nsw i64 %i.td, 4                ; 2 uses
  %i.tf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.te) #21
          to label %bb.dy unwind label %bb.dq     ; 3 uses

bb.dy:                                            ; preds = %bb.dx
  %i.tg = icmp eq i32 %i.tc, 0
  br i1 %i.tg, label %.loopexit586.4, label %.loopexit586.loopexit.4

.loopexit586.loopexit.4:                          ; preds = %bb.dy
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.tf, i8 0, i64 range(i64 0, 68719476721) %i.te, i1 false)
  br label %.loopexit586.4

.loopexit586.4:                                   ; preds = %.loopexit586.3, %bb.dy, %.loopexit586.loopexit.4
  %.sink1672 = phi ptr [ %i.tf, %bb.dy ], [ %i.tf, %.loopexit586.loopexit.4 ], [ null, %.loopexit586.3 ]
  %i.th = getelementptr inbounds nuw i8, ptr %i.ps, i64 1096
  store ptr %.sink1672, ptr %i.th, align 8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.pr, i64 1104
  %i.tj = load ptr, ptr %i.ti, align 8
  %.not413.5 = icmp eq ptr %i.tj, null
  br i1 %.not413.5, label %.loopexit586.5, label %bb.dz

bb.dz:                                            ; preds = %.loopexit586.4
  %i.tk = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.tl = zext i32 %i.tk to i64
  %i.tm = shl nuw nsw i64 %i.tl, 4                ; 2 uses
  %i.tn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tm) #21
          to label %bb.ea unwind label %bb.dq     ; 3 uses

bb.ea:                                            ; preds = %bb.dz
  %i.to = icmp eq i32 %i.tk, 0
  br i1 %i.to, label %.loopexit586.5, label %.loopexit586.loopexit.5

.loopexit586.loopexit.5:                          ; preds = %bb.ea
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.tn, i8 0, i64 range(i64 0, 68719476721) %i.tm, i1 false)
  br label %.loopexit586.5

.loopexit586.5:                                   ; preds = %.loopexit586.4, %bb.ea, %.loopexit586.loopexit.5
  %.sink1674 = phi ptr [ %i.tn, %bb.ea ], [ %i.tn, %.loopexit586.loopexit.5 ], [ null, %.loopexit586.4 ]
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ps, i64 1104
  store ptr %.sink1674, ptr %i.tp, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %i.pr, i64 1112
  %i.tr = load ptr, ptr %i.tq, align 8
  %.not413.6 = icmp eq ptr %i.tr, null
  br i1 %.not413.6, label %.loopexit586.6, label %bb.eb

bb.eb:                                            ; preds = %.loopexit586.5
  %i.ts = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.tt = zext i32 %i.ts to i64
  %i.tu = shl nuw nsw i64 %i.tt, 4                ; 2 uses
  %i.tv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tu) #21
          to label %bb.ec unwind label %bb.dq     ; 3 uses

bb.ec:                                            ; preds = %bb.eb
  %i.tw = icmp eq i32 %i.ts, 0
  br i1 %i.tw, label %.loopexit586.6, label %.loopexit586.loopexit.6

.loopexit586.loopexit.6:                          ; preds = %bb.ec
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.tv, i8 0, i64 range(i64 0, 68719476721) %i.tu, i1 false)
  br label %.loopexit586.6

.loopexit586.6:                                   ; preds = %.loopexit586.5, %bb.ec, %.loopexit586.loopexit.6
  %.sink1676 = phi ptr [ %i.tv, %bb.ec ], [ %i.tv, %.loopexit586.loopexit.6 ], [ null, %.loopexit586.5 ]
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ps, i64 1112
  store ptr %.sink1676, ptr %i.tx, align 8
  %i.ty = getelementptr inbounds nuw i8, ptr %i.pr, i64 1120
  %i.tz = load ptr, ptr %i.ty, align 8
  %.not413.7 = icmp eq ptr %i.tz, null
  br i1 %.not413.7, label %.preheader588, label %bb.ed

bb.ed:                                            ; preds = %.loopexit586.6
  %i.ua = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.ub = zext i32 %i.ua to i64
  %i.uc = shl nuw nsw i64 %i.ub, 4                ; 2 uses
  %i.ud = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.uc) #21
          to label %bb.ee unwind label %bb.dq     ; 3 uses

bb.ee:                                            ; preds = %bb.ed
  %i.ue = icmp eq i32 %i.ua, 0
  br i1 %i.ue, label %.preheader588, label %.loopexit586.loopexit.7

.loopexit586.loopexit.7:                          ; preds = %bb.ee
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ud, i8 0, i64 range(i64 0, 68719476721) %i.uc, i1 false)
  br label %.preheader588

.preheader588:                                    ; preds = %.loopexit586.6, %bb.ee, %.loopexit586.loopexit.7
  %.sink1678 = phi ptr [ %i.ud, %bb.ee ], [ %i.ud, %.loopexit586.loopexit.7 ], [ null, %.loopexit586.6 ]
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ps, i64 1120
  store ptr %.sink1678, ptr %i.uf, align 8
  %i.ug = getelementptr inbounds nuw i8, ptr %i.pr, i64 1128
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ps, i64 1128
  %i.ui = load ptr, ptr %i.ug, align 8
  %.not412 = icmp eq ptr %i.ui, null
  br i1 %.not412, label %.loopexit585, label %bb.ef

bb.ef:                                            ; preds = %.preheader588
  %i.uj = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.uk = zext i32 %i.uj to i64
  %i.ul = mul nuw nsw i64 %i.uk, 12               ; 2 uses
  %i.um = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ul) #21
          to label %bb.eg unwind label %bb.eh     ; 3 uses

bb.eg:                                            ; preds = %bb.ef
  %i.un = icmp eq i32 %i.uj, 0
  br i1 %i.un, label %.loopexit585, label %.loopexit585.loopexit

.loopexit585.loopexit:                            ; preds = %bb.eg
  %i.uo = add nsw i64 %i.ul, -12                  ; 2 uses
  %i.up = urem i64 %i.uo, 12
  %i.uq = sub nuw nsw i64 %i.uo, %i.up
  %i.ur = add nsw i64 %i.uq, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.um, i8 0, i64 range(i64 0, 51539607541) %i.ur, i1 false)
  br label %.loopexit585

bb.eh:                                            ; preds = %bb.eu, %bb.es, %bb.eq, %bb.eo, %bb.em, %bb.ek, %bb.ei, %bb.ef
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467

.loopexit585:                                     ; preds = %.preheader588, %bb.eg, %.loopexit585.loopexit
  %storemerge1389 = phi ptr [ %i.um, %bb.eg ], [ %i.um, %.loopexit585.loopexit ], [ null, %.preheader588 ]
  store ptr %storemerge1389, ptr %i.uh, align 8
  %i.ut = getelementptr inbounds nuw i8, ptr %i.pr, i64 1136
  %i.uu = load ptr, ptr %i.ut, align 8
  %.not412.1 = icmp eq ptr %i.uu, null
  br i1 %.not412.1, label %.loopexit585.1, label %bb.ei

bb.ei:                                            ; preds = %.loopexit585
  %i.uv = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.uw = zext i32 %i.uv to i64
  %i.ux = mul nuw nsw i64 %i.uw, 12               ; 2 uses
  %i.uy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ux) #21
          to label %bb.ej unwind label %bb.eh     ; 3 uses

bb.ej:                                            ; preds = %bb.ei
  %i.uz = icmp eq i32 %i.uv, 0
  br i1 %i.uz, label %.loopexit585.1, label %.loopexit585.loopexit.1

.loopexit585.loopexit.1:                          ; preds = %bb.ej
  %i.va = add nsw i64 %i.ux, -12                  ; 2 uses
  %i.vb = urem i64 %i.va, 12
  %i.vc = sub nuw nsw i64 %i.va, %i.vb
  %i.vd = add nsw i64 %i.vc, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.uy, i8 0, i64 range(i64 0, 51539607541) %i.vd, i1 false)
  br label %.loopexit585.1

.loopexit585.1:                                   ; preds = %.loopexit585, %bb.ej, %.loopexit585.loopexit.1
  %.sink1680 = phi ptr [ %i.uy, %bb.ej ], [ %i.uy, %.loopexit585.loopexit.1 ], [ null, %.loopexit585 ]
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ps, i64 1136
  store ptr %.sink1680, ptr %i.ve, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.pr, i64 1144
  %i.vg = load ptr, ptr %i.vf, align 8
  %.not412.2 = icmp eq ptr %i.vg, null
  br i1 %.not412.2, label %.loopexit585.2, label %bb.ek

bb.ek:                                            ; preds = %.loopexit585.1
  %i.vh = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.vi = zext i32 %i.vh to i64
  %i.vj = mul nuw nsw i64 %i.vi, 12               ; 2 uses
  %i.vk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vj) #21
          to label %bb.el unwind label %bb.eh     ; 3 uses

bb.el:                                            ; preds = %bb.ek
  %i.vl = icmp eq i32 %i.vh, 0
  br i1 %i.vl, label %.loopexit585.2, label %.loopexit585.loopexit.2

.loopexit585.loopexit.2:                          ; preds = %bb.el
  %i.vm = add nsw i64 %i.vj, -12                  ; 2 uses
  %i.vn = urem i64 %i.vm, 12
  %i.vo = sub nuw nsw i64 %i.vm, %i.vn
  %i.vp = add nsw i64 %i.vo, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.vk, i8 0, i64 range(i64 0, 51539607541) %i.vp, i1 false)
  br label %.loopexit585.2

.loopexit585.2:                                   ; preds = %.loopexit585.1, %bb.el, %.loopexit585.loopexit.2
  %.sink1682 = phi ptr [ %i.vk, %bb.el ], [ %i.vk, %.loopexit585.loopexit.2 ], [ null, %.loopexit585.1 ]
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ps, i64 1144
  store ptr %.sink1682, ptr %i.vq, align 8
  %i.vr = getelementptr inbounds nuw i8, ptr %i.pr, i64 1152
  %i.vs = load ptr, ptr %i.vr, align 8
  %.not412.3 = icmp eq ptr %i.vs, null
  br i1 %.not412.3, label %.loopexit585.3, label %bb.em

bb.em:                                            ; preds = %.loopexit585.2
  %i.vt = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.vu = zext i32 %i.vt to i64
  %i.vv = mul nuw nsw i64 %i.vu, 12               ; 2 uses
  %i.vw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vv) #21
          to label %bb.en unwind label %bb.eh     ; 3 uses

bb.en:                                            ; preds = %bb.em
  %i.vx = icmp eq i32 %i.vt, 0
  br i1 %i.vx, label %.loopexit585.3, label %.loopexit585.loopexit.3

.loopexit585.loopexit.3:                          ; preds = %bb.en
  %i.vy = add nsw i64 %i.vv, -12                  ; 2 uses
  %i.vz = urem i64 %i.vy, 12
  %i.wa = sub nuw nsw i64 %i.vy, %i.vz
  %i.wb = add nsw i64 %i.wa, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.vw, i8 0, i64 range(i64 0, 51539607541) %i.wb, i1 false)
  br label %.loopexit585.3

.loopexit585.3:                                   ; preds = %.loopexit585.2, %bb.en, %.loopexit585.loopexit.3
  %.sink1684 = phi ptr [ %i.vw, %bb.en ], [ %i.vw, %.loopexit585.loopexit.3 ], [ null, %.loopexit585.2 ]
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ps, i64 1152
  store ptr %.sink1684, ptr %i.wc, align 8
  %i.wd = getelementptr inbounds nuw i8, ptr %i.pr, i64 1160
  %i.we = load ptr, ptr %i.wd, align 8
  %.not412.4 = icmp eq ptr %i.we, null
  br i1 %.not412.4, label %.loopexit585.4, label %bb.eo

bb.eo:                                            ; preds = %.loopexit585.3
  %i.wf = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.wg = zext i32 %i.wf to i64
  %i.wh = mul nuw nsw i64 %i.wg, 12               ; 2 uses
  %i.wi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wh) #21
          to label %bb.ep unwind label %bb.eh     ; 3 uses

bb.ep:                                            ; preds = %bb.eo
  %i.wj = icmp eq i32 %i.wf, 0
  br i1 %i.wj, label %.loopexit585.4, label %.loopexit585.loopexit.4

.loopexit585.loopexit.4:                          ; preds = %bb.ep
  %i.wk = add nsw i64 %i.wh, -12                  ; 2 uses
  %i.wl = urem i64 %i.wk, 12
  %i.wm = sub nuw nsw i64 %i.wk, %i.wl
  %i.wn = add nsw i64 %i.wm, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.wi, i8 0, i64 range(i64 0, 51539607541) %i.wn, i1 false)
  br label %.loopexit585.4

.loopexit585.4:                                   ; preds = %.loopexit585.3, %bb.ep, %.loopexit585.loopexit.4
  %.sink1686 = phi ptr [ %i.wi, %bb.ep ], [ %i.wi, %.loopexit585.loopexit.4 ], [ null, %.loopexit585.3 ]
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ps, i64 1160
  store ptr %.sink1686, ptr %i.wo, align 8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.pr, i64 1168
  %i.wq = load ptr, ptr %i.wp, align 8
  %.not412.5 = icmp eq ptr %i.wq, null
  br i1 %.not412.5, label %.loopexit585.5, label %bb.eq

bb.eq:                                            ; preds = %.loopexit585.4
  %i.wr = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.ws = zext i32 %i.wr to i64
  %i.wt = mul nuw nsw i64 %i.ws, 12               ; 2 uses
  %i.wu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wt) #21
          to label %bb.er unwind label %bb.eh     ; 3 uses

bb.er:                                            ; preds = %bb.eq
  %i.wv = icmp eq i32 %i.wr, 0
  br i1 %i.wv, label %.loopexit585.5, label %.loopexit585.loopexit.5

.loopexit585.loopexit.5:                          ; preds = %bb.er
  %i.ww = add nsw i64 %i.wt, -12                  ; 2 uses
  %i.wx = urem i64 %i.ww, 12
  %i.wy = sub nuw nsw i64 %i.ww, %i.wx
  %i.wz = add nsw i64 %i.wy, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.wu, i8 0, i64 range(i64 0, 51539607541) %i.wz, i1 false)
  br label %.loopexit585.5

.loopexit585.5:                                   ; preds = %.loopexit585.4, %bb.er, %.loopexit585.loopexit.5
  %.sink1688 = phi ptr [ %i.wu, %bb.er ], [ %i.wu, %.loopexit585.loopexit.5 ], [ null, %.loopexit585.4 ]
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ps, i64 1168
  store ptr %.sink1688, ptr %i.xa, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.pr, i64 1176
  %i.xc = load ptr, ptr %i.xb, align 8
  %.not412.6 = icmp eq ptr %i.xc, null
  br i1 %.not412.6, label %.loopexit585.6, label %bb.es

bb.es:                                            ; preds = %.loopexit585.5
  %i.xd = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.xe = zext i32 %i.xd to i64
  %i.xf = mul nuw nsw i64 %i.xe, 12               ; 2 uses
  %i.xg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.xf) #21
          to label %bb.et unwind label %bb.eh     ; 3 uses

bb.et:                                            ; preds = %bb.es
  %i.xh = icmp eq i32 %i.xd, 0
  br i1 %i.xh, label %.loopexit585.6, label %.loopexit585.loopexit.6

.loopexit585.loopexit.6:                          ; preds = %bb.et
  %i.xi = add nsw i64 %i.xf, -12                  ; 2 uses
  %i.xj = urem i64 %i.xi, 12
  %i.xk = sub nuw nsw i64 %i.xi, %i.xj
  %i.xl = add nsw i64 %i.xk, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.xg, i8 0, i64 range(i64 0, 51539607541) %i.xl, i1 false)
  br label %.loopexit585.6

.loopexit585.6:                                   ; preds = %.loopexit585.5, %bb.et, %.loopexit585.loopexit.6
  %.sink1690 = phi ptr [ %i.xg, %bb.et ], [ %i.xg, %.loopexit585.loopexit.6 ], [ null, %.loopexit585.5 ]
  %i.xm = getelementptr inbounds nuw i8, ptr %i.ps, i64 1176
  store ptr %.sink1690, ptr %i.xm, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.pr, i64 1184
  %i.xo = load ptr, ptr %i.xn, align 8
  %.not412.7 = icmp eq ptr %i.xo, null
  br i1 %.not412.7, label %.loopexit585.7, label %bb.eu

bb.eu:                                            ; preds = %.loopexit585.6
  %i.xp = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.xq = zext i32 %i.xp to i64
  %i.xr = mul nuw nsw i64 %i.xq, 12               ; 2 uses
  %i.xs = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.xr) #21
          to label %bb.ev unwind label %bb.eh     ; 3 uses

bb.ev:                                            ; preds = %bb.eu
  %i.xt = icmp eq i32 %i.xp, 0
  br i1 %i.xt, label %.loopexit585.7, label %.loopexit585.loopexit.7

.loopexit585.loopexit.7:                          ; preds = %bb.ev
  %i.xu = add nsw i64 %i.xr, -12                  ; 2 uses
  %i.xv = urem i64 %i.xu, 12
  %i.xw = sub nuw nsw i64 %i.xu, %i.xv
  %i.xx = add nsw i64 %i.xw, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.xs, i8 0, i64 range(i64 0, 51539607541) %i.xx, i1 false)
  br label %.loopexit585.7

.loopexit585.7:                                   ; preds = %.loopexit585.6, %bb.ev, %.loopexit585.loopexit.7
  %.sink1692 = phi ptr [ %i.xs, %bb.ev ], [ %i.xs, %.loopexit585.loopexit.7 ], [ null, %.loopexit585.6 ]
  %i.xy = getelementptr inbounds nuw i8, ptr %i.ps, i64 1184
  store ptr %.sink1692, ptr %i.xy, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.xz = load i32, ptr %i.dc, align 8
  %i.ya = zext i32 %i.xz to i64
  %i.yb = icmp samesign ult i64 %indvars.iv.next, %i.ya
  br i1 %i.yb, label %bb.dd, label %._crit_edge934, !llvm.loop !10

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.yc = getelementptr inbounds nuw [24 x i8], ptr %i.po, i64 %i.pm
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.po, i8 0, i64 %i.pn, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.po, i64 %i.pn ; 3 uses
  %i.yd = ptrtoint ptr %i.yc to i64               ; 3 uses
  %.pre1310 = load i32, ptr %i.de, align 8        ; 2 uses
  %.not1016 = icmp eq i32 %.pre1310, 0
  br i1 %.not1016, label %.preheader597, label %.lr.ph936

.preheader597:                                    ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit, %._crit_edge934, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit
  %.0.lcssa.i.i.i.i.i1420 = phi ptr [ null, %._crit_edge934 ], [ %scevgep.i.i.i.i.i, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ], [ %scevgep.i.i.i.i.i, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit ] ; 6 uses
  %.sink.i1418 = phi i64 [ 0, %._crit_edge934 ], [ %i.yd, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ], [ %i.yd, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit ] ; 5 uses
  %.sroa.0484.01416 = phi ptr [ null, %._crit_edge934 ], [ %i.po, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ], [ %i.po, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit ] ; 12 uses
  %i.ye = phi i32 [ 0, %._crit_edge934 ], [ 0, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ], [ %i.zr, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit ]
  %i.yf = load i32, ptr %i.ca, align 8            ; 2 uses
  %.not1017 = icmp eq i32 %i.yf, 0
  br i1 %.not1017, label %.preheader596, label %.lr.ph975

.lr.ph975:                                        ; preds = %.preheader597
  %i.yg = add nuw nsw i64 %indvars.iv1292, 1
  %i.yh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1272
  br label %bb.ez

bb.ew:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.yi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467

.lr.ph936:                                        ; preds = %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit
  %i.yj = phi i32 [ %i.zr, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit ], [ %.pre1310, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ]
  %indvars.iv1262 = phi i64 [ %indvars.iv.next1263, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit ], [ 0, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ] ; 3 uses
  %i.yk = getelementptr inbounds nuw [24 x i8], ptr %i.po, i64 %indvars.iv1262 ; 5 uses
  %i.yl = load ptr, ptr %i.df, align 8
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.yl, i64 %indvars.iv1262
  %i.yn = load ptr, ptr %i.ym, align 8
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 1028
  %i.yp = load i32, ptr %i.yo, align 4
  %i.yq = udiv i32 %i.yp, %i.dg
  %i.yr = zext i32 %i.yq to i64                   ; 3 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yk, i64 16 ; 3 uses
  %i.yt = load ptr, ptr %i.ys, align 8
  %i.yu = load ptr, ptr %i.yk, align 8
  %i.yv = ptrtoint ptr %i.yt to i64
  %i.yw = ptrtoint ptr %i.yu to i64               ; 2 uses
  %i.yx = sub i64 %i.yv, %i.yw
  %i.yy = ashr exact i64 %i.yx, 3
  %i.yz = icmp ult i64 %i.yy, %i.yr
  br i1 %i.yz, label %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i: ; preds = %.lr.ph936
  %i.za = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 3 uses
  %i.zb = load ptr, ptr %i.za, align 8
  %i.zc = ptrtoint ptr %i.zb to i64
  %i.zd = sub i64 %i.zc, %i.yw
  %i.ze = shl nuw nsw i64 %i.yr, 3
  %i.zf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ze) #21
          to label %.noexc447 unwind label %bb.ey ; 4 uses

.noexc447:                                        ; preds = %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i
  %i.zg = load ptr, ptr %i.yk, align 8            ; 5 uses
  %i.zh = load ptr, ptr %i.za, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.zg, %i.zh
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc447, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.zk, %.lr.ph.i.i.i.i ], [ %i.zf, %.noexc447 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.zj, %.lr.ph.i.i.i.i ], [ %i.zg, %.noexc447 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.zi = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !30, !noalias !29
  store i64 %i.zi, ptr %.012.i.i.i.i, align 4, !alias.scope !29, !noalias !30
  %i.zj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i445 = icmp eq ptr %i.zj, %i.zh
  br i1 %.not.i.i.i.i445, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !14

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc447
  %.not.i8.i446 = icmp eq ptr %i.zg, null
  br i1 %.not.i8.i446, label %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.zl = load ptr, ptr %i.ys, align 8
  %i.zm = ptrtoint ptr %i.zl to i64
  %i.zn = ptrtoint ptr %i.zg to i64
  %i.zo = sub i64 %i.zm, %i.zn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.zg, i64 noundef %i.zo) #20
  br label %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.ex, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.zf, ptr %i.yk, align 8
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zf, i64 %i.zd
  store ptr %i.zp, ptr %i.za, align 8
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %i.yr
  store ptr %i.zq, ptr %i.ys, align 8
  %.pre1311 = load i32, ptr %i.de, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i, %.lr.ph936
  %i.zr = phi i32 [ %.pre1311, %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.yj, %.lr.ph936 ] ; 3 uses
  %indvars.iv.next1263 = add nuw nsw i64 %indvars.iv1262, 1 ; 2 uses
  %i.zs = zext i32 %i.zr to i64
  %i.zt = icmp samesign ult i64 %indvars.iv.next1263, %i.zs
  br i1 %i.zt, label %.lr.ph936, label %.preheader597, !llvm.loop !15

bb.ey:                                            ; preds = %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i
  %i.zu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii

.preheader596.loopexit:                           ; preds = %bb.ht
  %.pre1313 = load i32, ptr %i.de, align 8
  br label %.preheader596

.preheader596:                                    ; preds = %.preheader596.loopexit, %.preheader597
  %i.zv = phi i32 [ %.pre1313, %.preheader596.loopexit ], [ %i.ye, %.preheader597 ] ; 2 uses
  %.not1020 = icmp eq i32 %i.zv, 0
  br i1 %.not1020, label %._crit_edge978, label %.lr.ph977

.lr.ph977:                                        ; preds = %.preheader596
  %i.zw = getelementptr inbounds nuw i8, ptr %i.fg, i64 216 ; 2 uses
  br label %bb.hu

bb.ez:                                            ; preds = %.lr.ph975, %bb.ht
  %i.zx = phi i32 [ %i.yf, %.lr.ph975 ], [ %i.ajv, %bb.ht ] ; 2 uses
  %.sroa.311305.0 = phi ptr [ %.sroa.311305.5, %.lr.ph975 ], [ %.sroa.311305.4, %bb.ht ] ; 4 uses
  %.sroa.271304.0 = phi ptr [ %.sroa.271304.5, %.lr.ph975 ], [ %.sroa.271304.4, %bb.ht ] ; 4 uses
  %.sroa.231303.0 = phi ptr [ %.sroa.231303.5, %.lr.ph975 ], [ %.sroa.231303.4, %bb.ht ] ; 4 uses
  %.sroa.191302.0 = phi ptr [ %.sroa.191302.5, %.lr.ph975 ], [ %.sroa.191302.4, %bb.ht ] ; 4 uses
  %.sroa.151301.0 = phi ptr [ %.sroa.151301.5, %.lr.ph975 ], [ %.sroa.151301.4, %bb.ht ] ; 4 uses
  %.sroa.111300.0 = phi ptr [ %.sroa.111300.5, %.lr.ph975 ], [ %.sroa.111300.4, %bb.ht ] ; 4 uses
  %.sroa.71299.0 = phi ptr [ %.sroa.71299.5, %.lr.ph975 ], [ %.sroa.71299.4, %bb.ht ] ; 4 uses
  %.sroa.01298.1 = phi ptr [ %.sroa.01298.0, %.lr.ph975 ], [ %.sroa.01298.5, %bb.ht ] ; 4 uses
  %.sroa.31.0 = phi ptr [ %.sroa.31.5, %.lr.ph975 ], [ %.sroa.31.4, %bb.ht ] ; 4 uses
  %.sroa.27.0 = phi ptr [ %.sroa.27.5, %.lr.ph975 ], [ %.sroa.27.4, %bb.ht ] ; 4 uses
  %.sroa.23.0 = phi ptr [ %.sroa.23.5, %.lr.ph975 ], [ %.sroa.23.4, %bb.ht ] ; 4 uses
  %.sroa.19.0 = phi ptr [ %.sroa.19.5, %.lr.ph975 ], [ %.sroa.19.4, %bb.ht ] ; 4 uses
  %.sroa.15.0 = phi ptr [ %.sroa.15.5, %.lr.ph975 ], [ %.sroa.15.4, %bb.ht ] ; 4 uses
  %.sroa.11.0 = phi ptr [ %.sroa.11.5, %.lr.ph975 ], [ %.sroa.11.4, %bb.ht ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.5, %.lr.ph975 ], [ %.sroa.7.4, %bb.ht ] ; 4 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %.lr.ph975 ], [ %.sroa.0.5, %bb.ht ] ; 4 uses
  %indvars.iv1283 = phi i64 [ 0, %.lr.ph975 ], [ %indvars.iv.next1284, %bb.ht ] ; 2 uses
  %.0277973 = phi i32 [ 0, %.lr.ph975 ], [ %.3, %bb.ht ] ; 4 uses
  %.1286972 = phi ptr [ %.0285, %.lr.ph975 ], [ %.4, %bb.ht ] ; 4 uses
  %.1290971 = phi ptr [ %.0289, %.lr.ph975 ], [ %.4293, %bb.ht ] ; 4 uses
  %.1295970 = phi ptr [ %.0294, %.lr.ph975 ], [ %.4298, %bb.ht ] ; 4 uses
  %.1300969 = phi ptr [ %.0299, %.lr.ph975 ], [ %.4303, %bb.ht ] ; 4 uses
  %.0304968 = phi ptr [ %i.fv, %.lr.ph975 ], [ %.1305, %bb.ht ] ; 5 uses
  %.0566967 = phi i32 [ 0, %.lr.ph975 ], [ %.2, %bb.ht ] ; 4 uses
  %i.zy = load ptr, ptr %i.bx, align 8
  %i.zz = getelementptr inbounds nuw [16 x i8], ptr %i.zy, i64 %indvars.iv1283 ; 4 uses
  %i.aaa = load i32, ptr %i.zz, align 8           ; 3 uses
  br i1 %i.gx, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.aab = icmp ult i32 %i.aaa, 4
  br i1 %i.aab, label %bb.ht, label %.thread572

bb.fb:                                            ; preds = %bb.ez
  %i.aac = zext i32 %i.aaa to i64
  %.not391 = icmp eq i64 %i.yg, %i.aac
  br i1 %.not391, label %.thread572, label %bb.ht

.thread572:                                       ; preds = %bb.fa, %bb.fb
  store i32 %i.aaa, ptr %.0304968, align 8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zz, i64 8 ; 4 uses
  %i.aae = load ptr, ptr %i.aad, align 8
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0304968, i64 8
  store ptr %i.aae, ptr %i.aaf, align 8
  %i.aag = load i32, ptr %i.zz, align 8
  %.not1018 = icmp eq i32 %i.aag, 0
  br i1 %.not1018, label %._crit_edge960, label %.lr.ph959

._crit_edge960:                                   ; preds = %._crit_edge948, %.thread572
  %.sroa.311305.1 = phi ptr [ %.sroa.311305.0, %.thread572 ], [ %.sroa.311305.3, %._crit_edge948 ]
  %.sroa.271304.1 = phi ptr [ %.sroa.271304.0, %.thread572 ], [ %.sroa.271304.3, %._crit_edge948 ]
  %.sroa.231303.1 = phi ptr [ %.sroa.231303.0, %.thread572 ], [ %.sroa.231303.3, %._crit_edge948 ]
  %.sroa.191302.1 = phi ptr [ %.sroa.191302.0, %.thread572 ], [ %.sroa.191302.3, %._crit_edge948 ]
  %.sroa.151301.1 = phi ptr [ %.sroa.151301.0, %.thread572 ], [ %.sroa.151301.3, %._crit_edge948 ]
  %.sroa.111300.1 = phi ptr [ %.sroa.111300.0, %.thread572 ], [ %.sroa.111300.3, %._crit_edge948 ]
  %.sroa.71299.1 = phi ptr [ %.sroa.71299.0, %.thread572 ], [ %.sroa.71299.3, %._crit_edge948 ]
  %.sroa.01298.2 = phi ptr [ %.sroa.01298.1, %.thread572 ], [ %.sroa.01298.4, %._crit_edge948 ]
  %.sroa.31.1 = phi ptr [ %.sroa.31.0, %.thread572 ], [ %.sroa.31.3, %._crit_edge948 ]
  %.sroa.27.1 = phi ptr [ %.sroa.27.0, %.thread572 ], [ %.sroa.27.3, %._crit_edge948 ]
  %.sroa.23.1 = phi ptr [ %.sroa.23.0, %.thread572 ], [ %.sroa.23.3, %._crit_edge948 ]
  %.sroa.19.1 = phi ptr [ %.sroa.19.0, %.thread572 ], [ %.sroa.19.3, %._crit_edge948 ]
  %.sroa.15.1 = phi ptr [ %.sroa.15.0, %.thread572 ], [ %.sroa.15.3, %._crit_edge948 ]
  %.sroa.11.1 = phi ptr [ %.sroa.11.0, %.thread572 ], [ %.sroa.11.3, %._crit_edge948 ]
  %.sroa.7.11306 = phi ptr [ %.sroa.7.0, %.thread572 ], [ %.sroa.7.3, %._crit_edge948 ]
end_hunk_0
begin_hunk_1_@_ZN6Assimp18SortByPTypeProcess7ExecuteEP7aiScene:bb.a
  %i.aiz = getelementptr inbounds nuw [12 x i8], ptr %i.aiy, i64 %.pre-phi1324
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aes, i64 1176
  %i.ajb = load ptr, ptr %i.aja, align 8
  %i.ajc = getelementptr inbounds nuw [12 x i8], ptr %i.ajb, i64 %i.aem
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ajc, ptr noundef nonnull align 4 dereferenceable(12) %i.aiz, i64 12, i1 false)
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aep, i64 1184
  %i.aje = load ptr, ptr %i.ajd, align 8          ; 2 uses
  %.not402.7 = icmp eq ptr %i.aje, null
  br i1 %.not402.7, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.ajf = getelementptr inbounds nuw [12 x i8], ptr %i.aje, i64 %.pre-phi1324
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aes, i64 1184
  %i.ajh = load ptr, ptr %i.ajg, align 8
  %i.aji = getelementptr inbounds nuw [12 x i8], ptr %i.ajh, i64 %i.aem
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aji, ptr noundef nonnull align 4 dereferenceable(12) %i.ajf, i64 12, i1 false)
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %indvars.iv.next1278 = add nuw nsw i64 %indvars.iv1277, 1 ; 3 uses
  %i.ajj = load i32, ptr %i.dc, align 8           ; 2 uses
  %i.ajk = zext i32 %i.ajj to i64
  %i.ajl = icmp samesign ult i64 %indvars.iv.next1278, %i.ajk
  br i1 %i.ajl, label %bb.gf, label %._crit_edge948.loopexit, !llvm.loop !20

._crit_edge948.loopexit:                          ; preds = %bb.hs
  %i.ajm = trunc nuw i64 %indvars.iv.next1278 to i32
  %i.ajn = icmp eq i32 %i.ajj, %i.ajm
  %i.ajo = zext i1 %i.ajn to i32
  br label %._crit_edge948

._crit_edge948:                                   ; preds = %._crit_edge948.loopexit, %bb.ge
  %.0272.lcssa = phi i32 [ 1, %bb.ge ], [ %i.ajo, %._crit_edge948.loopexit ]
  %spec.select435 = add i32 %.1278957, %.0272.lcssa ; 2 uses
  %i.ajp = add i32 %.1567951, 1                   ; 2 uses
  %i.ajq = load ptr, ptr %i.aad, align 8
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.ajq, i64 %indvars.iv1280
  store i32 %.1567951, ptr %i.ajr, align 4
  %indvars.iv.next1281 = add nuw nsw i64 %indvars.iv1280, 1 ; 2 uses
  %i.ajs = load i32, ptr %i.zz, align 8
  %i.ajt = zext i32 %i.ajs to i64
  %i.aju = icmp samesign ult i64 %indvars.iv.next1281, %i.ajt
  br i1 %i.aju, label %.lr.ph959, label %._crit_edge960, !llvm.loop !21

bb.ht:                                            ; preds = %bb.fa, %bb.fb, %._crit_edge960
  %i.ajv = phi i32 [ %i.zx, %bb.fa ], [ %.pre1312, %._crit_edge960 ], [ %i.zx, %bb.fb ] ; 2 uses
  %.sroa.311305.4 = phi ptr [ %.sroa.311305.0, %bb.fa ], [ %.sroa.311305.1, %._crit_edge960 ], [ %.sroa.311305.0, %bb.fb ]
  %.sroa.271304.4 = phi ptr [ %.sroa.271304.0, %bb.fa ], [ %.sroa.271304.1, %._crit_edge960 ], [ %.sroa.271304.0, %bb.fb ]
  %.sroa.231303.4 = phi ptr [ %.sroa.231303.0, %bb.fa ], [ %.sroa.231303.1, %._crit_edge960 ], [ %.sroa.231303.0, %bb.fb ]
  %.sroa.191302.4 = phi ptr [ %.sroa.191302.0, %bb.fa ], [ %.sroa.191302.1, %._crit_edge960 ], [ %.sroa.191302.0, %bb.fb ]
  %.sroa.151301.4 = phi ptr [ %.sroa.151301.0, %bb.fa ], [ %.sroa.151301.1, %._crit_edge960 ], [ %.sroa.151301.0, %bb.fb ]
  %.sroa.111300.4 = phi ptr [ %.sroa.111300.0, %bb.fa ], [ %.sroa.111300.1, %._crit_edge960 ], [ %.sroa.111300.0, %bb.fb ]
  %.sroa.71299.4 = phi ptr [ %.sroa.71299.0, %bb.fa ], [ %.sroa.71299.1, %._crit_edge960 ], [ %.sroa.71299.0, %bb.fb ]
  %.sroa.01298.5 = phi ptr [ %.sroa.01298.1, %bb.fa ], [ %.sroa.01298.2, %._crit_edge960 ], [ %.sroa.01298.1, %bb.fb ]
  %.sroa.31.4 = phi ptr [ %.sroa.31.0, %bb.fa ], [ %.sroa.31.1, %._crit_edge960 ], [ %.sroa.31.0, %bb.fb ]
  %.sroa.27.4 = phi ptr [ %.sroa.27.0, %bb.fa ], [ %.sroa.27.1, %._crit_edge960 ], [ %.sroa.27.0, %bb.fb ]
  %.sroa.23.4 = phi ptr [ %.sroa.23.0, %bb.fa ], [ %.sroa.23.1, %._crit_edge960 ], [ %.sroa.23.0, %bb.fb ]
  %.sroa.19.4 = phi ptr [ %.sroa.19.0, %bb.fa ], [ %.sroa.19.1, %._crit_edge960 ], [ %.sroa.19.0, %bb.fb ]
  %.sroa.15.4 = phi ptr [ %.sroa.15.0, %bb.fa ], [ %.sroa.15.1, %._crit_edge960 ], [ %.sroa.15.0, %bb.fb ]
  %.sroa.11.4 = phi ptr [ %.sroa.11.0, %bb.fa ], [ %.sroa.11.1, %._crit_edge960 ], [ %.sroa.11.0, %bb.fb ]
  %.sroa.7.4 = phi ptr [ %.sroa.7.0, %bb.fa ], [ %.sroa.7.11306, %._crit_edge960 ], [ %.sroa.7.0, %bb.fb ]
  %.sroa.0.5 = phi ptr [ %.sroa.0.1, %bb.fa ], [ %.sroa.0.2, %._crit_edge960 ], [ %.sroa.0.1, %bb.fb ]
  %.2 = phi i32 [ %.0566967, %bb.fa ], [ %.1567.lcssa, %._crit_edge960 ], [ %.0566967, %bb.fb ]
  %.1305 = phi ptr [ %.0304968, %bb.fa ], [ %i.aah, %._crit_edge960 ], [ %.0304968, %bb.fb ]
  %.4303 = phi ptr [ %.1300969, %bb.fa ], [ %.2301.lcssa, %._crit_edge960 ], [ %.1300969, %bb.fb ]
  %.4298 = phi ptr [ %.1295970, %bb.fa ], [ %.2296.lcssa, %._crit_edge960 ], [ %.1295970, %bb.fb ]
  %.4293 = phi ptr [ %.1290971, %bb.fa ], [ %.2291.lcssa, %._crit_edge960 ], [ %.1290971, %bb.fb ]
  %.4 = phi ptr [ %.1286972, %bb.fa ], [ %.2287.lcssa, %._crit_edge960 ], [ %.1286972, %bb.fb ]
  %.3 = phi i32 [ %.0277973, %bb.fa ], [ %.1278.lcssa, %._crit_edge960 ], [ %.0277973, %bb.fb ]
  %indvars.iv.next1284 = add nuw nsw i64 %indvars.iv1283, 1 ; 2 uses
  %i.ajw = zext i32 %i.ajv to i64
  %i.ajx = icmp samesign ult i64 %indvars.iv.next1284, %i.ajw
  br i1 %i.ajx, label %bb.ez, label %.preheader596.loopexit, !llvm.loop !22

._crit_edge978:                                   ; preds = %bb.hw, %.preheader596
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.fg, i64 216
  %i.ajz = load i32, ptr %i.ajy, align 8          ; 2 uses
  %.not389 = icmp eq i32 %i.ajz, 0
  br i1 %.not389, label %.loopexit595, label %bb.hx

bb.hu:                                            ; preds = %.lr.ph977, %bb.hw
  %i.aka = phi i32 [ %i.zv, %.lr.ph977 ], [ %i.aki, %bb.hw ]
  %indvars.iv1286 = phi i64 [ 0, %.lr.ph977 ], [ %indvars.iv.next1287, %bb.hw ] ; 2 uses
  %i.akb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0484.01416, i64 %indvars.iv1286 ; 2 uses
  %i.akc = load ptr, ptr %i.akb, align 8
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  %i.ake = load ptr, ptr %i.akd, align 8
  %i.akf = icmp eq ptr %i.akc, %i.ake
  br i1 %i.akf, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.akg = load i32, ptr %i.zw, align 8
  %i.akh = add i32 %i.akg, 1
  store i32 %i.akh, ptr %i.zw, align 8
  %.pre1314 = load i32, ptr %i.de, align 8
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hu, %bb.hv
  %i.aki = phi i32 [ %i.aka, %bb.hu ], [ %.pre1314, %bb.hv ] ; 2 uses
  %indvars.iv.next1287 = add nuw nsw i64 %indvars.iv1286, 1 ; 2 uses
  %i.akj = zext i32 %i.aki to i64
  %i.akk = icmp samesign ult i64 %indvars.iv.next1287, %i.akj
  br i1 %i.akk, label %bb.hu, label %._crit_edge978, !llvm.loop !23

bb.hx:                                            ; preds = %._crit_edge978
  %i.akl = zext i32 %i.ajz to i64
  %i.akm = shl nuw nsw i64 %i.akl, 3
  %i.akn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.akm) #21
          to label %bb.hy unwind label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.ako = getelementptr inbounds nuw i8, ptr %i.fg, i64 224 ; 2 uses
  store ptr %i.akn, ptr %i.ako, align 8
  %i.akp = load i32, ptr %i.de, align 8           ; 2 uses
  %.not1021 = icmp eq i32 %i.akp, 0
  br i1 %.not1021, label %.loopexit595, label %.lr.ph982

bb.hz:                                            ; preds = %bb.hx
  %i.akq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii

.lr.ph982:                                        ; preds = %bb.hy, %bb.ie
  %i.akr = phi i32 [ %i.amk, %bb.ie ], [ %i.akp, %bb.hy ]
  %indvars.iv1289 = phi i64 [ %indvars.iv.next1290, %bb.ie ], [ 0, %bb.hy ] ; 3 uses
  %.0980 = phi i32 [ %.1, %bb.ie ], [ 0, %bb.hy ] ; 3 uses
  %i.aks = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0484.01416, i64 %indvars.iv1289 ; 4 uses
  %i.akt = load ptr, ptr %i.aks, align 8
  %i.aku = getelementptr inbounds nuw i8, ptr %i.aks, i64 8 ; 2 uses
  %i.akv = load ptr, ptr %i.aku, align 8
  %i.akw = icmp eq ptr %i.akt, %i.akv
  br i1 %i.akw, label %bb.ie, label %bb.ia

bb.ia:                                            ; preds = %.lr.ph982
  %i.akx = load ptr, ptr %i.df, align 8
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.akx, i64 %indvars.iv1289
  %i.akz = load ptr, ptr %i.aky, align 8          ; 4 uses
  %i.ala = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #21
          to label %bb.ib unwind label %bb.if     ; 14 uses

bb.ib:                                            ; preds = %bb.ia
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 1056 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.ala, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.alb, align 8
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ala, i64 1060
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ala, i64 1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.alc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ald, align 4
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ala, i64 1080
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ala, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ale, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.alf, align 8
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ala, i64 1100
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ala, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.alg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.alh, align 4
  %i.ali = load ptr, ptr %i.ako, align 8
  %i.alj = zext i32 %.0980 to i64
  %i.alk = getelementptr inbounds nuw [8 x i8], ptr %i.ali, i64 %i.alj
  store ptr %i.ala, ptr %i.alk, align 8
  %i.all = icmp eq ptr %i.ala, %i.akz
  br i1 %i.all, label %_ZN8aiStringaSERKS_.exit455, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.alm = load i32, ptr %i.akz, align 4
  %spec.select.i454 = tail call i32 @llvm.umin.i32(i32 %i.alm, i32 1023) ; 2 uses
  store i32 %spec.select.i454, ptr %i.ala, align 8
  %i.aln = getelementptr inbounds nuw i8, ptr %i.ala, i64 4 ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.akz, i64 4
  %i.alp = zext nneg i32 %spec.select.i454 to i64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aln, ptr nonnull align 4 %i.alo, i64 %i.alp, i1 false)
  %i.alq = getelementptr inbounds nuw i8, ptr %i.aln, i64 %i.alp
  store i8 0, ptr %i.alq, align 1
  br label %_ZN8aiStringaSERKS_.exit455

_ZN8aiStringaSERKS_.exit455:                      ; preds = %bb.ib, %bb.ic
  %i.alr = getelementptr inbounds nuw i8, ptr %i.akz, i64 1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.alb, ptr noundef nonnull align 8 dereferenceable(64) %i.alr, i64 64, i1 false)
  %i.als = load ptr, ptr %i.aku, align 8
  %i.alt = load ptr, ptr %i.aks, align 8
  %i.alu = ptrtoint ptr %i.als to i64
  %i.alv = ptrtoint ptr %i.alt to i64
  %i.alw = sub i64 %i.alu, %i.alv
  %i.alx = ashr exact i64 %i.alw, 3               ; 2 uses
  %i.aly = trunc i64 %i.alx to i32
  %i.alz = getelementptr inbounds nuw i8, ptr %i.ala, i64 1028 ; 2 uses
  store i32 %i.aly, ptr %i.alz, align 4
  %i.ama = and i64 %i.alx, 4294967295             ; 2 uses
  %i.amb = shl nuw nsw i64 %i.ama, 3              ; 2 uses
  %i.amc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.amb) #21
          to label %bb.id unwind label %bb.if     ; 3 uses

bb.id:                                            ; preds = %_ZN8aiStringaSERKS_.exit455
  %i.amd = icmp eq i64 %i.ama, 0
  br i1 %i.amd, label %.loopexit587, label %.loopexit587.loopexit

.loopexit587.loopexit:                            ; preds = %bb.id
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.amc, i8 0, i64 range(i64 0, 34359738361) %i.amb, i1 false)
  br label %.loopexit587

.loopexit587:                                     ; preds = %.loopexit587.loopexit, %bb.id
  %i.ame = getelementptr inbounds nuw i8, ptr %i.ala, i64 1048
  store ptr %i.amc, ptr %i.ame, align 8
  %i.amf = load ptr, ptr %i.aks, align 8
  %i.amg = load i32, ptr %i.alz, align 4
  %i.amh = zext i32 %i.amg to i64
  %i.ami = shl nuw nsw i64 %i.amh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.amc, ptr nonnull align 4 %i.amf, i64 %i.ami, i1 false)
  %i.amj = add i32 %.0980, 1
  %.pre1315 = load i32, ptr %i.de, align 8
  br label %bb.ie

bb.ie:                                            ; preds = %.lr.ph982, %.loopexit587
  %i.amk = phi i32 [ %.pre1315, %.loopexit587 ], [ %i.akr, %.lr.ph982 ] ; 2 uses
  %.1 = phi i32 [ %i.amj, %.loopexit587 ], [ %.0980, %.lr.ph982 ]
  %indvars.iv.next1290 = add nuw nsw i64 %indvars.iv1289, 1 ; 2 uses
  %i.aml = zext i32 %i.amk to i64
  %i.amm = icmp samesign ult i64 %indvars.iv.next1290, %i.aml
  br i1 %i.amm, label %.lr.ph982, label %.loopexit595, !llvm.loop !24

bb.if:                                            ; preds = %_ZN8aiStringaSERKS_.exit455, %bb.ia
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii

.loopexit595:                                     ; preds = %bb.ie, %bb.hy, %._crit_edge978
  %.not4.i.i.i = icmp eq ptr %.sroa.0484.01416, %.0.lcssa.i.i.i.i.i1420
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit595, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.amu, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i ], [ %.sroa.0484.01416, %.loopexit595 ] ; 3 uses
  %i.amo = load ptr, ptr %.05.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.amo, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i, label %bb.ig

bb.ig:                                            ; preds = %.lr.ph.i.i.i
  %i.amp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.amq = load ptr, ptr %i.amp, align 8
  %i.amr = ptrtoint ptr %i.amq to i64
  %i.ams = ptrtoint ptr %i.amo to i64
  %i.amt = sub i64 %i.amr, %i.ams
  tail call void @_ZdlPvm(ptr noundef nonnull %i.amo, i64 noundef %i.amt) #20
  br label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i: ; preds = %bb.ig, %.lr.ph.i.i.i
  %i.amu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i456 = icmp eq ptr %i.amu, %.0.lcssa.i.i.i.i.i1420
  br i1 %.not.i.i.i456, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i, %.loopexit595
  %.not.i.i1.i = icmp eq ptr %.sroa.0484.01416, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit, label %bb.ih

bb.ih:                                            ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i
  %i.amv = ptrtoint ptr %.sroa.0484.01416 to i64
  %i.amw = sub i64 %.sink.i1418, %i.amv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0484.01416, i64 noundef %i.amw) #20
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit: ; preds = %bb.ih, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, %bb.ad, %bb.ae
  %.sroa.39.3 = phi ptr [ %.sroa.39.2984, %bb.ad ], [ %.sroa.39.2984, %bb.ae ], [ %.sroa.39.13, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i ], [ %.sroa.39.13, %bb.ih ] ; 2 uses
  %.sroa.21.3 = phi ptr [ %.sroa.21.2985, %bb.ad ], [ %.sroa.21.2985, %bb.ae ], [ %.sroa.21.8, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i ], [ %.sroa.21.8, %bb.ih ] ; 2 uses
  %.sroa.0533.3 = phi ptr [ %.sroa.0533.2986, %bb.ad ], [ %.sroa.0533.2986, %bb.ae ], [ %.sroa.0533.13, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i ], [ %.sroa.0533.13, %bb.ih ] ; 2 uses
  %indvars.iv.next1293 = add nuw nsw i64 %indvars.iv1292, 1 ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %.sroa.0527.1983, i64 4 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1293, 4
  br i1 %exitcond.not, label %bb.ab, label %bb.ad, !llvm.loop !26

bb.ii:                                            ; preds = %.loopexit584, %.loopexit.split-lp, %bb.hz, %bb.if, %bb.ey
  %.0.lcssa.i.i.i.i.i1421 = phi ptr [ %scevgep.i.i.i.i.i, %bb.ey ], [ %.0.lcssa.i.i.i.i.i1420, %bb.hz ], [ %.0.lcssa.i.i.i.i.i1420, %bb.if ], [ %.0.lcssa.i.i.i.i.i1420, %.loopexit584 ], [ %.0.lcssa.i.i.i.i.i1420, %.loopexit.split-lp ] ; 2 uses
  %.sink.i1419 = phi i64 [ %i.yd, %bb.ey ], [ %.sink.i1418, %bb.hz ], [ %.sink.i1418, %bb.if ], [ %.sink.i1418, %.loopexit584 ], [ %.sink.i1418, %.loopexit.split-lp ]
  %.sroa.0484.01417 = phi ptr [ %i.po, %bb.ey ], [ %.sroa.0484.01416, %bb.hz ], [ %.sroa.0484.01416, %bb.if ], [ %.sroa.0484.01416, %.loopexit584 ], [ %.sroa.0484.01416, %.loopexit.split-lp ] ; 5 uses
  %.pn405 = phi { ptr, i32 } [ %i.zu, %bb.ey ], [ %i.akq, %bb.hz ], [ %i.amn, %bb.if ], [ %lpad.loopexit, %.loopexit584 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not4.i.i.i457 = icmp eq ptr %.sroa.0484.01417, %.0.lcssa.i.i.i.i.i1421
  br i1 %.not4.i.i.i457, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465, label %.lr.ph.i.i.i458

.lr.ph.i.i.i458:                                  ; preds = %bb.ii, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i461
  %.05.i.i.i459 = phi ptr [ %i.ane, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i461 ], [ %.sroa.0484.01417, %bb.ii ] ; 3 uses
  %i.amy = load ptr, ptr %.05.i.i.i459, align 8   ; 3 uses
  %.not.i.i.i.i.i.i.i460 = icmp eq ptr %i.amy, null
  br i1 %.not.i.i.i.i.i.i.i460, label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i461, label %bb.ij

bb.ij:                                            ; preds = %.lr.ph.i.i.i458
  %i.amz = getelementptr inbounds nuw i8, ptr %.05.i.i.i459, i64 16
  %i.ana = load ptr, ptr %i.amz, align 8
  %i.anb = ptrtoint ptr %i.ana to i64
  %i.anc = ptrtoint ptr %i.amy to i64
  %i.and = sub i64 %i.anb, %i.anc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.amy, i64 noundef %i.and) #20
  br label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i461

_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i461: ; preds = %bb.ij, %.lr.ph.i.i.i458
  %i.ane = getelementptr inbounds nuw i8, ptr %.05.i.i.i459, i64 24 ; 2 uses
  %.not.i.i.i462 = icmp eq ptr %i.ane, %.0.lcssa.i.i.i.i.i1421
  br i1 %.not.i.i.i462, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465, label %.lr.ph.i.i.i458, !llvm.loop !25

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465: ; preds = %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i461, %bb.ii
  %.not.i.i1.i466 = icmp eq ptr %.sroa.0484.01417, null
  br i1 %.not.i.i1.i466, label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467, label %bb.ik

bb.ik:                                            ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465
  %i.anf = ptrtoint ptr %.sroa.0484.01417 to i64
  %i.ang = sub i64 %.sink.i1419, %i.anf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0484.01417, i64 noundef %i.ang) #20
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467

bb.il:                                            ; preds = %bb.ab
  %i.anh = getelementptr inbounds i8, ptr %i.cs, i64 -8 ; 2 uses
  %i.ani = load i64, ptr %i.anh, align 8          ; 2 uses
  %.idx = mul i64 %i.ani, 24                      ; 2 uses
  %i.anj = icmp eq i64 %i.ani, 0
  br i1 %i.anj, label %.loopexit605, label %.preheader604.preheader

.preheader604.preheader:                          ; preds = %bb.il
  %i.ank = getelementptr inbounds i8, ptr %i.cs, i64 %.idx
  br label %.preheader604

.preheader604:                                    ; preds = %.preheader604.preheader, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit
  %i.anl = phi ptr [ %i.anm, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit ], [ %i.ank, %.preheader604.preheader ] ; 2 uses
  %i.anm = getelementptr inbounds i8, ptr %i.anl, i64 -24 ; 3 uses
  %i.ann = load ptr, ptr %i.anm, align 8          ; 3 uses
  %.not.i.i.i468 = icmp eq ptr %i.ann, null
  br i1 %.not.i.i.i468, label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit, label %bb.im

bb.im:                                            ; preds = %.preheader604
  %i.ano = getelementptr inbounds i8, ptr %i.anl, i64 -8
  %i.anp = load ptr, ptr %i.ano, align 8
  %i.anq = ptrtoint ptr %i.anp to i64
  %i.anr = ptrtoint ptr %i.ann to i64
  %i.ans = sub i64 %i.anq, %i.anr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ann, i64 noundef %i.ans) #20
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit:        ; preds = %.preheader604, %bb.im
  %i.ant = icmp eq ptr %i.anm, %i.cs
  br i1 %i.ant, label %.loopexit605, label %.preheader604

.loopexit605:                                     ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit, %bb.il
  %i.anu = add i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.anh, i64 noundef %i.anu) #20
  br label %bb.in

bb.in:                                            ; preds = %.loopexit605, %bb.ab
  %i.anv = icmp eq ptr %i.ag, null
  br i1 %i.anv, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.ag) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 1320) #20
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in
  %i.anw = load ptr, ptr %i.z, align 8
  %i.anx = getelementptr inbounds nuw [8 x i8], ptr %i.anw, i64 %indvars.iv1295
  store ptr null, ptr %i.anx, align 8
  br label %bb.iq

bb.iq:                                            ; preds = %bb.u, %bb.ip
  %.sroa.0527.2 = phi ptr [ %.sroa.0527.0989, %bb.u ], [ %i.amx, %bb.ip ]
  %.sroa.39.4 = phi ptr [ %.sroa.39.0990, %bb.u ], [ %.sroa.39.3, %bb.ip ]
  %.sroa.21.4 = phi ptr [ %.sroa.21.0991, %bb.u ], [ %.sroa.21.3, %bb.ip ]
  %.sroa.0533.4 = phi ptr [ %.sroa.0533.0992, %bb.u ], [ %.sroa.0533.3, %bb.ip ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.t
  %.sroa.0527.3 = phi ptr [ %i.bw, %bb.t ], [ %.sroa.0527.2, %bb.iq ]
  %.sroa.39.5 = phi ptr [ %.sroa.39.1, %bb.t ], [ %.sroa.39.4, %bb.iq ] ; 7 uses
  %.sroa.21.5 = phi ptr [ %.sroa.21.1, %bb.t ], [ %.sroa.21.4, %bb.iq ] ; 3 uses
  %.sroa.0533.5 = phi ptr [ %.sroa.0533.1, %bb.t ], [ %.sroa.0533.4, %bb.iq ] ; 11 uses
  %.2319 = phi i1 [ %.1318, %bb.t ], [ true, %bb.iq ] ; 2 uses
  %indvars.iv.next1296 = add nuw nsw i64 %indvars.iv1295, 1 ; 2 uses
  %i.any = load i32, ptr %i.d, align 8            ; 2 uses
  %i.anz = zext i32 %i.any to i64
  %i.aoa = icmp samesign ult i64 %indvars.iv.next1296, %i.anz
  br i1 %i.aoa, label %bb.e, label %._crit_edge1001, !llvm.loop !27

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467: ; preds = %bb.au, %bb.bf, %bb.cd, %bb.eh, %bb.dq, %bb.dh, %bb.ik, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465, %bb.ew, %.loopexit607, %.loopexit.split-lp608, %bb.ac, %bb.at, %bb.z
  %.sroa.39.6 = phi ptr [ %.sroa.39.0990, %bb.z ], [ %.sroa.21.2985, %.loopexit.split-lp608 ], [ %.sroa.39.13, %bb.at ], [ %.sroa.39.0990, %bb.ac ], [ %.sroa.39.2984.lcssa, %.loopexit607 ], [ %.sroa.39.13, %bb.ew ], [ %.sroa.39.13, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465 ], [ %.sroa.39.13, %bb.ik ], [ %.sroa.39.13, %bb.dh ], [ %.sroa.39.13, %bb.dq ], [ %.sroa.39.13, %bb.eh ], [ %.sroa.39.13, %bb.cd ], [ %.sroa.39.13, %bb.bf ], [ %.sroa.39.13, %bb.au ]
  %.sroa.0533.6 = phi ptr [ %.sroa.0533.0992, %bb.z ], [ %.sroa.0533.2986, %.loopexit.split-lp608 ], [ %.sroa.0533.13, %bb.at ], [ %.sroa.0533.0992, %bb.ac ], [ %.sroa.0533.2986, %.loopexit607 ], [ %.sroa.0533.13, %bb.ew ], [ %.sroa.0533.13, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465 ], [ %.sroa.0533.13, %bb.ik ], [ %.sroa.0533.13, %bb.dh ], [ %.sroa.0533.13, %bb.dq ], [ %.sroa.0533.13, %bb.eh ], [ %.sroa.0533.13, %bb.cd ], [ %.sroa.0533.13, %bb.bf ], [ %.sroa.0533.13, %bb.au ]
  %.pn424 = phi { ptr, i32 } [ %i.cq, %bb.z ], [ %lpad.loopexit.split-lp610, %.loopexit.split-lp608 ], [ %i.ho, %bb.at ], [ %i.ed, %bb.ac ], [ %lpad.loopexit609, %.loopexit607 ], [ %i.yi, %bb.ew ], [ %.pn405, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465 ], [ %.pn405, %bb.ik ], [ %i.qi, %bb.dh ], [ %i.sb, %bb.dq ], [ %i.us, %bb.eh ], [ %i.ne, %bb.cd ], [ %i.ji, %bb.bf ], [ %i.hp, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.jm

._crit_edge1001.thread:                           ; preds = %.loopexit617, %._crit_edge1001
  %.sroa.0533.0.lcssa1408 = phi ptr [ %.sroa.0533.5, %._crit_edge1001 ], [ %.sroa.21.61395, %.loopexit617 ] ; 2 uses
  %.sroa.39.0.lcssa1405 = phi ptr [ %.sroa.39.5, %._crit_edge1001 ], [ %.sroa.39.111393, %.loopexit617 ] ; 2 uses
  %i.aob = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aob, ptr noundef nonnull @.str.5)
          to label %bb.is unwind label %bb.it

bb.is:                                            ; preds = %._crit_edge1001.thread
  invoke void @__cxa_throw(ptr nonnull %i.aob, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.jq unwind label %bb.iu

bb.it:                                            ; preds = %._crit_edge1001.thread
  %i.aoc = landingpad { ptr, i32 }
          cleanup
end_hunk_1
