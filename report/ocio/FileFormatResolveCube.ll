Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatResolveCube?download=true
inline.NumInlined: 1134
inline.NumDeleted: 403
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo:bb.a
bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168: ; preds = %bb.cf
  %i.hb = load float, ptr %i.b, align 4, !tbaa !38
  %i.hc = fcmp une float %i.hb, 0.000000e+00
  %i.hd = load float, ptr %i.c, align 4
  %i.he = fcmp une float %i.hd, 1.000000e+00
  %or.cond4 = select i1 %i.hc, i1 true, i1 %i.he
  br i1 %or.cond4, label %bb.cg, label %.critedge131

bb.cg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.45, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170: ; preds = %bb.cg
  %i.hg = load float, ptr %i.b, align 4, !tbaa !38
  %i.hh = fpext float %i.hg to double
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.hh)
          to label %_ZNSolsEf.exit unwind label %bb.cd ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173: ; preds = %_ZNSolsEf.exit
  %i.hk = load float, ptr %i.c, align 4, !tbaa !38
  %i.hl = fpext float %i.hk to double
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, double noundef %i.hl)
          to label %_ZNSolsEf.exit175 unwind label %bb.cd

_ZNSolsEf.exit175:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %.critedge131 unwind label %bb.cd ; 0 uses

bb.ch:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164
  br i1 %i.fi, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.44, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179: ; preds = %bb.ci
  %i.hp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %spec.store.select1)
          to label %bb.cj unwind label %bb.cd

bb.cj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181: ; preds = %bb.cj
  %i.hr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.45, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181
  %i.hs = load float, ptr %i.b, align 4, !tbaa !38
  %i.ht = fpext float %i.hs to double
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ht)
          to label %_ZNSolsEf.exit185 unwind label %bb.cd ; 2 uses

_ZNSolsEf.exit185:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187: ; preds = %_ZNSolsEf.exit185
  %i.hw = load float, ptr %i.c, align 4, !tbaa !38
  %i.hx = fpext float %i.hw to double
  %i.hy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, double noundef %i.hx)
          to label %_ZNSolsEf.exit189 unwind label %bb.cd

_ZNSolsEf.exit189:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %bb.ck unwind label %bb.cd     ; 0 uses

bb.ck:                                            ; preds = %_ZNSolsEf.exit189, %bb.ch
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.47, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193: ; preds = %bb.ck
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.sroa.speculated)
          to label %bb.cl unwind label %bb.cd

bb.cl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193
  %i.ic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 unwind label %bb.cd ; 0 uses

.critedge131:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168, %_ZNSolsEf.exit175
  %i.id = icmp sgt i32 %spec.store.select, 0
  br i1 %i.id, label %.lr.ph410.preheader, label %.loopexit

.lr.ph410.preheader:                              ; preds = %.critedge131
  %wide.trip.count = zext nneg i32 %spec.store.select to i64
  br label %.lr.ph410

.lr.ph410:                                        ; preds = %.lr.ph410.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207
  %indvars.iv = phi i64 [ 0, %.lr.ph410.preheader ], [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207 ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 %.idx ; 3 uses
  %i.if = load float, ptr %i.ie, align 4, !tbaa !38
  %i.ig = fpext float %i.if to double
  %i.ih = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ig)
          to label %_ZNSolsEf.exit197 unwind label %bb.cm ; 2 uses

_ZNSolsEf.exit197:                                ; preds = %.lr.ph410
  %i.ii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199 unwind label %bb.cm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199: ; preds = %_ZNSolsEf.exit197
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !38
  %i.il = fpext float %i.ik to double
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, double noundef %i.il)
          to label %_ZNSolsEf.exit201 unwind label %bb.cm ; 2 uses

_ZNSolsEf.exit201:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 unwind label %bb.cm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203: ; preds = %_ZNSolsEf.exit201
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ip = load float, ptr %i.io, align 4, !tbaa !38
  %i.iq = fpext float %i.ip to double
  %i.ir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.im, double noundef %i.iq)
          to label %_ZNSolsEf.exit205 unwind label %bb.cm

