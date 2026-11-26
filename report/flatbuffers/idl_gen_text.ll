Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_text?download=true
inline.NumInlined: 1776
inline.NumDeleted: 678
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11flatbuffers11GenTextFileERKNS_6ParserERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.at = load ptr, ptr %i.as, align 8
  %.not25 = icmp eq ptr %i.at, null
  %or.cond = select i1 %.not, i1 true, i1 %.not25
  br i1 %or.cond, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.au, ptr %5, align 8, !tbaa !147
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.av, align 8, !tbaa !40
  store i8 0, ptr %i.au, align 8, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !263
  %i.ay = invoke noundef ptr @_ZN11flatbuffers7GenTextERKNS_6ParserEPKvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1936) %0, ptr noundef %i.ax, ptr noundef nonnull %5)
          to label %bb.k unwind label %bb.l       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not26 = icmp eq ptr %i.ay, null
  br i1 %.not26, label %bb.m, label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !261 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %.val = load ptr, ptr %1, align 8, !tbaa !41, !noalias !262
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val33 = load i64, ptr %i.bb, align 8, !tbaa !40, !noalias !262
  %.val34 = load ptr, ptr %2, align 8, !tbaa !41, !noalias !262
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val35 = load i64, ptr %i.bc, align 8, !tbaa !40, !noalias !262
  invoke fastcc void @_ZN11flatbuffersL12TextFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind noalias writable align 8 %6, ptr %.val, i64 %.val33, ptr %.val34, i64 %.val35)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr %6, align 8, !tbaa !41
  %i.be = load ptr, ptr %5, align 8, !tbaa !41
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !40
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !149
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef %i.bd, ptr noundef %i.be, i64 noundef %i.bf, i1 noundef zeroext false)
          to label %_ZN11flatbuffers9FileSaver8SaveFileEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %bb.p, !inline_history !258

_ZN11flatbuffers9FileSaver8SaveFileEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %bb.n
  %i.bk = select i1 %i.bj, ptr null, ptr @.str.1
  %i.bl = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZN11flatbuffers9FileSaver8SaveFileEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !42
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZN11flatbuffers9FileSaver8SaveFileEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.p:                                             ; preds = %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.p
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !42
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.o ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.br, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.r

bb.q:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.022 = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %i.ay, %bb.k ]
  %i.bx = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.au
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.q
  %i.bz = load i64, ptr %i.au, align 8, !tbaa !42
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.az, %bb.l ]
  %i.cb = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.au
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.r
  %i.cd = load i64, ptr %i.au, align 8, !tbaa !42
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.t

bb.s:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.123 = phi ptr [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %.022, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ null, %bb.i ]
  ret ptr %.123

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  resume { ptr, i32 } %.pn29.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11flatbuffersL12TextFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.0.val, i64 %.8.val, ptr %.0.val1, i64 %.8.val3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !147, !alias.scope !268
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !40, !alias.scope !268
  store i8 0, ptr %i.a, align 8, !tbaa !42, !alias.scope !268
  %i.c = add i64 %.8.val3, %.8.val
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !40, !alias.scope !268
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %.8.val
  br i1 %i.f, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %.0.val, i64 noundef %.8.val)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.h = load i64, ptr %i.b, align 8, !tbaa !40, !alias.scope !268
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %.8.val3
  br i1 %i.j, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %.0.val1, i64 noundef %.8.val3)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !41, !alias.scope !268 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.a, align 8, !tbaa !42, !alias.scope !268
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.q = load i64, ptr %i.b, align 8, !tbaa !40, !noalias !269
  %i.r = add i64 %i.q, -4611686018427387899
  %i.s = icmp ult i64 %i.r, 5
  br i1 %i.s, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.33, i64 noundef 5)
          to label %.noexc3 unwind label %bb.g    ; 6 uses

.noexc3:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !147, !alias.scope !269
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !41   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc3
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !40   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc3
  store ptr %i.v, ptr %0, align 8, !tbaa !41, !alias.scope !269
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !42
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !42, !alias.scope !269
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ad = phi i64 [ %i.z, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !40, !alias.scope !269
  store ptr %i.w, ptr %i.t, align 8, !tbaa !41
  store i64 0, ptr %i.ae, align 8, !tbaa !40
  store i8 0, ptr %i.w, align 8, !tbaa !42
  %i.ag = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !42
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.a
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.an = load i64, ptr %i.a, align 8, !tbaa !42
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %common.resume
}

