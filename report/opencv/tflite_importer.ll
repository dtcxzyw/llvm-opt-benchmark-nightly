Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tflite_importer?download=true
inline.NumInlined: 5833
inline.NumDeleted: 1619
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter16parseConvolutionERKN13opencv_tflite8OperatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsE:_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.b:                                             ; preds = %bb.a
  store ptr %i.bk, ptr %14, align 8, !tbaa !71
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !80
  store <4 x i32> <i32 0, i32 3, i32 1, i32 2>, ptr %i.bk, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !33, !noalias !432
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !83, !noalias !432 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.bt, ptr %15, align 8, !tbaa !81, !alias.scope !433
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i64 0, ptr %i.bu, align 8, !tbaa !83, !alias.scope !433
  store i8 0, ptr %i.bt, align 8, !tbaa !34, !alias.scope !433
  %i.bv = add i64 %i.bs, 14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.bv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !83, !alias.scope !433
  %i.bx = sub i64 4611686018427387903, %i.bw
  %i.by = icmp ult i64 %i.bx, %i.bs
  br i1 %i.by, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %i.bq, i64 noundef %i.bs)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !83, !alias.scope !433
  %i.cb = add i64 %i.ca, -4611686018427387890
  %i.cc = icmp ult i64 %i.cb, 14
  br i1 %i.cc, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.393) #27
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.89, i64 noundef 14)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %15, align 8, !tbaa !33, !alias.scope !433 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bt
  br i1 %i.cg, label %_ZNSt6vectorIiSaIiEED2Ev.exit155, label %_ZNSt6vectorIiSaIiEED2Ev.exit155.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ci = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt3mapIiSt4pairIiiESt4lessIiESaIS0_IKiS1_EEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.cj = load ptr, ptr %i.ao, align 8, !tbaa !98
  %i.ck = load i32, ptr %1, align 4, !tbaa !21
  %i.cl = sext i32 %i.ck to i64
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds i8, ptr %1, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !23 ; 2 uses
  %.not.i.i.i.i = icmp ne i16 %i.cp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !21
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cy = shl i32 %i.cw, 2
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !21
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc ; 3 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !21
  %i.df = sext i32 %i.de to i64
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 %i.dg ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !23
  %i.dj = icmp ugt i16 %i.di, 6
  br i1 %i.dj, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i141, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i143

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i141: ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 6
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !23 ; 2 uses
  %.not.i.i.i142 = icmp eq i16 %i.dl, 0
  br i1 %.not.i.i.i142, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i143, label %_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter6isInt8ERKN13opencv_tflite8OperatorE.exit

_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter6isInt8ERKN13opencv_tflite8OperatorE.exit: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i141
  %i.dm = zext i16 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !34
  %.fr = freeze i8 %i.do
  %i.dp = icmp eq i8 %.fr, 9
  %spec.select = select i1 %i.dp, i32 1, i32 5
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i143

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i143: ; preds = %_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter6isInt8ERKN13opencv_tflite8OperatorE.exit, %bb.e, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i141
  %i.dq = phi i32 [ 5, %bb.e ], [ %spec.select, %_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter6isInt8ERKN13opencv_tflite8OperatorE.exit ], [ 5, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i141 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cn, i64 6
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !23 ; 2 uses
  %.not.i.i.i144 = icmp ne i16 %i.ds, 0
  call void @llvm.assume(i1 %.not.i.i.i144)
  %i.dt = zext i16 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %i.dt ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !21
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !21
  %i.ea = invoke noundef i32 @_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter15addPermuteLayerERKSt6vectorIiSaIiEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairIiiEii(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 4 dereferenceable(8) %i.ci, i32 noundef %i.dq, i32 noundef %i.dz)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i143
  %i.eb = load ptr, ptr %15, align 8, !tbaa !33   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.bt
  br i1 %i.ec, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ed = load i64, ptr %i.bt, align 8, !tbaa !34
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ef = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt3mapIiSt4pairIiiESt4lessIiESaIS0_IKiS1_EEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  store i32 %i.ea, ptr %i.ef, align 4, !tbaa !129
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 0, ptr %i.eg, align 4, !tbaa !130
  %i.eh = load i32, ptr %1, align 4, !tbaa !21
  %i.ei = sext i32 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei                    ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %1, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i16, ptr %i.el, align 2, !tbaa !23 ; 2 uses
  %.not.i.i.i149 = icmp ne i16 %i.em, 0
  call void @llvm.assume(i1 %.not.i.i.i149)
  %i.en = zext i16 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !21
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !21
  %i.eu = sext i32 %i.et to i64
  %i.ev = load ptr, ptr %i.ai, align 8, !tbaa !104
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.eu
  store i32 4, ptr %i.ew, align 4, !tbaa !111
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i156

bb.g:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i143, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %15, align 8, !tbaa !33   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.bt
  br i1 %i.ez, label %_ZNSt6vectorIiSaIiEED2Ev.exit155, label %_ZNSt6vectorIiSaIiEED2Ev.exit155.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit155.sink.split:      ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.cf, %bb.d ], [ %i.ey, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.ce, %bb.d ], [ %i.ex, %bb.g ]
  %i.fa = load i64, ptr %i.bt, align 8, !tbaa !34
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fb) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit155

