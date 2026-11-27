Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/formatter?download=true
inline.NumInlined: 3193
inline.NumDeleted: 1113
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7jsonnet8internal8Unparser7unparseEPKNS0_3ASTEb:bb.a
  %i.ic = tail call ptr @__dynamic_cast(ptr nonnull %.tr491, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal9ImportstrE, i64 0) #27 ; 2 uses
  %.not302 = icmp eq ptr %i.ic, null
  br i1 %.not302, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.id = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.ie = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.id, ptr noundef nonnull @.str.61, i64 noundef 9) ; 0 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 128
  br label %tailrecurse.backedge

bb.aw:                                            ; preds = %bb.au
  %i.ig = tail call ptr @__dynamic_cast(ptr nonnull %.tr491, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal9ImportbinE, i64 0) #27 ; 2 uses
  %.not303 = icmp eq ptr %i.ig, null
  br i1 %.not303, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ih = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.ii = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, ptr noundef nonnull @.str.62, i64 noundef 9) ; 0 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 128
  br label %tailrecurse.backedge

bb.ay:                                            ; preds = %bb.aw
  %i.ik = tail call ptr @__dynamic_cast(ptr nonnull %.tr491, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal7InSuperE, i64 0) #27 ; 4 uses
  %.not304 = icmp eq ptr %i.ik, null
  br i1 %.not304, label %bb.ba, label %bb.az

common.ret856:                                    ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, %bb.ao, %._crit_edge554, %bb.bx, %bb.dn, %bb.dx, %bb.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, %._crit_edge565, %bb.bz, %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, %bb.cs, %bb.dd, %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, %bb.bm, %bb.aj, %bb.w, %bb.m, %bb.n, %bb.ei, %bb.ec, %bb.az
  ret void

bb.az:                                            ; preds = %bb.ay
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 128
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !190
  tail call void @_ZN7jsonnet8internal8Unparser7unparseEPKNS0_3ASTEb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.im, i1 noundef zeroext true)
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 136
  %i.io = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  tail call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.io, ptr noundef nonnull align 8 dereferenceable(24) %i.in, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.ip = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.iq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef nonnull @.str.18, i64 noundef 2) ; 0 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 160
  %i.is = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  tail call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %i.ir, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.it = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.iu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.it, ptr noundef nonnull @.str.63, i64 noundef 5) ; 0 uses
  br label %common.ret856

bb.ba:                                            ; preds = %bb.ay
  %i.iv = tail call ptr @__dynamic_cast(ptr nonnull %.tr491, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal5IndexE, i64 0) #27 ; 14 uses
  %.not305 = icmp eq ptr %i.iv, null
  br i1 %.not305, label %bb.bn, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 128
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !192
  tail call void @_ZN7jsonnet8internal8Unparser7unparseEPKNS0_3ASTEb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.ix, i1 noundef zeroext %.tr492)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 136
  %i.iz = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  tail call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull align 8 dereferenceable(24) %i.iy, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 264 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !193
  %.not338 = icmp eq ptr %i.jb, null
  %i.jc = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100 ; 2 uses
  br i1 %.not338, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, ptr noundef nonnull @.str.64, i64 noundef 1) ; 0 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.iv, i64 240
  %i.jf = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  tail call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr noundef nonnull align 8 dereferenceable(24) %i.je, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.jg = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.jh = load ptr, ptr %i.ja, align 8, !tbaa !193 ; 2 uses
  %.val371 = load ptr, ptr %i.jh, align 8, !tbaa !143
  %i.ji = getelementptr i8, ptr %i.jh, i64 8
  %.val372 = load i64, ptr %i.ji, align 8, !tbaa !144
  call fastcc void @_ZN7jsonnet8internalL10unparse_idB5cxx11EPKNS0_10IdentifierE(ptr dead_on_unwind noalias writable align 8 %5, ptr %.val371, i64 %.val372)
  %i.jj = load ptr, ptr %5, align 8, !tbaa !47
  %i.jk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !48
  %i.jm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jg, ptr noundef %i.jj, i64 noundef %i.jl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit388 unwind label %bb.bd ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit388: ; preds = %bb.bc
  %i.jn = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit388
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !49
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %common.ret856

bb.bd:                                            ; preds = %bb.bc
  %i.js = landingpad { ptr, i32 }
          cleanup
  %i.jt = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392: ; preds = %bb.bd
  %i.jw = load i64, ptr %i.ju, align 8, !tbaa !49
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %common.resume