; Function Attrs: mustprogress memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @_ZN11flatbuffers20NewTextCodeGeneratorEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.125") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN11flatbuffers12_GLOBAL__N_117TextCodeGeneratorESt14default_deleteIS2_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !147
  store i8 0, ptr %i.d, align 8, !tbaa !42
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11flatbuffers12_GLOBAL__N_117TextCodeGeneratorE, i64 16), ptr %i.a, align 16, !tbaa !149
  store ptr %i.a, ptr %0, align 8, !tbaa !272
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11flatbuffers11JsonPrinter9GenStructERKNS_9StructDefEPKNS_5TableEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39, !nonnull !22, !align !23 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40   ; 4 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.d, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.b
  %i.m = phi ptr [ %.pre.i.i, %bb.b ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  store i8 123, ptr %i.n, align 1, !tbaa !42
  store i64 %i.e, ptr %i.c, align 8, !tbaa !40
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.e
  store i8 0, ptr %i.p, align 1, !tbaa !42
  %i.q = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !22, !align !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !145  ; 2 uses
  %.sroa.speculated.i = tail call noundef i32 @llvm.smax.i32(i32 %i.s, i32 0)
  %i.t = add nsw i32 %.sroa.speculated.i, %3      ; 15 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !274  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !274
  %.not141142 = icmp eq ptr %i.v, %i.x
  br i1 %.not141142, label %_ZNK11flatbuffers5Table12GetAddressOfEt.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 16 uses
  %i.z = sext i32 %i.t to i64
  %.pre = load i8, ptr %i.y, align 8, !tbaa !183, !range !144
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.al
  %i.aa = phi i8 [ %.pre, %.lr.ph ], [ %i.gd, %bb.al ] ; 2 uses
  %.089145 = phi ptr [ null, %.lr.ph ], [ %.291.ph, %bb.al ] ; 2 uses
  %.092144 = phi i32 [ 0, %.lr.ph ], [ %.294.ph, %bb.al ] ; 3 uses
  %.sroa.0129.0143 = phi ptr [ %i.v, %.lr.ph ], [ %i.ge, %bb.al ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.0129.0143, align 8, !tbaa !275 ; 22 uses
  %i.ac = trunc nuw i8 %i.aa to i1
  br i1 %i.ac, label %_ZNK11flatbuffers5Table10CheckFieldEt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !191 ; 2 uses
  %i.af = load i32, ptr %2, align 4, !tbaa !145
  %i.ag = sext i32 %i.af to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.ah ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !192
  %i.ak = icmp ult i16 %i.ae, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZNK11flatbuffers5Table10CheckFieldEt.exit

bb.e:                                             ; preds = %bb.d
  %i.al = zext i16 %i.ae to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !192
  %i.ao = icmp ne i16 %i.an, 0
  br label %_ZNK11flatbuffers5Table10CheckFieldEt.exit

_ZNK11flatbuffers5Table10CheckFieldEt.exit:       ; preds = %bb.e, %bb.d, %bb.c
  %i.ap = phi i1 [ true, %bb.c ], [ %i.ao, %bb.e ], [ false, %bb.d ]
  %i.aq = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !22, !align !23 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 11
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !276, !range !144, !noundef !22
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK11flatbuffers5Table10CheckFieldEt.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 273
  %i.av = load i8, ptr %i.au, align 1, !tbaa !277, !range !144, !noundef !22
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %_ZNK11flatbuffers5Table10CheckFieldEt.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !278
  %i.az = add i32 %i.ay, -1
  %i.ba = icmp ult i32 %i.az, 12
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 272
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !279, !range !144, !noundef !22
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = xor i1 %i.bd, true
  br label %bb.i

end_hunk_0
begin_hunk_1_@_ZNK11flexbuffers9Reference18AsFixedTypedVectorEv:bb.a
  store i32 %.sink5, ptr %i.ab, align 4, !tbaa !256
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ac, align 8, !tbaa !255
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11flexbuffers9Reference6AsBlobEv(ptr dead_on_unwind noalias writable sret(%"class.flexbuffers::Blob") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !243
  switch i32 %i.b, label %bb.o [
    i32 25, label %bb.b
    i32 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !244    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !245   ; 3 uses
  %i.f = icmp ult i8 %i.e, 4
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i8 %i.e, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.c, align 1, !tbaa !42
  %i.i = zext i8 %i.h to i64
  br label %_ZNK11flexbuffers9Reference8IndirectEv.exit

bb.e:                                             ; preds = %bb.c
  %i.j = load i16, ptr %i.c, align 2, !tbaa !192
  %i.k = zext i16 %i.j to i64
  br label %_ZNK11flexbuffers9Reference8IndirectEv.exit

bb.f:                                             ; preds = %bb.b
  %i.l = icmp ult i8 %i.e, 8
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.c, align 4, !tbaa !145
  %i.n = zext i32 %i.m to i64
  br label %_ZNK11flexbuffers9Reference8IndirectEv.exit

bb.h:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.c, align 8, !tbaa !202
  br label %_ZNK11flexbuffers9Reference8IndirectEv.exit

_ZNK11flexbuffers9Reference8IndirectEv.exit:      ; preds = %bb.d, %bb.e, %bb.g, %bb.h
  %i.p = phi i64 [ %i.k, %bb.e ], [ %i.i, %bb.d ], [ %i.n, %bb.g ], [ %i.o, %bb.h ]
  %i.q = sub i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !246   ; 5 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !248
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.t, ptr %i.u, align 8, !tbaa !249
  %i.v = zext i8 %i.t to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds i8, ptr %i.r, i64 %i.w ; 4 uses
  %i.y = icmp ult i8 %i.t, 4
  br i1 %i.y, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK11flexbuffers9Reference8IndirectEv.exit
  %i.z = icmp samesign ult i8 %i.t, 2
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !42
  %i.ab = zext i8 %i.aa to i64
  br label %_ZN11flexbuffers4BlobC2EPKhh.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = load i16, ptr %i.x, align 2, !tbaa !192
  %i.ad = zext i16 %i.ac to i64
  br label %_ZN11flexbuffers4BlobC2EPKhh.exit

bb.l:                                             ; preds = %_ZNK11flexbuffers9Reference8IndirectEv.exit
  %i.ae = icmp ult i8 %i.t, 8
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = load i32, ptr %i.x, align 4, !tbaa !145
  %i.ag = zext i32 %i.af to i64
  br label %_ZN11flexbuffers4BlobC2EPKhh.exit

bb.n:                                             ; preds = %bb.l
  %i.ah = load i64, ptr %i.x, align 8, !tbaa !202
  br label %_ZN11flexbuffers4BlobC2EPKhh.exit

bb.o:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN11flexbuffers4Blob9EmptyBlobEvE10empty_blob, i64 1), ptr %0, align 8, !tbaa !248, !alias.scope !484
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ai, align 8, !tbaa !249, !alias.scope !484
  br label %_ZN11flexbuffers4BlobC2EPKhh.exit

_ZN11flexbuffers4BlobC2EPKhh.exit:                ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.o
  %.sink = phi i64 [ 0, %bb.o ], [ %i.ad, %bb.k ], [ %i.ab, %bb.j ], [ %i.ag, %bb.m ], [ %i.ah, %bb.n ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.aj, align 8, !tbaa !251
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers13CodeGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11flatbuffers13CodeGeneratorE, i64 16), ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !42
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN11flatbuffers12_GLOBAL__N_117TextCodeGeneratorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11flatbuffers13CodeGeneratorE, i64 16), ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN11flatbuffers13CodeGeneratorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !42
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24, !inline_history !485
  br label %_ZN11flatbuffers13CodeGeneratorD2Ev.exit

_ZN11flatbuffers13CodeGeneratorD2Ev.exit:         ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 0, 2) i32 @_ZN11flatbuffers12_GLOBAL__N_117TextCodeGenerator12GenerateCodeERKNS_6ParserERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call noundef ptr @_ZN11flatbuffers11GenTextFileERKNS_6ParserERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !147
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.d, ptr %i.a, align 8, !tbaa !202
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %6, align 8, !tbaa !41
  %i.g = load i64, ptr %i.a, align 8, !tbaa !202
  store i64 %i.g, ptr %i.c, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !42
  store i8 %i.i, ptr %i.h, align 1, !tbaa !42
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !202  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !40
  %i.l = load ptr, ptr %6, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.34, i64 noundef 2)
          to label %.noexc15 unwind label %bb.p   ; 6 uses

