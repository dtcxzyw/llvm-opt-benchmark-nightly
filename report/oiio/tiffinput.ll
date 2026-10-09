Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tiffinput?download=true
inline.NumInlined: 5003
inline.NumDeleted: 1754
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  br i1 %.not.i.i165, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store ptr null, ptr %i.jb, align 8, !tbaa !249
  %i.jc = load <2 x ptr>, ptr %11, align 16, !tbaa !199
  store ptr null, ptr %i.fs, align 8, !tbaa !249
  store <2 x ptr> %i.jc, ptr %i.iz, align 8, !tbaa !199
  store ptr null, ptr %11, align 16, !tbaa !258
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store ptr %i.jd, ptr %i.fq, align 8, !tbaa !254
  br label %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit

bb.bw:                                            ; preds = %bb.bu
  invoke void @_ZNSt6vectorISt6futureIvESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr %i.iz, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit unwind label %bb.ce

_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit: ; preds = %bb.bv, %bb.bw
  %i.je = load ptr, ptr %i.fs, align 8, !tbaa !249 ; 8 uses
  %.not.i.i.i167 = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i167, label %_ZNSt14__basic_futureIvED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 4 uses
  %i.jg = load atomic i64, ptr %i.jf acquire, align 8 ; 2 uses
  %i.jh = icmp eq i64 %i.jg, 4294967297
  %i.ji = trunc i64 %i.jg to i32                  ; 2 uses
  br i1 %i.jh, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.jf, align 8, !tbaa !229
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 12
  store i32 0, ptr %i.jj, align 4, !tbaa !230
  %i.jk = load ptr, ptr %i.je, align 8, !tbaa !64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(16) %i.je) #36, !inline_history !10
  %i.jn = load ptr, ptr %i.je, align 8, !tbaa !64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(16) %i.je) #36, !inline_history !10
  br label %_ZNSt14__basic_futureIvED2Ev.exit

bb.bz:                                            ; preds = %bb.bx
  %i.jq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i = icmp eq i8 %i.jq, 0
  br i1 %.not.i.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jr = add nsw i32 %i.ji, -1
  store i32 %i.jr, ptr %i.jf, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i168

bb.cb:                                            ; preds = %bb.bz
  %i.js = atomicrmw volatile add ptr %i.jf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i168

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i168: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i169 = phi i32 [ %i.ji, %bb.ca ], [ %i.js, %bb.cb ]
  %i.jt = icmp eq i32 %.0.i.i.i.i.i169, 1
  br i1 %i.jt, label %bb.cc, label %_ZNSt14__basic_futureIvED2Ev.exit, !prof !165

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i168
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.je) #36
  br label %_ZNSt14__basic_futureIvED2Ev.exit

_ZNSt14__basic_futureIvED2Ev.exit:                ; preds = %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit, %bb.by, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i168, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit"

bb.cd:                                            ; preds = %bb.az
  %i.ju = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.13.32.copyload310340, ptr %5, align 8
  store i64 %i.gd, ptr %i.x, align 8
  br label %.body

bb.ce:                                            ; preds = %bb.bw
  %i.jv = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.13.32.copyload310340, ptr %5, align 8
  store i64 %i.gd, ptr %i.x, align 8
  call void @_ZNSt14__basic_futureIvED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #36
  br label %.body

