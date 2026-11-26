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
begin_hunk_1_@_ZN7jsonnet8internal18EnforceStringStyle5visitEPNS0_13LiteralStringE:bb.a
bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ap, ptr %3, align 8, !tbaa !143
  store i64 %i.bh, ptr %i.at, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.at, ptr %3, align 8, !tbaa !143
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i, %bb.h, %bb.i
  %i.bl = phi ptr [ %i.ap, %bb.h ], [ %i.at, %bb.i ], [ %i.as, %bb.d ], [ %.pre31.i, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !144
  store i32 0, ptr %i.bl, align 4, !tbaa !146
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bl, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !49
  %i.bq = shl i64 %i.bp, 2
  %i.br = add i64 %i.bq, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.br) #28
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %not.narrow26 = xor i1 %narrow26, true
  %i.bs = zext i1 %not.narrow26 to i32
  store i32 %i.bs, ptr %i.a, align 8, !tbaa !211
  %.pre = load ptr, ptr %2, align 8, !tbaa !143
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  %i.bt = phi ptr [ %i.e, %._crit_edge ], [ %.pre, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i27: ; preds = %bb.j
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !49
  %i.bx = shl i64 %i.bw, 2
  %i.by = add i64 %i.bx, 4
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.by) #28
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit29: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit29
  ret void

bb.l:                                             ; preds = %._crit_edge.thread
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ca = load ptr, ptr %2, align 8, !tbaa !143   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i30: ; preds = %bb.l
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !49
  %i.ce = shl i64 %i.cd, 2
  %i.cf = add i64 %i.ce, 4
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cf) #28
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit32: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.bz
}

declare void @_ZN7jsonnet8internal23jsonnet_string_unescapeERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string.96") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare void @_ZN7jsonnet8internal21jsonnet_string_escapeERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string.96") align 8, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal19EnforceCommentStyle6fodderERSt6vectorINS0_13FodderElementESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %.not10 = icmp eq ptr %i.a, %i.c
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.07.011 = phi ptr [ %i.a, %.lr.ph ], [ %i.p, %bb.e ] ; 4 uses
  %i.e = load i32, ptr %.sroa.07.011, align 8, !tbaa !41
  switch i32 %i.e, label %bb.e [
    i32 0, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp eq i64 %i.l, 32
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load i8, ptr %i.d, align 4, !tbaa !91, !range !81, !noundef !82
  %i.o = trunc nuw i8 %i.n to i1
  tail call void @_ZN7jsonnet8internal19EnforceCommentStyle10fixCommentERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i1 noundef zeroext %i.o)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  store i8 0, ptr %i.d, align 4, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal19EnforceCommentStyle10fixCommentERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !518   ; 2 uses
  %i.e = icmp eq i8 %i.d, 104
  br i1 %i.e, label %bb.b, label %thread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !49
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %bb.c, label %thread-pre-split.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48, !noalias !519 ; 3 uses
  %i.k = icmp ult i64 %i.j, 2
  br i1 %i.k, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i64 noundef 2, i64 noundef %i.j) #31, !noalias !519
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !62, !alias.scope !519
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.n = add i64 %i.j, -2                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !519
  store i64 %i.n, ptr %i.b, align 8, !tbaa !272, !noalias !519
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !47, !alias.scope !519
  %i.q = load i64, ptr %i.b, align 8, !tbaa !272, !noalias !519
  store i64 %i.q, ptr %i.l, align 8, !tbaa !49, !alias.scope !519
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.r = phi ptr [ %i.p, %.noexc10.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.m, align 1, !tbaa !49
  store i8 %i.s, ptr %i.r, align 1, !tbaa !49
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.m, i64 %i.n, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.t = load i64, ptr %i.b, align 8, !tbaa !272, !noalias !519 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !48, !alias.scope !519
  %i.v = load ptr, ptr %4, align 8, !tbaa !47, !alias.scope !519
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !519
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.33, i64 noundef 1)
          to label %.noexc unwind label %bb.n, !noalias !520 ; 6 uses