bb.be:                                            ; preds = %bb.bb
  %i.jy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, ptr noundef nonnull @.str.47, i64 noundef 1) ; 0 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.iv, i64 160
  %i.ka = load i8, ptr %i.jz, align 8, !tbaa !194, !range !81, !noundef !82
  %i.kb = trunc nuw i8 %i.ka to i1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.iv, i64 168
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !195 ; 3 uses
  br i1 %i.kb, label %bb.bf, label %.sink.split

bb.bf:                                            ; preds = %bb.be
  %.not339 = icmp eq ptr %i.kd, null
  br i1 %.not339, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZN7jsonnet8internal8Unparser7unparseEPKNS0_3ASTEb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %i.kd, i1 noundef zeroext false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ke = getelementptr inbounds nuw i8, ptr %i.iv, i64 176
  %i.kf = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  tail call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull align 8 dereferenceable(24) %i.ke, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.kg = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.kh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull @.str.50, i64 noundef 1) ; 0 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.iv, i64 200
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !196 ; 2 uses
  %.not340 = icmp eq ptr %i.kj, null
  br i1 %.not340, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @_ZN7jsonnet8internal8Unparser7unparseEPKNS0_3ASTEb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %i.kj, i1 noundef zeroext false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.kk = getelementptr inbounds nuw i8, ptr %i.iv, i64 232 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !197
  %.not341 = icmp eq ptr %i.kl, null
  br i1 %.not341, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.km = getelementptr inbounds nuw i8, ptr %i.iv, i64 208
  %i.kn = getelementptr inbounds nuw i8, ptr %i.iv, i64 216
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !32
  %i.kp = load ptr, ptr %i.km, align 8, !tbaa !33
  %.not342 = icmp eq ptr %i.ko, %i.kp
  br i1 %.not342, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kq = getelementptr inbounds nuw i8, ptr %i.iv, i64 208
  %i.kr = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  tail call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.kr, ptr noundef nonnull align 8 dereferenceable(24) %i.kq, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.ks = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.kt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ks, ptr noundef nonnull @.str.50, i64 noundef 1) ; 0 uses
  %i.ku = load ptr, ptr %i.kk, align 8, !tbaa !197 ; 2 uses
  %.not343 = icmp eq ptr %i.ku, null
  br i1 %.not343, label %bb.bm, label %.sink.split

.sink.split:                                      ; preds = %bb.be, %bb.bl
  %.sink = phi ptr [ %i.ku, %bb.bl ], [ %i.kd, %bb.be ]
  tail call void @_ZN7jsonnet8internal8Unparser7unparseEPKNS0_3ASTEb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %.sink, i1 noundef zeroext false)
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split, %bb.bk, %bb.bl
  %i.kv = getelementptr inbounds nuw i8, ptr %i.iv, i64 240
  %i.kw = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  tail call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, ptr noundef nonnull align 8 dereferenceable(24) %i.kv, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.kx = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.ky = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef nonnull @.str.48, i64 noundef 1) ; 0 uses
  br label %common.ret856