.noexc15:                                         ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !147, !alias.scope !490
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %.noexc15
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc15
  store ptr %i.p, ptr %5, align 8, !tbaa !41, !alias.scope !490
  %i.w = load i64, ptr %i.q, align 8, !tbaa !42
  store i64 %i.w, ptr %i.o, align 8, !tbaa !42, !alias.scope !490
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.x = phi i64 [ %i.t, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.z, align 8, !tbaa !40, !alias.scope !490
  store ptr %i.q, ptr %i.n, align 8, !tbaa !41
  store i64 0, ptr %i.y, align 8, !tbaa !40
  store i8 0, ptr %i.q, align 8, !tbaa !42
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !40, !noalias !491
  %i.ab = icmp eq i64 %i.aa, 4611686018427387903
  br i1 %i.ab, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc19 unwind label %bb.q

.noexc19:                                         ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.g
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.35, i64 noundef 1)
          to label %.noexc20 unwind label %bb.q   ; 6 uses

.noexc20:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.ad, ptr %4, align 8, !tbaa !147, !alias.scope !491
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !41 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

bb.i:                                             ; preds = %.noexc20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !40 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %.noexc20
  store ptr %i.ae, ptr %4, align 8, !tbaa !41, !alias.scope !491
  %i.al = load i64, ptr %i.af, align 8, !tbaa !42
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !42, !alias.scope !491
  %.phi.trans.insert.i17 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre.i18 = load i64, ptr %.phi.trans.insert.i17, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.i
  %i.am = phi ptr [ %i.ad, %bb.i ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ] ; 5 uses
  %i.an = phi i64 [ %i.ai, %bb.i ], [ %.pre.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !40, !alias.scope !491
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !41
  store i64 0, ptr %i.ao, align 8, !tbaa !40
  store i8 0, ptr %i.af, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  %i.au = icmp eq ptr %i.am, %i.ad                ; 2 uses
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.j
  br i1 %i.au, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.j
  br i1 %i.au, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.av = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.av)
  switch i64 %i.an, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.aw = load i8, ptr %i.am, align 1, !tbaa !42
  store i8 %i.aw, ptr %i.ar, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.am, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !40
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !42
  %.pre.i21 = load ptr, ptr %4, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !41
  store i64 %i.an, ptr %i.bb, align 8, !tbaa !40
  %i.bc = load i64, ptr %i.ad, align 8, !tbaa !42
  store i64 %i.bc, ptr %i.as, align 8, !tbaa !42
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bd = load i64, ptr %i.as, align 8, !tbaa !42
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.an, ptr %i.be, align 8, !tbaa !40
  %i.bf = load i64, ptr %i.ad, align 8, !tbaa !42
  store i64 %i.bf, ptr %i.as, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ar, ptr %4, align 8, !tbaa !41
  store i64 %i.bd, ptr %i.ad, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ad, ptr %4, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bg = phi ptr [ %.pre.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ar, %bb.n ], [ %i.ad, %bb.o ]
  store i64 0, ptr %i.ap, align 8, !tbaa !40
  store i8 0, ptr %i.bg, align 1, !tbaa !42
  %i.bh = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ad
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bj = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.o
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bn = load i64, ptr %i.o, align 8, !tbaa !42
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.bp = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.c
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.br = load i64, ptr %i.c, align 8, !tbaa !42
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.r

