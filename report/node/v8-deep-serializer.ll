inline.NumInlined: 446
inline.NumDeleted: 256
begin_hunk_0_@_ZN12v8_inspector16V8DeepSerializer16serializeV8ValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE:bb.a

_ZN12v8_inspector8String16D2Ev.exit117:           ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #9
  %i.rt = load ptr, ptr %57, align 8              ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.rv = icmp eq ptr %i.rt, %i.ru
  br i1 %i.rv, label %_ZN12v8_inspector8String16D2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i118

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i118: ; preds = %_ZN12v8_inspector8String16D2Ev.exit117
  %i.rw = load i64, ptr %i.ru, align 8
  %i.rx = shl i64 %i.rw, 1
  %i.ry = add i64 %i.rx, 2
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.ry) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit120

_ZN12v8_inspector8String16D2Ev.exit120:           ; preds = %_ZN12v8_inspector8String16D2Ev.exit117, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #9
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #9
  br label %bb.cn

bb.cg:                                            ; preds = %bb.ce
  %i.rz = tail call noundef zeroext i1 @_ZNK2v85Value13IsArrayBufferEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #9
  br i1 %i.rz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #9
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %59, ptr noundef nonnull @.str) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #9
  %i.sa = load ptr, ptr @_ZN12v8_inspector8protocol7Runtime19DeepSerializedValue8TypeEnum11ArraybufferE, align 8
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %60, ptr noundef %i.sa) #9
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setStringERKNS_8String16ES4_(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(40) %59, ptr noundef nonnull align 8 dereferenceable(40) %60) #9
  %i.sb = load ptr, ptr %60, align 8              ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.sd = icmp eq ptr %i.sb, %i.sc
  br i1 %i.sd, label %_ZN12v8_inspector8String16D2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i121

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i121: ; preds = %bb.ch
  %i.se = load i64, ptr %i.sc, align 8
  %i.sf = shl i64 %i.se, 1
  %i.sg = add i64 %i.sf, 2
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.sg) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit123

_ZN12v8_inspector8String16D2Ev.exit123:           ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #9
  %i.sh = load ptr, ptr %59, align 8              ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.sj = icmp eq ptr %i.sh, %i.si
  br i1 %i.sj, label %_ZN12v8_inspector8String16D2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i124

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i124: ; preds = %_ZN12v8_inspector8String16D2Ev.exit123
  %i.sk = load i64, ptr %i.si, align 8
  %i.sl = shl i64 %i.sk, 1
  %i.sm = add i64 %i.sl, 2
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sm) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit126

_ZN12v8_inspector8String16D2Ev.exit126:           ; preds = %_ZN12v8_inspector8String16D2Ev.exit123, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #9
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #9
  br label %bb.cn

bb.ci:                                            ; preds = %bb.cg
  %i.sn = tail call noundef zeroext i1 @_ZNK2v85Value10IsFunctionEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #9
  br i1 %i.sn, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #9
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %61, ptr noundef nonnull @.str) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #9
  %i.so = load ptr, ptr @_ZN12v8_inspector8protocol7Runtime19DeepSerializedValue8TypeEnum8FunctionE, align 8
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %62, ptr noundef %i.so) #9
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setStringERKNS_8String16ES4_(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(40) %61, ptr noundef nonnull align 8 dereferenceable(40) %62) #9
  %i.sp = load ptr, ptr %62, align 8              ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %_ZN12v8_inspector8String16D2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i127

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i127: ; preds = %bb.cj
  %i.ss = load i64, ptr %i.sq, align 8
  %i.st = shl i64 %i.ss, 1
  %i.su = add i64 %i.st, 2
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.su) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit129

