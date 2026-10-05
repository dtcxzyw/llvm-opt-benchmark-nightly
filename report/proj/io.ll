Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17817
inline.NumDeleted: 4455
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN5osgeo4proj2io9WKTParser7Private9buildAxisERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEERKNS0_6common13UnitOfMeasureERKNSG_4TypeEbi:bb.a
  %i.hq = icmp eq i64 %i.gz, %i.hp
  br i1 %i.hq, label %bb.bm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit222.thread384

bb.bm:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit218.thread383
  %i.hr = icmp eq i64 %i.gz, 0
  br i1 %i.hr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249.thread.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit222

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit222: ; preds = %bb.bm
  %i.hs = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3latB5cxx11E, align 8, !tbaa !163
  %i.ht = load ptr, ptr %11, align 8, !tbaa !163
  %bcmp.i221 = call i32 @bcmp(ptr %i.ht, ptr %i.hs, i64 %i.gz)
  %i.hu = icmp eq i32 %bcmp.i221, 0
  br i1 %i.hu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249.thread.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit222.thread384

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit222.thread384: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit218.thread383, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit222
  %i.hv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3lonB5cxx11E, i64 8), align 8, !tbaa !164
  %i.hw = icmp eq i64 %i.gz, %i.hv
  br i1 %i.hw, label %bb.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.bn:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit222.thread384
  %i.hx = icmp eq i64 %i.gz, 0
  br i1 %i.hx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249.thread.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit226

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit226: ; preds = %bb.bn
  %i.hy = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3lonB5cxx11E, align 8, !tbaa !163
  %i.hz = load ptr, ptr %11, align 8, !tbaa !163
  %bcmp.i225 = call i32 @bcmp(ptr %i.hz, ptr %i.hy, i64 %i.gz)
  %i.ia = icmp eq i32 %bcmp.i225, 0
  br i1 %i.ia, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249.thread.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.bo:                                            ; preds = %bb.ba, %bb.az, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  invoke void @_ZN5osgeo4proj2cs20CoordinateSystemAxis17normalizeAxisNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bp unwind label %bb.bw

bb.bp:                                            ; preds = %bb.bo
  %i.ib = load ptr, ptr %10, align 8, !tbaa !163  ; 6 uses
  %i.ic = icmp eq ptr %i.ib, %i.bv
  %i.id = load ptr, ptr %16, align 8, !tbaa !163  ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.if = icmp eq ptr %i.id, %i.ie                ; 2 uses
  br i1 %i.ic, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i234: ; preds = %bb.bp
  br i1 %i.if, label %bb.bq, label %.thread.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i229: ; preds = %bb.bp
  br i1 %i.if, label %bb.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i230

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i234
  %i.ig = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !164 ; 3 uses
  %i.ii = icmp ult i64 %i.ih, 16
  call void @llvm.assume(i1 %i.ii)
  switch i64 %i.ih, label %bb.bs [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i232
    i64 1, label %bb.br
  ]

bb.br:                                            ; preds = %bb.bq
  %i.ij = load i8, ptr %i.id, align 1, !tbaa !166
  store i8 %i.ij, ptr %i.ib, align 1, !tbaa !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i232

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ib, ptr align 1 %i.id, i64 %i.ih, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i232: ; preds = %bb.bs, %bb.br, %bb.bq
  %i.ik = load i64, ptr %i.ig, align 8, !tbaa !164 ; 2 uses
  store i64 %i.ik, ptr %i.bw, align 8, !tbaa !164
  %i.il = load ptr, ptr %10, align 8, !tbaa !163
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ik
  store i8 0, ptr %i.im, align 1, !tbaa !166
  %.pre.i233 = load ptr, ptr %16, align 8, !tbaa !163
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit236

