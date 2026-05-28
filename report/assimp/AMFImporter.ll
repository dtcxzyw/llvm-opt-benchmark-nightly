inline.NumInlined: 911
inline.NumDeleted: 365
begin_hunk_0_@_ZNK6Assimp11AMFImporter25ParseHelper_Decode_Base64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE:.noexc.i
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %i.b = alloca [4 x i8], align 1                 ; 14 uses
  %i.c = alloca [3 x i8], align 1                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.d, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 64, ptr %i.a, align 8
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = load i64, ptr %i.a, align 8              ; 3 uses
  store i64 %i.f, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, ptr noundef nonnull align 1 dereferenceable(64) @.str.13, i64 64, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 3
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.a

bb.a:                                             ; preds = %.noexc.i
  %i.l = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.14)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ae unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.l) #22
  br label %bb.ad

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, %bb.f, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.e:                                             ; preds = %.noexc.i
  %i.o = load ptr, ptr %2, align 8                ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 17 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.not.i.i = icmp eq ptr %i.q, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.o, ptr %i.p, align 8
  %.pre = load i64, ptr %i.i, align 8
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.e, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.r = phi i64 [ %i.j, %bb.e ], [ %.pre, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = mul nuw i64 %i.s, 3                      ; 4 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #24
          to label %.noexc54 unwind label %bb.d

.noexc54:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.o to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.t
  br i1 %i.aa, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25
          to label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i unwind label %bb.d ; 3 uses

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.z) #23
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.ab, ptr %2, align 8
  store ptr %i.ab, ptr %i.p, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  store ptr %i.ac, ptr %i.v, align 8
  %.pre101.a = load i64, ptr %i.i, align 8
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %bb.g
  %i.ad = phi i64 [ %.pre101.a, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ %i.r, %bb.g ] ; 2 uses
  %.not4985 = icmp eq i64 %i.ad, 0
  br i1 %.not4985, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.loopexit74
  %i.aj = phi i8 [ undef, %.lr.ph ], [ %i.dz, %.loopexit74 ] ; 3 uses
  %i.ak = phi i8 [ undef, %.lr.ph ], [ %i.ea, %.loopexit74 ] ; 3 uses
  %i.al = phi i8 [ undef, %.lr.ph ], [ %i.eb, %.loopexit74 ] ; 3 uses
  %.04188 = phi i64 [ 0, %.lr.ph ], [ %.1, %.loopexit74 ] ; 2 uses
  %.04287 = phi i64 [ %i.ad, %.lr.ph ], [ %i.ec, %.loopexit74 ]
  %.04386 = phi i8 [ 0, %.lr.ph ], [ %.3, %.loopexit74 ] ; 4 uses
  %i.am = load ptr, ptr %1, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.04188
  %i.ao = load i8, ptr %i.an, align 1             ; 4 uses
  %.not50 = icmp eq i8 %i.ao, 61
  br i1 %.not50, label %.critedge, label %bb.j

.critedge:                                        ; preds = %bb.i, %.loopexit74
  %i.ap = phi i8 [ %i.dz, %.loopexit74 ], [ %i.aj, %bb.i ]
  %i.aq = phi i8 [ %i.ea, %.loopexit74 ], [ %i.ak, %bb.i ]
  %i.ar = phi i8 [ %i.eb, %.loopexit74 ], [ %i.al, %bb.i ]
  %.043.lcssa = phi i8 [ %.3, %.loopexit74 ], [ %.04386, %bb.i ] ; 6 uses
  store i8 %i.ar, ptr %i.c, align 1
  store i8 %i.aq, ptr %i.ag, align 1
  store i8 %i.ap, ptr %i.ai, align 1
  %.not51 = icmp eq i8 %.043.lcssa, 0
  br i1 %.not51, label %.loopexit, label %.preheader73

.preheader73:                                     ; preds = %.critedge
  %i.as = icmp ult i8 %.043.lcssa, 4
  br i1 %i.as, label %.lr.ph92.preheader, label %.preheader