_ZN12v8_inspector8String16D2Ev.exit129:           ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #9
  %i.sv = load ptr, ptr %61, align 8              ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.sx = icmp eq ptr %i.sv, %i.sw
  br i1 %i.sx, label %_ZN12v8_inspector8String16D2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i130

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i130: ; preds = %_ZN12v8_inspector8String16D2Ev.exit129
  %i.sy = load i64, ptr %i.sw, align 8
  %i.sz = shl i64 %i.sy, 1
  %i.ta = add i64 %i.sz, 2
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.ta) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit132

_ZN12v8_inspector8String16D2Ev.exit132:           ; preds = %_ZN12v8_inspector8String16D2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #9
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #9
  br label %bb.cn

bb.ck:                                            ; preds = %bb.ci
  %i.tb = tail call noundef zeroext i1 @_ZNK2v85Value17IsGeneratorObjectEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #9
  br i1 %i.tb, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #9
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef nonnull @.str) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #9
  %i.tc = load ptr, ptr @_ZN12v8_inspector8protocol7Runtime19DeepSerializedValue8TypeEnum9GeneratorE, align 8
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %64, ptr noundef %i.tc) #9
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setStringERKNS_8String16ES4_(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef nonnull align 8 dereferenceable(40) %64) #9
  %i.td = load ptr, ptr %64, align 8              ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.tf = icmp eq ptr %i.td, %i.te
  br i1 %i.tf, label %_ZN12v8_inspector8String16D2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i133

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i133: ; preds = %bb.cl
  %i.tg = load i64, ptr %i.te, align 8
  %i.th = shl i64 %i.tg, 1
  %i.ti = add i64 %i.th, 2
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.ti) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit135

_ZN12v8_inspector8String16D2Ev.exit135:           ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #9
  %i.tj = load ptr, ptr %63, align 8              ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.tl = icmp eq ptr %i.tj, %i.tk
  br i1 %i.tl, label %_ZN12v8_inspector8String16D2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i136

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i136: ; preds = %_ZN12v8_inspector8String16D2Ev.exit135
  %i.tm = load i64, ptr %i.tk, align 8
  %i.tn = shl i64 %i.tm, 1
  %i.to = add i64 %i.tn, 2
  call void @_ZdlPvm(ptr noundef %i.tj, i64 noundef %i.to) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit138

_ZN12v8_inspector8String16D2Ev.exit138:           ; preds = %_ZN12v8_inspector8String16D2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #9
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #9
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  tail call fastcc void @_ZN12v8_inspector12_GLOBAL__N_115SerializeObjectEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %1, ptr %2, i32 noundef %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(96) %6)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_ZN12v8_inspector8String16D2Ev.exit138, %_ZN12v8_inspector8String16D2Ev.exit132, %_ZN12v8_inspector8String16D2Ev.exit126, %_ZN12v8_inspector8String16D2Ev.exit120, %_ZN12v8_inspector8String16D2Ev.exit114, %_ZN12v8_inspector8String16D2Ev.exit108, %_ZN12v8_inspector8String16D2Ev.exit102, %_ZN12v8_inspector8String16D2Ev.exit96, %_ZN12v8_inspector8String16D2Ev.exit90, %_ZN12v8_inspector12_GLOBAL__N_112SerializeSetEN2v85LocalINS1_3SetEEENS2_INS1_7ContextEEEiNS2_INS1_6ObjectEEERNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE.exit, %_ZN12v8_inspector12_GLOBAL__N_112SerializeMapEN2v85LocalINS1_3MapEEENS2_INS1_7ContextEEEiNS2_INS1_6ObjectEEERNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE.exit, %_ZN12v8_inspector12_GLOBAL__N_113SerializeDateEN2v85LocalINS1_4DateEEENS2_INS1_7ContextEEERNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE.exit, %_ZN12v8_inspector12_GLOBAL__N_115SerializeRegexpEN2v85LocalINS1_6RegExpEEENS2_INS1_7ContextEEERNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE.exit, %_ZN12v8_inspector12_GLOBAL__N_114SerializeArrayEN2v85LocalINS1_5ArrayEEENS2_INS1_7ContextEEEiNS2_INS1_6ObjectEEERNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE.exit
  ret void
}