.thread.i235:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i234
  store ptr %i.id, ptr %10, align 8, !tbaa !163
  %i.in = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.io = load <2 x i64>, ptr %i.in, align 8, !tbaa !166
  store <2 x i64> %i.io, ptr %i.bw, align 8, !tbaa !166
  br label %bb.bu

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i230: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i229
  %i.ip = load i64, ptr %i.bv, align 8, !tbaa !166
  store ptr %i.id, ptr %10, align 8, !tbaa !163
  %i.iq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ir = load <2 x i64>, ptr %i.iq, align 8, !tbaa !166
  store <2 x i64> %i.ir, ptr %i.bw, align 8, !tbaa !166
  %.not.i231 = icmp eq ptr %i.ib, null
  br i1 %.not.i231, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i230
  store ptr %i.ib, ptr %16, align 8, !tbaa !163
  store i64 %i.ip, ptr %i.ie, align 8, !tbaa !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit236

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i230, %.thread.i235
  store ptr %i.ie, ptr %16, align 8, !tbaa !163
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i232, %bb.bt, %bb.bu
  %i.is = phi ptr [ %.pre.i233, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i232 ], [ %i.ib, %bb.bt ], [ %i.ie, %bb.bu ]
  %i.it = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.it, align 8, !tbaa !164
  store i8 0, ptr %i.is, align 1, !tbaa !166
  %i.iu = load ptr, ptr %16, align 8, !tbaa !163  ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit236
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !166
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iy) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  %i.iz = load i64, ptr %i.bw, align 8, !tbaa !164 ; 9 uses
  %i.ja = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E, i64 8), align 8, !tbaa !164
  %i.jb = icmp eq i64 %i.iz, %i.ja
  br i1 %i.jb, label %bb.bv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit241.thread386

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239
  %i.jc = icmp eq i64 %i.iz, 0
  br i1 %i.jc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249.thread.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit241

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit241: ; preds = %bb.bv
  %i.jd = load ptr, ptr @_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E, align 8, !tbaa !163
  %i.je = load ptr, ptr %10, align 8, !tbaa !163
  %bcmp.i240 = call i32 @bcmp(ptr %i.je, ptr %i.jd, i64 %i.iz)
  %i.jf = icmp eq i32 %bcmp.i240, 0
  br i1 %i.jf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249.thread.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit241.thread386

bb.bw:                                            ; preds = %bb.bo
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  %i.ji = extractvalue { ptr, i32 } %i.jg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br label %bb.gn

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit241.thread386: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit241
  %i.jj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E, i64 8), align 8, !tbaa !164
  %i.jk = icmp eq i64 %i.iz, %i.jj
  br i1 %i.jk, label %bb.bx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit245.thread387