_ZNSolsEf.exit205:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207 unwind label %bb.cm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207: ; preds = %_ZNSolsEf.exit205
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond416.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond416.not, label %.loopexit406, label %.lr.ph410, !llvm.loop !223

bb.cm:                                            ; preds = %_ZNSolsEf.exit205, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203, %_ZNSolsEf.exit201, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199, %_ZNSolsEf.exit197, %.lr.ph410
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %.thread360

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195: ; preds = %bb.cl
  %i.iu = icmp sgt i32 %spec.store.select1, 0
  %or.cond = and i1 %i.fi, %i.iu
  br i1 %or.cond, label %.lr.ph412.preheader, label %.preheader

.lr.ph412.preheader:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  %wide.trip.count420 = zext nneg i32 %spec.store.select1 to i64
  br label %.lr.ph412

.lr.ph412:                                        ; preds = %.lr.ph412.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219
  %indvars.iv417 = phi i64 [ 0, %.lr.ph412.preheader ], [ %indvars.iv.next418, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219 ] ; 2 uses
  %.idx440 = mul nuw nsw i64 %indvars.iv417, 12
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0318.1352, i64 %.idx440 ; 3 uses
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !38
  %i.ix = fpext float %i.iw to double
  %i.iy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ix)
          to label %_ZNSolsEf.exit209 unwind label %bb.cn ; 2 uses

_ZNSolsEf.exit209:                                ; preds = %.lr.ph412
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211 unwind label %bb.cn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211: ; preds = %_ZNSolsEf.exit209
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !38
  %i.jc = fpext float %i.jb to double
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, double noundef %i.jc)
          to label %_ZNSolsEf.exit213 unwind label %bb.cn ; 2 uses

_ZNSolsEf.exit213:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215 unwind label %bb.cn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215: ; preds = %_ZNSolsEf.exit213
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !38
  %i.jh = fpext float %i.jg to double
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, double noundef %i.jh)
          to label %_ZNSolsEf.exit217 unwind label %bb.cn

_ZNSolsEf.exit217:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219 unwind label %bb.cn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219: ; preds = %_ZNSolsEf.exit217
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %exitcond421.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count420
  br i1 %exitcond421.not, label %.loopexit406, label %.lr.ph412, !llvm.loop !224

bb.cn:                                            ; preds = %_ZNSolsEf.exit217, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215, %_ZNSolsEf.exit213, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211, %_ZNSolsEf.exit209, %.lr.ph412
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit406:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219
  br i1 %i.ba, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195, %.loopexit406
  %i.jl = mul i32 %.sroa.speculated, %.sroa.speculated
  %i.jm = mul i32 %i.jl, %.sroa.speculated
  %umax = call i32 @llvm.umax.i32(i32 %i.jm, i32 1)
  %wide.trip.count425 = zext i32 %umax to i64
  br label %bb.co

bb.co:                                            ; preds = %.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231
  %indvars.iv422 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next423, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231 ] ; 2 uses
  %.idx441 = mul nuw nsw i64 %indvars.iv422, 12
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0305.2, i64 %.idx441 ; 3 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !38
  %i.jp = fpext float %i.jo to double
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.jp)
          to label %_ZNSolsEf.exit221 unwind label %bb.cp ; 2 uses

_ZNSolsEf.exit221:                                ; preds = %bb.co
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223 unwind label %bb.cp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223: ; preds = %_ZNSolsEf.exit221
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jt = load float, ptr %i.js, align 4, !tbaa !38
  %i.ju = fpext float %i.jt to double
  %i.jv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, double noundef %i.ju)
          to label %_ZNSolsEf.exit225 unwind label %bb.cp ; 2 uses

_ZNSolsEf.exit225:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227 unwind label %bb.cp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227: ; preds = %_ZNSolsEf.exit225
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !38
  %i.jz = fpext float %i.jy to double
  %i.ka = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, double noundef %i.jz)
          to label %_ZNSolsEf.exit229 unwind label %bb.cp

_ZNSolsEf.exit229:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227
  %i.kb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ka, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231 unwind label %bb.cp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231: ; preds = %_ZNSolsEf.exit229
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 1 ; 2 uses
  %exitcond426.not = icmp eq i64 %indvars.iv.next423, %wide.trip.count425
  br i1 %exitcond426.not, label %.loopexit, label %bb.co, !llvm.loop !225