declare noundef zeroext i1 @_ZNK2v85Value7IsArrayEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef zeroext i1 @_ZNK2v85Value8IsRegExpEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value6IsDateEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value5IsMapEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value5IsSetEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value9IsWeakMapEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare void @_ZN12v8_inspector8protocol15DictionaryValue9setStringERKNS_8String16ES4_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value9IsWeakSetEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value13IsNativeErrorEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value7IsProxyEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value9IsPromiseEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value12IsTypedArrayEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value13IsArrayBufferEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value10IsFunctionEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85Value17IsGeneratorObjectEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12v8_inspector12_GLOBAL__N_115SerializeObjectEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerERNS_8protocol15DictionaryValueE(ptr dead_on_unwind noalias writable align 8 %0, ptr %1, ptr %2, i32 noundef %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(96) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.std::unique_ptr.42", align 8 ; 7 uses
  %8 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  %9 = alloca %"class.std::unique_ptr.50", align 8 ; 5 uses
  %10 = alloca %"class.std::unique_ptr.27", align 8 ; 6 uses
  %11 = alloca %"class.std::unique_ptr.27", align 8 ; 6 uses
  %12 = alloca %"class.std::unique_ptr.27", align 8 ; 6 uses
  %13 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %14 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %15 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %16 = alloca %"class.std::unique_ptr.27", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull @.str) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.a = load ptr, ptr @_ZN12v8_inspector8protocol7Runtime19DeepSerializedValue8TypeEnum6ObjectE, align 8
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef %i.a) #9
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setStringERKNS_8String16ES4_(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %14) #9
  %i.b = load ptr, ptr %14, align 8               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = shl i64 %i.e, 1
  %i.g = add i64 %i.f, 2
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.h = load ptr, ptr %13, align 8               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN12v8_inspector8String16D2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i12: ; preds = %_ZN12v8_inspector8String16D2Ev.exit
  %i.k = load i64, ptr %i.i, align 8
  %i.l = shl i64 %i.k, 1
  %i.m = add i64 %i.l, 2
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit14

_ZN12v8_inspector8String16D2Ev.exit14:            ; preds = %_ZN12v8_inspector8String16D2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %bb.b, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit14
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.o = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11, !noalias !78 ; 10 uses
  call void @_ZN12v8_inspector8protocol9ListValueC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #9, !noalias !78
  %i.p = call ptr @_ZN2v86Object19GetOwnPropertyNamesENS_5LocalINS_7ContextEEENS_14PropertyFilterENS_17KeyConversionModeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %2, i32 noundef 18, i32 noundef 0) #9, !noalias !75 ; 3 uses
  %.not81.i = icmp eq ptr %i.p, null
  br i1 %.not81.i, label %bb.c, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = call noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.p) #9 ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.s, align 8              ; 9 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 4 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = icmp ult i64 %i.z, %i.r
  br i1 %i.aa, label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i, label %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.ae = sub i64 %i.ad, %i.x
  %i.af = shl nuw nsw i64 %i.r, 3
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #11 ; 9 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.v, %i.ac
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i
  %i.ah = add i64 %i.ad, -8
  %i.ai = sub i64 %i.ah, %i.x                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader67, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.al = add i64 %i.ad, -8
  %i.am = sub i64 %i.al, %i.x
  %i.an = and i64 %i.am, -8
  %i.ao = add i64 %i.an, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.ao
  %scevgep63 = getelementptr i8, ptr %i.v, i64 %i.ao
  %bound0 = icmp ult ptr %i.ag, %scevgep63
  %bound1 = icmp ult ptr %i.v, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.v, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.as ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.v, i64 %i.as ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.at = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep64, align 8, !alias.scope !86, !noalias !81
  %wide.load65 = load <2 x i64>, ptr %i.at, align 8, !alias.scope !86, !noalias !81
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !89, !noalias !86
  store <2 x i64> %wide.load65, ptr %i.au, align 8, !alias.scope !89, !noalias !86
  %i.av = getelementptr i8, ptr %next.gep64, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep64, align 8, !alias.scope !86, !noalias !81
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !alias.scope !86, !noalias !81
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader67