bb.bn:                                            ; preds = %bb.ba
  %i.kz = tail call ptr @__dynamic_cast(ptr nonnull %.tr491, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal5LocalE, i64 0) #27 ; 4 uses
  %.not306 = icmp eq ptr %i.kz, null
  br i1 %.not306, label %bb.bu, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.la = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.lb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.la, ptr noundef nonnull @.str.65, i64 noundef 5) ; 0 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 128
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !102 ; 12 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 136
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !102 ; 3 uses
  %.not488549 = icmp eq ptr %i.ld, %i.lf
  br i1 %.not488549, label %._crit_edge554, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %.pre608 = load ptr, ptr %0, align 8, !tbaa !99
  tail call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %.pre608, ptr noundef nonnull align 8 dereferenceable(24) %i.ld, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.li = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !198 ; 2 uses
  %.val369.peel = load ptr, ptr %i.lk, align 8, !tbaa !143
  %i.ll = getelementptr i8, ptr %i.lk, i64 8
  %.val370.peel = load i64, ptr %i.ll, align 8, !tbaa !144
  call fastcc void @_ZN7jsonnet8internalL10unparse_idB5cxx11EPKNS0_10IdentifierE(ptr dead_on_unwind noalias writable align 8 %6, ptr %.val369.peel, i64 %.val370.peel)
  %i.lm = load ptr, ptr %6, align 8, !tbaa !47
  %i.ln = load i64, ptr %i.lg, align 8, !tbaa !48
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.li, ptr noundef %i.lm, i64 noundef %i.ln)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395.peel: ; preds = %bb.bp
  %i.lp = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.lh
  br i1 %i.lq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i397.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395.peel
  %i.lr = load i64, ptr %i.lh, align 8, !tbaa !49
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i397.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395.peel
  %16 = load i64, ptr %i.lg, align 8, !tbaa !48
  %17 = icmp ult i64 %16, 16
  call void @llvm.assume(i1 %17)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i397.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  %i.lu = load i8, ptr %i.lt, align 8, !tbaa !199, !range !81, !noundef !82
  %i.lv = trunc nuw i8 %i.lu to i1
  br i1 %i.lv, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398.peel
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ld, i64 72
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ld, i64 96
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ld, i64 120
  %i.lz = load i8, ptr %i.ly, align 8, !tbaa !200, !range !81, !noundef !82
  %i.ma = trunc nuw i8 %i.lz to i1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ld, i64 128
  call void @_ZN7jsonnet8internal8Unparser13unparseParamsERKSt6vectorINS0_13FodderElementESaIS3_EERKS2_INS0_8ArgParamESaIS8_EEbS7_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.lw, ptr noundef nonnull align 8 dereferenceable(24) %i.lx, i1 noundef zeroext %i.ma, ptr noundef nonnull align 8 dereferenceable(24) %i.mb)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398.peel
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.md = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef nonnull align 8 dereferenceable(24) %i.mc, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.me = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.mf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.me, ptr noundef nonnull @.str.43, i64 noundef 1) ; 0 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ld, i64 56
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !113
  call void @_ZN7jsonnet8internal8Unparser7unparseEPKNS0_3ASTEb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.mh, i1 noundef zeroext true)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ld, i64 152
  %i.mj = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.mj, ptr noundef nonnull align 8 dereferenceable(24) %i.mi, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ld, i64 176 ; 2 uses
  %.not488.peel = icmp eq ptr %i.mk, %i.lf
  br i1 %.not488.peel, label %._crit_edge554, label %.peel.next604

._crit_edge554:                                   ; preds = %bb.bt, %bb.br, %bb.bo
  %i.ml = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.mm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ml, ptr noundef nonnull @.str.51, i64 noundef 1) ; 0 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.kz, i64 152
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !206
  call void @_ZN7jsonnet8internal8Unparser7unparseEPKNS0_3ASTEb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.mo, i1 noundef zeroext true)
  br label %common.ret856

.peel.next604:                                    ; preds = %bb.br, %bb.bt
  %.sroa.0475.0550 = phi ptr [ %i.ny, %bb.bt ], [ %i.mk, %bb.br ] ; 11 uses
  %i.mp = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.mq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mp, ptr noundef nonnull @.str.44, i64 noundef 1) ; 0 uses
  %i.mr = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0475.0550, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.ms = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0475.0550, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !198 ; 2 uses
  %.val369 = load ptr, ptr %i.mu, align 8, !tbaa !143
  %i.mv = getelementptr i8, ptr %i.mu, i64 8
  %.val370 = load i64, ptr %i.mv, align 8, !tbaa !144
  call fastcc void @_ZN7jsonnet8internalL10unparse_idB5cxx11EPKNS0_10IdentifierE(ptr dead_on_unwind noalias writable align 8 %6, ptr %.val369, i64 %.val370)
  %i.mw = load ptr, ptr %6, align 8, !tbaa !47
  %i.mx = load i64, ptr %i.lg, align 8, !tbaa !48
  %i.my = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef %i.mw, i64 noundef %i.mx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395: ; preds = %.peel.next604
  %i.mz = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.lh
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395
  %i.nb = load i64, ptr %i.lh, align 8, !tbaa !49
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.0475.0550, i64 64
  %i.ne = load i8, ptr %i.nd, align 8, !tbaa !199, !range !81, !noundef !82
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.0475.0550, i64 72
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0475.0550, i64 96
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0475.0550, i64 120
  %i.nj = load i8, ptr %i.ni, align 8, !tbaa !200, !range !81, !noundef !82
  %i.nk = trunc nuw i8 %i.nj to i1
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0475.0550, i64 128
  call void @_ZN7jsonnet8internal8Unparser13unparseParamsERKSt6vectorINS0_13FodderElementESaIS3_EERKS2_INS0_8ArgParamESaIS8_EEbS7_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ng, ptr noundef nonnull align 8 dereferenceable(24) %i.nh, i1 noundef zeroext %i.nk, ptr noundef nonnull align 8 dereferenceable(24) %i.nl)
  br label %bb.bt

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next604, %bb.bp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.nm = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.nn = icmp eq ptr %i.nm, %i.lh
  br i1 %i.nn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.no = load i64, ptr %i.lh, align 8, !tbaa !49
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.np) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %common.resume

