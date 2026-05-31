inline.NumInlined: 2852
inline.NumDeleted: 1136
begin_hunk_0_@_ZN8facebook5velox4tzdbL8__formatERKNS1_14__continuationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIlSt5ratioILl1ELl1EEEE:bb.a
bb.l:                                             ; preds = %bb.g
  %i.bd = load i64, ptr %i.j, align 8, !tbaa !7
  %i.be = add nsw i64 %i.bd, %3                   ; 2 uses
  %spec.select.i.i = call i64 @llvm.abs.i64(i64 %i.be, i1 true) ; 2 uses
  %i.bf = udiv i64 %spec.select.i.i, 3600         ; 2 uses
  %i.bg = udiv i64 %spec.select.i.i, 60
  %.neg.i.i = mul nsw i64 %i.bf, -60
  %i.bh = add nsw i64 %.neg.i.i, %i.bg
  %i.bi = icmp slt i64 %i.be, 0
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !9   ; 7 uses
  %i.bk = add i64 %i.bj, 1                        ; 6 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.bm = icmp eq ptr %i.bl, %i.a                 ; 4 uses
  br i1 %i.bi, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  br i1 %i.bm, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bn = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.n, %bb.m
  %i.bo = load i64, ptr %i.a, align 8
  %i.bp = select i1 %i.bm, i64 15, i64 %i.bo
  %i.bq = icmp ugt i64 %i.bk, %i.bp
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bj, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc69 unwind label %bb.q

.noexc69:                                         ; preds = %bb.o
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %.noexc69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.br = phi ptr [ %.pre.i.i, %.noexc69 ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  store i8 45, ptr %i.bs, align 1, !tbaa !25
  store i64 %i.bk, ptr %i.b, align 8, !tbaa !9
  %i.bt = load ptr, ptr %0, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bk
  store i8 0, ptr %i.bu, align 1, !tbaa !25
  %i.bv = load i64, ptr %i.j, align 8, !tbaa !7
  %i.bw = add nsw i64 %i.bv, %3
  %spec.select.i.i70 = call i64 @llvm.abs.i64(i64 %i.bw, i1 true) ; 2 uses
  %i.bx = udiv i64 %spec.select.i.i70, 3600       ; 2 uses
  %i.by = udiv i64 %spec.select.i.i70, 60
  %.neg.i.i71 = mul nsw i64 %i.bx, -60
  %i.bz = add nsw i64 %.neg.i.i71, %i.by
  br label %bb.u

bb.q:                                             ; preds = %bb.t, %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.r:                                             ; preds = %bb.l
  br i1 %i.bm, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75

bb.s:                                             ; preds = %bb.r
  %i.cb = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.cb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75: ; preds = %bb.s, %bb.r
  %i.cc = load i64, ptr %i.a, align 8
  %i.cd = select i1 %i.bm, i64 15, i64 %i.cc
  %i.ce = icmp ugt i64 %i.bk, %i.cd
  br i1 %i.ce, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bj, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc77 unwind label %bb.q

.noexc77:                                         ; preds = %bb.t
  %.pre.i.i76 = load ptr, ptr %0, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75, %.noexc77
  %i.cf = phi ptr [ %.pre.i.i76, %.noexc77 ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bj
  store i8 43, ptr %i.cg, align 1, !tbaa !25
  store i64 %i.bk, ptr %i.b, align 8, !tbaa !9
  %i.ch = load ptr, ptr %0, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bk
  store i8 0, ptr %i.ci, align 1, !tbaa !25
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78, %bb.p
  %.sroa.0102.0 = phi i64 [ %i.bx, %bb.p ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78 ] ; 2 uses
  %.sroa.7104.0 = phi i64 [ %i.bz, %bb.p ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78 ] ; 2 uses
  %i.cj = icmp eq i64 %.sroa.7104.0, 0
  br i1 %i.cj, label %.noexc63, label %.noexc61

.noexc61:                                         ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  store i64 %.sroa.0102.0, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store i64 %.sroa.7104.0, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store ptr %12, ptr %9, align 16, !tbaa !25
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customINSt6chrono8durationIlSt5ratioILl3600ELl1EEEENS0_9formatterISA_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.k, align 8, !tbaa !25
  store ptr %13, ptr %i.l, align 16, !tbaa !25
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customINSt6chrono8durationIlSt5ratioILl60ELl1EEEENS0_9formatterISA_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.m, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.ck = load i64, ptr %i.b, align 8, !tbaa !9, !noalias !216 ; 2 uses
  store i64 %i.ck, ptr %i.n, align 8, !tbaa !219, !alias.scope !216
  store i64 %i.ck, ptr %i.o, align 8, !tbaa !221, !alias.scope !216
  store ptr @_ZN3fmt3v116detail16container_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4growERNS1_6bufferIcEEm, ptr %i.p, align 8, !tbaa !222, !alias.scope !216
  store ptr %0, ptr %i.q, align 8, !tbaa !223, !alias.scope !216
  invoke void @_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.15, i64 10, i64 255, ptr nonnull %9, ptr null)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %.loopexit128

bb.w:                                             ; preds = %.noexc61
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.as

.noexc63:                                         ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  store i64 %.sroa.0102.0, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %14, ptr %8, align 16, !tbaa !25
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customINSt6chrono8durationIlSt5ratioILl3600ELl1EEEENS0_9formatterISA_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.r, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !9, !noalias !225 ; 2 uses
  store i64 %i.cm, ptr %i.s, align 8, !tbaa !219, !alias.scope !225
  store i64 %i.cm, ptr %i.t, align 8, !tbaa !221, !alias.scope !225
  store ptr @_ZN3fmt3v116detail16container_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4growERNS1_6bufferIcEEm, ptr %i.u, align 8, !tbaa !222, !alias.scope !225
  store ptr %0, ptr %i.v, align 8, !tbaa !223, !alias.scope !225
  invoke void @_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.16, i64 5, i64 15, ptr nonnull %8, ptr null)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %.loopexit128