bb.cp:                                            ; preds = %_ZNSolsEf.exit229, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227, %_ZNSolsEf.exit225, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223, %_ZNSolsEf.exit221, %bb.co
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231, %.critedge131, %.loopexit406
  %.not.i.i.i232 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i232, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %.loopexit
  %i.kd = ptrtoint ptr %.sroa.22.2 to i64
  %i.ke = ptrtoint ptr %.sroa.0.2 to i64
  %i.kf = sub i64 %i.kd, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.kf) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.loopexit, %bb.cq
  %.not.i.i.i233 = icmp eq ptr %.sroa.0305.2, null
  br i1 %.not.i.i.i233, label %_ZNSt6vectorIfSaIfEED2Ev.exit234, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.kg = ptrtoint ptr %.sroa.19.2 to i64
  %i.kh = ptrtoint ptr %.sroa.0305.2 to i64
  %i.ki = sub i64 %i.kg, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0305.2, i64 noundef %i.ki) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit234

_ZNSt6vectorIfSaIfEED2Ev.exit234:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not.i.i.i235 = icmp eq ptr %.sroa.0318.1352, null
  br i1 %.not.i.i.i235, label %_ZNSt6vectorIfSaIfEED2Ev.exit236, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit234
  %i.kj = ptrtoint ptr %.sroa.19329.1357 to i64
  %i.kk = ptrtoint ptr %.sroa.0318.1352 to i64
  %i.kl = sub i64 %i.kj, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0318.1352, i64 noundef %i.kl) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit236

_ZNSt6vectorIfSaIfEED2Ev.exit236:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit234, %bb.cs
  %i.km = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !67 ; 8 uses
  %.not.i.i237 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i237, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit241, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit236
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8 ; 4 uses
  %i.kp = load atomic i64, ptr %i.ko acquire, align 8 ; 2 uses
  %i.kq = icmp eq i64 %i.kp, 4294967297
  %i.kr = trunc i64 %i.kp to i32                  ; 2 uses
  br i1 %i.kq, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  store i32 0, ptr %i.ko, align 8, !tbaa !59
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  store i32 0, ptr %i.ks, align 4, !tbaa !60
  %i.kt = load ptr, ptr %i.kn, align 8, !tbaa !13
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(16) %i.kn) #23, !inline_history !220
  %i.kw = load ptr, ptr %i.kn, align 8, !tbaa !13
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(16) %i.kn) #23, !inline_history !220
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit241

bb.cv:                                            ; preds = %bb.ct
  %i.kz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i238 = icmp eq i8 %i.kz, 0
  br i1 %.not.i.i.i238, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.la = add nsw i32 %i.kr, -1
  store i32 %i.la, ptr %i.ko, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239

bb.cx:                                            ; preds = %bb.cv
  %i.lb = atomicrmw volatile add ptr %i.ko, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239: ; preds = %bb.cx, %bb.cw
  %.0.i.i.i.i240 = phi i32 [ %i.kr, %bb.cw ], [ %i.lb, %bb.cx ]
  %i.lc = icmp eq i32 %.0.i.i.i.i240, 1
  br i1 %i.lc, label %bb.cy, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit241, !prof !68