.lr.ph92.preheader:                               ; preds = %.preheader73
  %i.at = zext nneg i8 %.043.lcssa to i64
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.at
  %narrow = sub nuw nsw i8 4, %.043.lcssa
  %i.au = zext nneg i8 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.au, i1 false)
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.av = zext i8 %i.ao to i32
  %i.aw = call i32 @isalnum(i32 noundef %i.av) #26
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = and i8 %i.ao, -5
  %i.az = icmp eq i8 %i.ay, 43
  %spec.select.i = or i1 %i.az, %i.ax
  br i1 %spec.select.i, label %bb.k, label %.loopexit74

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %.04386, 1                       ; 2 uses
  %i.bb = zext i8 %.04386 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bb
  store i8 %i.ao, ptr %i.bc, align 1
  %i.bd = icmp eq i8 %i.ba, 4
  br i1 %i.bd, label %.preheader80.preheader, label %.loopexit74

.preheader80.preheader:                           ; preds = %bb.k
  %i.be = load i8, ptr %i.b, align 1
  %i.bf = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.be, i64 noundef 0) #22
  %i.bg = trunc i64 %i.bf to i8                   ; 2 uses
  store i8 %i.bg, ptr %i.b, align 1
  %i.bh = load i8, ptr %i.ae, align 1
  %i.bi = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.bh, i64 noundef 0) #22
  %i.bj = trunc i64 %i.bi to i8                   ; 3 uses
  store i8 %i.bj, ptr %i.ae, align 1
  %i.bk = load i8, ptr %i.af, align 1
  %i.bl = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.bk, i64 noundef 0) #22
  %i.bm = trunc i64 %i.bl to i8                   ; 3 uses
  store i8 %i.bm, ptr %i.af, align 1
  %i.bn = load i8, ptr %i.ah, align 1
  %i.bo = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.bn, i64 noundef 0) #22
  %i.bp = trunc i64 %i.bo to i8                   ; 2 uses
  store i8 %i.bp, ptr %i.ah, align 1
  %i.bq = shl i8 %i.bg, 2
  %i.br = lshr i8 %i.bj, 4
  %i.bs = and i8 %i.br, 3
  %i.bt = or disjoint i8 %i.bs, %i.bq             ; 6 uses
  %i.bu = shl i8 %i.bj, 4
  %i.bv = lshr i8 %i.bm, 2
  %i.bw = and i8 %i.bv, 15
  %i.bx = or disjoint i8 %i.bw, %i.bu             ; 6 uses
  %i.by = shl i8 %i.bm, 6
  %i.bz = add i8 %i.by, %i.bp                     ; 6 uses
  %i.ca = load ptr, ptr %i.p, align 8             ; 3 uses
  %i.cb = load ptr, ptr %i.v, align 8
  %.not.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i, label %bb.m, label %bb.l

.loopexit75:                                      ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit77 = landingpad { ptr, i32 }
          cleanup
  store i8 %i.bt, ptr %i.c, align 1
  store i8 %i.bx, ptr %i.ag, align 1
  store i8 %i.bz, ptr %i.ai, align 1
  br label %bb.ad

.loopexit.split-lp76:                             ; preds = %bb.n
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.l:                                             ; preds = %.preheader80.preheader
  store i8 %i.bt, ptr %i.ca, align 1
  %i.cc = load ptr, ptr %i.p, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  store ptr %i.cd, ptr %i.p, align 8
  %.pre102.a = load ptr, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.m:                                             ; preds = %.preheader80.preheader
  %i.ce = load ptr, ptr %2, align 8               ; 4 uses
  %i.cf = ptrtoint ptr %i.ca to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 8 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775807
  br i1 %i.ci, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.v, %bb.r, %bb.m
  store i8 %i.bt, ptr %i.c, align 1
  store i8 %i.bx, ptr %i.ag, align 1
  store i8 %i.bz, ptr %i.ai, align 1
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #24
          to label %.noexc56 unwind label %.loopexit.split-lp76