bb.bx:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit241.thread386
  %i.jl = icmp eq i64 %i.iz, 0
  br i1 %i.jl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249.thread.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit245

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit245: ; preds = %bb.bx
  %i.jm = load ptr, ptr @_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E, align 8, !tbaa !163
  %i.jn = load ptr, ptr %10, align 8, !tbaa !163
  %bcmp.i244 = call i32 @bcmp(ptr %i.jn, ptr %i.jm, i64 %i.iz)
  %i.jo = icmp eq i32 %bcmp.i244, 0
  br i1 %i.jo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249.thread.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit245.thread387

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit245.thread387: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit241.thread386, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit245
  %i.jp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName18Ellipsoidal_heightB5cxx11E, i64 8), align 8, !tbaa !164
  %i.jq = icmp eq i64 %i.iz, %i.jp
  br i1 %i.jq, label %bb.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.by:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit245.thread387
  %i.jr = icmp eq i64 %i.iz, 0
  br i1 %i.jr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249.thread.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249: ; preds = %bb.by
  %i.js = load ptr, ptr @_ZN5osgeo4proj2cs8AxisName18Ellipsoidal_heightB5cxx11E, align 8, !tbaa !163
  %i.jt = load ptr, ptr %10, align 8, !tbaa !163
  %bcmp.i248 = call i32 @bcmp(ptr %i.jt, ptr %i.js, i64 %i.iz)
  %i.ju = icmp eq i32 %bcmp.i248, 0
  br i1 %i.ju, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249.thread.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249.thread.invoke: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249, %bb.by, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit245, %bb.bx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit241, %bb.bv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit226, %bb.bn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit222, %bb.bm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit218, %bb.bl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.bj
  %i.jv = phi ptr [ %11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit245 ], [ %11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit241 ], [ %10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit226 ], [ %10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit222 ], [ %10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit218 ], [ %10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %10, %bb.bj ], [ %10, %bb.bl ], [ %10, %bb.bm ], [ %10, %bb.bn ], [ %11, %bb.bv ], [ %11, %bb.bx ], [ %11, %bb.by ], [ %11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249 ]
  %i.jw = phi ptr [ @_ZN5osgeo4proj2cs16AxisAbbreviation3lonB5cxx11E, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit245 ], [ @_ZN5osgeo4proj2cs16AxisAbbreviation3latB5cxx11E, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit241 ], [ @_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit226 ], [ @_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit222 ], [ @_ZN5osgeo4proj2cs8AxisName8NorthingB5cxx11E, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit218 ], [ @_ZN5osgeo4proj2cs8AxisName7EastingB5cxx11E, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ @_ZN5osgeo4proj2cs8AxisName7EastingB5cxx11E, %bb.bj ], [ @_ZN5osgeo4proj2cs8AxisName8NorthingB5cxx11E, %bb.bl ], [ @_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E, %bb.bm ], [ @_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E, %bb.bn ], [ @_ZN5osgeo4proj2cs16AxisAbbreviation3latB5cxx11E, %bb.bv ], [ @_ZN5osgeo4proj2cs16AxisAbbreviation3lonB5cxx11E, %bb.bx ], [ @_ZN5osgeo4proj2cs16AxisAbbreviation1hB5cxx11E, %bb.by ], [ @_ZN5osgeo4proj2cs16AxisAbbreviation1hB5cxx11E, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249 ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.jv, ptr noundef nonnull align 8 dereferenceable(32) %i.jw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.ay

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249.thread.invoke, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit245.thread387, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit222.thread384, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit226, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit249
  %i.jx = load ptr, ptr %i.j, align 8, !tbaa !251
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !245
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !247 ; 7 uses
  %i.kb = call noundef ptr @_ZN5osgeo4proj2cs13AxisDirection7valueOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ka) #41 ; 6 uses
  %i.kc = load i64, ptr %i.bw, align 8, !tbaa !164 ; 6 uses
  %i.kd = icmp eq i64 %i.kc, 0                    ; 3 uses
  br i1 %i.kd, label %bb.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit255

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.ke = icmp eq ptr %i.kb, @_ZN5osgeo4proj2cs13AxisDirection12GEOCENTRIC_XE
  br i1 %i.ke, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.kf = load i64, ptr %i.by, align 8, !tbaa !164 ; 3 uses
  %i.kg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation1XB5cxx11E, i64 8), align 8, !tbaa !164
  %i.kh = icmp eq i64 %i.kf, %i.kg
  br i1 %i.kh, label %bb.cb, label %.critedge

bb.cb:                                            ; preds = %bb.ca
  %i.ki = icmp eq i64 %i.kf, 0
  br i1 %i.ki, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit253

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit253: ; preds = %bb.cb
  %i.kj = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation1XB5cxx11E, align 8, !tbaa !163
  %i.kk = load ptr, ptr %11, align 8, !tbaa !163
  %bcmp.i252 = call i32 @bcmp(ptr %i.kk, ptr %i.kj, i64 %i.kf)
  %i.kl = icmp eq i32 %bcmp.i252, 0
  br i1 %i.kl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread.invoke, label %.critedge

bb.cc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread.invoke, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit269.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265.thread
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kn = extractvalue { ptr, i32 } %i.km, 0
  %i.ko = extractvalue { ptr, i32 } %i.km, 1
  br label %bb.gn

bb.cd:                                            ; preds = %bb.bz
  %i.kp = icmp eq ptr %i.kb, @_ZN5osgeo4proj2cs13AxisDirection12GEOCENTRIC_YE
  br i1 %i.kp, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.kq = load i64, ptr %i.by, align 8, !tbaa !164 ; 3 uses
  %i.kr = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation1YB5cxx11E, i64 8), align 8, !tbaa !164
  %i.ks = icmp eq i64 %i.kq, %i.kr
  br i1 %i.ks, label %bb.cf, label %.critedge

bb.cf:                                            ; preds = %bb.ce
  %i.kt = icmp eq i64 %i.kq, 0
  br i1 %i.kt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit257

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit257: ; preds = %bb.cf
  %i.ku = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation1YB5cxx11E, align 8, !tbaa !163
  %i.kv = load ptr, ptr %11, align 8, !tbaa !163
  %bcmp.i256 = call i32 @bcmp(ptr %i.kv, ptr %i.ku, i64 %i.kq)
  %i.kw = icmp eq i32 %bcmp.i256, 0
  br i1 %i.kw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread.invoke, label %.critedge