.lr.ph.i.i.i.i.i.i.preheader67:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader67, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader67 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader67 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !84, !noalias !81
  store i64 %i.ax, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !81, !noalias !84
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !84, !noalias !81
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ac
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !92

_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.pre.i.i.i = load ptr, ptr %i.s, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i, %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i
  %i.ba = phi ptr [ %.pre.i.i.i, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i.i ], [ %i.v, %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i.i ] ; 3 uses
  %.not.i8.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i8.i.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i
  %i.bb = load ptr, ptr %i.t, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.be) #10
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i

_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i.i
  store ptr %i.ag, ptr %i.s, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store ptr %i.bf, ptr %i.ab, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.r
  store ptr %i.bg, ptr %i.t, align 8
  br label %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i

_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i, %bb.d
  %.not84.not.i = icmp eq i32 %i.q, 0
  br i1 %.not84.not.i, label %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bk = add nsw i32 %3, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.u, %.lr.ph.i
  %.085.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ei, %bb.u ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9, !noalias !75
  store ptr null, ptr %7, align 8, !noalias !75
  %i.bn = call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEEj(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr %2, i32 noundef %.085.i) #9 ; 5 uses
  %.not82.i = icmp eq ptr %i.bn, null
  br i1 %.not82.i, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = and i64 %i.bo, 3
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %_ZNK2v85Value13QuickIsStringEv.exit.i, label %_ZNK2v85Value13QuickIsStringEv.exit.thread.i, !prof !93

_ZNK2v85Value13QuickIsStringEv.exit.i:            ; preds = %bb.h
  %i.br = add nsw i64 %i.bo, -1
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = add i64 %i.bt, 11
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = icmp ult i16 %i.bw, 128
  br i1 %i.bx, label %bb.i, label %_ZNK2v85Value13QuickIsStringEv.exit.thread.i, !prof !94

_ZNK2v85Value13QuickIsStringEv.exit.thread.i:     ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.i, %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8) #12
  unreachable

bb.i:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.i
  %i.by = call i16 @_ZN2v86Object20HasRealNamedPropertyENS_5LocalINS_7ContextEEENS1_INS_4NameEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %2, ptr nonnull %i.bn) #9
  %i.bz = and i16 %i.by, 257
  %or.cond.i = icmp eq i16 %i.bz, 257
  br i1 %or.cond.i, label %bb.j, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9, !noalias !75
  %i.ca = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #9
  call void @_ZN12v8_inspector16toProtocolStringEPN2v87IsolateENS0_5LocalINS0_6StringEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %8, ptr noundef %i.ca, ptr nonnull %i.bn) #9
  %i.cb = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #11, !noalias !95 ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 4, ptr %i.cc, align 8, !noalias !95
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12v8_inspector8protocol11StringValueE, i64 16), ptr %i.cb, align 8, !noalias !95
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 3 uses
  store ptr %i.ce, ptr %i.cd, align 8, !noalias !95
  %i.cf = load ptr, ptr %8, align 8, !noalias !98 ; 4 uses
  %i.cg = load i64, ptr %i.bh, align 8, !noalias !98 ; 8 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.cg, 1      ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, 7
  br i1 %i.ch, label %bb.k, label %._crit_edge.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ci = icmp ugt i64 %i.cg, 4611686018427387903
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #12, !noalias !95
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cj = icmp eq i64 %i.cg, 4611686018427387903
  br i1 %i.cj, label %bb.n, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !19