.noexc56:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.cj = add i64 %.sroa.speculated.i.i.i, %i.ch  ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ch
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 9223372036854775807)
  %i.cm = select i1 %i.ck, i64 9223372036854775807, i64 %i.cl ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %4 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #25
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i unwind label %.loopexit75 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 %i.ch ; 2 uses
  store i8 %i.bt, ptr %i.cn, align 1
  %i.co = icmp sgt i64 %i.ch, 0
  br i1 %i.co, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %4, ptr align 1 %i.ce, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ch) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %4, ptr %2, align 8
  store ptr %i.cp, ptr %i.p, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 %i.cm ; 2 uses
  store ptr %i.cq, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.l
  %i.cr = phi ptr [ %i.cq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.pre102.a, %bb.l ] ; 2 uses
  %i.cs = phi ptr [ %i.cp, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %i.cd, %bb.l ] ; 2 uses
  %.not.i.1 = icmp eq ptr %i.cs, %i.cr
  br i1 %.not.i.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  store i8 %i.bx, ptr %i.cs, align 1
  %i.ct = load ptr, ptr %i.p, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 2 uses
  store ptr %i.cu, ptr %i.p, align 8
  %.pre103.a = load ptr, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1

bb.r:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.cv = load ptr, ptr %2, align 8               ; 4 uses
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 8 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775807
  br i1 %i.cz, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.r
  %.sroa.speculated.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.da = add i64 %.sroa.speculated.i.i.i.1, %i.cy ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cy
  %i.dc = call i64 @llvm.umin.i64(i64 %i.da, i64 9223372036854775807)
  %i.dd = select i1 %i.db, i64 9223372036854775807, i64 %i.dc ; 3 uses
  %.not.i.i.i.1 = icmp ne i64 %i.dd, 0
  call void @llvm.assume(i1 %.not.i.i.i.1)
  %5 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #25
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.1 unwind label %.loopexit75 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.1: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 %i.cy ; 2 uses
  store i8 %i.bx, ptr %i.de, align 1
  %i.df = icmp sgt i64 %i.cy, 0
  br i1 %i.df, label %bb.s, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %i.cv, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1: ; preds = %bb.s, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %.not.i17.i.i.1 = icmp eq ptr %i.cv, null
  br i1 %.not.i17.i.i.1, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cy) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1: ; preds = %bb.t, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1
  store ptr %5, ptr %2, align 8
  store ptr %i.dg, ptr %i.p, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 %i.dd ; 2 uses
  store ptr %i.dh, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1

_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1:        ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1, %bb.q
  %i.di = phi ptr [ %i.dh, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1 ], [ %.pre103.a, %bb.q ] ; 2 uses
  %i.dj = phi ptr [ %i.dg, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1 ], [ %i.cu, %bb.q ] ; 2 uses
  %.not.i.2 = icmp eq ptr %i.dj, %i.di
  br i1 %.not.i.2, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1
  store i8 %i.bz, ptr %i.dj, align 1
  %i.dk = load ptr, ptr %i.p, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  store ptr %i.dl, ptr %i.p, align 8
  br label %.loopexit74

bb.v:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1
  %i.dm = load ptr, ptr %2, align 8               ; 4 uses
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 8 uses
  %i.dq = icmp eq i64 %i.dp, 9223372036854775807
  br i1 %i.dq, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %bb.v
  %.sroa.speculated.i.i.i.2 = call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dr = add i64 %.sroa.speculated.i.i.i.2, %i.dp ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dp
  %i.dt = call i64 @llvm.umin.i64(i64 %i.dr, i64 9223372036854775807)
  %i.du = select i1 %i.ds, i64 9223372036854775807, i64 %i.dt ; 3 uses
  %.not.i.i.i.2 = icmp ne i64 %i.du, 0
  call void @llvm.assume(i1 %.not.i.i.i.2)
  %6 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #25
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.2 unwind label %.loopexit75 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.2: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 %i.dp ; 2 uses
  store i8 %i.bz, ptr %i.dv, align 1
  %i.dw = icmp sgt i64 %i.dp, 0
  br i1 %i.dw, label %bb.w, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2