bb.cg:                                            ; preds = %bb.cd
  %i.kx = icmp eq ptr %i.kb, @_ZN5osgeo4proj2cs13AxisDirection12GEOCENTRIC_ZE
  br i1 %i.kx, label %bb.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit255

bb.ch:                                            ; preds = %bb.cg
  %i.ky = load i64, ptr %i.by, align 8, !tbaa !164 ; 3 uses
  %i.kz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation1ZB5cxx11E, i64 8), align 8, !tbaa !164
  %i.la = icmp eq i64 %i.ky, %i.kz
  br i1 %i.la, label %bb.ci, label %.critedge

bb.ci:                                            ; preds = %bb.ch
  %i.lb = icmp eq i64 %i.ky, 0
  br i1 %i.lb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261: ; preds = %bb.ci
  %i.lc = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation1ZB5cxx11E, align 8, !tbaa !163
  %i.ld = load ptr, ptr %11, align 8, !tbaa !163
  %bcmp.i260 = call i32 @bcmp(ptr %i.ld, ptr %i.lc, i64 %i.ky)
  %i.le = icmp eq i32 %bcmp.i260, 0
  br i1 %i.le, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread.invoke, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread.invoke: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit253, %bb.cb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261, %bb.ci, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit257, %bb.cf
  %i.lf = phi ptr [ @_ZN5osgeo4proj2cs8AxisName12Geocentric_YB5cxx11E, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit257 ], [ @_ZN5osgeo4proj2cs8AxisName12Geocentric_ZB5cxx11E, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261 ], [ @_ZN5osgeo4proj2cs8AxisName12Geocentric_YB5cxx11E, %bb.cf ], [ @_ZN5osgeo4proj2cs8AxisName12Geocentric_ZB5cxx11E, %bb.ci ], [ @_ZN5osgeo4proj2cs8AxisName12Geocentric_XB5cxx11E, %bb.cb ], [ @_ZN5osgeo4proj2cs8AxisName12Geocentric_XB5cxx11E, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit253 ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.lf)
          to label %.critedge unwind label %bb.cc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit255: ; preds = %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.lg = icmp eq ptr %i.kb, null
  %or.cond = and i1 %5, %i.lg
  br i1 %or.cond, label %bb.cj, label %.critedge

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit255
  %i.lh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName12Geocentric_XB5cxx11E, i64 8), align 8, !tbaa !164
  %i.li = icmp eq i64 %i.kc, %i.lh
  br i1 %i.li, label %bb.ck, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265.thread395

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.kd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265: ; preds = %bb.ck
  %i.lj = load ptr, ptr @_ZN5osgeo4proj2cs8AxisName12Geocentric_XB5cxx11E, align 8, !tbaa !163
  %i.lk = load ptr, ptr %10, align 8, !tbaa !163
  %bcmp.i264 = call i32 @bcmp(ptr %i.lk, ptr %i.lj, i64 %i.kc)
  %i.ll = icmp eq i32 %bcmp.i264, 0
  br i1 %i.ll, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265.thread395.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265.thread: ; preds = %bb.ck, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2cs16AxisAbbreviation1XB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit267.thread unwind label %bb.cc

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265.thread395: ; preds = %bb.cj
  %i.lm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName12Geocentric_YB5cxx11E, i64 8), align 8, !tbaa !164
  %i.ln = icmp eq i64 %i.kc, %i.lm
  br i1 %i.ln, label %bb.cl, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265.thread395.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265
  %i.lo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName12Geocentric_YB5cxx11E, i64 8), align 8, !tbaa !164
  %i.lp = icmp eq i64 %i.kc, %i.lo
  br i1 %i.lp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit269, label %.critedge

bb.cl:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265.thread395
  br i1 %i.kd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit269.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit269

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit269: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265.thread395.thread, %bb.cl
  %i.lq = load ptr, ptr @_ZN5osgeo4proj2cs8AxisName12Geocentric_YB5cxx11E, align 8, !tbaa !163
  %i.lr = load ptr, ptr %10, align 8, !tbaa !163
  %bcmp.i268 = call i32 @bcmp(ptr %i.lr, ptr %i.lq, i64 %i.kc)
  %i.ls = icmp eq i32 %bcmp.i268, 0
  br i1 %i.ls, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit269.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit269.thread: ; preds = %bb.cl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit269
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2cs16AxisAbbreviation1YB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit267.thread unwind label %bb.cc

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread.invoke, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265.thread395.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit257, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit253, %bb.ca, %bb.ce, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit265.thread395, %bb.ch, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit255, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit269
  br i1 %5, label %bb.cm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273.thread397