.noexc:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !62, !alias.scope !520
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !47   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !48 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.z, ptr %3, align 8, !tbaa !47, !alias.scope !520
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !49
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !49, !alias.scope !520
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.ah = phi i64 [ %i.ad, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !48, !alias.scope !520
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !47
  store i64 0, ptr %i.ai, align 8, !tbaa !48
  store i8 0, ptr %i.aa, align 8, !tbaa !49
  %i.ak = load ptr, ptr %1, align 8, !tbaa !47    ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  %i.an = load ptr, ptr %3, align 8, !tbaa !47    ; 5 uses
  %i.ao = icmp eq ptr %i.an, %i.y                 ; 2 uses
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.ao, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !48 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  switch i64 %i.ap, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !49
  store i8 %i.ar, ptr %i.ak, align 1, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.as = load i64, ptr %i.aj, align 8, !tbaa !48 ; 2 uses
  store i64 %i.as, ptr %i.i, align 8, !tbaa !48
  %i.at = load ptr, ptr %1, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !49
  %.pre.i12 = load ptr, ptr %3, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.an, ptr %1, align 8, !tbaa !47
  %i.av = load <2 x i64>, ptr %i.aj, align 8, !tbaa !49
  store <2 x i64> %i.av, ptr %i.i, align 8, !tbaa !49
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !49
  store ptr %i.an, ptr %1, align 8, !tbaa !47
  %i.ax = load <2 x i64>, ptr %i.aj, align 8, !tbaa !49
  store <2 x i64> %i.ax, ptr %i.i, align 8, !tbaa !49
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ak, ptr %3, align 8, !tbaa !47
  store i64 %i.aw, ptr %i.y, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.y, ptr %3, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.ay = phi ptr [ %i.ak, %bb.l ], [ %i.y, %bb.m ], [ %.pre.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.aj, align 8, !tbaa !48
  store i8 0, ptr %i.ay, align 1, !tbaa !49
  %i.az = load ptr, ptr %3, align 8, !tbaa !47    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.y
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !49
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.bd = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.l
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = load i64, ptr %i.l, align 8, !tbaa !49
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pr.pre = load i8, ptr %i.c, align 1, !tbaa !518
  br label %thread-pre-split

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.l
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.n
  %i.bk = load i64, ptr %i.l, align 8, !tbaa !49
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.ad

thread-pre-split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %bb.a
  %i.bm = phi i8 [ %i.d, %bb.a ], [ %.pr.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ]
  %i.bn = icmp eq i8 %i.bm, 115
  br i1 %i.bn, label %bb.o, label %thread-pre-split.thread

bb.o:                                             ; preds = %thread-pre-split
  %i.bo = load ptr, ptr %1, align 8, !tbaa !47    ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !49
  %i.bq = icmp eq i8 %i.bp, 35
  br i1 %i.bq, label %bb.p, label %thread-pre-split.thread

bb.p:                                             ; preds = %bb.o
  br i1 %2, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !49
  %i.bt = icmp eq i8 %i.bs, 33
  br i1 %i.bt, label %thread-pre-split.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !48, !noalias !521 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i20

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i64 noundef 1, i64 noundef 0) #31, !noalias !521
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i20: ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.bx, ptr %6, align 8, !tbaa !62, !alias.scope !521
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  %i.bz = add i64 %i.bv, -1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !521
  store i64 %i.bz, ptr %i.a, align 8, !tbaa !272, !noalias !521
  %i.ca = icmp ugt i64 %i.bz, 15
  br i1 %i.ca, label %.noexc10.i.i22, label %._crit_edge.i.i.i21

.noexc10.i.i22:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i20
  %i.cb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cb, ptr %6, align 8, !tbaa !47, !alias.scope !521
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !272, !noalias !521
  store i64 %i.cc, ptr %i.bx, align 8, !tbaa !49, !alias.scope !521
  br label %._crit_edge.i.i.i21

._crit_edge.i.i.i21:                              ; preds = %.noexc10.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i20
  %i.cd = phi ptr [ %i.cb, %.noexc10.i.i22 ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i20 ] ; 2 uses
  switch i64 %i.bz, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit23
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i21
  %i.ce = load i8, ptr %i.by, align 1, !tbaa !49
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !49
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit23

bb.u:                                             ; preds = %._crit_edge.i.i.i21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr nonnull align 1 %i.by, i64 %i.bz, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit23: ; preds = %._crit_edge.i.i.i21, %bb.t, %bb.u
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !272, !noalias !521 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !48, !alias.scope !521
  %i.ch = load ptr, ptr %6, align 8, !tbaa !47, !alias.scope !521
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store i8 0, ptr %i.ci, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !521
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.cj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.34, i64 noundef 2)
          to label %.noexc27 unwind label %bb.ac, !noalias !522 ; 6 uses