bb.p:                                             ; preds = %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.o
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.q
  %i.bx = load i64, ptr %i.o, align 8, !tbaa !42
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.p ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.bu, %bb.q ]
  %i.bz = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.c
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.cb = load i64, ptr %i.c, align 8, !tbaa !42
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.010 = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ 0, %bb.a ]
  ret i32 %.010
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN11flatbuffers13CodeGenerator18GenerateCodeStringERKNS_6ParserERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS9_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #11 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZN11flatbuffers12_GLOBAL__N_117TextCodeGenerator12GenerateCodeEPKhlRKNS_14CodeGenOptionsE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #16 align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN11flatbuffers12_GLOBAL__N_117TextCodeGenerator16GenerateMakeRuleERKNS_6ParserERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_RSA_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::set.91", align 8       ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.b = load i32, ptr %i.a, align 8, !tbaa !150, !noalias !505
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %._crit_edge.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146, !noalias !505
  %.not16.i = icmp eq ptr %i.d, null
  br i1 %.not16.i, label %._crit_edge.i.i.i, label %bb.c

._crit_edge.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.e, ptr %11, align 8, !tbaa !147, !alias.scope !505
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !40, !alias.scope !505
  store i8 0, ptr %i.e, align 8, !tbaa !42, !alias.scope !505
  br label %_ZN11flatbuffersL12TextMakeRuleERKNS_6ParserERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !505
  call void @_ZN11flatbuffers14StripExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %3)
  invoke void @_ZN11flatbuffers9StripPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %6, align 8, !tbaa !41, !noalias !505 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !42, !noalias !505
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !505
  %.val.i = load ptr, ptr %2, align 8, !tbaa !41, !noalias !506
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val25.i = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !506
  %.val26.i = load ptr, ptr %5, align 8, !tbaa !41, !noalias !506
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val27.i = load i64, ptr %i.m, align 8, !tbaa !40, !noalias !506
  invoke fastcc void @_ZN11flatbuffersL12TextFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind noalias writable align 8 %8, ptr %.val.i, i64 %.val25.i, ptr %.val26.i, i64 %.val27.i)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !40, !noalias !508
  %i.p = and i64 %i.o, -2
  %i.q = icmp eq i64 %i.p, 4611686018427387902
  br i1 %i.q, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc29.i unwind label %bb.p

.noexc29.i:                                       ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %bb.e
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.27, i64 noundef 2)
          to label %.noexc30.i unwind label %bb.p ; 6 uses

.noexc30.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.s, ptr %7, align 8, !tbaa !147, !alias.scope !507, !noalias !505
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !41   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i

bb.g:                                             ; preds = %.noexc30.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !40   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i: ; preds = %.noexc30.i
  store ptr %i.t, ptr %7, align 8, !tbaa !41, !alias.scope !507, !noalias !505
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !42
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !42, !alias.scope !507, !noalias !505
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i, %bb.g
  %i.ab = phi i64 [ %i.x, %bb.g ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !40, !alias.scope !507, !noalias !505
  store ptr %i.u, ptr %i.r, align 8, !tbaa !41
  store i64 0, ptr %i.ac, align 8, !tbaa !40
  store i8 0, ptr %i.u, align 8, !tbaa !42
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !40, !noalias !510 ; 2 uses
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !40, !noalias !510
  %i.ah = sub i64 4611686018427387903, %i.ag
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc34.i unwind label %bb.q

.noexc34.i:                                       ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.h
  %i.aj = load ptr, ptr %3, align 8, !tbaa !41, !noalias !510
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.aj, i64 noundef %i.af)
          to label %.noexc35.i unwind label %bb.q ; 6 uses

.noexc35.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.al, ptr %11, align 8, !tbaa !147, !alias.scope !510
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !41 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i