bb.cy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kn) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit241

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit241: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit236, %bb.cu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ld = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.an
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit241
  %i.lf = load i64, ptr %i.an, align 8, !tbaa !21
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.cz:                                            ; preds = %bb.by, %bb.cp, %bb.cn, %bb.cd, %bb.cc, %bb.bo
  %.sroa.19329.1355 = phi ptr [ %.sroa.19329.1357, %bb.cc ], [ %.sroa.19329.1357, %bb.cn ], [ %.sroa.19329.1357, %bb.cp ], [ null, %bb.bo ], [ %.sroa.19329.1357, %bb.cd ], [ %.sroa.19329.1357, %bb.by ] ; 2 uses
  %.sroa.0318.1350 = phi ptr [ %.sroa.0318.1352, %bb.cc ], [ %.sroa.0318.1352, %bb.cn ], [ %.sroa.0318.1352, %bb.cp ], [ null, %bb.bo ], [ %.sroa.0318.1352, %bb.cd ], [ %.sroa.0318.1352, %bb.by ] ; 2 uses
  %.sroa.0305.3 = phi ptr [ %.sroa.0305.2, %bb.cc ], [ %.sroa.0305.2, %bb.cn ], [ %.sroa.0305.2, %bb.cp ], [ null, %bb.bo ], [ %.sroa.0305.2, %bb.cd ], [ %.sroa.0305.2, %bb.by ] ; 2 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.2, %bb.cc ], [ %.sroa.19.2, %bb.cn ], [ %.sroa.19.2, %bb.cp ], [ null, %bb.bo ], [ %.sroa.19.2, %bb.cd ], [ %.sroa.19.2, %bb.by ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %bb.cc ], [ %.sroa.0.2, %bb.cn ], [ %.sroa.0.2, %bb.cp ], [ %.sroa.0.1, %bb.bo ], [ %.sroa.0.2, %bb.cd ], [ %.sroa.0.2, %bb.by ] ; 2 uses
  %.sroa.22.3 = phi ptr [ %.sroa.22.2, %bb.cc ], [ %.sroa.22.2, %bb.cn ], [ %.sroa.22.2, %bb.cp ], [ %.sroa.22.1, %bb.bo ], [ %.sroa.22.2, %bb.cd ], [ %.sroa.22.2, %bb.by ]
  %.pn116.pn.pn = phi { ptr, i32 } [ %i.gv, %bb.cc ], [ %i.jk, %bb.cn ], [ %i.kc, %bb.cp ], [ %i.fd, %bb.bo ], [ %i.gx, %bb.cd ], [ %i.ga, %bb.by ] ; 2 uses
  %.not.i.i.i245 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i245, label %_ZNSt6vectorIfSaIfEED2Ev.exit246, label %.thread360

.thread360:                                       ; preds = %bb.bv, %bb.cm, %bb.cz
  %.pn116.pn.pn379 = phi { ptr, i32 } [ %.pn116.pn.pn, %bb.cz ], [ %i.it, %bb.cm ], [ %.pn114, %bb.bv ]
  %.sroa.22.3378 = phi ptr [ %.sroa.22.3, %bb.cz ], [ %.sroa.22.2, %bb.cm ], [ %.sroa.22.4, %bb.bv ]
  %.sroa.0.3377 = phi ptr [ %.sroa.0.3, %bb.cz ], [ %.sroa.0.2, %bb.cm ], [ %.sroa.0.4, %bb.bv ] ; 2 uses
  %.sroa.19.3375 = phi ptr [ %.sroa.19.3, %bb.cz ], [ %.sroa.19.2, %bb.cm ], [ null, %bb.bv ]
  %.sroa.0305.3373 = phi ptr [ %.sroa.0305.3, %bb.cz ], [ %.sroa.0305.2, %bb.cm ], [ null, %bb.bv ]
  %.sroa.0318.1350371 = phi ptr [ %.sroa.0318.1350, %bb.cz ], [ %.sroa.0318.1352, %bb.cm ], [ null, %bb.bv ]
  %.sroa.19329.1355369 = phi ptr [ %.sroa.19329.1355, %bb.cz ], [ %.sroa.19329.1357, %bb.cm ], [ null, %bb.bv ]
  %i.lh = ptrtoint ptr %.sroa.22.3378 to i64
  %i.li = ptrtoint ptr %.sroa.0.3377 to i64
  %i.lj = sub i64 %i.lh, %i.li
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3377, i64 noundef %i.lj) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit246

