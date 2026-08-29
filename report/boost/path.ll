Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/path?download=true
inline.NumInlined: 682
inline.NumDeleted: 134
begin_hunk_0_@_ZN5boost10filesystem6detail15path_algorithms19lexically_normal_v3ERKNS0_4pathE:bb.a
  %.067123 = phi i64 [ %i.bb, %bb.m ], [ %.074, %bb.l ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %.067123
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !15
  %i.ba = icmp eq i8 %i.az, 47
  br i1 %i.ba, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.bb = add i64 %.067123, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.d
  br i1 %exitcond.not, label %.critedge86, label %.lr.ph, !llvm.loop !19

.critedge:                                        ; preds = %.lr.ph, %.critedge2
  %.1 = phi i64 [ %.2.lcssa, %.critedge2 ], [ %.067123, %.lr.ph ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1 ; 6 uses
  %i.bd = sub i64 %i.d, %.1                       ; 2 uses
  %i.be = call noundef ptr @memchr(ptr noundef %i.bc, i32 noundef 47, i64 noundef %i.bd) #21 ; 2 uses
  %.not.i89 = icmp eq ptr %i.be, null
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %.0.i = select i1 %.not.i89, i64 %i.bd, i64 %i.bh, !prof !18 ; 4 uses
  %i.bi = add i64 %.0.i, %.1                      ; 4 uses
  switch i64 %.0.i, label %thread-pre-split [
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.n:                                             ; preds = %.critedge
  %i.bj = load i8, ptr %i.bc, align 1, !tbaa !15
  %i.bk = icmp eq i8 %i.bj, 46
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %thread-pre-split

bb.o:                                             ; preds = %.critedge
  %i.bl = load i8, ptr %i.bc, align 1, !tbaa !15
  %i.bm = icmp eq i8 %i.bl, 46
  br i1 %i.bm, label %bb.p, label %thread-pre-split

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr i8, ptr %i.bc, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !15
  %i.bp = icmp eq i8 %i.bo, 46
  br i1 %i.bp, label %bb.q, label %thread-pre-split

bb.q:                                             ; preds = %bb.p
  %i.bq = load i64, ptr %i.ab, align 8, !tbaa !14 ; 4 uses
  %i.br = icmp ugt i64 %i.bq, %.074
  br i1 %i.br, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %i.bs = icmp ugt i64 %i.bt, %.074
  br i1 %i.bs, label %bb.t, label %_ZN12_GLOBAL__N_118find_filename_sizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit, !llvm.loop !21

bb.t:                                             ; preds = %bb.r, %bb.s
  %.0.i90160 = phi i64 [ %i.bq, %bb.r ], [ %i.bt, %bb.s ] ; 2 uses
  %i.bt = add i64 %.0.i90160, -1                  ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !15
  %i.bw = icmp eq i8 %i.bv, 47
  br i1 %i.bw, label %_ZN12_GLOBAL__N_118find_filename_sizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit, label %bb.s, !llvm.loop !21

_ZN12_GLOBAL__N_118find_filename_sizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit: ; preds = %bb.s, %bb.t
  %.0.lcssa.i = phi i64 [ %.0.i90160, %bb.t ], [ %.074, %bb.s ] ; 6 uses
  %i.bx = sub i64 %i.bq, %.0.lcssa.i
  %.not = icmp eq i64 %i.bx, 2
  br i1 %.not, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_118find_filename_sizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit
  %i.by = getelementptr i8, ptr %.val, i64 %.0.lcssa.i ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !15
  %.not80 = icmp eq i8 %i.bz, 46
  br i1 %.not80, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr i8, ptr %i.by, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !15
  %.not81 = icmp eq i8 %i.cb, 46
  br i1 %.not81, label %thread-pre-split, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN12_GLOBAL__N_118find_filename_sizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit
  %i.cc = icmp ugt i64 %.0.lcssa.i, %.074
  br i1 %i.cc, label %bb.x, label %.critedge88

bb.x:                                             ; preds = %bb.w
  %i.cd = add i64 %.0.lcssa.i, -1                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !15
  %i.cg = icmp eq i8 %i.cf, 47
  %spec.select = select i1 %i.cg, i64 %i.cd, i64 %.0.lcssa.i
  br label %.critedge88

.critedge88:                                      ; preds = %bb.w, %bb.x
  %.065 = phi i64 [ %.0.lcssa.i, %bb.w ], [ %spec.select, %bb.x ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.val, i64 %.065
  store i64 %.065, ptr %i.ab, align 8, !tbaa !14
  store i8 0, ptr %i.ch, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

thread-pre-split:                                 ; preds = %bb.o, %bb.p, %.critedge, %bb.v, %bb.n
  %.pr = load i64, ptr %i.ab, align 8, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %thread-pre-split, %bb.q
  %i.ci = phi i64 [ %.pr, %thread-pre-split ], [ %i.bq, %bb.q ] ; 7 uses
  %.not.i92 = icmp eq i64 %i.ci, 0
  br i1 %.not.i92, label %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.ck, i64 -1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !15
  %i.cn = icmp eq i8 %i.cm, 47
  br i1 %i.cn, label %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = add i64 %i.ci, 1                        ; 3 uses
  %i.cp = icmp eq ptr %i.cj, %i.ac
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.aa
  %i.cq = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aa
  %i.cr = load i64, ptr %i.ac, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cs = phi i64 [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ct = icmp ugt i64 %i.co, %i.cs
  br i1 %i.ct, label %bb.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ci, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc94 unwind label %.loopexit

.noexc94:                                         ; preds = %bb.ab
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i: ; preds = %.noexc94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.cu = phi ptr [ %.pre.i.i, %.noexc94 ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ci
  store i8 47, ptr %i.cv, align 1, !tbaa !15
  store i64 %i.co, ptr %i.ab, align 8, !tbaa !14
  %i.cw = load ptr, ptr %0, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co
  store i8 0, ptr %i.cx, align 1, !tbaa !15
  %.pre = load i64, ptr %i.ab, align 8, !tbaa !14
  br label %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit

_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i, %bb.z, %bb.y
  %i.cy = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ], [ %i.ci, %bb.z ], [ 0, %bb.y ]
  %i.cz = sub i64 4611686018427387903, %i.cy
  %i.da = icmp ult i64 %i.cz, %.0.i
  br i1 %i.da, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.ac:                                            ; preds = %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
          to label %.noexc95 unwind label %.loopexit.split-lp

.noexc95:                                         ; preds = %bb.ac
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bc, i64 noundef %.0.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %.critedge88, %bb.n
  %.066 = phi i1 [ false, %.critedge88 ], [ true, %bb.n ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i ]
  %i.dc = icmp eq i64 %i.bi, %i.d
  br i1 %i.dc, label %bb.ae, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.dd = icmp ult i64 %i.bi, %i.d
  br i1 %i.dd, label %.lr.ph125, label %.critedge2

.loopexit:                                        ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.lr.ph125:                                        ; preds = %.preheader, %bb.ad
  %.2124 = phi i64 [ %i.dh, %bb.ad ], [ %i.bi, %.preheader ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 %.2124
  %i.df = load i8, ptr %i.de, align 1, !tbaa !15
  %i.dg = icmp eq i8 %i.df, 47
  br i1 %i.dg, label %bb.ad, label %.critedge2

bb.ad:                                            ; preds = %.lr.ph125
  %i.dh = add nuw i64 %.2124, 1                   ; 2 uses
  %2 = icmp ult i64 %i.dh, %i.d
  br i1 %2, label %.lr.ph125, label %thread-pre-split119, !llvm.loop !22

.critedge2:                                       ; preds = %.lr.ph125, %.preheader
  %.2.lcssa = phi i64 [ %i.bi, %.preheader ], [ %.2124, %.lr.ph125 ] ; 2 uses
  %i.di = icmp eq i64 %.2.lcssa, %i.d
  br i1 %i.di, label %thread-pre-split119, label %.critedge, !llvm.loop !23

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.dj = load i64, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %or.cond = or i1 %.066, %i.dk
  br i1 %or.cond, label %bb.af, label %.critedge86

thread-pre-split119:                              ; preds = %.critedge2, %bb.ad
  %.pr120 = load i64, ptr %i.ab, align 8, !tbaa !14
  br label %bb.af

bb.af:                                            ; preds = %thread-pre-split119, %bb.ae
  %i.dl = phi i64 [ %.pr120, %thread-pre-split119 ], [ %i.dj, %bb.ae ] ; 7 uses
  %.not.i97 = icmp eq i64 %i.dl, 0
  %.pre132.a = load ptr, ptr %0, align 8, !tbaa !8 ; 5 uses
  br i1 %.not.i97, label %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit105, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dm = getelementptr i8, ptr %.pre132.a, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !15
  %i.dp = icmp eq i8 %i.do, 47
  br i1 %i.dp, label %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit105, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dq = add i64 %i.dl, 1                        ; 3 uses
  %i.dr = icmp eq ptr %.pre132.a, %i.ac
  br i1 %i.dr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103: ; preds = %bb.ah
  %i.ds = icmp ult i64 %i.dl, 16
  call void @llvm.assume(i1 %i.ds)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98: ; preds = %bb.ah
  %i.dt = load i64, ptr %i.ac, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i99: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103
  %i.du = phi i64 [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103 ]
  %i.dv = icmp ugt i64 %i.dq, %i.du
  br i1 %i.dv, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i100

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i99
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dl, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc104 unwind label %bb.ak

.noexc104:                                        ; preds = %bb.ai
  %.pre.i.i102 = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i100: ; preds = %.noexc104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i99
  %i.dw = phi ptr [ %.pre.i.i102, %.noexc104 ], [ %.pre132.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i99 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dl
  store i8 47, ptr %i.dx, align 1, !tbaa !15
  store i64 %i.dq, ptr %i.ab, align 8, !tbaa !14
  %i.dy = load ptr, ptr %0, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dq
  store i8 0, ptr %i.dz, align 1, !tbaa !15
  %.pre130 = load i64, ptr %i.ab, align 8, !tbaa !14
  %.pre131 = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit105

_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i100, %bb.ag, %bb.af
  %i.ea = phi ptr [ %.pre131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i100 ], [ %.pre132.a, %bb.ag ], [ %.pre132.a, %bb.af ] ; 2 uses
  %i.eb = phi i64 [ %.pre130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i100 ], [ %i.dl, %bb.ag ], [ 0, %bb.af ] ; 4 uses
  %i.ec = add i64 %i.eb, 1                        ; 3 uses
  %i.ed = icmp eq ptr %i.ea, %i.ac
  br i1 %i.ed, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109: ; preds = %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit105
  %i.ee = icmp ult i64 %i.eb, 16
  call void @llvm.assume(i1 %i.ee)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit105
  %i.ef = load i64, ptr %i.ac, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i107: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109
  %i.eg = phi i64 [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109 ]
  %i.eh = icmp ugt i64 %i.ec, %i.eg
  br i1 %i.eh, label %bb.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit111

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i107
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eb, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc110 unwind label %bb.ak

.noexc110:                                        ; preds = %bb.aj
  %.pre.i108 = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit111: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i107, %.noexc110
  %i.ei = phi ptr [ %.pre.i108, %.noexc110 ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i107 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eb
  store i8 46, ptr %i.ej, align 1, !tbaa !15
  store i64 %i.ec, ptr %i.ab, align 8, !tbaa !14
  %i.ek = load ptr, ptr %0, align 8, !tbaa !8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ec
  store i8 0, ptr %i.el, align 1, !tbaa !15
  br label %.critedge86

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ak, %bb.k
  %.pn83.pn = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.em, %bb.ak ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.en = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ac
  br i1 %i.eo, label %_ZN5boost10filesystem4pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112: ; preds = %bb.al
  %i.ep = load i64, ptr %i.ac, align 8, !tbaa !15
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #23
  br label %_ZN5boost10filesystem4pathD2Ev.exit

_ZN5boost10filesystem4pathD2Ev.exit:              ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112
  resume { ptr, i32 } %.pn83.pn

.critedge86:                                      ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit111, %bb.ae
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 7 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 %i.b
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15
  %i.g = icmp eq i8 %i.f, 47
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.b, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.c, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.c
  %i.k = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.i, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.d
  %i.o = phi ptr [ %.pre.i, %bb.d ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.b
  store i8 47, ptr %i.p, align 1, !tbaa !15
  store i64 %i.h, ptr %i.a, align 8, !tbaa !14
  %i.q = load ptr, ptr %0, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %.0 = phi i64 [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10filesystem4pathD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !15
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN5boost10filesystem6detail15path_algorithms19lexically_normal_v4ERKNS0_4pathE:bb.a
  br i1 %i.cc, label %bb.x, label %.critedge95

bb.x:                                             ; preds = %bb.w
  %i.cd = add i64 %.0.lcssa.i, -1                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !15
  %i.cg = icmp eq i8 %i.cf, 47
  %spec.select = select i1 %i.cg, i64 %i.cd, i64 %.0.lcssa.i
  br label %.critedge95

.critedge95:                                      ; preds = %bb.w, %bb.x
  %.066 = phi i64 [ %.0.lcssa.i, %bb.w ], [ %spec.select, %bb.x ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.val, i64 %.066
  store i64 %.066, ptr %i.ab, align 8, !tbaa !14
  store i8 0, ptr %i.ch, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

thread-pre-split:                                 ; preds = %bb.o, %bb.p, %.critedge, %bb.v, %bb.n
  %.pr = load i64, ptr %i.ab, align 8, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %thread-pre-split, %bb.q
  %i.ci = phi i64 [ %.pr, %thread-pre-split ], [ %i.bq, %bb.q ] ; 7 uses
  %.not.i99 = icmp eq i64 %i.ci, 0
  br i1 %.not.i99, label %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.ck, i64 -1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !15
  %i.cn = icmp eq i8 %i.cm, 47
  br i1 %i.cn, label %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = add i64 %i.ci, 1                        ; 3 uses
  %i.cp = icmp eq ptr %i.cj, %i.ac
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.aa
  %i.cq = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aa
  %i.cr = load i64, ptr %i.ac, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cs = phi i64 [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ct = icmp ugt i64 %i.co, %i.cs
  br i1 %i.ct, label %bb.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ci, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc101 unwind label %.loopexit

.noexc101:                                        ; preds = %bb.ab
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i: ; preds = %.noexc101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.cu = phi ptr [ %.pre.i.i, %.noexc101 ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ci
  store i8 47, ptr %i.cv, align 1, !tbaa !15
  store i64 %i.co, ptr %i.ab, align 8, !tbaa !14
  %i.cw = load ptr, ptr %0, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co
  store i8 0, ptr %i.cx, align 1, !tbaa !15
  %.pre158.a = load i64, ptr %i.ab, align 8, !tbaa !14
  br label %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit

_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i, %bb.z, %bb.y
  %i.cy = phi i64 [ %.pre158.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ], [ %i.ci, %bb.z ], [ 0, %bb.y ]
  %i.cz = sub i64 4611686018427387903, %i.cy
  %i.da = icmp ult i64 %i.cz, %.0.i
  br i1 %i.da, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.ac:                                            ; preds = %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
          to label %.noexc102 unwind label %.loopexit.split-lp

.noexc102:                                        ; preds = %bb.ac
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN5boost10filesystem6detail15path_algorithms26append_separator_if_neededERNS0_4pathE.exit
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bc, i64 noundef %.0.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %.critedge95
  %i.dc = icmp eq i64 %i.bi, %i.d
  br i1 %i.dc, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139, label %.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.thread: ; preds = %bb.n
  %i.dd = icmp eq i64 %i.bi, %i.d
  br i1 %i.dd, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.thread
  %i.de = icmp ult i64 %i.bi, %i.d
  br i1 %i.de, label %.lr.ph152, label %.critedge2

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.thread
  %i.df = load i64, ptr %i.ab, align 8, !tbaa !14 ; 7 uses
  switch i64 %i.df, label %bb.ae [
    i64 0, label %.thread145
    i64 1, label %._ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread_crit_edge
  ]

._ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread_crit_edge: ; preds = %bb.ad
  %.pre = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.pre157 = load i8, ptr %.pre, align 1, !tbaa !15
  br label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.dg = load ptr, ptr %0, align 8, !tbaa !8     ; 4 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 %i.df  ; 3 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 -1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !15  ; 2 uses
  %i.dk = icmp eq i8 %i.dj, 46
  br i1 %i.dk, label %bb.af, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.dl = getelementptr i8, ptr %i.dh, i64 -2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !15
  %i.dn = icmp eq i8 %i.dm, 46
  br i1 %i.dn, label %bb.ag, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread.thread

bb.ag:                                            ; preds = %bb.af
  %i.do = icmp eq i64 %i.df, 2
  br i1 %i.do, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit

_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit: ; preds = %bb.ag
  %i.dp = getelementptr i8, ptr %i.dh, i64 -3
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15
  %i.dr = icmp eq i8 %i.dq, 47
  br i1 %i.dr, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread.thread

_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread: ; preds = %._ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread_crit_edge, %bb.ae
  %i.ds = phi i8 [ %.pre157, %._ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread_crit_edge ], [ %i.dj, %bb.ae ]
  %i.dt = phi ptr [ %.pre, %._ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread_crit_edge ], [ %i.dg, %bb.ae ]
  %i.du = icmp eq i8 %i.ds, 47
  br i1 %i.du, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread.thread

_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread.thread: ; preds = %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit, %bb.af, %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread
  %i.dv = phi ptr [ %i.dt, %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread ], [ %i.dg, %bb.af ], [ %i.dg, %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit ] ; 2 uses
  %i.dw = add i64 %i.df, 1                        ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.ac
  br i1 %i.dx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110: ; preds = %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread.thread
  %i.dy = icmp ult i64 %i.df, 16
  call void @llvm.assume(i1 %i.dy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105: ; preds = %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread.thread
  %i.dz = load i64, ptr %i.ac, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i106: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110
  %i.ea = phi i64 [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110 ]
  %i.eb = icmp ugt i64 %i.dw, %i.ea
  br i1 %i.eb, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i107

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i106
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.df, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc111 unwind label %bb.ai

.noexc111:                                        ; preds = %bb.ah
  %.pre.i.i109 = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i107: ; preds = %.noexc111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i106
  %i.ec = phi ptr [ %.pre.i.i109, %.noexc111 ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i106 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.df
  store i8 47, ptr %i.ed, align 1, !tbaa !15
  br label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139.sink.split

.loopexit:                                        ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp:                               ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ai:                                            ; preds = %bb.an, %bb.ah
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.lr.ph152:                                        ; preds = %.preheader, %bb.aj
  %.270151 = phi i64 [ %i.ei, %bb.aj ], [ %i.bi, %.preheader ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 %.270151
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !15
  %i.eh = icmp eq i8 %i.eg, 47
  br i1 %i.eh, label %bb.aj, label %.critedge2

bb.aj:                                            ; preds = %.lr.ph152
  %i.ei = add nuw i64 %.270151, 1                 ; 2 uses
  %2 = icmp ult i64 %i.ei, %i.d
  br i1 %2, label %.lr.ph152, label %.critedge2.thread, !llvm.loop !25

.critedge2:                                       ; preds = %.lr.ph152, %.preheader
  %.270.lcssa = phi i64 [ %i.bi, %.preheader ], [ %.270151, %.lr.ph152 ] ; 2 uses
  %i.ej = icmp eq i64 %.270.lcssa, %i.d
  br i1 %i.ej, label %.critedge2.thread, label %.critedge

.critedge2.thread:                                ; preds = %.critedge2, %bb.aj
  %i.ek = load i64, ptr %i.ab, align 8, !tbaa !14 ; 7 uses
  switch i64 %i.ek, label %bb.ak [
    i64 0, label %.thread145
    i64 1, label %._ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread_crit_edge
  ]

._ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread_crit_edge: ; preds = %.critedge2.thread
  %.pre159 = load ptr, ptr %0, align 8, !tbaa !8  ; 2 uses
  %.pre162 = load i8, ptr %.pre159, align 1, !tbaa !15
  br label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread

bb.ak:                                            ; preds = %.critedge2.thread
  %i.el = load ptr, ptr %0, align 8, !tbaa !8     ; 4 uses
  %i.em = getelementptr i8, ptr %i.el, i64 %i.ek  ; 3 uses
  %i.en = getelementptr i8, ptr %i.em, i64 -1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !15  ; 2 uses
  %i.ep = icmp eq i8 %i.eo, 46
  br i1 %i.ep, label %bb.al, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread

bb.al:                                            ; preds = %bb.ak
  %i.eq = getelementptr i8, ptr %i.em, i64 -2
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !15
  %i.es = icmp eq i8 %i.er, 46
  br i1 %i.es, label %bb.am, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread.thread

bb.am:                                            ; preds = %bb.al
  %i.et = icmp eq i64 %i.ek, 2
  br i1 %i.et, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113

_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113: ; preds = %bb.am
  %i.eu = getelementptr i8, ptr %i.em, i64 -3
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !15
  %i.ew = icmp eq i8 %i.ev, 47
  br i1 %i.ew, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread.thread

_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread: ; preds = %._ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread_crit_edge, %bb.ak
  %i.ex = phi i8 [ %.pre162, %._ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread_crit_edge ], [ %i.eo, %bb.ak ]
  %i.ey = phi ptr [ %.pre159, %._ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread_crit_edge ], [ %i.el, %bb.ak ]
  %i.ez = icmp eq i8 %i.ex, 47
  br i1 %i.ez, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139, label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread.thread

_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread.thread: ; preds = %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113, %bb.al, %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread
  %i.fa = phi ptr [ %i.ey, %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread ], [ %i.el, %bb.al ], [ %i.el, %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113 ] ; 2 uses
  %i.fb = add i64 %i.ek, 1                        ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.ac
  br i1 %i.fc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i120: ; preds = %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread.thread
  %i.fd = icmp ult i64 %i.ek, 16
  call void @llvm.assume(i1 %i.fd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115: ; preds = %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread.thread
  %i.fe = load i64, ptr %i.ac, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i120
  %i.ff = phi i64 [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i120 ]
  %i.fg = icmp ugt i64 %i.fb, %i.ff
  br i1 %i.fg, label %bb.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i117

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ek, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc121 unwind label %bb.ai

.noexc121:                                        ; preds = %bb.an
  %.pre.i.i119 = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i117: ; preds = %.noexc121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116
  %i.fh = phi ptr [ %.pre.i.i119, %.noexc121 ], [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116 ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ek
  store i8 47, ptr %i.fi, align 1, !tbaa !15
  br label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139.sink.split

_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139.sink.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i107
  %.sink = phi i64 [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i107 ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i117 ] ; 2 uses
  store i64 %.sink, ptr %i.ab, align 8, !tbaa !14
  %i.fj = load ptr, ptr %0, align 8, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sink
  store i8 0, ptr %i.fk, align 1, !tbaa !15
  br label %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139

_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139.sink.split, %bb.am, %bb.ag, %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit, %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113, %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread, %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit113.thread
  %.pr144 = load i64, ptr %i.ab, align 8, !tbaa !14
  %i.fl = icmp eq i64 %.pr144, 0
  br i1 %i.fl, label %.thread145, label %.critedge93

.thread145:                                       ; preds = %.critedge2.thread, %bb.ad, %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139
  %i.fm = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.fn = icmp ne ptr %i.fm, %i.ac
  %i.fo = load i64, ptr %i.ac, align 8
  %i.fp = icmp eq i64 %i.fo, 0
  %or.cond = select i1 %i.fn, i1 %i.fp, i1 false
  br i1 %or.cond, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit128

bb.ao:                                            ; preds = %.thread145
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc127 unwind label %bb.ap

.noexc127:                                        ; preds = %bb.ao
  %.pre.i125 = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit128: ; preds = %.thread145, %.noexc127
  %i.fq = phi ptr [ %.pre.i125, %.noexc127 ], [ %i.fm, %.thread145 ]
  store i8 46, ptr %i.fq, align 1, !tbaa !15
  store i64 1, ptr %i.ab, align 8, !tbaa !14
  %i.fr = load ptr, ptr %0, align 8, !tbaa !8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  store i8 0, ptr %i.fs, align 1, !tbaa !15
  br label %.critedge93

bb.ap:                                            ; preds = %bb.ao
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ap, %bb.ai, %bb.k
  %.pn90.pn = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ft, %bb.ap ], [ %i.ee, %bb.ai ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fu = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.ac
  br i1 %i.fv, label %_ZN5boost10filesystem4pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i129: ; preds = %bb.aq
  %i.fw = load i64, ptr %i.ac, align 8, !tbaa !15
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #23
  br label %_ZN5boost10filesystem4pathD2Ev.exit

_ZN5boost10filesystem4pathD2Ev.exit:              ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i129
  resume { ptr, i32 } %.pn90.pn

.critedge93:                                      ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit128, %_ZNK5boost10filesystem4path19filename_is_dot_dotEv.exit.thread139
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost10filesystem6detail15path_algorithms15generic_path_v3ERKNS0_4pathE(ptr dead_on_unwind noalias nonnull writable sret(%"class.boost::filesystem::path") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.b, align 8, !tbaa !14
  store i8 0, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 11 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !8      ; 5 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.e, align 1, !tbaa !15
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.thread

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i64 %i.d, 1
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = icmp eq i8 %i.j, 47
  br i1 %i.k, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.f:                                             ; preds = %bb.e
  %i.l = icmp eq i64 %i.d, 2
  br i1 %i.l, label %_ZN12_GLOBAL__N_125find_root_directory_startEPKcmRm.exit.thread65, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = icmp eq i8 %i.n, 47
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %_ZN12_GLOBAL__N_125find_root_directory_startEPKcmRm.exit

_ZN12_GLOBAL__N_125find_root_directory_startEPKcmRm.exit: ; preds = %bb.g
  %i.p = add i64 %i.d, -2
  %i.q = tail call noundef ptr @memchr(ptr noundef nonnull %i.m, i32 noundef 47, i64 noundef %i.p) #21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.m to i64
  %reass.sub = sub i64 %i.r, %i.s
  %i.t = add i64 %reass.sub, 2
  %i.u = select i1 %.not.i.i, i64 %i.d, i64 %i.t, !prof !18 ; 2 uses
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %_ZN12_GLOBAL__N_125find_root_directory_startEPKcmRm.exit.thread65

_ZN12_GLOBAL__N_125find_root_directory_startEPKcmRm.exit.thread65: ; preds = %bb.f, %_ZN12_GLOBAL__N_125find_root_directory_startEPKcmRm.exit
end_hunk_1