.body:                                            ; preds = %bb.cd, %bb.bt, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, %bb.ce
  %.pn142 = phi { ptr, i32 } [ %i.jv, %bb.ce ], [ %i.ju, %bb.cd ], [ %eh.lpad-body.i.i.i.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i ], [ %.pn8.i, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.cx

bb.cf:                                            ; preds = %bb.ay
  %i.jw = load i32, ptr %i.fm, align 4, !tbaa !177
  %i.jx = load i32, ptr %i.aa, align 4, !tbaa !175
  %i.jy = load i32, ptr %i.q, align 4, !tbaa !190
  invoke void @_ZN11OpenImageIO4v3_19TIFFInput20uncompress_one_stripEPKvmPvmiiiPb(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %i.gf, i64 noundef %i.gk, ptr noundef %.sroa.13.32.copyload310340, i64 noundef %i.er, i32 noundef %i.jw, i32 noundef %i.jx, i32 noundef %i.jy, ptr noundef nonnull %i.c)
          to label %.noexc170 unwind label %bb.ch

.noexc170:                                        ; preds = %bb.cf
  %i.jz = load i16, ptr %i.bc, align 4, !tbaa !187
  %i.ka = icmp eq i16 %i.jz, 0
  br i1 %i.ka, label %bb.cg, label %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit"

bb.cg:                                            ; preds = %.noexc170
  %i.kb = load i8, ptr %i.be, align 8, !tbaa !211
  %cond.i.i = icmp eq i8 %i.kb, 2
  %or.cond.i.i = and i1 %i.fo, %cond.i.i
  br i1 %or.cond.i.i, label %iter.check677, label %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit"

iter.check677:                                    ; preds = %bb.cg
  br i1 %min.iters.check664, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check665

vector.main.loop.iter.check665:                   ; preds = %iter.check677
  br i1 %min.iters.check666, label %vec.epilog.ph681, label %vector.body669

vector.body669:                                   ; preds = %vector.main.loop.iter.check665, %vector.body669
  %index670 = phi i64 [ %index.next673, %vector.body669 ], [ 0, %vector.main.loop.iter.check665 ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.13.32.copyload310340, i64 %index670 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %wide.load671 = load <16 x i8>, ptr %i.kc, align 1, !tbaa !72
  %wide.load672 = load <16 x i8>, ptr %i.kd, align 1, !tbaa !72
  %i.ke = xor <16 x i8> %wide.load671, splat (i8 -1)
  %i.kf = xor <16 x i8> %wide.load672, splat (i8 -1)
  store <16 x i8> %i.ke, ptr %i.kc, align 1, !tbaa !72
  store <16 x i8> %i.kf, ptr %i.kd, align 1, !tbaa !72
  %index.next673 = add nuw i64 %index670, 32      ; 2 uses
  %i.kg = icmp eq i64 %index.next673, %n.vec668
  br i1 %i.kg, label %middle.block674, label %vector.body669, !llvm.loop !605

middle.block674:                                  ; preds = %vector.body669
  br i1 %cmp.n675, label %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit", label %vec.epilog.iter.check679

vec.epilog.iter.check679:                         ; preds = %middle.block674
  br i1 %min.epilog.iters.check680, label %.lr.ph.i.i.preheader, label %vec.epilog.ph681, !prof !208

vec.epilog.ph681:                                 ; preds = %vector.main.loop.iter.check665, %vec.epilog.iter.check679
  %vec.epilog.resume.val676 = phi i64 [ %n.vec668, %vec.epilog.iter.check679 ], [ 0, %vector.main.loop.iter.check665 ]
  br label %vec.epilog.vector.body683

vec.epilog.vector.body683:                        ; preds = %vec.epilog.vector.body683, %vec.epilog.ph681
  %index684 = phi i64 [ %vec.epilog.resume.val676, %vec.epilog.ph681 ], [ %index.next686, %vec.epilog.vector.body683 ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.13.32.copyload310340, i64 %index684 ; 2 uses
  %wide.load685 = load <4 x i8>, ptr %i.kh, align 1, !tbaa !72
  %i.ki = xor <4 x i8> %wide.load685, splat (i8 -1)
  store <4 x i8> %i.ki, ptr %i.kh, align 1, !tbaa !72
  %index.next686 = add nuw i64 %index684, 4       ; 2 uses
  %i.kj = icmp eq i64 %index.next686, %n.vec682
  br i1 %i.kj, label %vec.epilog.middle.block687, label %vec.epilog.vector.body683, !llvm.loop !606

vec.epilog.middle.block687:                       ; preds = %vec.epilog.vector.body683
  br i1 %cmp.n688, label %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check677, %vec.epilog.iter.check679, %vec.epilog.middle.block687
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check677 ], [ %n.vec668, %vec.epilog.iter.check679 ], [ %n.vec682, %vec.epilog.middle.block687 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.13.32.copyload310340, i64 %indvars.iv.i.i ; 2 uses
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !72
  %i.km = xor i8 %i.kl, -1
  store i8 %i.km, ptr %i.kk, align 1, !tbaa !72
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit", label %.lr.ph.i.i, !llvm.loop !607

bb.ch:                                            ; preds = %bb.cf
  %i.kn = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.13.32.copyload310340, ptr %5, align 8
  store i64 %i.gd, ptr %i.x, align 8
  br label %bb.cx

"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit": ; preds = %.lr.ph.i.i, %middle.block674, %vec.epilog.middle.block687, %bb.cg, %.noexc170, %_ZNSt14__basic_futureIvED2Ev.exit
  %.sroa.speculated6.i171 = call i64 @llvm.umin.i64(i64 %i.gd, i64 %i.ft) ; 2 uses
  %i.ko = sub i64 %i.gd, %.sroa.speculated6.i171  ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.13.32.copyload310340, i64 %.sroa.speculated6.i171 ; 2 uses
  %i.kq = load i32, ptr %i.q, align 4, !tbaa !190 ; 3 uses
  %i.kr = load i32, ptr %i.d, align 4, !tbaa !62
  %i.ks = add nsw i32 %i.kr, %i.kq                ; 4 uses
  store i32 %i.ks, ptr %i.d, align 4, !tbaa !62
  %i.kt = add i64 %.0127342, 1
  %i.ku = add nsw i32 %i.kq, %i.ks
  %.not138 = icmp sgt i32 %i.ku, %.sroa.speculated226
  br i1 %.not138, label %.loopexit258, label %bb.aq, !llvm.loop !608

bb.ci:                                            ; preds = %bb.aj
  %i.kv = load i32, ptr %i.d, align 4, !tbaa !62  ; 3 uses
  %i.kw = icmp slt i32 %i.kv, %.sroa.speculated226
  br i1 %i.kw, label %.lr.ph307, label %.loopexit258

.lr.ph307:                                        ; preds = %bb.ci
  %i.kx = load i32, ptr %i.m, align 8, !tbaa !176
  %i.ky = add i32 %i.kx, -1
  %i.kz = load i32, ptr %i.q, align 4, !tbaa !190 ; 3 uses
  %i.la = add i32 %i.ky, %i.kz
  %i.lb = sdiv i32 %i.la, %i.kz
  %i.lc = icmp sgt i32 %.549, 0
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.le = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.lg = sext i32 %.549 to i64                   ; 7 uses
  %.not34.i = icmp eq i32 %.549, 0
  %wide.trip.count = zext nneg i32 %.549 to i64
  %i.lh = add nsw i64 %i.lg, -1
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph307, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit
  %i.li = phi i32 [ %i.kz, %.lr.ph307 ], [ %i.qu, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 2 uses
  %i.lj = phi i32 [ %i.kv, %.lr.ph307 ], [ %i.qw, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 3 uses
  %.0125305 = phi i64 [ 0, %.lr.ph307 ], [ %i.qx, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 2 uses
  %i.lk = phi ptr [ %i.w, %.lr.ph307 ], [ %i.qt, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 12 uses
  %i.ll = phi i64 [ %i.y, %.lr.ph307 ], [ %i.qs, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 5 uses
  %i.lm = sub i32 %.sroa.speculated226, %i.lj
  %.sroa.speculated209 = call i32 @llvm.smin.i32(i32 %i.li, i32 %i.lm)
  %i.ln = add i32 %i.li, %i.lj
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.sroa.speculated226, i32 %i.ln)
  %i.lo = load i32, ptr %i.aa, align 4, !tbaa !175
  %i.lp = mul i32 %i.lo, %.
  %i.lq = sub i32 %.sroa.speculated, %i.lj
  %i.lr = mul i32 %i.lp, %i.lq                    ; 2 uses
  %i.ls = sext i32 %i.lr to i64
  %i.lt = load i32, ptr %i.bf, align 4, !tbaa !154
  %narrow.i177 = call i32 @llvm.smax.i32(i32 %i.lt, i32 1)
  %spec.select.i178 = zext nneg i32 %narrow.i177 to i64
  %i.lu = load i8, ptr %i.bh, align 1, !tbaa !195
  %i.lv = zext i8 %i.lu to i64
  %i.lw = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.be) #36
  %i.lx = mul i64 %i.lw, %i.lv
  %i.ly = mul i64 %i.lx, %spec.select.i178
  %i.lz = mul i64 %i.ly, %i.ls                    ; 5 uses
  br i1 %i.lc, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.cr, %bb.cj
  %i.ma = load i16, ptr %i.bc, align 4, !tbaa !187
  %i.mb = icmp eq i16 %i.ma, 0
  br i1 %i.mb, label %bb.cs, label %_ZN11OpenImageIO4v3_19TIFFInput18invert_photometricEiPv.exit

.lr.ph:                                           ; preds = %bb.cj, %bb.cr
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cr ], [ 0, %bb.cj ] ; 3 uses
  %i.mc = load i32, ptr %i.d, align 4, !tbaa !62
  %i.md = load i32, ptr %i.k, align 4, !tbaa !181
  %i.me = sub nsw i32 %i.mc, %i.md
  %i.mf = load i32, ptr %i.q, align 4, !tbaa !190
  %i.mg = sdiv i32 %i.me, %i.mf
  %i.mh = trunc i64 %indvars.iv to i32
  %i.mi = mul i32 %i.lb, %i.mh
  %i.mj = add nsw i32 %i.mg, %i.mi
  %i.mk = load ptr, ptr %i.ld, align 8, !tbaa !128
  %i.ml = mul i64 %i.lz, %indvars.iv
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ml
  %i.mn = invoke i64 @TIFFReadEncodedStrip(ptr noundef %i.mk, i32 noundef %i.mj, ptr noundef %i.mm, i64 noundef %i.lz)
          to label %bb.ck unwind label %bb.co

bb.ck:                                            ; preds = %.lr.ph
  %i.mo = icmp slt i64 %i.mn, 0
  br i1 %i.mo, label %bb.cl, label %bb.cr

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  invoke void @_ZN11OpenImageIO4v3_19TIFFInput20oiio_tiff_last_errorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(432) %0)
          to label %bb.cm unwind label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  %i.mp = load i64, ptr %i.le, align 8, !tbaa !71
  %.not134 = icmp eq i64 %i.mp, 0
  %i.mq = load ptr, ptr %12, align 8
  %spec.select256 = select i1 %.not134, ptr @.str.88, ptr %i.mq
  store ptr %spec.select256, ptr %i.g, align 8, !tbaa !155
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.94, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.cn unwind label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  store i8 0, ptr %i.c, align 1, !tbaa !164
  %i.mr = load ptr, ptr %12, align 8, !tbaa !133  ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.lf
  br i1 %i.ms, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.cn
  %i.mt = load i64, ptr %i.lf, align 8, !tbaa !72
  %i.mu = add i64 %i.mt, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mu) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.cr

bb.co:                                            ; preds = %.lr.ph
  %i.mv = landingpad { ptr, i32 }
          cleanup
  store ptr %i.lk, ptr %5, align 8
  store i64 %i.ll, ptr %i.x, align 8
  br label %bb.cx

bb.cp:                                            ; preds = %bb.cl
  %i.mw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.lk, ptr %5, align 8
  store i64 %i.ll, ptr %i.x, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

bb.cq:                                            ; preds = %bb.cm
  %i.mx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.lk, ptr %5, align 8
  store i64 %i.ll, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  %i.my = load ptr, ptr %12, align 8, !tbaa !133  ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.lf
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.cq
  %i.na = load i64, ptr %i.lf, align 8, !tbaa !72
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182, %bb.cp
  %.pn = phi { ptr, i32 } [ %i.mw, %bb.cp ], [ %i.mx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182 ], [ %i.mx, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.cx

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %bb.ck
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !609

bb.cs:                                            ; preds = %._crit_edge
  %i.nc = mul nsw i32 %i.lr, %.549                ; 4 uses
  %i.nd = load i8, ptr %i.be, align 8, !tbaa !211
  %cond.i = icmp eq i8 %i.nd, 2
  %i.ne = icmp sgt i32 %i.nc, 0
  %or.cond.i = and i1 %i.ne, %cond.i
  br i1 %or.cond.i, label %iter.check651, label %_ZN11OpenImageIO4v3_19TIFFInput18invert_photometricEiPv.exit

iter.check651:                                    ; preds = %bb.cs
  %wide.trip.count.i = zext nneg i32 %i.nc to i64 ; 6 uses
  %min.iters.check638 = icmp ult i32 %i.nc, 4
  br i1 %min.iters.check638, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check639

vector.main.loop.iter.check639:                   ; preds = %iter.check651
  %min.iters.check640 = icmp ult i32 %i.nc, 32
  br i1 %min.iters.check640, label %vec.epilog.ph655, label %vector.ph641

vector.ph641:                                     ; preds = %vector.main.loop.iter.check639
  %i.nf = and i64 %wide.trip.count.i, 28
  %n.vec642 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body643

vector.body643:                                   ; preds = %vector.ph641, %vector.body643
  %index644 = phi i64 [ 0, %vector.ph641 ], [ %index.next647, %vector.body643 ] ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lk, i64 %index644 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16 ; 2 uses
  %wide.load645 = load <16 x i8>, ptr %i.ng, align 1, !tbaa !72
  %wide.load646 = load <16 x i8>, ptr %i.nh, align 1, !tbaa !72
  %i.ni = xor <16 x i8> %wide.load645, splat (i8 -1)
  %i.nj = xor <16 x i8> %wide.load646, splat (i8 -1)
  store <16 x i8> %i.ni, ptr %i.ng, align 1, !tbaa !72
  store <16 x i8> %i.nj, ptr %i.nh, align 1, !tbaa !72
  %index.next647 = add nuw i64 %index644, 32      ; 2 uses
  %i.nk = icmp eq i64 %index.next647, %n.vec642
  br i1 %i.nk, label %middle.block648, label %vector.body643, !llvm.loop !610

middle.block648:                                  ; preds = %vector.body643
  %cmp.n649 = icmp eq i64 %n.vec642, %wide.trip.count.i
  br i1 %cmp.n649, label %_ZN11OpenImageIO4v3_19TIFFInput18invert_photometricEiPv.exit, label %vec.epilog.iter.check653

vec.epilog.iter.check653:                         ; preds = %middle.block648
  %min.epilog.iters.check654 = icmp eq i64 %i.nf, 0
  br i1 %min.epilog.iters.check654, label %.lr.ph.i.preheader, label %vec.epilog.ph655, !prof !208

vec.epilog.ph655:                                 ; preds = %vector.main.loop.iter.check639, %vec.epilog.iter.check653
  %vec.epilog.resume.val650 = phi i64 [ %n.vec642, %vec.epilog.iter.check653 ], [ 0, %vector.main.loop.iter.check639 ]
  %n.vec656 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body657

vec.epilog.vector.body657:                        ; preds = %vec.epilog.vector.body657, %vec.epilog.ph655
  %index658 = phi i64 [ %vec.epilog.resume.val650, %vec.epilog.ph655 ], [ %index.next660, %vec.epilog.vector.body657 ] ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lk, i64 %index658 ; 2 uses
  %wide.load659 = load <4 x i8>, ptr %i.nl, align 1, !tbaa !72
  %i.nm = xor <4 x i8> %wide.load659, splat (i8 -1)
  store <4 x i8> %i.nm, ptr %i.nl, align 1, !tbaa !72
  %index.next660 = add nuw i64 %index658, 4       ; 2 uses
  %i.nn = icmp eq i64 %index.next660, %n.vec656
  br i1 %i.nn, label %vec.epilog.middle.block661, label %vec.epilog.vector.body657, !llvm.loop !611

vec.epilog.middle.block661:                       ; preds = %vec.epilog.vector.body657
  %cmp.n662 = icmp eq i64 %n.vec656, %wide.trip.count.i
  br i1 %cmp.n662, label %_ZN11OpenImageIO4v3_19TIFFInput18invert_photometricEiPv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check651, %vec.epilog.iter.check653, %vec.epilog.middle.block661
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check651 ], [ %n.vec642, %vec.epilog.iter.check653 ], [ %n.vec656, %vec.epilog.middle.block661 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.lk, i64 %indvars.iv.i ; 2 uses
  %i.np = load i8, ptr %i.no, align 1, !tbaa !72
  %i.nq = xor i8 %i.np, -1
  store i8 %i.nq, ptr %i.no, align 1, !tbaa !72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_19TIFFInput18invert_photometricEiPv.exit, label %.lr.ph.i, !llvm.loop !612

_ZN11OpenImageIO4v3_19TIFFInput18invert_photometricEiPv.exit: ; preds = %.lr.ph.i, %middle.block648, %vec.epilog.middle.block661, %bb.cs, %._crit_edge
  %i.nr = load i8, ptr %i.eb, align 1, !tbaa !188, !range !148, !noundef !149
  %i.ns = trunc nuw i8 %i.nr to i1
  br i1 %i.ns, label %bb.ct, label %_ZN11OpenImageIO4v3_19TIFFInput18invert_photometricEiPv.exit._ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit_crit_edge

_ZN11OpenImageIO4v3_19TIFFInput18invert_photometricEiPv.exit._ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit_crit_edge: ; preds = %_ZN11OpenImageIO4v3_19TIFFInput18invert_photometricEiPv.exit
  %.pre = mul i64 %i.lz, %i.lg
  br label %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit

bb.ct:                                            ; preds = %_ZN11OpenImageIO4v3_19TIFFInput18invert_photometricEiPv.exit
  %i.nt = mul i64 %.0125305, %i.lg
  %i.nu = mul i64 %i.nt, %i.lz                    ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.nu ; 2 uses
  %i.nw = mul i64 %i.lz, %i.lg                    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nv, ptr align 1 %i.lk, i64 %i.nw, i1 false)
  %i.nx = load i32, ptr %i.aa, align 4, !tbaa !175
  %i.ny = mul i32 %i.nx, %.sroa.speculated209     ; 2 uses
  %i.nz = sext i32 %i.ny to i64                   ; 4 uses
  %i.oa = load i32, ptr %i.bf, align 4, !tbaa !154
  %narrow.i.i.i = call i32 @llvm.smax.i32(i32 %i.oa, i32 1)
  %spec.select.i.i.i = zext nneg i32 %narrow.i.i.i to i64 ; 5 uses
  %i.ob = load i8, ptr %i.bh, align 1, !tbaa !195
  %i.oc = zext i8 %i.ob to i64                    ; 5 uses
  %i.od = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.be) #36 ; 5 uses
  %i.oe = mul i64 %i.od, %i.oc
  %i.of = mul i64 %i.oe, %spec.select.i.i.i       ; 14 uses
  %.not33.i = icmp eq i32 %i.ny, 0
  %.not35.i = icmp eq i64 %i.of, 0
  %i.og = select i1 %.not33.i, i1 true, i1 %.not34.i
  %or.cond = select i1 %i.og, i1 true, i1 %.not35.i
  br i1 %or.cond, label %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit, label %.preheader24.i.preheader

.preheader24.i.preheader:                         ; preds = %bb.ct
  %i.oh = mul i64 %i.od, %i.lg
  %i.oi = mul i64 %i.oh, %i.oc
  %i.oj = mul i64 %i.oi, %spec.select.i.i.i       ; 2 uses
  %i.ok = mul i64 %i.od, %i.oc
  %i.ol = mul i64 %i.ok, %spec.select.i.i.i
  %i.om = mul i64 %i.lh, %i.nz
  %i.on = add nsw i64 %i.om, 1
  %i.oo = mul i64 %i.od, %i.on
  %i.op = mul i64 %i.oo, %i.oc
  %i.oq = mul i64 %i.op, %spec.select.i.i.i
  %i.or = mul i64 %i.od, %i.nz
  %i.os = mul i64 %i.or, %i.oc
  %i.ot = mul i64 %i.os, %spec.select.i.i.i
  %i.ou = getelementptr i8, ptr %i.lk, i64 %i.oj
  %i.ov = getelementptr i8, ptr %i.fa, i64 %i.nu
  %i.ow = getelementptr i8, ptr %i.fa, i64 %i.nu
  %i.ox = getelementptr i8, ptr %i.ow, i64 %i.oq
  %min.iters.check = icmp ult i64 %i.of, 4
  %i.oy = or i64 %i.ot, %i.of
  %i.oz = icmp slt i64 %i.oy, 0
  %min.iters.check631 = icmp ult i64 %i.of, 32
  %i.pa = and i64 %i.of, 28
  %n.vec = and i64 %i.of, -32                     ; 4 uses
  %cmp.n = icmp eq i64 %i.of, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.pa, 0
  %n.vec633 = and i64 %i.of, -4                   ; 3 uses
  %cmp.n637 = icmp eq i64 %i.of, %n.vec633
  %xtraiter = and i64 %i.of, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader24.i

.preheader24.i:                                   ; preds = %.preheader24.i.preheader, %._crit_edge27.i
  %.02028.i = phi i64 [ %i.qa, %._crit_edge27.i ], [ 0, %.preheader24.i.preheader ] ; 5 uses
  %i.pb = mul i64 %i.oj, %.02028.i                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.lk, i64 %i.pb
  %scevgep627 = getelementptr i8, ptr %i.ou, i64 %i.pb
  %i.pc = mul i64 %i.ol, %.02028.i                ; 2 uses
  %scevgep628 = getelementptr i8, ptr %i.ov, i64 %i.pc
  %scevgep629 = getelementptr i8, ptr %i.ox, i64 %i.pc
  %i.pd = mul i64 %.02028.i, %i.lg
  %bound0 = icmp ult ptr %scevgep, %scevgep629
  %bound1 = icmp ult ptr %scevgep628, %scevgep627
  %found.conflict = and i1 %bound0, %bound1
  %i.pe = or i1 %found.conflict, %i.oz
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader24.i
  %.01926.i = phi i64 [ 0, %.preheader24.i ], [ %i.qb, %._crit_edge.i ] ; 3 uses
  %i.pf = mul i64 %.01926.i, %i.nz
  %i.pg = add i64 %i.pf, %.02028.i
  %i.ph = mul i64 %i.pg, %i.of
  %i.pi = getelementptr i8, ptr %i.nv, i64 %i.ph  ; 7 uses
  %i.pj = add i64 %.01926.i, %i.pd
  %i.pk = mul i64 %i.pj, %i.of
  %i.pl = getelementptr i8, ptr %i.lk, i64 %i.pk  ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.pe
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check631, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.pm = getelementptr i8, ptr %i.pi, i64 %index ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pm, i64 16
  %wide.load = load <16 x i8>, ptr %i.pm, align 1, !tbaa !72, !alias.scope !629
  %wide.load632 = load <16 x i8>, ptr %i.pn, align 1, !tbaa !72, !alias.scope !629
  %i.po = getelementptr i8, ptr %i.pl, i64 %index ; 2 uses
  %i.pp = getelementptr i8, ptr %i.po, i64 16
  store <16 x i8> %wide.load, ptr %i.po, align 1, !tbaa !72, !alias.scope !630, !noalias !629
  store <16 x i8> %wide.load632, ptr %i.pp, align 1, !tbaa !72, !alias.scope !630, !noalias !629
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.pq = icmp eq i64 %index.next, %n.vec
  br i1 %i.pq, label %middle.block, label %vector.body, !llvm.loop !616

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !208

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index634 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next636, %vec.epilog.vector.body ] ; 3 uses
  %i.pr = getelementptr i8, ptr %i.pi, i64 %index634
  %wide.load635 = load <4 x i8>, ptr %i.pr, align 1, !tbaa !72, !alias.scope !629
  %i.ps = getelementptr i8, ptr %i.pl, i64 %index634
  store <4 x i8> %wide.load635, ptr %i.ps, align 1, !tbaa !72, !alias.scope !630, !noalias !629
  %index.next636 = add nuw i64 %index634, 4       ; 2 uses
  %i.pt = icmp eq i64 %index.next636, %n.vec633
  br i1 %i.pt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !617

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n637, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.025.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec633, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.025.i.prol = phi i64 [ %i.px, %vec.epilog.scalar.ph.prol ], [ %.025.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.pu = getelementptr i8, ptr %i.pi, i64 %.025.i.prol
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !72
  %i.pw = getelementptr i8, ptr %i.pl, i64 %.025.i.prol
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !72
  %i.px = add nuw i64 %.025.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !618

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.025.i.unr = phi i64 [ %.025.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.px, %vec.epilog.scalar.ph.prol ]
  %i.py = sub i64 %.025.i.ph, %i.of
  %i.pz = icmp ugt i64 %i.py, -4
  br i1 %i.pz, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge27.i:                                  ; preds = %._crit_edge.i
  %i.qa = add nuw i64 %.02028.i, 1                ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.qa, %i.nz
  br i1 %exitcond37.not.i, label %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit, label %.preheader24.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.qb = add nuw i64 %.01926.i, 1                ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.qb, %i.lg
  br i1 %exitcond36.not.i, label %._crit_edge27.i, label %iter.check, !llvm.loop !5

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.025.i = phi i64 [ %i.qr, %vec.epilog.scalar.ph ], [ %.025.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.qc = getelementptr i8, ptr %i.pi, i64 %.025.i
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !72
  %i.qe = getelementptr i8, ptr %i.pl, i64 %.025.i
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !72
  %i.qf = add nuw i64 %.025.i, 1                  ; 2 uses
  %i.qg = getelementptr i8, ptr %i.pi, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !72
  %i.qi = getelementptr i8, ptr %i.pl, i64 %i.qf
  store i8 %i.qh, ptr %i.qi, align 1, !tbaa !72
  %i.qj = add nuw i64 %.025.i, 2                  ; 2 uses
  %i.qk = getelementptr i8, ptr %i.pi, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !72
  %i.qm = getelementptr i8, ptr %i.pl, i64 %i.qj
  store i8 %i.ql, ptr %i.qm, align 1, !tbaa !72
  %i.qn = add nuw i64 %.025.i, 3                  ; 2 uses
  %i.qo = getelementptr i8, ptr %i.pi, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !72
  %i.qq = getelementptr i8, ptr %i.pl, i64 %i.qn
  store i8 %i.qp, ptr %i.qq, align 1, !tbaa !72
  %i.qr = add nuw i64 %.025.i, 4                  ; 2 uses
  %exitcond.not.i187.3 = icmp eq i64 %i.qr, %i.of
  br i1 %exitcond.not.i187.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !619

_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit: ; preds = %._crit_edge27.i, %_ZN11OpenImageIO4v3_19TIFFInput18invert_photometricEiPv.exit._ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit_crit_edge, %bb.ct
  %.pre-phi = phi i64 [ %.pre, %_ZN11OpenImageIO4v3_19TIFFInput18invert_photometricEiPv.exit._ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit_crit_edge ], [ %i.nw, %bb.ct ], [ %i.nw, %._crit_edge27.i ]
  %.sroa.speculated6.i188 = call i64 @llvm.umin.i64(i64 %i.ll, i64 %.pre-phi) ; 2 uses
  %i.qs = sub i64 %i.ll, %.sroa.speculated6.i188  ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.sroa.speculated6.i188 ; 2 uses
  %i.qu = load i32, ptr %i.q, align 4, !tbaa !190 ; 2 uses
  %i.qv = load i32, ptr %i.d, align 4, !tbaa !62
  %i.qw = add nsw i32 %i.qv, %i.qu                ; 4 uses
  store i32 %i.qw, ptr %i.d, align 4, !tbaa !62
  %i.qx = add i64 %.0125305, 1
  %i.qy = icmp slt i32 %i.qw, %.sroa.speculated226
  br i1 %i.qy, label %bb.cj, label %.loopexit258, !llvm.loop !620

.loopexit258:                                     ; preds = %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit", %bb.ci, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader
  %i.qz = phi i32 [ %i.ks, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ], [ %i.fg, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader ], [ %i.kv, %bb.ci ], [ %i.qw, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 3 uses
  %storemerge365 = phi ptr [ %i.kp, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ], [ %i.w, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader ], [ %i.w, %bb.ci ], [ %i.qt, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 2 uses
  %storemerge = phi i64 [ %i.ko, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ], [ %i.y, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader ], [ %i.y, %bb.ci ], [ %i.qs, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 2 uses
  %.sroa.0218.1 = phi ptr [ %i.ff, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ], [ %i.ff, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader ], [ null, %bb.ci ], [ null, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 4 uses
  %i.ra = load i32, ptr %i.k, align 4, !tbaa !181
  %i.rb = sub nsw i32 %i.qz, %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.rb, ptr %i.rc, align 4, !tbaa !151
  %.not = icmp slt i32 %i.qz, %.sroa.speculated226
  br i1 %.not, label %.lr.ph357, label %._crit_edge358

.lr.ph357:                                        ; preds = %.loopexit258, %bb.cw
  %i.rd = phi i32 [ %i.rj, %bb.cw ], [ %i.qz, %.loopexit258 ]
  %.sroa.01.0.copyload347355 = phi ptr [ %i.rh, %bb.cw ], [ %storemerge365, %.loopexit258 ] ; 3 uses
  %.sroa.2.0.copyload351354 = phi i64 [ %i.rg, %bb.cw ], [ %storemerge, %.loopexit258 ] ; 3 uses
  %i.re = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19TIFFInput27read_native_scanline_lockedEiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 poison, i32 poison, i32 noundef %i.rd, ptr %.sroa.01.0.copyload347355, i64 poison)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %.lr.ph357
  br i1 %i.re, label %bb.cw, label %.critedge156

bb.cv:                                            ; preds = %.lr.ph357
  %i.rf = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.01.0.copyload347355, ptr %5, align 8
  store i64 %.sroa.2.0.copyload351354, ptr %i.x, align 8
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %.sroa.speculated6.i192 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload351354, i64 %i.ea) ; 2 uses
  %i.rg = sub i64 %.sroa.2.0.copyload351354, %.sroa.speculated6.i192 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload347355, i64 %.sroa.speculated6.i192 ; 2 uses
  %i.ri = load i32, ptr %i.d, align 4, !tbaa !62
  %i.rj = add nsw i32 %i.ri, 1                    ; 3 uses
  store i32 %i.rj, ptr %i.d, align 4, !tbaa !62
  %.not366 = icmp slt i32 %i.rj, %.sroa.speculated226
  br i1 %.not366, label %.lr.ph357, label %._crit_edge358, !llvm.loop !621

._crit_edge358:                                   ; preds = %bb.cw, %.loopexit258
  %.sroa.2.0.copyload351.lcssa = phi i64 [ %storemerge, %.loopexit258 ], [ %i.rg, %bb.cw ]
  %.sroa.01.0.copyload347.lcssa = phi ptr [ %storemerge365, %.loopexit258 ], [ %i.rh, %bb.cw ]
  store ptr %.sroa.01.0.copyload347.lcssa, ptr %5, align 8
  store i64 %.sroa.2.0.copyload351.lcssa, ptr %i.x, align 8
  invoke void @_ZN11OpenImageIO4v3_18task_set4waitEb(ptr noundef nonnull align 8 dereferenceable(40) %9, i1 noundef zeroext false)
          to label %.critedge156 unwind label %bb.ap

.critedge156:                                     ; preds = %bb.cu, %._crit_edge358
  %i.rk = phi i1 [ true, %._crit_edge358 ], [ false, %bb.cu ]
  %.not.i196 = icmp eq ptr %i.fa, null
  br i1 %.not.i196, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.critedge156
  call void @_ZdaPv(ptr noundef nonnull %i.fa) #37
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %.critedge156, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %.not.i197 = icmp eq ptr %.sroa.0218.1, null
  br i1 %.not.i197, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit199, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i198

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i198: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0218.1) #37
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit199

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit199: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
end_hunk_0