bb.n:                                             ; preds = %bb.m
  call void @_ZSt17__throw_bad_allocv() #12, !noalias !95
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.ck = add nuw nsw i64 %.idx.i.i.i.i.i, 2
  %i.cl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #11, !noalias !95 ; 2 uses
  store ptr %i.cl, ptr %i.cd, align 8, !noalias !95
  store i64 %i.cg, ptr %i.ce, align 8, !noalias !95
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i, %bb.j
  %i.cm = phi ptr [ %i.cl, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i ], [ %i.ce, %bb.j ] ; 3 uses
  switch i64 %i.cg, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cn = load i16, ptr %i.cf, align 2, !noalias !95
  store i16 %i.cn, ptr %i.cm, align 2, !noalias !95
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cm, ptr align 2 %i.cf, i64 %.idx.i.i.i.i.i, i1 false), !noalias !95
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store i64 %i.cg, ptr %i.co, align 8, !noalias !95
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.i.i.i.i
  store i16 0, ptr %i.cp, align 2, !noalias !95
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cr = load i64, ptr %i.bi, align 8, !noalias !98
  store i64 %i.cr, ptr %i.cq, align 8, !noalias !95
  %i.cs = icmp eq ptr %i.cf, %i.bj
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i
  %i.ct = icmp samesign ult i64 %i.cg, 8
  call void @llvm.assume(i1 %i.ct)
  br label %_ZN12v8_inspector8String16D2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol11StringValueESt14default_deleteIS2_EED2Ev.exit.i
  %i.cu = load i64, ptr %i.bj, align 8, !noalias !75
  %i.cv = shl i64 %i.cu, 1
  %i.cw = add i64 %i.cv, 2
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cw) #10
  br label %_ZN12v8_inspector8String16D2Ev.exit.i

_ZN12v8_inspector8String16D2Ev.exit.i:            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9, !noalias !75
  %i.cx = call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %2, ptr nonnull %i.bn) #9 ; 2 uses
  %.not83.i = icmp eq ptr %i.cx, null
  br i1 %.not83.i, label %bb.q, label %bb.r, !prof !19

bb.q:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  unreachable