bb.j:                                             ; preds = %.noexc35.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !40 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i: ; preds = %.noexc35.i
  store ptr %i.am, ptr %11, align 8, !tbaa !41, !alias.scope !510
  %i.at = load i64, ptr %i.an, align 8, !tbaa !42
  store i64 %i.at, ptr %i.al, align 8, !tbaa !42, !alias.scope !510
  %.phi.trans.insert.i32.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre.i33.i = load i64, ptr %.phi.trans.insert.i32.i, align 8, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i, %bb.j
  %i.au = phi i64 [ %i.aq, %bb.j ], [ %.pre.i33.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !40, !alias.scope !510
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !41
  store i64 0, ptr %i.av, align 8, !tbaa !40
  store i8 0, ptr %i.an, align 8, !tbaa !42
  %i.ax = load ptr, ptr %7, align 8, !tbaa !41, !noalias !505 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.s
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i: ; preds = %bb.k
  %i.az = load i64, ptr %i.s, align 8, !tbaa !42, !noalias !505
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i
  %i.bb = load ptr, ptr %8, align 8, !tbaa !41, !noalias !505 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !42, !noalias !505
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !505
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !505
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !146, !noalias !505
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  invoke void @_ZNK11flatbuffers6Parser25GetIncludedFilesRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::set.91") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !511, !noalias !505 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not7386.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not7386.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  br label %bb.s

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !213, !noalias !505
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.bo)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i unwind label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #27
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !505
  %i.br = load ptr, ptr %5, align 8, !tbaa !41, !noalias !505 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !42, !noalias !505
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !505
  br label %_ZN11flatbuffersL12TextMakeRuleERKNS_6ParserERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_.exit

bb.n:                                             ; preds = %bb.c
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %6, align 8, !tbaa !41, !noalias !505 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i: ; preds = %bb.n
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !42, !noalias !505
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !505
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i, %bb.f
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %bb.i
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %7, align 8, !tbaa !41, !noalias !505 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.s
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i: ; preds = %bb.q
  %i.ch = load i64, ptr %i.s, align 8, !tbaa !42, !noalias !505
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i, %bb.p
  %.pn.i = phi { ptr, i32 } [ %i.cd, %bb.p ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i ], [ %i.ce, %bb.q ] ; 2 uses
  %i.cj = load ptr, ptr %8, align 8, !tbaa !41, !noalias !505 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !42, !noalias !505
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i, %bb.o
  %.pn.pn.i = phi { ptr, i32 } [ %i.cc, %bb.o ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !505
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !505
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, %.lr.ph.i
  %.sroa.069.087.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !505
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.069.087.i, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !41, !noalias !512
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.069.087.i, i64 40
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !40, !noalias !512 ; 3 uses
  store ptr %i.bl, ptr %10, align 8, !tbaa !147, !alias.scope !513, !noalias !505
  store i64 0, ptr %i.bm, align 8, !tbaa !40, !alias.scope !513, !noalias !505
  store i8 0, ptr %i.bl, align 8, !tbaa !42, !alias.scope !513, !noalias !505
  %i.ct = add i64 %i.cs, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ct)
          to label %bb.t unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.cu = load i64, ptr %i.bm, align 8, !tbaa !40, !alias.scope !513, !noalias !505
  %i.cv = icmp eq i64 %i.cu, 4611686018427387903
  br i1 %i.cv, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.t
  %i.cw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.26, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.cx = load i64, ptr %i.bm, align 8, !tbaa !40, !alias.scope !513, !noalias !505
  %i.cy = sub i64 4611686018427387903, %i.cx
  %i.cz = icmp ult i64 %i.cy, %i.cs