.noexc27:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit23
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store ptr %i.ck, ptr %5, align 8, !tbaa !62, !alias.scope !522
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !47 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 5 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.v:                                             ; preds = %.noexc27
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !48 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 16
  call void @llvm.assume(i1 %i.cq)
  %i.cr = add nuw nsw i64 %i.cp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ck, ptr noundef nonnull align 8 dereferenceable(1) %i.cm, i64 %i.cr, i1 false)
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.noexc27
  store ptr %i.cl, ptr %5, align 8, !tbaa !47, !alias.scope !522
  %i.cs = load i64, ptr %i.cm, align 8, !tbaa !49
  store i64 %i.cs, ptr %i.ck, align 8, !tbaa !49, !alias.scope !522
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !48
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.v
  %i.ct = phi ptr [ %i.ck, %bb.v ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ] ; 5 uses
  %i.cu = phi i64 [ %i.cp, %bb.v ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ] ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.cu, ptr %i.cw, align 8, !tbaa !48, !alias.scope !522
  store ptr %i.cm, ptr %i.cj, align 8, !tbaa !47
  store i64 0, ptr %i.cv, align 8, !tbaa !48
  store i8 0, ptr %i.cm, align 8, !tbaa !49
  %i.cx = load ptr, ptr %1, align 8, !tbaa !47    ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = icmp eq ptr %i.ct, %i.ck                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34: ; preds = %bb.w
  br i1 %i.da, label %bb.x, label %.thread.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %bb.w
  br i1 %i.da, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i30

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34
  %i.db = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.db)
  switch i64 %i.cu, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.dc = load i8, ptr %i.ct, align 1, !tbaa !49
  store i8 %i.dc, ptr %i.cx, align 1, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.ct, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32: ; preds = %bb.z, %bb.y, %bb.x
  %i.dd = load i64, ptr %i.cw, align 8, !tbaa !48 ; 2 uses
  store i64 %i.dd, ptr %i.bu, align 8, !tbaa !48
  %i.de = load ptr, ptr %1, align 8, !tbaa !47
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 0, ptr %i.df, align 1, !tbaa !49
  %.pre.i33 = load ptr, ptr %5, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36

.thread.i35:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34
  store ptr %i.ct, ptr %1, align 8, !tbaa !47
  store i64 %i.cu, ptr %i.bu, align 8, !tbaa !48
  %i.dg = load i64, ptr %i.ck, align 8, !tbaa !49
  store i64 %i.dg, ptr %i.cy, align 8, !tbaa !49
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29
  %i.dh = load i64, ptr %i.cy, align 8, !tbaa !49
  store ptr %i.ct, ptr %1, align 8, !tbaa !47
  store i64 %i.cu, ptr %i.bu, align 8, !tbaa !48
  %i.di = load i64, ptr %i.ck, align 8, !tbaa !49
  store i64 %i.di, ptr %i.cy, align 8, !tbaa !49
  %.not.i31 = icmp eq ptr %i.cx, null
  br i1 %.not.i31, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i30
  store ptr %i.cx, ptr %5, align 8, !tbaa !47
  store i64 %i.dh, ptr %i.ck, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i30, %.thread.i35
  store ptr %i.ck, ptr %5, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32, %bb.aa, %bb.ab
  %i.dj = phi ptr [ %i.cx, %bb.aa ], [ %i.ck, %bb.ab ], [ %.pre.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32 ]
  store i64 0, ptr %i.cw, align 8, !tbaa !48
  store i8 0, ptr %i.dj, align 1, !tbaa !49
  %i.dk = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.ck
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36
  %i.dm = load i64, ptr %i.ck, align 8, !tbaa !49
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  %i.do = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.bx
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.dq = load i64, ptr %i.bx, align 8, !tbaa !49
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %thread-pre-split.thread

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit23
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bx
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.ac
  %i.dv = load i64, ptr %i.bx, align 8, !tbaa !49
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ad

thread-pre-split.thread:                          ; preds = %bb.b, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.o, %thread-pre-split
  ret void

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn = phi { ptr, i32 } [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal14FixIndentation4exprEPNS0_3ASTERKNS1_6IndentEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 5 uses
  %5 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 7 uses
  %6 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 5 uses
  %7 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 7 uses
  %8 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 6 uses
  %9 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 7 uses
  %10 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 4 uses
  %13 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 4 uses
  %14 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 4 uses
  %15 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 4 uses
  %16 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 4 uses
  %17 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 4 uses
  %18 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 4 uses
  %19 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 4 uses
  %20 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 11 uses
  %21 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 5 uses
  %22 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 10 uses
  %23 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %26 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 5 uses
  %27 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 6 uses
  %28 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 5 uses
  %29 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 4 uses
  %i.a = tail call fastcc noundef ptr @_ZN7jsonnet8internalL14left_recursiveEPNS0_3ASTE(ptr noundef %1)
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !96
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
end_hunk_1