bb.r:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9, !noalias !75
  call void @_ZN12v8_inspector11ValueMirror6createEN2v85LocalINS1_7ContextEEENS2_INS1_5ValueEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.50") align 8 %9, ptr %2, ptr nonnull %i.cx) #9
  %i.cy = load ptr, ptr %9, align 8, !noalias !75 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr %2, i32 noundef %i.bk, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %7) #9, !inline_history !99
  %i.dc = load ptr, ptr %9, align 8, !noalias !75 ; 3 uses
  %.not.i25.i = icmp eq ptr %i.dc, null
  br i1 %.not.i25.i, label %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN12v8_inspector11ValueMirrorEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN12v8_inspector11ValueMirrorEEclEPS1_.exit.i.i: ; preds = %bb.r
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dc) #9, !inline_history !100
  br label %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector11ValueMirrorEEclEPS1_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9, !noalias !75
  %i.dg = load i32, ptr %0, align 8, !alias.scope !75
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.s, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.i

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit.i
  %i.di = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11, !noalias !101 ; 4 uses
  call void @_ZN12v8_inspector8protocol9ListValueC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.di) #9, !noalias !101
  %i.dj = ptrtoint ptr %i.cb to i64
  store i64 %i.dj, ptr %10, align 8, !noalias !75
  call void @_ZN12v8_inspector8protocol9ListValue9pushValueESt10unique_ptrINS0_5ValueESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.di, ptr noundef nonnull %10) #9
  %i.dk = load ptr, ptr %10, align 8, !noalias !75 ; 3 uses
  %.not.i26.i = icmp eq ptr %i.dk, null
  br i1 %.not.i26.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i.i: ; preds = %bb.s
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(12) %i.dk) #9, !inline_history !104
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i.i, %bb.s
  %i.do = load ptr, ptr %7, align 8, !noalias !75
  store ptr null, ptr %7, align 8, !noalias !75
  store ptr %i.do, ptr %11, align 8, !noalias !75
  call void @_ZN12v8_inspector8protocol9ListValue9pushValueESt10unique_ptrINS0_5ValueESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.di, ptr noundef nonnull %11) #9
  %i.dp = load ptr, ptr %11, align 8, !noalias !75 ; 3 uses
  %.not.i27.i = icmp eq ptr %i.dp, null
  br i1 %.not.i27.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i28.i

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i28.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(12) %i.dp) #9, !inline_history !104
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i28.i, %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit.i
  store ptr %i.di, ptr %12, align 8, !noalias !75
  call void @_ZN12v8_inspector8protocol9ListValue9pushValueESt10unique_ptrINS0_5ValueESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull %12) #9
  %i.dt = load ptr, ptr %12, align 8, !noalias !75 ; 3 uses
  %.not.i30.i = icmp eq ptr %i.dt, null
  br i1 %.not.i30.i, label %bb.t, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i31.i

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i31.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(12) %i.dt) #9, !inline_history !104
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i31.i, %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit29.i
  %i.dx = load ptr, ptr %i.bl, align 8, !alias.scope !75 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.bm
  br i1 %i.dy, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.t
  %i.dz = load i64, ptr %i.bm, align 8, !alias.scope !75
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #10
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit.i, %bb.i
  %.sroa.052.1.i = phi ptr [ null, %bb.i ], [ %i.cb, %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit.i ], [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ null, %bb.t ] ; 3 uses
  %.1.i = phi i32 [ 6, %bb.i ], [ 1, %_ZNSt10unique_ptrIN12v8_inspector11ValueMirrorESt14default_deleteIS1_EED2Ev.exit.i ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 0, %bb.t ]
  %i.eb = load ptr, ptr %7, align 8, !noalias !75 ; 3 uses
  %.not.i34.i = icmp eq ptr %i.eb, null
  br i1 %.not.i34.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.i
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(96) %i.eb) #9, !inline_history !105
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i, %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9, !noalias !75
  %.not.i35.i = icmp eq ptr %.sroa.052.1.i, null
  br i1 %.not.i35.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i36.i

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i36.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i
  %i.ef = load ptr, ptr %.sroa.052.1.i, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.052.1.i) #9, !inline_history !104
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.i

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i36.i, %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i
  switch i32 %.1.i, label %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit.thread [
    i32 0, label %bb.u
    i32 6, label %bb.u
  ]

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.i, %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.i
  %i.ei = add nuw i32 %.085.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ei, %i.q
  br i1 %exitcond.not.i, label %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit, label %bb.f, !llvm.loop !106

_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit: ; preds = %bb.u, %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit.i
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.ej = load i32, ptr %0, align 8
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.v, label %_ZNKSt14default_deleteIN12v8_inspector8protocol9ListValueEEclEPS2_.exit.i

_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit.thread: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit37.i
  %i.el = load ptr, ptr %i.o, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #9, !inline_history !107
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.eo = load i32, ptr %0, align 8
  %i.ep = icmp eq i32 %i.eo, 1
  br i1 %i.ep, label %bb.v, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.thread

bb.v:                                             ; preds = %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit.thread, %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit
  %.sroa.0.159 = phi ptr [ null, %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit.thread ], [ %i.o, %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull @.str.1) #9
  store ptr %.sroa.0.159, ptr %16, align 8
  call void @_ZN12v8_inspector8protocol15DictionaryValue8setValueERKNS_8String16ESt10unique_ptrINS0_5ValueESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull %16) #9
  %i.eq = load ptr, ptr %16, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.eq, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i: ; preds = %bb.v
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(12) %i.eq) #9, !inline_history !108
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.v, %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i
  %i.eu = load ptr, ptr %15, align 8              ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i16, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit
  %i.ex = load i64, ptr %i.ev, align 8
  %i.ey = shl i64 %i.ex, 1
  %i.ez = add i64 %i.ey, 2
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ez) #10
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i16

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i16: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8            ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i16
  %i.fe = load i64, ptr %i.fc, align 8
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #10
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN12v8_inspector8protocol9ListValueEEclEPS2_.exit.i: ; preds = %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit
  %i.fg = load ptr, ptr %i.o, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #9, !inline_history !109
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.thread