bb.y:                                             ; preds = %.noexc63
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.as

bb.z:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29, !noalias !228
  store i8 %i.x, ptr %6, align 16, !tbaa !25, !noalias !228
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull @.str.17, i64 74, i64 8, ptr nonnull %6)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !228
  %i.co = load ptr, ptr %15, align 8, !tbaa !14
  invoke void @_ZSt21__throw_runtime_errorPKc(ptr noundef %i.co) #30
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.ad:                                            ; preds = %bb.aa
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %15, align 8, !tbaa !14   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.ad
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !25
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.ac
  %.pn55 = phi { ptr, i32 } [ %i.cp, %bb.ac ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.cq, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %bb.as

bb.ae:                                            ; preds = %bb.b
  switch i8 %i.x, label %bb.ah [
    i8 47, label %bb.af
    i8 37, label %.loopexit128
    i8 45, label %bb.ai
    i8 43, label %bb.ai
  ]

bb.af:                                            ; preds = %bb.ae
  br i1 %i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit.thread126, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 0, ptr %i.b, align 8, !tbaa !9
  %i.cw = load ptr, ptr %0, align 8, !tbaa !14
  store i8 0, ptr %i.cw, align 1, !tbaa !25
  br label %.loopexit128

bb.ah:                                            ; preds = %bb.ae
  %i.cx = sext i8 %i.x to i32
  %i.cy = call i32 @isalnum(i32 noundef %i.cx) #33
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ae, %bb.ah
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !9   ; 4 uses
  %i.da = add i64 %i.cz, 1                        ; 3 uses
  %i.db = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.a                 ; 2 uses
  br i1 %i.dc, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.dd = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.dd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.aj, %bb.ai
  %i.de = load i64, ptr %i.a, align 8
  %i.df = select i1 %i.dc, i64 15, i64 %i.de
  %i.dg = icmp ugt i64 %i.da, %i.df
  br i1 %i.dg, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cz, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc89 unwind label %.loopexit.split-lp

.noexc89:                                         ; preds = %bb.ak
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc89
  %i.dh = phi ptr [ %.pre.i, %.noexc89 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz
  store i8 %i.x, ptr %i.di, align 1, !tbaa !25
  store i64 %i.da, ptr %i.b, align 8, !tbaa !9
  %i.dj = load ptr, ptr %0, align 8, !tbaa !14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.da
  store i8 0, ptr %i.dk, align 1, !tbaa !25
  br label %.loopexit128

bb.al:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29, !noalias !231
  store i8 %i.x, ptr %7, align 16, !tbaa !25, !noalias !231
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.18, i64 96, i64 8, ptr nonnull %7)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !231
  %i.dl = load ptr, ptr %16, align 8, !tbaa !14
  invoke void @_ZSt21__throw_runtime_errorPKc(ptr noundef %i.dl) #30
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.ap:                                            ; preds = %bb.am
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %16, align 8, !tbaa !14   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.ap
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !25
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.dm, %bb.ao ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.dn, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.as

.loopexit128:                                     ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.ag, %bb.d, %bb.x, %bb.v
  %.2.ph = phi i8 [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.d ], [ 1, %bb.ae ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ 0, %bb.ag ], [ 0, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150, i64 1 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.g
  br i1 %i.du, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit, label %bb.b

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit: ; preds = %.loopexit128
  %i.dv = trunc nuw i8 %.2.ph to i1
  br i1 %i.dv, label %.invoke, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit.thread126

bb.aq:                                            ; preds = %.invoke
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit.thread126: ; preds = %bb.af, %bb.a, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit
  %i.dx = load i64, ptr %i.b, align 8, !tbaa !9
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %.invoke, label %bb.ar

.invoke:                                          ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit.thread126
  %i.dz = phi ptr [ @.str.20, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit.thread126 ], [ @.str.19, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit ]
  invoke void @_ZSt21__throw_runtime_errorPKc(ptr noundef nonnull %i.dz) #30
          to label %.cont unwind label %bb.aq

.cont:                                            ; preds = %.invoke
  unreachable

bb.ar:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit.thread126
  ret void

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.y, %bb.w, %bb.q, %bb.aq
  %.pn55.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.aq ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.cl, %bb.w ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.cn, %bb.y ], [ %i.ca, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ea = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.a
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.as
  %i.ec = load i64, ptr %i.a, align 8, !tbaa !25
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  resume { ptr, i32 } %.pn55.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox4tzdb9time_zone10__get_infoENSt6chrono10time_pointINS0_4date7local_tENS3_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind noalias writable sret(%"struct.facebook::velox::tzdb::local_info") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.facebook::velox::tzdb::sys_info", align 8 ; 29 uses
  %4 = alloca %"struct.facebook::velox::tzdb::sys_info", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::tzdb::sys_info", align 8 ; 9 uses
  %6 = alloca %"struct.facebook::velox::tzdb::sys_info", align 8 ; 14 uses
  %7 = alloca %"struct.facebook::velox::tzdb::sys_info", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNK8facebook5velox4tzdb9time_zone10__get_infoENSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::velox::tzdb::sys_info") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %2)
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7    ; 3 uses
  %i.d = icmp sgt i64 %i.c, 0
  %i.e = and i64 %2, 9223372036854775807
  %i.f = icmp slt i64 %i.e, %i.c
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %0, align 8, !tbaa !234
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !84
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !9    ; 8 uses
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %.noexc.i.i82.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nuw i64 %i.m, 1                      ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc6.i.i81.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #32
          to label %.noexc77 unwind label %bb.i   ; 2 uses

.noexc77:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.r, ptr %i.h, align 8, !tbaa !14
  store i64 %i.m, ptr %i.j, align 8, !tbaa !25
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc77, %bb.c
  %i.s = phi ptr [ %i.r, %.noexc77 ], [ %i.j, %bb.c ] ; 3 uses
  switch i64 %i.m, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl60ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_:bb.a
  br label %_ZN3fmt3v116detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #29
  br label %.body

_ZN3fmt3v116detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v116detail18get_classic_localeEvE6locale, align 8, !tbaa !413, !nonnull !71, !align !101
  br label %_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v116detail18get_classic_localeEv.exit.i, %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v116detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !295
  store ptr %i.m, ptr %6, align 8, !tbaa !413
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !412

bb.g:                                             ; preds = %_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #29
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v116detail18get_classic_localeEvE6locale, align 8, !tbaa !413
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #29
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #29
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v116detail18get_classic_localeEvE6locale, align 8, !tbaa !413, !nonnull !71, !align !101
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #29
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !415
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !295
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.x, align 8, !tbaa !419
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %1, ptr %i.y, align 8, !tbaa !420
  %i.z = getelementptr inbounds i8, ptr %6, i64 %3 ; 2 uses
  %i.aa = and i64 %2, 1
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !329
  %i.ac = getelementptr i8, ptr %i.ab, i64 %2
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load ptr, ptr %i.ad, align 8, !nosanitize !71
  br label %bb.p

bb.m:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.j, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.af, %bb.m ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.ag = load i8, ptr %i.e, align 8, !tbaa !410, !range !70, !noundef !71
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %_ZN3fmt3v116detail10get_localeD2Ev.exit

bb.n:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #29
  br label %_ZN3fmt3v116detail10get_localeD2Ev.exit

_ZN3fmt3v116detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !295
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !295
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !410, !range !70, !noundef !71
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEEEEJSB_EEEvDpT0_(i64 %0) local_unnamed_addr #25 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::BadExpectedAccess", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1EEEEEEEE, i64 16), ptr %1, align 8, !tbaa !329
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %0, ptr %i.a, align 8, !tbaa !7
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #5
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #25 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1EEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !329
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7
  store i64 %i.d, ptr %i.b, align 8, !tbaa !7
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1EEEEEEEE, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr @.str.50
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessIvED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() local_unnamed_addr #25 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::BadExpectedAccess.132", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %0, align 8, !tbaa !329
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #25 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %i.a, align 8, !tbaa !329
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessIvEE, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind }
attributes #25 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin nounwind }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !8, i64 8}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !8, i64 8, !5, i64 16}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!10, !12, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSN8facebook5velox4tzdb9time_zone6__implE", !13, i64 0}
!17 = !{!18, !19, i64 8}
!18 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4tzdb14__continuationESaIS3_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 _ZTSN8facebook5velox4tzdb14__continuationE", !13, i64 0}
!20 = !{!18, !19, i64 0}
!21 = !{!22, !5, i64 32}
!22 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !5, i64 0, !5, i64 32}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSN8facebook5velox4date10transitionE", !13, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"bool", !5, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSN8facebook5velox4date15expanded_ttinfoE", !13, i64 0}
!30 = !{!31, !24, i64 8}
!31 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4date10transitionESaIS3_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!32 = !{!31, !24, i64 16}
!33 = !{!34, !29, i64 8}
!34 = !{!"_ZTSN8facebook5velox4date10transitionE", !35, i64 0, !29, i64 8}
!35 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1EEEEEE", !36, i64 0}
!36 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE", !8, i64 0}
!37 = !{!31, !24, i64 0}
!38 = !{i64 0, i64 8, !7, i64 8, i64 8, !28}
!39 = !{!40, !42}
!40 = distinct !{!40, !41, !"_ZSt19__relocate_object_aIN8facebook5velox4date10transitionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!41 = distinct !{!41, !"_ZSt19__relocate_object_aIN8facebook5velox4date10transitionES3_SaIS3_EEvPT_PT0_RT1_"}
!42 = distinct !{!42, !41, !"_ZSt19__relocate_object_aIN8facebook5velox4date10transitionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = !{!19, !19, i64 0}
!47 = !{!48, !27, i64 56}
!48 = !{!"_ZTSN8facebook5velox4tzdb14__continuationE", !49, i64 0, !36, i64 8, !50, i64 16, !27, i64 56, !56, i64 64, !10, i64 80, !59, i64 112, !60, i64 120, !61, i64 124, !68, i64 144}
!49 = !{!"p1 _ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN8facebook5velox4tzdb6__ruleESaISA_EEESaISD_EE", !13, i64 0}
!50 = !{!"_ZTSSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !51, i64 0}
!51 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !52, i64 0}
!52 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !53, i64 0}
!53 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !54, i64 0}
!54 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !55, i64 0}
!55 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !22, i64 0}
!56 = !{!"_ZTSSt4pairIN9__gnu_cxx17__normal_iteratorIPKN8facebook5velox4tzdb6__ruleESt6vectorIS5_SaIS5_EEEESB_E", !57, i64 0, !57, i64 8}
!57 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKN8facebook5velox4tzdb6__ruleESt6vectorIS4_SaIS4_EEEE", !58, i64 0}
!58 = !{!"p1 _ZTSN8facebook5velox4tzdb6__ruleE", !13, i64 0}
!59 = !{!"_ZTSN8facebook5velox4date4yearE", !8, i64 0}
!60 = !{!"_ZTSN8facebook5velox4date5monthE", !5, i64 0}
!61 = !{!"_ZTSSt7variantIJN8facebook5velox4date3dayENS2_12weekday_lastENS1_4tzdb21__constrained_weekdayEEE", !62, i64 0}
!62 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJN8facebook5velox4date3dayENS4_12weekday_lastENS3_4tzdb21__constrained_weekdayEEEE", !63, i64 0}
!63 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb1EJN8facebook5velox4date3dayENS4_12weekday_lastENS3_4tzdb21__constrained_weekdayEEEE", !64, i64 0}
!64 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb1EJN8facebook5velox4date3dayENS4_12weekday_lastENS3_4tzdb21__constrained_weekdayEEEE", !65, i64 0}
!65 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb1EJN8facebook5velox4date3dayENS4_12weekday_lastENS3_4tzdb21__constrained_weekdayEEEE", !66, i64 0}
!66 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb1EJN8facebook5velox4date3dayENS4_12weekday_lastENS3_4tzdb21__constrained_weekdayEEEE", !67, i64 0}
!67 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJN8facebook5velox4date3dayENS4_12weekday_lastENS3_4tzdb21__constrained_weekdayEEEE", !5, i64 0, !5, i64 12}
!68 = !{!"_ZTSN8facebook5velox4tzdb4__atE", !36, i64 0, !69, i64 8}
!69 = !{!"_ZTSN8facebook5velox4tzdb7__clockE", !5, i64 0}
!70 = !{i8 0, i8 2}
!71 = !{}
!72 = !{!57, !58, i64 0}
!73 = !{!59, !8, i64 0}
!74 = !{!75, !77}
!75 = distinct !{!75, !76, !"_ZSt19__relocate_object_aIN8facebook5velox4date10transitionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!76 = distinct !{!76, !"_ZSt19__relocate_object_aIN8facebook5velox4date10transitionES3_SaIS3_EEvPT_PT0_RT1_"}
!77 = distinct !{!77, !76, !"_ZSt19__relocate_object_aIN8facebook5velox4date10transitionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!78 = distinct !{!78, !44}
!79 = !{!48, !69, i64 152}
!80 = distinct !{!80, !44}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZNK8facebook5velox4tzdb9time_zone13load_sys_infoEN9__gnu_cxx17__normal_iteratorIPKNS0_4date10transitionESt6vectorIS6_SaIS6_EEEE: argument 0"}
!83 = distinct !{!83, !"_ZNK8facebook5velox4tzdb9time_zone13load_sys_infoEN9__gnu_cxx17__normal_iteratorIPKNS0_4date10transitionESt6vectorIS6_SaIS6_EEEE"}
!84 = !{!11, !12, i64 0}
!85 = !{!86, !27, i64 40}
!86 = !{!"_ZTSN8facebook5velox4date15expanded_ttinfoE", !36, i64 0, !10, i64 8, !27, i64 40}
!87 = !{!88, !27, i64 64}
!88 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4tzdb8sys_infoEE", !5, i64 0, !27, i64 64}
!89 = !{!90, !49, i64 56}
!90 = !{!"_ZTSN8facebook5velox4tzdb9time_zone6__implE", !10, i64 0, !91, i64 32, !49, i64 56, !94, i64 64, !97, i64 88}
!91 = !{!"_ZTSSt6vectorIN8facebook5velox4tzdb14__continuationESaIS3_EE", !92, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4tzdb14__continuationESaIS3_EE", !93, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4tzdb14__continuationESaIS3_EE12_Vector_implE", !18, i64 0}
!94 = !{!"_ZTSSt6vectorIN8facebook5velox4date10transitionESaIS3_EE", !95, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4date10transitionESaIS3_EE", !96, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4date10transitionESaIS3_EE12_Vector_implE", !31, i64 0}
!97 = !{!"_ZTSSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE", !98, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4date15expanded_ttinfoESaIS3_EE", !99, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4date15expanded_ttinfoESaIS3_EE12_Vector_implE", !100, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4date15expanded_ttinfoESaIS3_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!101 = !{i64 8}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN8facebook5velox4tzdbL14__get_sys_infoENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEESA_RKNS1_14__continuationERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_INS1_6__ruleESaISM_EEESaISP_EE: argument 0"}
!104 = distinct !{!104, !"_ZN8facebook5velox4tzdbL14__get_sys_infoENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEESA_RKNS1_14__continuationERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_INS1_6__ruleESaISM_EEESaISP_EE"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZSt5visitIZN8facebook5velox4tzdbL14__get_sys_infoENSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEESB_RKNS2_14__continuationERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_INS2_6__ruleESaISN_EEESaISQ_EEE3$_0JRKSt7variantIJSt9monostateNS2_6__saveESM_EEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS15_EEEEE4typeEE4typeEOS1E_EEEE4typeEOS13_DpOS15_: argument 0"}
!107 = distinct !{!107, !"_ZSt5visitIZN8facebook5velox4tzdbL14__get_sys_infoENSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEESB_RKNS2_14__continuationERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_INS2_6__ruleESaISN_EEESaISQ_EEE3$_0JRKSt7variantIJSt9monostateNS2_6__saveESM_EEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS15_EEEEE4typeEE4typeEOS1E_EEEE4typeEOS13_DpOS15_"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIN5folly8ExpectedIN8facebook5velox4tzdb10__sys_infoENSt6chrono10time_pointINS9_3_V212system_clockENS9_8durationIlSt5ratioILl1ELl1EEEEEEEEEEZNS7_L14__get_sys_infoESH_SH_RKNS7_14__continuationERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_INS7_6__ruleESaISV_EEESaISY_EEE3$_0JRKSt7variantIJSt9monostateNS7_6__saveESU_EEEEDcOT0_DpOT1_: argument 0"}
!110 = distinct !{!110, !"_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIN5folly8ExpectedIN8facebook5velox4tzdb10__sys_infoENSt6chrono10time_pointINS9_3_V212system_clockENS9_8durationIlSt5ratioILl1ELl1EEEEEEEEEEZNS7_L14__get_sys_infoESH_SH_RKNS7_14__continuationERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_INS7_6__ruleESaISV_EEESaISY_EEE3$_0JRKSt7variantIJSt9monostateNS7_6__saveESU_EEEEDcOT0_DpOT1_"}
!111 = !{!109, !106, !103}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN5folly8ExpectedIN8facebook5velox4tzdb10__sys_infoENSt6chrono10time_pointINSA_3_V212system_clockENSA_8durationIlSt5ratioILl1ELl1EEEEEEEEEEOZNS8_L14__get_sys_infoESI_SI_RKNS8_14__continuationERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESO_INS8_6__ruleESaISW_EEESaISZ_EEE3$_0RKSt7variantIJSt9monostateNS8_6__saveESV_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES15_S1B_: argument 0"}
!114 = distinct !{!114, !"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN5folly8ExpectedIN8facebook5velox4tzdb10__sys_infoENSt6chrono10time_pointINSA_3_V212system_clockENSA_8durationIlSt5ratioILl1ELl1EEEEEEEEEEOZNS8_L14__get_sys_infoESI_SI_RKNS8_14__continuationERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESO_INS8_6__ruleESaISW_EEESaISZ_EEE3$_0RKSt7variantIJSt9monostateNS8_6__saveESV_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES15_S1B_"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZSt8__invokeIZN8facebook5velox4tzdbL14__get_sys_infoENSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEESB_RKNS2_14__continuationERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_INS2_6__ruleESaISN_EEESaISQ_EEE3$_0JRKSt9monostateEENSt15__invoke_resultIT_JDpT0_EE4typeEOS10_DpOS11_: argument 0"}
!117 = distinct !{!117, !"_ZSt8__invokeIZN8facebook5velox4tzdbL14__get_sys_infoENSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEESB_RKNS2_14__continuationERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_INS2_6__ruleESaISN_EEESaISQ_EEE3$_0JRKSt9monostateEENSt15__invoke_resultIT_JDpT0_EE4typeEOS10_DpOS11_"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZSt13__invoke_implIN5folly8ExpectedIN8facebook5velox4tzdb10__sys_infoENSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEEEEZNS4_L14__get_sys_infoESE_SE_RKNS4_14__continuationERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_INS4_6__ruleESaISR_EEESaISU_EEE3$_0JRKSt9monostateEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!120 = distinct !{!120, !"_ZSt13__invoke_implIN5folly8ExpectedIN8facebook5velox4tzdb10__sys_infoENSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEEEEZNS4_L14__get_sys_infoESE_SE_RKNS4_14__continuationERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_INS4_6__ruleESaISR_EEESaISU_EEE3$_0JRKSt9monostateEET_St14__invoke_otherOT0_DpOT1_"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZZN8facebook5velox4tzdbL14__get_sys_infoENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEESA_RKNS1_14__continuationERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_INS1_6__ruleESaISM_EEESaISP_EEENK3$_0clISt9monostateEEDaRKT_: argument 0"}
!123 = distinct !{!123, !"_ZZN8facebook5velox4tzdbL14__get_sys_infoENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEESA_RKNS1_14__continuationERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_INS1_6__ruleESaISM_EEESaISP_EEENK3$_0clISt9monostateEEDaRKT_"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN8facebook5velox4tzdbL20__get_sys_info_basicENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEESA_RKNS1_14__continuationES9_: argument 0"}
!126 = distinct !{!126, !"_ZN8facebook5velox4tzdbL20__get_sys_info_basicENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEESA_RKNS1_14__continuationES9_"}
!127 = !{!125, !122, !119, !116, !113, !109, !106, !103}
!128 = !{!125, !122, !119, !116, !113, !103}
!129 = !{!130, !27, i64 64}
!130 = !{!"_ZTSN8facebook5velox4tzdb10__sys_infoE", !131, i64 0, !27, i64 64}
!131 = !{!"_ZTSN8facebook5velox4tzdb8sys_infoE", !35, i64 0, !35, i64 8, !36, i64 16, !132, i64 24, !10, i64 32}
!132 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl60ELl1EEEE", !8, i64 0}
!133 = !{!134, !135, i64 72}
!134 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionIN8facebook5velox4tzdb10__sys_infoENSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEEEE", !5, i64 0, !135, i64 72}
!135 = !{!"_ZTSN5folly15expected_detail5WhichE", !5, i64 0}
end_hunk_1