_ZNSt6vectorIiSaIiEED2Ev.exit155:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit155.sink.split, %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.d ], [ %i.ex, %bb.g ], [ %.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit155.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 16) #28
  br label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i, %_ZNSt6vectorIiSaIiEED2Ev.exit155
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit155 ], [ %i.bl, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.de

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i156: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i137, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %.pre-phi = phi i64 [ %i.ej, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.x, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i137 ], [ %i.x, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ]
  %.061 = phi i1 [ true, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ false, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i137 ], [ false, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ]
  %i.fc = getelementptr inbounds i8, ptr %1, i64 %.pre-phi
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !23 ; 2 uses
  %.not.i.i.i157 = icmp ne i16 %i.fe, 0
  call void @llvm.assume(i1 %.not.i.i.i157)
  %i.ff = zext i16 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !21
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fi ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.fk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.fk, ptr %16, align 8, !tbaa !81
  store i64 7306087011044319600, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 8, ptr %i.fl, align 8, !tbaa !83
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i8 0, ptr %i.fm, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.fn = load i32, ptr %i.fj, align 4, !tbaa !21
  %i.fo = sext i32 %i.fn to i64
  %i.fp = sub nsw i64 0, %i.fo
  %i.fq = getelementptr inbounds i8, ptr %i.fj, i64 %i.fp ; 2 uses
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !23
  %i.fs = icmp ugt i16 %i.fr, 4
  br i1 %i.fs, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK13opencv_tflite13Conv2DOptions7paddingEv.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i156
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !23 ; 2 uses
  %.not.i.i = icmp eq i16 %i.fu, 0
  br i1 %.not.i.i, label %_ZNK13opencv_tflite13Conv2DOptions7paddingEv.exit.thread, label %_ZNK13opencv_tflite13Conv2DOptions7paddingEv.exit

_ZNK13opencv_tflite13Conv2DOptions7paddingEv.exit: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.fv = zext i16 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !34  ; 2 uses
  %.not.i = icmp ult i8 %i.fx, 2
  br i1 %.not.i, label %_ZNK13opencv_tflite13Conv2DOptions7paddingEv.exit.thread, label %_ZN13opencv_tflite15EnumNamePaddingENS_7PaddingE.exit

_ZNK13opencv_tflite13Conv2DOptions7paddingEv.exit.thread: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i156, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %_ZNK13opencv_tflite13Conv2DOptions7paddingEv.exit
  %i.fy = phi i8 [ %i.fx, %_ZNK13opencv_tflite13Conv2DOptions7paddingEv.exit ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i156 ]
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr @_ZZN13opencv_tflite16EnumNamesPaddingEvE5names, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !67
  br label %_ZN13opencv_tflite15EnumNamePaddingENS_7PaddingE.exit

_ZN13opencv_tflite15EnumNamePaddingENS_7PaddingE.exit: ; preds = %_ZNK13opencv_tflite13Conv2DOptions7paddingEv.exit.thread, %_ZNK13opencv_tflite13Conv2DOptions7paddingEv.exit
  %.0.i = phi ptr [ %i.gb, %_ZNK13opencv_tflite13Conv2DOptions7paddingEv.exit.thread ], [ @.str.9, %_ZNK13opencv_tflite13Conv2DOptions7paddingEv.exit ]
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !67
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIPKcEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.h unwind label %bb.am      ; 0 uses

bb.h:                                             ; preds = %_ZN13opencv_tflite15EnumNamePaddingENS_7PaddingE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.gd = load ptr, ptr %16, align 8, !tbaa !33   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fk
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.h
  %i.gf = load i64, ptr %i.fk, align 8, !tbaa !34
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.gh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.gh, ptr %17, align 8, !tbaa !81
  store i64 8601705295241180275, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 8, ptr %i.gi, align 8, !tbaa !83
  %i.gj = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i8 0, ptr %i.gj, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.gk = load i32, ptr %i.fj, align 4, !tbaa !21
  %i.gl = sext i32 %i.gk to i64
  %i.gm = sub nsw i64 0, %i.gl
  %i.gn = getelementptr inbounds i8, ptr %i.fj, i64 %i.gm ; 2 uses
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !23
  %i.gp = icmp ugt i16 %i.go, 6
  br i1 %i.gp, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i165, label %_ZNK13opencv_tflite13Conv2DOptions8stride_wEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 6
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !23 ; 2 uses
  %.not.i.i166 = icmp eq i16 %i.gr, 0
  br i1 %.not.i.i166, label %_ZNK13opencv_tflite13Conv2DOptions8stride_wEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i165
  %i.gs = zext i16 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !21
  br label %_ZNK13opencv_tflite13Conv2DOptions8stride_wEv.exit

_ZNK13opencv_tflite13Conv2DOptions8stride_wEv.exit: ; preds = %bb.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.gv = phi i32 [ %i.gu, %bb.i ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i165 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ]
  store i32 %i.gv, ptr %i.d, align 4, !tbaa !21
  %i.gw = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.j unwind label %bb.an      ; 0 uses

bb.j:                                             ; preds = %_ZNK13opencv_tflite13Conv2DOptions8stride_wEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.gx = load ptr, ptr %17, align 8, !tbaa !33   ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.gh
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.j
  %i.gz = load i64, ptr %i.gh, align 8, !tbaa !34
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.hb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.hb, ptr %18, align 8, !tbaa !81
  store i64 7520841384672261235, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 8, ptr %i.hc, align 8, !tbaa !83
  %i.hd = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i8 0, ptr %i.hd, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.he = load i32, ptr %i.fj, align 4, !tbaa !21
  %i.hf = sext i32 %i.he to i64
  %i.hg = sub nsw i64 0, %i.hf
  %i.hh = getelementptr inbounds i8, ptr %i.fj, i64 %i.hg ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !23
  %i.hj = icmp ugt i16 %i.hi, 8
  br i1 %i.hj, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i174, label %_ZNK13opencv_tflite13Conv2DOptions8stride_hEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !23 ; 2 uses
  %.not.i.i175 = icmp eq i16 %i.hl, 0
  br i1 %.not.i.i175, label %_ZNK13opencv_tflite13Conv2DOptions8stride_hEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i174
  %i.hm = zext i16 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !21
  br label %_ZNK13opencv_tflite13Conv2DOptions8stride_hEv.exit

_ZNK13opencv_tflite13Conv2DOptions8stride_hEv.exit: ; preds = %bb.k, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.hp = phi i32 [ %i.ho, %bb.k ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i174 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ]
  store i32 %i.hp, ptr %i.e, align 4, !tbaa !21
  %i.hq = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.l unwind label %bb.ao      ; 0 uses

bb.l:                                             ; preds = %_ZNK13opencv_tflite13Conv2DOptions8stride_hEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.hr = load ptr, ptr %18, align 8, !tbaa !33   ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.hb
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.l
  %i.ht = load i64, ptr %i.hb, align 8, !tbaa !34
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.hv = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.hv, ptr %19, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.hv, ptr noundef nonnull align 1 dereferenceable(10) @.str.93, i64 10, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 10, ptr %i.hw, align 8, !tbaa !83
  %i.hx = getelementptr inbounds nuw i8, ptr %19, i64 26
  store i8 0, ptr %i.hx, align 2, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.hy = load i32, ptr %i.fj, align 4, !tbaa !21
  %i.hz = sext i32 %i.hy to i64
  %i.ia = sub nsw i64 0, %i.hz
  %i.ib = getelementptr inbounds i8, ptr %i.fj, i64 %i.ia ; 2 uses
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !23
  %i.id = icmp ugt i16 %i.ic, 12
  br i1 %i.id, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183, label %_ZNK13opencv_tflite13Conv2DOptions17dilation_w_factorEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !23 ; 2 uses
  %.not.i.i184 = icmp eq i16 %i.if, 0
  br i1 %.not.i.i184, label %_ZNK13opencv_tflite13Conv2DOptions17dilation_w_factorEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183
  %i.ig = zext i16 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !21
  br label %_ZNK13opencv_tflite13Conv2DOptions17dilation_w_factorEv.exit

_ZNK13opencv_tflite13Conv2DOptions17dilation_w_factorEv.exit: ; preds = %bb.m, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %i.ij = phi i32 [ %i.ii, %bb.m ], [ 1, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ]
  store i32 %i.ij, ptr %i.f, align 4, !tbaa !21
  %i.ik = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.n unwind label %bb.ap      ; 0 uses

bb.n:                                             ; preds = %_ZNK13opencv_tflite13Conv2DOptions17dilation_w_factorEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.il = load ptr, ptr %19, align 8, !tbaa !33   ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.hv
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn14dnn5_v2026060514TFLiteImporter11parseReduceERKN13opencv_tflite8OperatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsE:bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull @.str.165, i64 noundef 6) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !83   ; 3 uses
  switch i64 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread120 [
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.j = load i64, ptr %i.i, align 1
  %i.k = xor i64 %i.j, 5575251019203626322
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load i16, ptr %i.l, align 1
  %i.n = zext i16 %i.m to i64
  %i.o = xor i64 %i.n, 22593
  %i.p = or i64 %i.k, %i.o
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread120

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.t, ptr %6, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.t, ptr noundef nonnull align 1 dereferenceable(6) @.str.166, i64 6, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %i.u, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 0, ptr %i.v, align 2, !tbaa !34
  %i.w = invoke noundef nonnull align 1 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIA4_cEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(4) @.str.114)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.x = load ptr, ptr %6, align 8, !tbaa !33     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.t
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.z = load i64, ptr %i.t, align 8, !tbaa !34
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.t
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.c
  %i.ae = load i64, ptr %i.t, align 8, !tbaa !34
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ap

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53: ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !33
  %bcmp.i52 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.71, i64 %i.h)
  %i.ag = icmp eq i32 %bcmp.i52, 0
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread120

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ah, ptr %7, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ah, ptr noundef nonnull align 1 dereferenceable(6) @.str.166, i64 6, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 6, ptr %i.ai, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i8 0, ptr %i.aj, align 2, !tbaa !34
  %i.ak = invoke noundef nonnull align 1 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIA4_cEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(4) @.str.108)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread
  %i.al = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ah
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.d
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !34
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ah
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.e
  %i.as = load i64, ptr %i.ah, align 8, !tbaa !34
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ap

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65: ; preds = %bb.a
  %.pre122 = load ptr, ptr %2, align 8, !tbaa !33
  %bcmp.i64 = tail call i32 @bcmp(ptr %.pre122, ptr nonnull @.str.72, i64 %i.h)
  %i.au = icmp eq i32 %bcmp.i64, 0
  br i1 %i.au, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread120

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.av, ptr %8, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.av, ptr noundef nonnull align 1 dereferenceable(6) @.str.166, i64 6, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 6, ptr %i.aw, align 8, !tbaa !83
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i8 0, ptr %i.ax, align 2, !tbaa !34
  %i.ay = invoke noundef nonnull align 1 dereferenceable(5) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIA5_cEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(5) @.str.167)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread
  %i.az = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.av
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.f
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !34
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.av
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.g
  %i.bg = load i64, ptr %i.av, align 8, !tbaa !34
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ap

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread120: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.168, ptr noundef nonnull align 8 dereferenceable(32) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060514TFLiteImporter11parseReduceERKN13opencv_tflite8OperatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsE, ptr noundef nonnull @.str.1, i32 noundef 1010) #27
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread120
  unreachable

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread120
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !34
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ap

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = load i32, ptr %1, align 4, !tbaa !21
  %i.bp = sext i32 %i.bo to i64
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr inbounds i8, ptr %1, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !23 ; 2 uses
  %.not.i.i.i.i = icmp ne i16 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bu = zext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !21
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.bz, ptr %10, align 8, !tbaa !81
  store i64 8317419966926513515, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 8, ptr %i.ca, align 8, !tbaa !83
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 0, ptr %i.cb, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.cc = load i32, ptr %i.by, align 4, !tbaa !21
  %i.cd = sext i32 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.by, i64 %i.ce ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !23
  %i.ch = icmp ugt i16 %i.cg, 4
  br i1 %i.ch, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK13opencv_tflite14ReducerOptions9keep_dimsEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !23 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i.i, label %_ZNK13opencv_tflite14ReducerOptions9keep_dimsEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.ck = zext i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !34
  %i.cn = icmp ne i8 %i.cm, 0
  %i.co = zext i1 %i.cn to i8
  br label %_ZNK13opencv_tflite14ReducerOptions9keep_dimsEv.exit