_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZN12v8_inspector8String16D2Ev.exit14
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #9
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.thread

_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %_ZN12v8_inspector12_GLOBAL__N_120SerializeObjectValueEN2v85LocalINS1_6ObjectEEENS2_INS1_7ContextEEEiS4_RNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISB_EE.exit.thread, %_ZNKSt14default_deleteIN12v8_inspector8protocol9ListValueEEclEPS2_.exit.i, %_ZNSt10unique_ptrIN12v8_inspector8protocol9ListValueESt14default_deleteIS2_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12v8_inspector12_GLOBAL__N_119SerializeArrayValueEN2v85LocalINS1_5ArrayEEENS2_INS1_7ContextEEEiNS2_INS1_6ObjectEEERNS_31V8SerializationDuplicateTrackerEPSt10unique_ptrINS_8protocol9ListValueESt14default_deleteISD_EE(ptr dead_on_unwind noalias writable align 8 %0, ptr %1, ptr %2, i32 noundef range(i32 1, -2147483648) %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.std::unique_ptr.42", align 8 ; 8 uses
  %8 = alloca %"class.std::unique_ptr.50", align 8 ; 5 uses
  %9 = alloca %"class.std::unique_ptr.27", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11, !noalias !110 ; 8 uses
  tail call void @_ZN12v8_inspector8protocol9ListValueC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #9, !noalias !110
  %i.b = tail call noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #9 ; 3 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.d, align 8              ; 9 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = icmp ult i64 %i.k, %i.c
  br i1 %i.l, label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i, label %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.p = sub i64 %i.o, %i.i
  %i.q = shl nuw nsw i64 %i.c, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #11 ; 9 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.n
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i
  %i.s = add i64 %i.o, -8
  %i.t = sub i64 %i.s, %i.i                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader60, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.w = add i64 %i.o, -8
  %i.x = sub i64 %i.w, %i.i
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.z
  %scevgep55 = getelementptr i8, ptr %i.g, i64 %i.z
  %bound0 = icmp ult ptr %i.r, %scevgep55
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.g, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ad ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.g, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.ae = getelementptr i8, ptr %next.gep56, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep56, align 8, !alias.scope !118, !noalias !113
  %wide.load57 = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !118, !noalias !113
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !121, !noalias !118
  store <2 x i64> %wide.load57, ptr %i.af, align 8, !alias.scope !121, !noalias !118
  %i.ag = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep56, align 8, !alias.scope !118, !noalias !113
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !alias.scope !118, !noalias !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.preheader60

.lr.ph.i.i.i.i.i.preheader60:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader60, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader60 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !116, !noalias !113
  store i64 %i.ai, ptr %.012.i.i.i.i.i, align 8, !alias.scope !113, !noalias !116
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !116, !noalias !113
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !124

_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.pre.i.i = load ptr, ptr %i.d, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i, %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i
  %i.al = phi ptr [ %.pre.i.i, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i.i ], [ %i.g, %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.not.i8.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i
  %i.am = load ptr, ptr %i.e, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #10
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i

_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i
  store ptr %i.r, ptr %i.d, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store ptr %i.aq, ptr %i.m, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.c
  store ptr %i.ar, ptr %i.e, align 8
  br label %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit

_ZN12v8_inspector8protocol9ListValue7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i
  %.not39.not = icmp eq i32 %i.b, 0
  br i1 %.not39.not, label %.critedge21, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12v8_inspector8protocol9ListValue7reserveEm.exit
end_hunk_0