_ZNSt6vectorIfSaIfEED2Ev.exit246:                 ; preds = %.thread360, %bb.cz, %bb.ap
  %.sroa.19329.1354 = phi ptr [ %.sroa.19329.1.ph, %bb.ap ], [ %.sroa.19329.1355369, %.thread360 ], [ %.sroa.19329.1355, %bb.cz ] ; 2 uses
  %.sroa.0318.1349 = phi ptr [ %.sroa.0318.1.ph, %bb.ap ], [ %.sroa.0318.1350371, %.thread360 ], [ %.sroa.0318.1350, %bb.cz ] ; 2 uses
  %.sroa.0305.4 = phi ptr [ %.sroa.0305.0, %bb.ap ], [ %.sroa.0305.3373, %.thread360 ], [ %.sroa.0305.3, %bb.cz ] ; 2 uses
  %.sroa.19.4 = phi ptr [ %.sroa.19.0, %bb.ap ], [ %.sroa.19.3375, %.thread360 ], [ %.sroa.19.3, %bb.cz ]
  %.pn116.pn.pn.pn = phi { ptr, i32 } [ %i.cz, %bb.ap ], [ %.pn116.pn.pn379, %.thread360 ], [ %.pn116.pn.pn, %bb.cz ] ; 2 uses
  %.not.i.i.i247 = icmp eq ptr %.sroa.0305.4, null
  br i1 %.not.i.i.i247, label %_ZNSt6vectorIfSaIfEED2Ev.exit248, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit246.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit246
  %.pn116.pn.pn.pn393 = phi { ptr, i32 } [ %.pn111.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit246.thread ], [ %.pn116.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit246 ]
  %.sroa.19.4392 = phi ptr [ %i.ct, %_ZNSt6vectorIfSaIfEED2Ev.exit246.thread ], [ %.sroa.19.4, %_ZNSt6vectorIfSaIfEED2Ev.exit246 ]
  %.sroa.0305.4391 = phi ptr [ %i.cr, %_ZNSt6vectorIfSaIfEED2Ev.exit246.thread ], [ %.sroa.0305.4, %_ZNSt6vectorIfSaIfEED2Ev.exit246 ] ; 2 uses
  %.sroa.0318.1349389 = phi ptr [ %.sroa.0318.1.ph, %_ZNSt6vectorIfSaIfEED2Ev.exit246.thread ], [ %.sroa.0318.1349, %_ZNSt6vectorIfSaIfEED2Ev.exit246 ]
  %.sroa.19329.1354387 = phi ptr [ %.sroa.19329.1.ph, %_ZNSt6vectorIfSaIfEED2Ev.exit246.thread ], [ %.sroa.19329.1354, %_ZNSt6vectorIfSaIfEED2Ev.exit246 ]
  %i.lk = ptrtoint ptr %.sroa.19.4392 to i64
  %i.ll = ptrtoint ptr %.sroa.0305.4391 to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0305.4391, i64 noundef %i.lm) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit248

_ZNSt6vectorIfSaIfEED2Ev.exit248:                 ; preds = %bb.da, %_ZNSt6vectorIfSaIfEED2Ev.exit246, %bb.ag
  %.sroa.0318.2 = phi ptr [ %.sroa.0318.0, %bb.ag ], [ %.sroa.0318.1349389, %bb.da ], [ %.sroa.0318.1349, %_ZNSt6vectorIfSaIfEED2Ev.exit246 ] ; 2 uses
  %.sroa.19329.2 = phi ptr [ %.sroa.19329.0, %bb.ag ], [ %.sroa.19329.1354387, %bb.da ], [ %.sroa.19329.1354, %_ZNSt6vectorIfSaIfEED2Ev.exit246 ]
  %.pn116.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.ag ], [ %.pn116.pn.pn.pn393, %bb.da ], [ %.pn116.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit246 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
end_hunk_0
begin_hunk_1_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !295
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 248) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %i.a) #23, !inline_history !296
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 248) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232), i64 noundef) unnamed_addr #5

declare noundef i32 @_ZNK16OpenColorIO_v2_55Baker11getCubeSizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i32 @_ZNK16OpenColorIO_v2_55Baker13getShaperSizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef ptr @_ZNK16OpenColorIO_v2_55Baker14getShaperSpaceEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_525GetInputToTargetProcessorERKNS_5BakerE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.61") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_512CPUProcessor19hasChannelCrosstalkEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_514GetShaperRangeERKNS_5BakerERfS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_525GetInputToShaperProcessorERKNS_5BakerE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.61") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