bb.w:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %6, ptr align 1 %i.dm, i64 %i.dp, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2: ; preds = %bb.w, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %.not.i17.i.i.2 = icmp eq ptr %i.dm, null
  br i1 %.not.i17.i.i.2, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dp) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2: ; preds = %bb.x, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2
  store ptr %6, ptr %2, align 8
  store ptr %i.dx, ptr %i.p, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 %i.du
  store ptr %i.dy, ptr %i.v, align 8
  br label %.loopexit74

.loopexit74:                                      ; preds = %bb.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2, %bb.j, %bb.k
  %i.dz = phi i8 [ %i.aj, %bb.j ], [ %i.aj, %bb.k ], [ %i.bz, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ %i.bz, %bb.u ] ; 2 uses
  %i.ea = phi i8 [ %i.ak, %bb.j ], [ %i.ak, %bb.k ], [ %i.bx, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ %i.bx, %bb.u ] ; 2 uses
  %i.eb = phi i8 [ %i.al, %bb.j ], [ %i.al, %bb.k ], [ %i.bt, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ %i.bt, %bb.u ] ; 2 uses
  %.3 = phi i8 [ %.04386, %bb.j ], [ %i.ba, %bb.k ], [ 0, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ 0, %bb.u ] ; 2 uses
  %.1 = add nuw i64 %.04188, 1
  %i.ec = add i64 %.04287, -1                     ; 2 uses
  %.not49 = icmp eq i64 %i.ec, 0
  br i1 %.not49, label %.critedge, label %bb.i, !llvm.loop !63

.preheader:                                       ; preds = %.lr.ph92.preheader, %.preheader73
  %i.ed = load i8, ptr %i.b, align 1
  %i.ee = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.ed, i64 noundef 0) #22
  %i.ef = trunc i64 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.eh, i64 noundef 0) #22
  %i.ej = trunc i64 %i.ei to i8                   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.el, i64 noundef 0) #22
  %i.en = trunc i64 %i.em to i8                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.ep, i64 noundef 0) #22
  %i.er = trunc i64 %i.eq to i8
  %i.es = shl i8 %i.ef, 2
  %i.et = lshr i8 %i.ej, 4
  %i.eu = and i8 %i.et, 3
  %i.ev = or disjoint i8 %i.eu, %i.es
  store i8 %i.ev, ptr %i.c, align 1
  %i.ew = shl i8 %i.ej, 4
  %i.ex = lshr i8 %i.en, 2
  %i.ey = and i8 %i.ex, 15
  %i.ez = or disjoint i8 %i.ey, %i.ew
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.ez, ptr %i.fa, align 1
  %i.fb = shl i8 %i.en, 6
  %i.fc = add i8 %i.fb, %i.er
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.fc, ptr %i.fd, align 1
  %i.fe = zext i8 %.043.lcssa to i32
  %i.ff = add nsw i32 %i.fe, -1
  %.not96 = icmp eq i8 %.043.lcssa, 1
  br i1 %.not96, label %.loopexit, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %.preheader
  %.pre104 = load ptr, ptr %i.p, align 8
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit68
  %i.fg = phi ptr [ %i.gb, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit68 ], [ %.pre104, %.lr.ph95.preheader ] ; 3 uses
  %.094 = phi i8 [ %i.gc, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit68 ], [ 0, %.lr.ph95.preheader ] ; 2 uses
  %i.fh = zext i8 %.094 to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fh ; 2 uses
  %i.fj = load ptr, ptr %i.v, align 8
  %.not.i58 = icmp eq ptr %i.fg, %i.fj
  br i1 %.not.i58, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph95
  %i.fk = load i8, ptr %i.fi, align 1
  store i8 %i.fk, ptr %i.fg, align 1
  %i.fl = load ptr, ptr %i.p, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1 ; 2 uses
  store ptr %i.fm, ptr %i.p, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit68

bb.z:                                             ; preds = %.lr.ph95
  %i.fn = load ptr, ptr %2, align 8               ; 4 uses
  %i.fo = ptrtoint ptr %i.fg to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp                    ; 8 uses
  %i.fr = icmp eq i64 %i.fq, 9223372036854775807
  br i1 %i.fr, label %bb.aa, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #24
          to label %.noexc66.a unwind label %.loopexit.split-lp