bb.bt:                                            ; preds = %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.0475.0550, i64 32
  %i.nr = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.nr, ptr noundef nonnull align 8 dereferenceable(24) %i.nq, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.ns = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.nt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ns, ptr noundef nonnull @.str.43, i64 noundef 1) ; 0 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0475.0550, i64 56
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !113
  call void @_ZN7jsonnet8internal8Unparser7unparseEPKNS0_3ASTEb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.nv, i1 noundef zeroext true)
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0475.0550, i64 152
  %i.nx = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.nx, ptr noundef nonnull align 8 dereferenceable(24) %i.nw, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0475.0550, i64 176 ; 2 uses
  %.not488 = icmp eq ptr %i.ny, %i.lf
  br i1 %.not488, label %._crit_edge554, label %.peel.next604, !llvm.loop !334

bb.bu:                                            ; preds = %bb.bn
  %i.nz = tail call ptr @__dynamic_cast(ptr nonnull %.tr491, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal14LiteralBooleanE, i64 0) #27 ; 2 uses
  %.not307 = icmp eq ptr %i.nz, null
  br i1 %.not307, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.oa = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 128
  %i.oc = load i8, ptr %i.ob, align 8, !tbaa !208, !range !81, !noundef !82
  %i.od = trunc nuw i8 %i.oc to i1                ; 2 uses
  %i.oe = select i1 %i.od, ptr @.str.66, ptr @.str.67
  %i.of = select i1 %i.od, i64 4, i64 5
  %i.og = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oa, ptr noundef nonnull %i.oe, i64 noundef %i.of) ; 0 uses
  br label %common.ret856

bb.bw:                                            ; preds = %bb.bu
  %i.oh = tail call ptr @__dynamic_cast(ptr nonnull %.tr491, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal13LiteralNumberE, i64 0) #27 ; 3 uses
  %.not308 = icmp eq ptr %i.oh, null
  br i1 %.not308, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.oi = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 136
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !47
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 144
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !48
  %i.on = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, ptr noundef %i.ok, i64 noundef %i.om) ; 0 uses
  br label %common.ret856

bb.by:                                            ; preds = %bb.bw
  %i.oo = tail call ptr @__dynamic_cast(ptr nonnull %.tr491, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal13LiteralStringE, i64 0) #27 ; 16 uses
  %.not309 = icmp eq ptr %i.oo, null
  br i1 %.not309, label %bb.dj, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 160
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !211
  switch i32 %i.oq, label %common.ret856 [
    i32 1, label %bb.ca
    i32 0, label %bb.cc
    i32 2, label %bb.ce
    i32 4, label %bb.ct
    i32 3, label %bb.db
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.or = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.os = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.or, ptr noundef nonnull @.str.68, i64 noundef 1) ; 0 uses
  %i.ot = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oo, i64 128
  %.val363 = load ptr, ptr %i.ou, align 8, !tbaa !143
  %i.ov = getelementptr i8, ptr %i.oo, i64 136
  %.val364 = load i64, ptr %i.ov, align 8, !tbaa !144
  call fastcc void @_ZN7jsonnet8internalL11encode_utf8ERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr dead_on_unwind noalias writable align 8 %7, ptr %.val363, i64 %.val364)
  %i.ow = load ptr, ptr %7, align 8, !tbaa !47
  %i.ox = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !48
  %i.oz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ot, ptr noundef %i.ow, i64 noundef %i.oy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit403 unwind label %bb.cb ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit403: ; preds = %bb.ca
  %i.pa = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.pc = icmp eq ptr %i.pa, %i.pb
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit403
  %i.pd = load i64, ptr %i.pb, align 8, !tbaa !49
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pe) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit403, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.pf = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.pg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pf, ptr noundef nonnull @.str.68, i64 noundef 1) ; 0 uses
  br label %common.ret856

bb.cb:                                            ; preds = %bb.ca
end_hunk_0