declare void @_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_526GetShaperToTargetProcessorERKNS_5BakerE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.61") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_521GenerateIdentityLut1DEPfii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK16OpenColorIO_v2_55Baker17getFormatMetadataEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !60
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !3
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !3
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !68

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #5

declare noundef i32 @_ZN16OpenColorIO_v2_526CombineTransformDirectionsENS_18TransformDirectionES0_(i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK16OpenColorIO_v2_513FileTransform16getInterpolationEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_511HandleLUT1DERKSt10shared_ptrINS_11Lut1DOpDataEENS_13InterpolationERb(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.17") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_511HandleLUT3DERKSt10shared_ptrINS_11Lut3DOpDataEENS_13InterpolationERb(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.20") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_530LogWarningInterpolationNotUsedENS_13InterpolationERKNS_13FileTransformE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_514CreateMinMaxOpERNS_10OpRcPtrVecEffNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144), float noundef, float noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_513CreateLut1DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut1DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_513CreateLut3DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut3DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !40}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{null, null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !18, i64 8, !8, i64 16}
!20 = !{!19, !18, i64 8}
!21 = !{!8, !8, i64 0}
!22 = !{!"p1 _ZTSN16OpenColorIO_v2_510FormatInfoE", !14, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!24 = !{!23, !22, i64 8}
!25 = !{!23, !22, i64 16}
!26 = !{!19, !15, i64 0}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!29 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!30 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !18, i64 8}
!31 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!32 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!33 = !{!"_ZTSSt6locale", !32, i64 0}
!34 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !29, i64 40, !30, i64 48, !8, i64 64, !9, i64 192, !31, i64 200, !33, i64 208}
!35 = !{!34, !28, i64 32}
!36 = !{!9, !9, i64 0}
!37 = !{!"float", !8, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!18, !18, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!42, !41, i64 0}
!44 = !{!42, !41, i64 8}
!45 = !{!42, !41, i64 16}
!46 = !{!"_ZTSN16OpenColorIO_v2_510CachedFileE"}
!47 = !{!"p1 _ZTSN16OpenColorIO_v2_511Lut1DOpDataE", !14, i64 0}
!48 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!49 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !48, i64 0}
!50 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EE", !47, i64 0, !49, i64 8}
!51 = !{!"_ZTSSt10shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataEE", !50, i64 0}
!52 = !{!"p1 _ZTSN16OpenColorIO_v2_511Lut3DOpDataE", !14, i64 0}
!53 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0, !49, i64 8}
!54 = !{!"_ZTSSt10shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataEE", !53, i64 0}
!55 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE", !46, i64 0, !51, i64 8, !37, i64 24, !37, i64 28, !54, i64 32, !37, i64 48, !37, i64 52}
!56 = !{!55, !37, i64 28}
!57 = !{!55, !37, i64 52}
!58 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 8, !9, i64 12}
!59 = !{!58, !9, i64 8}
!60 = !{!58, !9, i64 12}
!61 = !{!"p1 _ZTSN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE", !14, i64 0}
!62 = !{!"_ZTSSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE", !58, i64 0, !61, i64 16}
!63 = !{!62, !61, i64 16}
!64 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !33, i64 56}
!65 = !{!64, !15, i64 40}
!66 = !{!64, !15, i64 32}
!67 = !{!49, !48, i64 0}
!68 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!69 = !{!50, !47, i64 0}
!70 = !{!55, !37, i64 24}
!71 = !{!55, !37, i64 48}
!72 = !{!53, !52, i64 0}
!73 = !{!"p1 _ZTSN16OpenColorIO_v2_510CachedFileE", !14, i64 0}
!74 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_510CachedFileELN9__gnu_cxx12_Lock_policyE2EE", !73, i64 0, !49, i64 8}
!75 = !{!74, !73, i64 0}
!76 = !{!"bool", !8, i64 0}
!77 = !{i8 0, i8 2}
!78 = !{}
!79 = !{!"p1 _ZTSSi", !14, i64 0}
!80 = !{!"_ZTSSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lE", !79, i64 0, !19, i64 8, !76, i64 40}
!81 = !{!80, !79, i64 0}
!82 = !{!80, !76, i64 40}
!83 = !{!"_ZTSSt9type_info", !15, i64 8}
!84 = !{!83, !15, i64 8}
!85 = !{!"_ZTSN16OpenColorIO_v2_521FormatCapabilityFlagsE", !8, i64 0}
!86 = !{!"_ZTSN16OpenColorIO_v2_515FormatBakeFlagsE", !8, i64 0}
!87 = !{!"_ZTSN16OpenColorIO_v2_510FormatInfoE", !19, i64 0, !19, i64 32, !85, i64 64, !86, i64 68}
!88 = !{!87, !85, i64 64}
!89 = !{!87, !86, i64 68}
!90 = distinct !{!90, !40}
!91 = distinct !{!91, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!92 = distinct !{!92, !91, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!93 = distinct !{!93, !40, !157, !158}
!94 = distinct !{!94, !40, !157, !158}
!95 = distinct !{!95, !40, !158, !157}
!96 = distinct !{!96, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!97 = distinct !{!97, !96, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!98 = distinct !{!98, !40, !157, !158}
!99 = distinct !{!99, !40, !157, !158}
!100 = distinct !{!100, !40, !158, !157}
!101 = distinct !{!101, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!102 = distinct !{!102, !101, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!103 = distinct !{!103, !40, !157, !158}
!104 = distinct !{!104, !40, !157, !158}
!105 = distinct !{!105, !40, !158, !157}
!106 = distinct !{!106, !"_ZNSt7__cxx119to_stringEm"}
!107 = distinct !{!107, !106, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!108 = distinct !{!108, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!109 = distinct !{!109, !108, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!110 = distinct !{!110, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!111 = distinct !{!111, !110, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!112 = distinct !{!112, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!113 = distinct !{!113, !112, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!114 = distinct !{!114, !40, !157, !158}
!115 = distinct !{!115, !40, !157, !158}
!116 = distinct !{!116, !40, !158, !157}
!117 = distinct !{!117, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!118 = distinct !{!118, !117, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!119 = distinct !{!119, !40, !157, !158}
!120 = distinct !{!120, !40, !157, !158}
!121 = distinct !{!121, !40, !158, !157}
!122 = distinct !{!122, !"_ZNSt7__cxx119to_stringEm"}
!123 = distinct !{!123, !122, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!124 = distinct !{!124, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!125 = distinct !{!125, !124, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!126 = distinct !{!126, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!127 = distinct !{!127, !126, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!128 = distinct !{!128, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!129 = distinct !{!129, !128, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!130 = distinct !{!130, !40, !157, !158}
!131 = distinct !{!131, !40, !157, !158}
!132 = distinct !{!132, !40, !158, !157}
!133 = distinct !{!133, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!134 = distinct !{!134, !133, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!135 = distinct !{!135, !40, !157, !158}
!136 = distinct !{!136, !40, !157, !158}
!137 = distinct !{!137, !40, !158, !157}
!138 = distinct !{null, null, null, null}
!139 = distinct !{!139, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!140 = distinct !{!140, !139, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!141 = distinct !{!141, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!142 = distinct !{!142, !141, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!143 = distinct !{!143, !"_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!144 = distinct !{!144, !143, !"_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!145 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!146 = distinct !{!146, !40, !157, !158}
!147 = distinct !{!147, !211}
!148 = distinct !{!148, !40, !157}
!149 = distinct !{!149, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!150 = distinct !{!150, !149, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!151 = distinct !{!151, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!152 = distinct !{!152, !151, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!153 = distinct !{!153, !"_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!154 = distinct !{!154, !153, !"_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!155 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!156 = !{!92}
!157 = !{!"llvm.loop.isvectorized", i32 1}
!158 = !{!"llvm.loop.unroll.runtime.disable"}
!159 = !{!"branch_weights", i32 8, i32 24}
!160 = !{!41, !41, i64 0}
!161 = !{!97}
!162 = !{!102}
!163 = !{!107}
!164 = !{!109}
!165 = !{!111}
!166 = !{!113}
!167 = !{!118}
end_hunk_1