.noexc66.a:                                       ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59: ; preds = %bb.z
  %.sroa.speculated.i.i.i60 = call i64 @llvm.umax.i64(i64 %i.fq, i64 1)
  %i.fs = add i64 %.sroa.speculated.i.i.i60, %i.fq ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.fq
  %i.fu = call i64 @llvm.umin.i64(i64 %i.fs, i64 9223372036854775807)
  %i.fv = select i1 %i.ft, i64 9223372036854775807, i64 %i.fu ; 3 uses
  %.not.i.i.i61 = icmp ne i64 %i.fv, 0
  call void @llvm.assume(i1 %.not.i.i.i61)
  %7 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #25
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i62 unwind label %.loopexit72 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i62: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 %i.fq ; 2 uses
  %i.fx = load i8, ptr %i.fi, align 1
  store i8 %i.fx, ptr %i.fw, align 1
  %i.fy = icmp sgt i64 %i.fq, 0
  br i1 %i.fy, label %bb.ab, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i63

bb.ab:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i62
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %i.fn, i64 %i.fq, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i63

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i63: ; preds = %bb.ab, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i62
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 1 ; 2 uses
  %.not.i17.i.i64 = icmp eq ptr %i.fn, null
  br i1 %.not.i17.i.i64, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i65, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i63
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fq) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i65

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i65: ; preds = %bb.ac, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i63
  store ptr %7, ptr %2, align 8
  store ptr %i.fz, ptr %i.p, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 %i.fv
  store ptr %i.ga, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit68

_ZNSt6vectorIhSaIhEE9push_backERKh.exit68:        ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i65, %bb.y
  %i.gb = phi ptr [ %i.fz, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i65 ], [ %i.fm, %bb.y ]
  %i.gc = add nuw i8 %.094, 1                     ; 2 uses
  %i.gd = zext i8 %i.gc to i32
  %i.ge = icmp samesign ugt i32 %i.ff, %i.gd
  br i1 %i.ge, label %.lr.ph95, label %.loopexit, !llvm.loop !64

.loopexit72:                                      ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit:                                        ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit68, %_ZNSt6vectorIhSaIhEE7reserveEm.exit, %.preheader, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.gf = load ptr, ptr %3, align 8               ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.d
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  %i.gh = load i64, ptr %i.d, align 8
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.ad:                                            ; preds = %.loopexit72, %.loopexit.split-lp, %.loopexit75, %.loopexit.split-lp76, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.m, %bb.c ], [ %lpad.loopexit.split-lp78, %.loopexit.split-lp76 ], [ %lpad.loopexit77, %.loopexit75 ], [ %lpad.loopexit, %.loopexit72 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.gj = load ptr, ptr %3, align 8               ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.d
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.ad
  %i.gl = load i64, ptr %i.d, align 8
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn

bb.ae:                                            ; preds = %bb.b
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #22
  resume { ptr, i32 } %i.p
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11AMFImporter9ParseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.a, ptr %3, align 8
  store i16 25202, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.c, align 2
  %i.d = load ptr, ptr %1, align 8
  %i.e = load ptr, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.d, ptr noundef nonnull %i.a)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.c, !inline_history !65 ; 6 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.i = load ptr, ptr %3, align 8                ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.k = load i64, ptr %i.a, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(25) @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(2) @.str.17)
          to label %bb.b unwind label %.thread45

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
  unreachable

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %3, align 8                ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.c
  %i.q = load i64, ptr %i.a, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit36

.thread45:                                        ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.m) #22
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit36

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %bb.e unwind label %.thread48  ; 6 uses

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  invoke void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.t, ptr %i.w, align 8
  %i.x = invoke noundef zeroext i1 @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5parseEPNS_8IOStreamE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull %i.h)
          to label %bb.g unwind label %.thread48

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.w, align 8              ; 4 uses
  br i1 %i.x, label %._crit_edge.i.i22, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.y) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 40) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr null, ptr %i.w, align 8
end_hunk_0