bb.cm:                                            ; preds = %.critedge
  %i.lt = load i64, ptr %i.bw, align 8, !tbaa !164 ; 3 uses
  %i.lu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName12Geocentric_ZB5cxx11E, i64 8), align 8, !tbaa !164
  %i.lv = icmp eq i64 %i.lt, %i.lu
  br i1 %i.lv, label %bb.cn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273.thread397

bb.cn:                                            ; preds = %bb.cm
  %i.lw = icmp eq i64 %i.lt, 0
  br i1 %i.lw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273: ; preds = %bb.cn
  %i.lx = load ptr, ptr @_ZN5osgeo4proj2cs8AxisName12Geocentric_ZB5cxx11E, align 8, !tbaa !163
  %i.ly = load ptr, ptr %10, align 8, !tbaa !163
  %bcmp.i272 = call i32 @bcmp(ptr %i.ly, ptr %i.lx, i64 %i.lt)
  %i.lz = icmp eq i32 %bcmp.i272, 0
  br i1 %i.lz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273.thread397

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273.thread: ; preds = %bb.cn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !164 ; 6 uses
  %i.mc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs17AxisDirectionWKT15NORTHE, i64 8), align 8, !tbaa !164
  %i.md = icmp eq i64 %i.mb, %i.mc
  br i1 %i.md, label %bb.co, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275.thread398

bb.co:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273.thread
  %i.me = icmp eq i64 %i.mb, 0
  br i1 %i.me, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275: ; preds = %bb.co
  %i.mf = load ptr, ptr @_ZN5osgeo4proj2cs17AxisDirectionWKT15NORTHE, align 8, !tbaa !163
  %i.mg = load ptr, ptr %i.ka, align 8, !tbaa !163
  %bcmp.i274 = call i32 @bcmp(ptr %i.mg, ptr %i.mf, i64 %i.mb)
  %i.mh = icmp eq i32 %bcmp.i274, 0
  br i1 %i.mh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275.thread398

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275.thread398: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275
  %i.mi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs17AxisDirectionWKT15OTHERE, i64 8), align 8, !tbaa !164
  %i.mj = icmp eq i64 %i.mb, %i.mi
  br i1 %i.mj, label %bb.cp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273.thread397

bb.cp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275.thread398
  %i.mk = icmp eq i64 %i.mb, 0
  br i1 %i.mk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit277

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit277: ; preds = %bb.cp
  %i.ml = load ptr, ptr @_ZN5osgeo4proj2cs17AxisDirectionWKT15OTHERE, align 8, !tbaa !163
  %i.mm = load ptr, ptr %i.ka, align 8, !tbaa !163
  %bcmp.i276 = call i32 @bcmp(ptr %i.mm, ptr %i.ml, i64 %i.mb)
  %i.mn = icmp eq i32 %bcmp.i276, 0
  br i1 %i.mn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273.thread397

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275.thread: ; preds = %bb.cp, %bb.co, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit277, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2cs16AxisAbbreviation1ZB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit267.thread unwind label %bb.cc

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273.thread397: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit275.thread398, %bb.cm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit277, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273, %.critedge
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !164 ; 4 uses
  %i.mq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs17AxisDirectionWKT15OTHERE, i64 8), align 8, !tbaa !164
  %i.mr = icmp eq i64 %i.mp, %i.mq
  br i1 %i.mr, label %bb.cq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit281.thread400