_ZNK13opencv_tflite14ReducerOptions9keep_dimsEv.exit: ; preds = %bb.j, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.cp = phi i8 [ %i.co, %bb.j ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ]
  store i8 %i.cp, ptr %i.a, align 1, !tbaa !95
  %i.cq = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIbEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.k unwind label %bb.m       ; 0 uses

bb.k:                                             ; preds = %_ZNK13opencv_tflite14ReducerOptions9keep_dimsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.cr = load ptr, ptr %10, align 8, !tbaa !33   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bz
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.k
  %i.ct = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.cw = load i32, ptr %1, align 4, !tbaa !21
  %i.cx = sext i32 %i.cw to i64
  %i.cy = sub nsw i64 0, %i.cx
  %i.cz = getelementptr inbounds i8, ptr %1, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 6
  %i.db = load i16, ptr %i.da, align 2, !tbaa !23 ; 2 uses
  %.not.i.i.i87 = icmp ne i16 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i.i87)
  %i.dc = zext i16 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %i.dc ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !21
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !21 ; 3 uses
  store i32 %i.di, ptr %i.b, align 4, !tbaa !21
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !86 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !21
  %i.do = icmp slt i32 %i.dn, %i.di               ; 2 uses
  %.19.i.i.i.i = select i1 %i.do, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.do, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !101 ; 2 uses
  %.not.i.i.i.i88 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i88, label %_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.dp = icmp eq ptr %.19.i.i.i.i, %i.dl
  br i1 %i.dp, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !21
  %i.ds = icmp slt i32 %i.di, %i.dr
  br i1 %i.ds, label %.critedge.i, label %_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEEixEOi.exit

