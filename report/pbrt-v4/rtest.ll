Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/rtest?download=true
inline.NumInlined: 352
inline.NumDeleted: 143
begin_hunk_0_@main:bb.a
bb.bk:                                            ; preds = %bb.bi
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, i8 noundef signext 32)
          to label %bb.bl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %.0.i137 = phi ptr [ %i.jx, %bb.bj ], [ %i.jq, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !16
  %i.kb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i137, i32 noundef %i.ka)
          to label %bb.bm unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 32, ptr %i.d, align 1, !tbaa !42
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !19
  %i.kd = getelementptr i8, ptr %i.kc, i64 -24
  %i.ke = load i64, ptr %i.kd, align 8
  %i.kf = getelementptr inbounds i8, ptr %i.kb, i64 %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !59
  %.not.i141 = icmp eq i64 %i.kh, 0
  br i1 %.not.i141, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kb, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.bp unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bm
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.kb, i8 noundef signext 32)
          to label %bb.bp unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.0.i142 = phi ptr [ %i.ki, %bb.bn ], [ %i.kb, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !16
  %i.km = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i142, i32 noundef %i.kl)
          to label %bb.bq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.bq:                                            ; preds = %bb.bp
  %i.kn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.km, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147: ; preds = %bb.bq
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.km, ptr noundef nonnull @.str.22, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ih, i64 2 ; 4 uses
  %i.kq = load i8, ptr %i.kp, align 2, !tbaa !104
  %i.kr = and i8 %i.kq, 3
  %i.ks = zext nneg i8 %i.kr to i32
  %i.kt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.km, i32 noundef %i.ks)
          to label %bb.br unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1, !tbaa !42
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !19
  %i.kv = getelementptr i8, ptr %i.ku, i64 -24
  %i.kw = load i64, ptr %i.kv, align 8
  %i.kx = getelementptr inbounds i8, ptr %i.kt, i64 %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !59
  %.not.i150 = icmp eq i64 %i.kz, 0
  br i1 %.not.i150, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.la = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kt, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.bu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.br
  %i.lb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.kt, i8 noundef signext 32)
          to label %bb.bu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %.0.i151 = phi ptr [ %i.la, %bb.bs ], [ %i.kt, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.lc = load i8, ptr %i.kp, align 2, !tbaa !104
  %i.ld = lshr i8 %i.lc, 2
  %i.le = and i8 %i.ld, 3
  %i.lf = zext nneg i8 %i.le to i32
  %i.lg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i151, i32 noundef %i.lf)
          to label %bb.bv unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !42
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !19
  %i.li = getelementptr i8, ptr %i.lh, i64 -24
  %i.lj = load i64, ptr %i.li, align 8
  %i.lk = getelementptr inbounds i8, ptr %i.lg, i64 %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !59
  %.not.i155 = icmp eq i64 %i.lm, 0
  br i1 %.not.i155, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lg, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.by unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bv
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.lg, i8 noundef signext 32)
          to label %bb.by unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.0.i156 = phi ptr [ %i.ln, %bb.bw ], [ %i.lg, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.lp = load i8, ptr %i.kp, align 2, !tbaa !104
  %i.lq = lshr i8 %i.lp, 4
  %i.lr = and i8 %i.lq, 3
  %i.ls = zext nneg i8 %i.lr to i32
  %i.lt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i156, i32 noundef %i.ls)
          to label %bb.bz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !42
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !19
  %i.lv = getelementptr i8, ptr %i.lu, i64 -24
  %i.lw = load i64, ptr %i.lv, align 8
  %i.lx = getelementptr inbounds i8, ptr %i.lt, i64 %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !59
  %.not.i160 = icmp eq i64 %i.lz, 0
  br i1 %.not.i160, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.cc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %bb.bz
  %i.mb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, i8 noundef signext 32)
          to label %bb.cc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %.0.i161 = phi ptr [ %i.ma, %bb.ca ], [ %i.lt, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.mc = load i8, ptr %i.kp, align 2, !tbaa !104
  %i.md = lshr i8 %i.mc, 6
  %i.me = zext nneg i8 %i.md to i32
  %i.mf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i161, i32 noundef %i.me)
          to label %bb.cd unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.cd:                                            ; preds = %bb.cc
  %i.mg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166: ; preds = %bb.cd
  %i.mh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, ptr noundef nonnull @.str.23, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ih, i64 3
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !105
  %i.mk = zext i8 %i.mj to i32
  %i.ml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, i32 noundef %i.mk)
          to label %bb.ce unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168
  %i.mm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ml, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170: ; preds = %bb.ce
  %i.mn = load i16, ptr %i.ih, align 4, !tbaa !42 ; 4 uses
  %.sroa.0296.0.extract.trunc = trunc i16 %i.mn to i8 ; 3 uses
  %.sroa.11.0.extract.shift = lshr i16 %i.mn, 8   ; 3 uses
  %i.mo = bitcast i16 %i.mn to <2 x i8>
  %i.mp = shufflevector <2 x i8> %i.mo, <2 x i8> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.11.0.extract.trunc = trunc nuw i16 %.sroa.11.0.extract.shift to i8 ; 2 uses
  %i.mq = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = invoke noundef i32 %i.ms(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.cf unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4Ptex4v2_48DataSizeENS0_8DataTypeEE5sizes, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !16
  %i.mx = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 88
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = invoke noundef i32 %i.mz(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.cg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %bb.cf
  %.sroa.0296.0.extract.trunc.mask = and i16 %i.mn, 255
  %i.nb = zext nneg i16 %.sroa.0296.0.extract.trunc.mask to i32
  %i.nc = shl nuw i32 1, %i.nb
  %i.nd = zext nneg i16 %.sroa.11.0.extract.shift to i32
  %i.ne = shl i32 %i.nc, %i.nd
  %i.nf = mul i32 %i.mw, %i.ne
  %i.ng = mul i32 %i.nf, %i.na
  %i.nh = sext i32 %i.ng to i64
  %i.ni = call noalias ptr @malloc(i64 noundef %i.nh) #19 ; 5 uses
  %i.nj = icmp sgt i8 %.sroa.0296.0.extract.trunc, 0
  %i.nk = icmp sgt i8 %.sroa.11.0.extract.trunc, 0
  %i.nl = select i1 %i.nj, i1 true, i1 %i.nk
  br i1 %i.nl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.11.0372 = phi i8 [ %i.oe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.11.0.extract.trunc, %bb.cg ]
  %.sroa.0296.0371 = phi i8 [ %i.od, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0296.0.extract.trunc, %bb.cg ]
  %i.nm = phi <2 x i8> [ %i.oc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.mp, %bb.cg ]
  %.sroa.11.0.insert.ext309 = zext i8 %.sroa.11.0372 to i16
  %.sroa.11.0.insert.shift310 = shl nuw i16 %.sroa.11.0.insert.ext309, 8
  %.sroa.0296.0.insert.ext302 = zext i8 %.sroa.0296.0371 to i16
  %.sroa.0296.0.insert.insert304 = or disjoint i16 %.sroa.11.0.insert.shift310, %.sroa.0296.0.insert.ext302 ; 2 uses
  %i.nn = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 144
  %i.np = load ptr, ptr %i.no, align 8
  invoke void %i.np(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef %.056375, ptr noundef %i.ni, i32 noundef 0, i16 %.sroa.0296.0.insert.insert304)
          to label %bb.ch unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %.lr.ph
  %i.nq = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 48
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = invoke noundef i32 %i.ns(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.ci unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.ch
  %i.nu = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 88
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = invoke noundef i32 %i.nw(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %._crit_edge.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i:                                  ; preds = %bb.ci
  store ptr %i.hw, ptr %3, align 8, !tbaa !52
  store i16 8224, ptr %i.hw, align 8
  store i64 2, ptr %i.hx, align 8, !tbaa !17
  store i8 0, ptr %i.ic, align 2, !tbaa !42
  invoke void @_Z8DumpDataN4Ptex4v2_43ResENS0_8DataTypeEiPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i16 %.sroa.0296.0.insert.insert304, i32 noundef %i.nt, i32 noundef %i.nx, ptr noundef %i.ni, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %._crit_edge.i.i
  %i.ny = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.hw
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cj
  %i.oa = load i64, ptr %i.hw, align 8, !tbaa !42
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.oc = call <2 x i8> @llvm.usub.sat.v2i8(<2 x i8> %i.nm, <2 x i8> splat (i8 1)) ; 4 uses
  %i.od = extractelement <2 x i8> %i.oc, i64 1    ; 2 uses
  %i.oe = extractelement <2 x i8> %i.oc, i64 0    ; 2 uses
  %i.of = icmp sgt <2 x i8> %i.oc, zeroinitializer ; 2 uses
  %5 = extractelement <2 x i1> %i.of, i64 0
  %6 = extractelement <2 x i1> %i.of, i64 1
  %7 = select i1 %6, i1 true, i1 %5
  br i1 %7, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !98

bb.ck:                                            ; preds = %._crit_edge.i.i
  %i.og = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oh = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.oi = icmp eq ptr %i.oh, %i.hw
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.ck
  %i.oj = load i64, ptr %i.hw, align 8, !tbaa !42
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ok) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ol = zext i8 %i.oe to i16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.cg
  %.sroa.0296.0.lcssa = phi i8 [ %.sroa.0296.0.extract.trunc, %bb.cg ], [ %i.od, %._crit_edge.loopexit ]
  %.sroa.11.0.lcssa = phi i16 [ %.sroa.11.0.extract.shift, %bb.cg ], [ %i.ol, %._crit_edge.loopexit ]
  %i.om = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 144
  %i.oo = load ptr, ptr %i.on, align 8
  invoke void %i.oo(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef %.056375, ptr noundef %i.ni, i32 noundef 0, i16 0)
          to label %bb.cl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %._crit_edge
  %.sroa.11.0.insert.shift = shl nuw i16 %.sroa.11.0.lcssa, 8
  %.sroa.0296.0.insert.ext = zext i8 %.sroa.0296.0.lcssa to i16
  %.sroa.0296.0.insert.insert = or disjoint i16 %.sroa.11.0.insert.shift, %.sroa.0296.0.insert.ext
  %i.op = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 48
  %i.or = load ptr, ptr %i.oq, align 8
  %i.os = invoke noundef i32 %i.or(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.cm unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cm:                                            ; preds = %bb.cl
  %i.ot = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 88
  %i.ov = load ptr, ptr %i.ou, align 8
  %i.ow = invoke noundef i32 %i.ov(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %._crit_edge.i.i175 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread352.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i175:                               ; preds = %bb.cm
  store ptr %i.hy, ptr %4, align 8, !tbaa !52
  store i16 8224, ptr %i.hy, align 8
  store i64 2, ptr %i.hz, align 8, !tbaa !17
  store i8 0, ptr %i.id, align 2, !tbaa !42
  invoke void @_Z8DumpDataN4Ptex4v2_43ResENS0_8DataTypeEiPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i16 %.sroa.0296.0.insert.insert, i32 noundef %i.os, i32 noundef %i.ow, ptr noundef %i.ni, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.cn unwind label %bb.ct

bb.cn:                                            ; preds = %._crit_edge.i.i175
  %i.ox = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.hy
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.cn
  %i.oz = load i64, ptr %i.hy, align 8, !tbaa !42
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @free(ptr noundef %i.ni) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) @__const.main.pixel, i64 12, i1 false)
  %i.pb = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 168
  %i.pd = load ptr, ptr %i.pc, align 8
  invoke void %i.pd(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef %.056375, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.h, i32 noundef 3, i32 noundef 3)
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.pe = load float, ptr %i.h, align 4, !tbaa !62
  %i.pf = fcmp oeq float %i.pe, 0.000000e+00
  %i.pg = load float, ptr %i.ia, align 4
  %i.ph = fcmp oeq float %i.pg, 0.000000e+00
  %or.cond.not66 = select i1 %i.pf, i1 %i.ph, i1 false
  %i.pi = load float, ptr %i.ib, align 4
  %i.pj = fcmp oeq float %i.pi, 0.000000e+00
  %or.cond6.not = select i1 %or.cond.not66, i1 %i.pj, i1 false
  br i1 %or.cond6.not, label %bb.cu, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.24, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183: ; preds = %bb.cp
  %i.pl = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !19
  %i.pm = getelementptr i8, ptr %i.pl, i64 -24
  %i.pn = load i64, ptr %i.pm, align 8
  %i.po = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.pn
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 240
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i283 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i283, label %bb.cq, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i284

bb.cq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183
  invoke void @_ZSt16__throw_bad_castv() #21
          to label %.noexc288 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc288:                                        ; preds = %bb.cq
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i284: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 56
  %i.ps = load i8, ptr %i.pr, align 8, !tbaa !41
  %.not.i1.i.i285 = icmp eq i8 %i.ps, 0
  br i1 %.not.i1.i.i285, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i284
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 67
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i286

bb.cs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i284
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.pq)
          to label %.noexc289 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc289:                                        ; preds = %bb.cs
  %i.pv = load ptr, ptr %i.pq, align 8, !tbaa !19
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 48
  %i.px = load ptr, ptr %i.pw, align 8
  %i.py = invoke noundef signext i8 %i.px(ptr noundef nonnull align 8 dereferenceable(570) %i.pq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i286 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i286: ; preds = %.noexc289, %bb.cr
  %.0.i.i.i287 = phi i8 [ %i.pu, %bb.cr ], [ %i.py, %.noexc289 ]
  %i.pz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i287)
          to label %.noexc291 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc291:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i286
  %i.qa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pz)
          to label %_ZNSolsEPFRSoS_E.exit.thread344 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ct:                                            ; preds = %._crit_edge.i.i175
  %i.qb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qc = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.hy
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.ct
  %i.qe = load i64, ptr %i.hy, align 8, !tbaa !42
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %.noexc291, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i286, %.noexc289, %bb.cs, %bb.cq, %bb.cp
  %lpad.loopexit.split-lp421 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread

_ZNSolsEPFRSoS_E.exit.thread344:                  ; preds = %.noexc291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %_ZNSolsEPFRSoS_E.exit

bb.cu:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  %i.qg = add nuw nsw i32 %.056375, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.qg, %i.hv
  br i1 %exitcond.not, label %_ZNSolsEPFRSoS_E.exit, label %bb.aw, !llvm.loop !99

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.cu, %.preheader, %_ZNSolsEPFRSoS_E.exit.thread344
  %spec.select347 = phi i32 [ 1, %_ZNSolsEPFRSoS_E.exit.thread344 ], [ 0, %.preheader ], [ 0, %bb.cu ]
  %i.qh = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = load ptr, ptr %i.qi, align 8
  invoke void %i.qj(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_11PtexTextureEED2Ev.exit unwind label %bb.cv

bb.cv:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.qk = landingpad { ptr, i32 }
          catch ptr null
  %i.ql = extractvalue { ptr, i32 } %i.qk, 0
  call void @__clang_call_terminate(ptr %i.ql) #24
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_11PtexTextureEED2Ev.exit: ; preds = %.noexc204, %_ZNSolsEPFRSoS_E.exit
  %.4343 = phi i32 [ %spec.select347, %_ZNSolsEPFRSoS_E.exit ], [ 1, %.noexc204 ]
  %i.qm = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8
  invoke void %i.qo(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_9PtexCacheEED2Ev.exit unwind label %bb.cw

bb.cw:                                            ; preds = %_ZN4Ptex4v2_47PtexPtrINS0_11PtexTextureEED2Ev.exit
  %i.qp = landingpad { ptr, i32 }
          catch ptr null
  %i.qq = extractvalue { ptr, i32 } %i.qp, 0
  call void @__clang_call_terminate(ptr %i.qq) #24
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_9PtexCacheEED2Ev.exit:  ; preds = %_ZN4Ptex4v2_47PtexPtrINS0_11PtexTextureEED2Ev.exit
  %i.qr = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.qs = icmp eq ptr %i.qr, %i.i
  br i1 %i.qs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

end_hunk_0