end_hunk_1
begin_hunk_2_@llvm.umin.i64
!193 = !{!37, !25, i64 368}
!194 = !{!"llvm.loop.mustprogress"}
!195 = !{!37, !25, i64 10}
!196 = !{!190, !189, i64 280}
!197 = !{!26, !26, i64 0}
!198 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!199 = !{!"_ZTSN11flatbuffers13ClassicLocaleE", !198, i64 0}
!200 = !{!199, !198, i64 0}
!201 = !{ptr @_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib}
!202 = !{!28, !28, i64 0}
!203 = !{!"float", !11, i64 0}
!204 = !{!203, !203, i64 0}
!205 = !{!"double", !11, i64 0}
!206 = !{!205, !205, i64 0}
!207 = !{!"_ZTSN11flatbuffers6VectorIhjEE", !12, i64 0}
!208 = !{!207, !12, i64 0}
!209 = !{!187, !185, i64 0}
!210 = !{!187, !123, i64 8}
!211 = !{!37, !25, i64 17}
!212 = !{!187, !186, i64 16}
!213 = !{!49, !47, i64 8}
!214 = !{!47, !47, i64 0}
!215 = !{!"p1 _ZTSN11flatbuffers5ValueE", !15, i64 0}
!216 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueEE", !29, i64 0, !215, i64 32}
!217 = !{!216, !215, i64 32}
!218 = !{!"p2 _ZTSN11flatbuffers7EnumValE", !53, i64 0}
!219 = !{!218, !218, i64 0}
!220 = !{!"p1 _ZTSN11flatbuffers7EnumValE", !15, i64 0}
!221 = !{!220, !220, i64 0}
!222 = !{!"_ZTSN11flatbuffers7EnumValE", !29, i64 0, !34, i64 32, !187, i64 56, !160, i64 88, !28, i64 160}
!223 = !{!222, !28, i64 160}
!224 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!225 = !{!"_ZTSSt6locale", !224, i64 0}
!226 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !225, i64 56}
!227 = !{!226, !26, i64 40}
!228 = !{!226, !26, i64 32}
!229 = !{!"_ZTSSi", !28, i64 8}
!230 = !{!229, !28, i64 8}
!231 = !{ptr @_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib}
!232 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!233 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!234 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!235 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !28, i64 8}
!236 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!237 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !232, i64 24, !233, i64 28, !233, i64 32, !234, i64 40, !235, i64 48, !11, i64 64, !12, i64 192, !236, i64 200, !225, i64 208}
!238 = !{!237, !232, i64 24}
!239 = !{!232, !232, i64 0}
!240 = !{!237, !28, i64 8}
!241 = !{!"llvm.loop.peeled.count", i32 1}
!242 = !{!182, !28, i64 288}
!243 = !{!122, !121, i64 12}
!244 = !{!122, !26, i64 0}
!245 = !{!122, !11, i64 8}
!246 = !{!122, !11, i64 9}
!247 = !{!"_ZTSN11flexbuffers6ObjectE", !26, i64 0, !11, i64 8}
!248 = !{!247, !26, i64 0}
!249 = !{!247, !11, i64 8}
!250 = !{!"_ZTSN11flexbuffers5SizedE", !247, i64 0, !28, i64 16}
!251 = !{!250, !28, i64 16}
!252 = !{!"_ZTSN11flexbuffers11TypedVectorE", !250, i64 0, !121, i64 24}
!253 = !{!252, !121, i64 24}
!254 = !{!"_ZTSN11flexbuffers16FixedTypedVectorE", !247, i64 0, !121, i64 12, !11, i64 16}
!255 = !{!254, !11, i64 16}
!256 = !{!254, !121, i64 12}
!257 = !{!143, !25, i64 1369}
!258 = distinct !{null}
!259 = !{!143, !25, i64 1009}
!260 = !{!143, !25, i64 1010}
!261 = !{!143, !24, i64 1000}
!262 = !{!2}
!263 = !{!94, !26, i64 64}
!264 = distinct !{!264, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!265 = distinct !{!265, !264, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!266 = distinct !{!266, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!267 = distinct !{!267, !266, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!268 = !{!265, !2}
!269 = !{!267}
!270 = !{!"p1 _ZTSN11flatbuffers13CodeGeneratorE", !15, i64 0}
!271 = !{!"_ZTSSt10_Head_baseILm0EPN11flatbuffers13CodeGeneratorELb0EE", !270, i64 0}
!272 = !{!271, !270, i64 0}
!273 = distinct !{!273, !194}
!274 = !{!151, !151, i64 0}
!275 = !{!184, !184, i64 0}
!276 = !{!37, !25, i64 11}
!277 = !{!190, !25, i64 273}
!278 = !{!190, !185, i64 200}
!279 = !{!190, !25, i64 272}
!280 = distinct !{!280, !194}
!281 = !{!190, !25, i64 276}
!282 = !{!37, !25, i64 618}
!283 = !{!190, !123, i64 288}
!284 = !{!37, !25, i64 617}
!285 = distinct !{!285, !194}
!286 = distinct !{!286, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!287 = distinct !{!287, !286, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!288 = distinct !{!288, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!289 = distinct !{!289, !288, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!290 = !{!287}
!291 = !{!289}
!292 = !{!289, !287}
!293 = distinct !{!293, !194}
!294 = distinct !{!294, !194}
!295 = distinct !{!295, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!296 = distinct !{!296, !295, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!297 = distinct !{!297, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!298 = distinct !{!298, !297, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!299 = !{!296}
!300 = !{!298}
!301 = !{!298, !296}
!302 = distinct !{!302, !194}
!303 = distinct !{!303, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!304 = distinct !{!304, !303, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!305 = distinct !{!305, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!306 = distinct !{!306, !305, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!307 = !{!304}
!308 = !{!306}
!309 = !{!306, !304}
!310 = distinct !{!310, !194}
!311 = distinct !{!311, !194}
!312 = distinct !{!312, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!313 = distinct !{!313, !312, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!314 = distinct !{!314, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!315 = distinct !{!315, !314, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!316 = !{!313}
!317 = !{!315}
!318 = !{!315, !313}
!319 = distinct !{!319, !194}
!320 = distinct !{!320, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!321 = distinct !{!321, !320, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!322 = distinct !{!322, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!323 = distinct !{!323, !322, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!324 = !{!321}
!325 = !{!323}
!326 = !{!323, !321}
!327 = distinct !{!327, !194}
!328 = distinct !{!328, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!329 = distinct !{!329, !328, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!330 = distinct !{!330, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!331 = distinct !{!331, !330, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!332 = !{!329}
!333 = !{!331}
!334 = !{!331, !329}
!335 = distinct !{!335, !194}
!336 = distinct !{!336, !194}
!337 = distinct !{!337, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!338 = distinct !{!338, !337, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!339 = distinct !{!339, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!340 = distinct !{!340, !339, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!341 = !{!338}
!342 = !{!340}
!343 = !{!340, !338}
!344 = distinct !{!344, !194}
!345 = distinct !{!345, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!346 = distinct !{!346, !345, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!347 = distinct !{!347, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!348 = distinct !{!348, !347, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!349 = !{!346}
!350 = !{!348}
!351 = !{!348, !346}
!352 = distinct !{!352, !241}
!353 = distinct !{!353, i1 true, !"_ZNK11flatbuffers4Type10VectorTypeEv"}
!354 = distinct !{!354, !353, !"_ZNK11flatbuffers4Type10VectorTypeEv: argument 0"}
!355 = distinct !{null}
!356 = distinct !{null}
!357 = distinct !{!357, i1 true, !"_ZNK11flatbuffers4Type10VectorTypeEv"}
!358 = distinct !{!358, !357, !"_ZNK11flatbuffers4Type10VectorTypeEv: argument 0"}
!359 = distinct !{null}
!360 = distinct !{null}
!361 = !{!"_ZTSN11flatbuffers6VectorIcjEE", !12, i64 0}
!362 = !{!361, !12, i64 0}
!363 = !{!37, !25, i64 225}
!364 = !{!37, !25, i64 226}
!365 = !{!354}
!366 = !{!187, !185, i64 4}
!367 = !{!187, !95, i64 24}
!368 = !{!15, !15, i64 0}
!369 = !{!"_ZTSN11flatbuffers6VectorIajEE", !12, i64 0}
!370 = !{!369, !12, i64 0}
!371 = !{!"_ZTSN11flatbuffers6VectorIsjEE", !12, i64 0}
!372 = !{!371, !12, i64 0}
!373 = !{!"_ZTSN11flatbuffers6VectorItjEE", !12, i64 0}
!374 = !{!373, !12, i64 0}
!375 = !{!"_ZTSN11flatbuffers6VectorIijEE", !12, i64 0}
!376 = !{!375, !12, i64 0}
!377 = !{!"_ZTSN11flatbuffers6VectorIjjEE", !12, i64 0}
!378 = !{!377, !12, i64 0}
!379 = !{!"_ZTSN11flatbuffers6VectorIljEE", !12, i64 0}
!380 = !{!379, !12, i64 0}
!381 = !{!"_ZTSN11flatbuffers6VectorImjEE", !12, i64 0}
!382 = !{!381, !12, i64 0}
!383 = !{!"_ZTSN11flatbuffers6VectorIfjEE", !12, i64 0}
!384 = !{!383, !12, i64 0}
!385 = !{!"_ZTSN11flatbuffers6VectorIdjEE", !12, i64 0}
!386 = !{!385, !12, i64 0}
!387 = !{!"_ZTSN11flatbuffers6VectorINS_6OffsetIvEEjEE", !12, i64 0}
!388 = !{!387, !12, i64 0}
!389 = !{!"_ZTSN11flatbuffers6VectorINS_8Offset64IvEEjEE", !12, i64 0}
!390 = !{!389, !12, i64 0}
!391 = !{!358}
!392 = distinct !{!392, !194}
!393 = distinct !{null}
!394 = distinct !{!394, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!395 = distinct !{!395, !394, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!396 = distinct !{!396, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!397 = distinct !{!397, !396, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!398 = !{!237, !28, i64 16}
!399 = !{!"p1 _ZTSSo", !15, i64 0}
!400 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!401 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!402 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!403 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!404 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !237, i64 0, !399, i64 216, !11, i64 224, !25, i64 225, !400, i64 232, !401, i64 240, !402, i64 248, !403, i64 256}
!405 = !{!404, !25, i64 225}
!406 = !{!404, !401, i64 240}
!407 = !{!"_ZTSNSt6locale5facetE", !12, i64 8}
!408 = !{!"p1 int", !15, i64 0}
!409 = !{!"_ZTSSt5ctypeIcE", !407, i64 0, !198, i64 16, !25, i64 24, !408, i64 32, !408, i64 40, !177, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!410 = !{!409, !11, i64 56}
!411 = !{!404, !11, i64 224}
!412 = !{!395}
!413 = !{!397}
!414 = !{!397, !395}
!415 = distinct !{!415, !194, !241}
!416 = distinct !{!416, !194, !241}
!417 = distinct !{!417, !194, !241}
!418 = distinct !{!418, !194, !241}
!419 = distinct !{!419, !194, !241}
!420 = distinct !{!420, !194, !241}
!421 = distinct !{!421, !194, !241}
!422 = distinct !{!422, !194, !241}
!423 = distinct !{!423, !194, !241}
!424 = distinct !{!424, !194, !241}
!425 = distinct !{!425, !194, !241}
!426 = distinct !{!426, !194, !241}
!427 = distinct !{!427, !194, !241}
!428 = distinct !{!428, !194, !241}
!429 = distinct !{!429, !194, !241}
!430 = distinct !{!430, !194, !241}
!431 = distinct !{!431, !194, !241}
!432 = distinct !{!432, !194, !241}
!433 = distinct !{!433, !194, !241}
!434 = distinct !{!434, !194, !241}
!435 = distinct !{!435, !194, !241}
!436 = distinct !{!436, !194, !241}
!437 = distinct !{!437, !194, !241}
!438 = distinct !{!438, !194, !241}
!439 = distinct !{!439, i1 true, !"_ZNK11flexbuffers9Reference5AsMapEv"}
!440 = distinct !{!440, !439, !"_ZNK11flexbuffers9Reference5AsMapEv: argument 0"}
!441 = distinct !{!441, i1 true, !"_ZNK11flexbuffers3Map4KeysEv"}
!442 = distinct !{!442, !441, !"_ZNK11flexbuffers3Map4KeysEv: argument 0"}
!443 = distinct !{!443, i1 true, !"_ZNK11flexbuffers3Map6ValuesEv"}
!444 = distinct !{!444, !443, !"_ZNK11flexbuffers3Map6ValuesEv: argument 0"}
!445 = distinct !{!445, !194}
!446 = distinct !{!446, !194}
!447 = distinct !{!447, i1 true, !"_ZNK11flexbuffers9Reference8AsVectorEv"}
!448 = distinct !{!448, !447, !"_ZNK11flexbuffers9Reference8AsVectorEv: argument 0"}
!449 = distinct !{!449, i1 true, !"_ZNK11flexbuffers9Reference13AsTypedVectorEv"}
!450 = distinct !{!450, !449, !"_ZNK11flexbuffers9Reference13AsTypedVectorEv: argument 0"}
!451 = distinct !{!451, i1 true, !"_ZN11flexbuffers11TypedVector16EmptyTypedVectorEv"}
!452 = distinct !{!452, !451, !"_ZN11flexbuffers11TypedVector16EmptyTypedVectorEv: argument 0"}
!453 = !{!440}
!454 = !{!442}
!455 = !{!444}
!456 = !{!448}
!457 = !{!450}
!458 = !{!452, !450}
!459 = distinct !{!459, i1 true, !"_ZNK11flexbuffers9Reference8AsStringEv"}
!460 = distinct !{!460, !459, !"_ZNK11flexbuffers9Reference8AsStringEv: argument 0"}
!461 = distinct !{!461, i1 true, !"_ZNK11flexbuffers9Reference8AsVectorEv"}
!462 = distinct !{!462, !461, !"_ZNK11flexbuffers9Reference8AsVectorEv: argument 0"}
!463 = !{!460}
!464 = !{!462}
!465 = distinct !{!465, i1 true, !"_ZNK11flexbuffers9Reference8AsStringEv"}
!466 = distinct !{!466, !465, !"_ZNK11flexbuffers9Reference8AsStringEv: argument 0"}
!467 = distinct !{!467, i1 true, !"_ZNK11flexbuffers9Reference8AsVectorEv"}
!468 = distinct !{!468, !467, !"_ZNK11flexbuffers9Reference8AsVectorEv: argument 0"}
!469 = !{!466}
!470 = !{!468}
!471 = distinct !{!471, i1 true, !"_ZNK11flexbuffers9Reference8AsStringEv"}
!472 = distinct !{!472, !471, !"_ZNK11flexbuffers9Reference8AsStringEv: argument 0"}
!473 = distinct !{!473, i1 true, !"_ZNK11flexbuffers9Reference8AsVectorEv"}
!474 = distinct !{!474, !473, !"_ZNK11flexbuffers9Reference8AsVectorEv: argument 0"}
!475 = !{!472}
!476 = !{!474}
!477 = distinct !{!477, !194}
!478 = distinct !{!478, !194}
!479 = distinct !{!479, !194, !241}
!480 = distinct !{!480, !194}
!481 = distinct !{!481, !194, !241}
!482 = distinct !{!482, i1 true, !"_ZN11flexbuffers4Blob9EmptyBlobEv"}
!483 = distinct !{!483, !482, !"_ZN11flexbuffers4Blob9EmptyBlobEv: argument 0"}
!484 = !{!483}
!485 = !{ptr @_ZN11flatbuffers13CodeGeneratorD2Ev}
!486 = distinct !{!486, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!487 = distinct !{!487, !486, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!488 = distinct !{!488, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!489 = distinct !{!489, !488, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!490 = !{!487}
!491 = !{!489}
!492 = distinct !{!492, i1 true, !"_ZN11flatbuffersL12TextMakeRuleERKNS_6ParserERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_"}
!493 = distinct !{!493, !492, !"_ZN11flatbuffersL12TextMakeRuleERKNS_6ParserERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_: argument 0"}
!494 = distinct !{!494, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!495 = distinct !{!495, !494, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!496 = distinct !{!496, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!497 = distinct !{!497, !496, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!498 = distinct !{!498, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!499 = distinct !{!499, !498, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!500 = distinct !{!500, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!501 = distinct !{!501, !500, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!502 = distinct !{!502, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!503 = distinct !{!503, !502, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!504 = distinct !{!504, !194}
!505 = !{!493}
!506 = !{!495, !493}
!507 = !{!497}
!508 = !{!497, !493}
!509 = !{!499}
!510 = !{!499, !493}
!511 = !{!49, !47, i64 16}
!512 = !{!501}
!513 = !{!503, !501}
!514 = distinct !{!514, !194}
!515 = !{!48, !47, i64 24}
!516 = !{!48, !47, i64 16}
end_hunk_2