.critedge.i:                                      ; preds = %bb.l, %_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.l ], [ %.19.i.i.i.i, %_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.b, ptr %4, align 8, !tbaa !103, !alias.scope !681
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.dt = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiN2cv3MatEESt10_Select1stIS4_ESt4lessIiESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEEixEOi.exit

_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEEixEOi.exit: ; preds = %bb.l, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.dt, %.critedge.i ], [ %.19.i.i.i.i, %bb.l ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  call void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(208) %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.dv = load i32, ptr %11, align 8, !tbaa !179
  %i.dw = and i32 %i.dv, 4095                     ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 4
  br i1 %i.dx, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i92, label %bb.o

bb.m:                                             ; preds = %_ZNK13opencv_tflite14ReducerOptions9keep_dimsEv.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.dz = load ptr, ptr %10, align 8, !tbaa !33   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.bz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.m
  %i.eb = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ap

bb.n:                                             ; preds = %bb.o
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.o:                                             ; preds = %_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEEixEOi.exit
  invoke void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef %i.dw, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v2026060514TFLiteImporter11parseReduceERKN13opencv_tflite8OperatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsEE16__cv_check__1016) #27
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  unreachable

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i92: ; preds = %_ZNSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEEixEOi.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ef = load i32, ptr %1, align 4, !tbaa !21
  %i.eg = sext i32 %i.ef to i64
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %1, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 6
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !23 ; 2 uses
  %.not.i.i.i93 = icmp ne i16 %i.ek, 0
  call void @llvm.assume(i1 %.not.i.i.i93)
  %i.el = zext i16 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !21
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !21
  %i.es = sext i32 %i.er to i64
  %i.et = load ptr, ptr %i.ee, align 8, !tbaa !104
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.es
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !111
  %i.ew = icmp eq i32 %i.ev, 4
  br i1 %i.ew, label %.preheader, label %._crit_edge.i.i101

.preheader:                                       ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i92
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 84 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %_ZN2cv3Mat2atIiEERT_i.exit100
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN2cv3Mat2atIiEERT_i.exit100 ] ; 10 uses
  %i.fd = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.r unwind label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.fe = icmp ugt i64 %i.fd, %indvars.iv
  br i1 %i.fe, label %bb.t, label %._crit_edge.i.i101

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao
end_hunk_1