bb.cq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273.thread397
  %i.ms = icmp eq i64 %i.mp, 0
  br i1 %i.ms, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit267.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit281

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit281: ; preds = %bb.cq
  %i.mt = load ptr, ptr @_ZN5osgeo4proj2cs17AxisDirectionWKT15OTHERE, align 8, !tbaa !163
  %i.mu = load ptr, ptr %i.ka, align 8, !tbaa !163
  %bcmp.i280 = call i32 @bcmp(ptr %i.mu, ptr %i.mt, i64 %i.mp)
  %i.mv = icmp eq i32 %bcmp.i280, 0
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit267.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit281.thread400

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit281.thread400: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit273.thread397, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit281
  %i.mw = icmp eq i64 %i.mp, 7
  br i1 %i.mw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit267

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit281.thread400
  %i.mx = load ptr, ptr %i.ka, align 8, !tbaa !163 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 1
  %i.mz = xor i32 %i.my, 1313558101
  %i.na = getelementptr i8, ptr %i.mx, i64 3
  %i.nb = load i32, ptr %i.na, align 1
  %i.nc = xor i32 %i.nb, 1314344782
  %i.nd = or i32 %i.mz, %i.nc
  %i.ne = icmp ne i32 %i.nd, 0
  %i.nf = zext i1 %i.ne to i32
  %i.ng = icmp eq i32 %i.nf, 0
  br i1 %i.ng, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit267

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.nh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.nh, ptr %17, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i64 38, ptr %i.c, align 8, !tbaa !165
  %i.ni = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc283 unwind label %bb.cy ; 3 uses

.noexc283:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store ptr %i.ni, ptr %17, align 8, !tbaa !163
  %i.nj = load i64, ptr %i.c, align 8, !tbaa !165 ; 3 uses
  store i64 %i.nj, ptr %i.nh, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.ni, ptr noundef nonnull align 1 dereferenceable(38) @.str.102, i64 38, i1 false)
  %i.nk = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 %i.nj, ptr %i.nk, align 8, !tbaa !164
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nj
  store i8 0, ptr %i.nl, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.nm = load i8, ptr %1, align 8, !tbaa !270, !range !221, !noundef !222
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %.noexc283
  %i.no = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.no, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.no, align 8, !tbaa !156
  invoke void @__cxa_throw(ptr nonnull %i.no, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %.noexc284 unwind label %bb.cz

.noexc284:                                        ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.no) #41
  br label %.body285

bb.cu:                                            ; preds = %.noexc283
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nr = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #43
          to label %.noexc358 unwind label %bb.cz ; 5 uses

.noexc358:                                        ; preds = %bb.cu
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 32 ; 3 uses
  store ptr %i.nt, ptr %i.ns, align 8, !tbaa !160
  %i.nu = load ptr, ptr %17, align 8, !tbaa !163  ; 2 uses
  %i.nv = load i64, ptr %i.nk, align 8, !tbaa !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i64 %i.nv, ptr %i.a, align 8, !tbaa !165
  %i.nw = icmp ugt i64 %i.nv, 15
  br i1 %i.nw, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc358
  %i.nx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ns, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i.i ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.nx, ptr %i.ns, align 8, !tbaa !163
  %i.ny = load i64, ptr %i.a, align 8, !tbaa !165
  store i64 %i.ny, ptr %i.nt, align 8, !tbaa !166
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %.noexc358
  %i.nz = phi ptr [ %i.nx, %.noexc.i.i ], [ %i.nt, %.noexc358 ] ; 2 uses
  switch i64 %i.nv, label %bb.cw [
    i64 1, label %bb.cv
    i64 0, label %bb.cx
  ]

bb.cv:                                            ; preds = %._crit_edge.i.i.i.i
  %i.oa = load i8, ptr %i.nu, align 1, !tbaa !166
  store i8 %i.oa, ptr %i.nz, align 1, !tbaa !166
  br label %bb.cx

bb.cw:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nz, ptr align 1 %i.nu, i64 %i.nv, i1 false)
  br label %bb.cx

_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i.i: ; preds = %.noexc.i.i.i
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef 48) #44
  br label %.body285

bb.cx:                                            ; preds = %._crit_edge.i.i.i.i, %bb.cv, %bb.cw
  %i.oc = load i64, ptr %i.a, align 8, !tbaa !165 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  store i64 %i.oc, ptr %i.od, align 8, !tbaa !164
  %i.oe = load ptr, ptr %i.ns, align 8, !tbaa !163
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.oc
  store i8 0, ptr %i.of, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.nr, ptr noundef nonnull align 8 dereferenceable(24) %i.nq) #41
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !279
  %i.oi = add i64 %i.oh, 1
  store i64 %i.oi, ptr %i.og, align 8, !tbaa !279
  %i.oj = load ptr, ptr %17, align 8, !tbaa !163  ; 2 uses
  %i.ok = icmp eq ptr %i.oj, %i.nh
  br i1 %i.ok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %bb.cx
end_hunk_0
