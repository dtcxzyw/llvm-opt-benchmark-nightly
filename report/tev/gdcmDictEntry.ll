Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmDictEntry?download=true
inline.NumInlined: 282
inline.NumDeleted: 148
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4gdcm9DictEntry23CheckKeywordAgainstNameEPKcS2_:bb.a
  %.reass.i.reass.i.reass.i50 = add nsw i64 %i.bp, -2
  %i.bq = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i48, i32 noundef 39, i64 noundef %.reass.i.reass.i.reass.i50) #14 ; 6 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i47
  %i.bs = load i16, ptr %i.bq, align 1
  %i.bt = xor i16 %i.bs, 29479
  %i.bu = getelementptr i8, ptr %i.bq, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = xor i16 %i.bw, 32
  %i.by = or i16 %i.bt, %i.bx
  %i.bz = icmp ne i16 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i54, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.bn, %i.cd                    ; 2 uses
  %i.cf = icmp slt i64 %i.ce, 3
  br i1 %i.cf, label %._crit_edge, label %.lr.ph.i.i.i47, !llvm.loop !12

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i54: ; preds = %bb.k
  %.pre20.i.i55 = ptrtoint ptr %i.bq to i64
  %i.cg = icmp eq ptr %i.bq, %i.bm
  %i.ch = ptrtoint ptr %i.bh to i64
  %i.ci = sub i64 %.pre20.i.i55, %i.ch            ; 2 uses
  %.not34 = icmp eq i64 %i.ci, -1
  %or.cond332 = select i1 %i.cg, i1 true, i1 %.not34
  br i1 %or.cond332, label %._crit_edge, label %.lr.ph, !llvm.loop !13

.loopexit160:                                     ; preds = %bb.j
  %lpad.loopexit162 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp161:                            ; preds = %bb.i
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

._crit_edge:                                      ; preds = %bb.h, %.lr.ph.i.i.i, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i54, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit, %bb.l, %.lr.ph.i.i.i47, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  %.pre-phi200 = phi i64 [ %i.ab, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i ], [ %i.bn, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i54 ], [ %i.bn, %bb.l ], [ %i.ab, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit ], [ %i.bn, %.lr.ph.i.i.i47 ], [ %i.bn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit ], [ %i.ab, %.lr.ph.i.i.i ], [ %i.ab, %bb.h ] ; 4 uses
  %.pre-phi199 = phi i64 [ %i.z, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i ], [ %i.bl, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i54 ], [ %i.bl, %bb.l ], [ %i.z, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit ], [ %i.bl, %.lr.ph.i.i.i47 ], [ %i.bl, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit ], [ %i.z, %.lr.ph.i.i.i ], [ %i.z, %bb.h ] ; 7 uses
  %.pre-phi198 = phi i64 [ %i.y, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i ], [ %i.bk, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i54 ], [ %i.bk, %bb.l ], [ %i.y, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit ], [ %i.bk, %.lr.ph.i.i.i47 ], [ %i.bk, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit ], [ %i.y, %.lr.ph.i.i.i ], [ %i.y, %bb.h ] ; 4 uses
  %.pre-phi196 = phi ptr [ %i.u, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i ], [ %i.bh, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i54 ], [ %i.bh, %bb.l ], [ %i.u, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit ], [ %i.bh, %.lr.ph.i.i.i47 ], [ %i.bh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit ], [ %i.u, %.lr.ph.i.i.i ], [ %i.u, %bb.h ] ; 7 uses
  %i.cj = phi i64 [ %i.w, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i ], [ %i.bi, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i54 ], [ %i.bi, %bb.l ], [ %i.w, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit ], [ %i.bi, %.lr.ph.i.i.i47 ], [ %i.bi, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit ], [ %i.w, %.lr.ph.i.i.i ], [ %i.w, %bb.h ] ; 4 uses
  %i.ck = phi ptr [ %i.s, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i ], [ %i.bg, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i54 ], [ %i.bg, %bb.l ], [ %i.s, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit ], [ %i.bg, %.lr.ph.i.i.i47 ], [ %i.bg, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit ], [ %i.s, %.lr.ph.i.i.i ], [ %i.s, %bb.h ] ; 4 uses
  %i.cl = phi i8 [ %i.p, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i ], [ %i.be, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i54 ], [ %i.be, %bb.l ], [ %i.p, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit ], [ %i.be, %.lr.ph.i.i.i47 ], [ %i.be, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit ], [ %i.p, %.lr.ph.i.i.i ], [ %i.p, %bb.h ] ; 4 uses
  %i.cm = getelementptr i8, ptr %.pre-phi196, i64 %.pre-phi199
  %i.cn = icmp slt i64 %.pre-phi199, 2
  br i1 %i.cn, label %._crit_edge182, label %.lr.ph.i.i.i57

.lr.ph.i.i.i57:                                   ; preds = %._crit_edge, %bb.n
  %i.co = phi i64 [ %i.cx, %bb.n ], [ %.pre-phi199, %._crit_edge ]
  %.02529.i.i.i58 = phi ptr [ %i.cv, %bb.n ], [ %.pre-phi196, %._crit_edge ]
  %.reass.i.reass.i.reass.i60 = add nsw i64 %i.co, -1
  %i.cp = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i58, i32 noundef -62, i64 noundef %.reass.i.reass.i.reass.i60) #14 ; 5 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %._crit_edge178, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i57
  %i.cr = load i16, ptr %i.cp, align 1
  %i.cs = icmp ne i16 %i.cr, -19006
  %i.ct = zext i1 %i.cs to i32
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 1 ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %.pre-phi200, %i.cw             ; 2 uses
  %i.cy = icmp slt i64 %i.cx, 2
  br i1 %i.cy, label %._crit_edge178, label %.lr.ph.i.i.i57, !llvm.loop !12

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64: ; preds = %bb.m
  %.pre20.i.i65 = ptrtoint ptr %i.cp to i64
  %i.cz = icmp eq ptr %i.cp, %i.cm
  %i.da = ptrtoint ptr %.pre-phi196 to i64
  %i.db = sub i64 %.pre20.i.i65, %i.da            ; 2 uses
  %.not35175 = icmp eq i64 %i.db, -1
  %or.cond333 = select i1 %i.cz, i1 true, i1 %.not35175
  br i1 %or.cond333, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74
  %.030176 = phi i64 [ %i.eb, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.db, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ]
  %i.dc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.030176, i64 noundef 2, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %bb.o unwind label %bb.r       ; 0 uses

bb.o:                                             ; preds = %.lr.ph177
  %i.dd = load i8, ptr %2, align 8                ; 6 uses
  %i.de = trunc i8 %i.dd to i1                    ; 2 uses
  %i.df = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.dg = select i1 %i.de, ptr %i.df, ptr %i.t    ; 7 uses
  %i.dh = load i64, ptr %i.v, align 8             ; 5 uses
  %i.di = lshr i8 %i.dd, 1
  %i.dj = zext nneg i8 %i.di to i64               ; 5 uses
  %i.dk = select i1 %i.de, i64 %i.dh, i64 %i.dj   ; 7 uses
  %i.dl = getelementptr i8, ptr %i.dg, i64 %i.dk  ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64               ; 4 uses
  %i.dn = icmp slt i64 %i.dk, 2
  br i1 %i.dn, label %._crit_edge182, label %.lr.ph.i.i.i67

.lr.ph.i.i.i67:                                   ; preds = %bb.o, %bb.q
  %i.do = phi i64 [ %i.dx, %bb.q ], [ %i.dk, %bb.o ]
  %.02529.i.i.i68 = phi ptr [ %i.dv, %bb.q ], [ %i.dg, %bb.o ]
  %.reass.i.reass.i.reass.i70 = add nsw i64 %i.do, -1
  %i.dp = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i68, i32 noundef -62, i64 noundef %.reass.i.reass.i.reass.i70) #14 ; 5 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %._crit_edge178, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i67
  %i.dr = load i16, ptr %i.dp, align 1
  %i.ds = icmp ne i16 %i.dr, -19006
  %i.dt = zext i1 %i.ds to i32
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dm, %i.dw                    ; 2 uses
  %i.dy = icmp slt i64 %i.dx, 2
  br i1 %i.dy, label %._crit_edge178, label %.lr.ph.i.i.i67, !llvm.loop !12

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74: ; preds = %bb.p
  %.pre20.i.i75 = ptrtoint ptr %i.dp to i64
  %i.dz = icmp eq ptr %i.dp, %i.dl
  %i.ea = ptrtoint ptr %i.dg to i64
  %i.eb = sub i64 %.pre20.i.i75, %i.ea            ; 2 uses
  %.not35 = icmp eq i64 %i.eb, -1
  %or.cond334 = select i1 %i.dz, i1 true, i1 %.not35
  br i1 %or.cond334, label %._crit_edge178, label %.lr.ph177, !llvm.loop !14

bb.r:                                             ; preds = %.lr.ph177
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

._crit_edge178:                                   ; preds = %bb.n, %.lr.ph.i.i.i57, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74, %bb.q, %.lr.ph.i.i.i67, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64
  %.pre-phi206 = phi i64 [ %.pre-phi200, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ], [ %i.dm, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.dm, %bb.q ], [ %i.dm, %.lr.ph.i.i.i67 ], [ %.pre-phi200, %.lr.ph.i.i.i57 ], [ %.pre-phi200, %bb.n ]
  %.pre-phi205 = phi i64 [ %.pre-phi199, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ], [ %i.dk, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.dk, %bb.q ], [ %i.dk, %.lr.ph.i.i.i67 ], [ %.pre-phi199, %.lr.ph.i.i.i57 ], [ %.pre-phi199, %bb.n ] ; 7 uses
  %.pre-phi204 = phi i64 [ %.pre-phi198, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ], [ %i.dj, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.dj, %bb.q ], [ %i.dj, %.lr.ph.i.i.i67 ], [ %.pre-phi198, %.lr.ph.i.i.i57 ], [ %.pre-phi198, %bb.n ] ; 4 uses
  %.pre-phi202 = phi ptr [ %.pre-phi196, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ], [ %i.dg, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.dg, %bb.q ], [ %i.dg, %.lr.ph.i.i.i67 ], [ %.pre-phi196, %.lr.ph.i.i.i57 ], [ %.pre-phi196, %bb.n ] ; 7 uses
  %i.ed = phi i64 [ %i.cj, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ], [ %i.dh, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.dh, %bb.q ], [ %i.dh, %.lr.ph.i.i.i67 ], [ %i.cj, %.lr.ph.i.i.i57 ], [ %i.cj, %bb.n ] ; 4 uses
  %i.ee = phi ptr [ %i.ck, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ], [ %i.df, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.df, %bb.q ], [ %i.df, %.lr.ph.i.i.i67 ], [ %i.ck, %.lr.ph.i.i.i57 ], [ %i.ck, %bb.n ] ; 4 uses
  %i.ef = phi i8 [ %i.cl, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ], [ %i.dd, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.dd, %bb.q ], [ %i.dd, %.lr.ph.i.i.i67 ], [ %i.cl, %.lr.ph.i.i.i57 ], [ %i.cl, %bb.n ] ; 4 uses
  %i.eg = getelementptr i8, ptr %.pre-phi202, i64 %.pre-phi205
  %i.eh = icmp slt i64 %.pre-phi205, 5
  br i1 %i.eh, label %._crit_edge182, label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %._crit_edge178, %bb.t
  %i.ei = phi i64 [ %i.ex, %bb.t ], [ %.pre-phi205, %._crit_edge178 ]
  %.02529.i.i.i78 = phi ptr [ %i.ev, %bb.t ], [ %.pre-phi202, %._crit_edge178 ]
  %.reass.i.reass.i.reass.i80 = add nsw i64 %i.ei, -4
  %i.ej = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i78, i32 noundef 32, i64 noundef %.reass.i.reass.i.reass.i80) #14 ; 6 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %._crit_edge182, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i77
  %i.el = load i32, ptr %i.ej, align 1
  %i.em = xor i32 %i.el, 1701344288
  %i.en = getelementptr i8, ptr %i.ej, i64 4
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = zext i8 %i.eo to i32
  %i.eq = xor i32 %i.ep, 32
  %i.er = or i32 %i.em, %i.eq
  %i.es = icmp ne i32 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i84, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 2 uses
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = sub i64 %.pre-phi206, %i.ew             ; 2 uses
  %i.ey = icmp slt i64 %i.ex, 5
  br i1 %i.ey, label %._crit_edge182, label %.lr.ph.i.i.i77, !llvm.loop !12

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i84: ; preds = %bb.s
  %.pre20.i.i85 = ptrtoint ptr %i.ej to i64
  %i.ez = icmp eq ptr %i.ej, %i.eg
  %i.fa = ptrtoint ptr %.pre-phi202 to i64
  %i.fb = sub i64 %.pre20.i.i85, %i.fa            ; 2 uses
  %.not36179 = icmp eq i64 %i.fb, -1
  %or.cond335 = select i1 %i.ez, i1 true, i1 %.not36179
  br i1 %or.cond335, label %._crit_edge182, label %.lr.ph181

.lr.ph181:                                        ; preds = %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i84
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph181, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139
  %.028180 = phi i64 [ %i.fb, %.lr.ph181 ], [ %.129, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.fe = call i64 @llvm.usub.sat.i64(i64 %.028180, i64 3) ; 4 uses
  %i.ff = load i8, ptr %2, align 8, !noalias !21  ; 2 uses
  %i.fg = trunc i8 %i.ff to i1                    ; 2 uses
  %i.fh = load i64, ptr %i.v, align 8, !noalias !21
  %i.fi = lshr i8 %i.ff, 1
  %i.fj = zext nneg i8 %i.fi to i64
  %i.fk = select i1 %i.fg, i64 %i.fh, i64 %i.fj   ; 13 uses
  %i.fl = icmp ugt i64 %i.fe, %i.fk
  br i1 %i.fl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %.noexc87 unwind label %bb.ai

.noexc87:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.fm = load ptr, ptr %i.r, align 8, !noalias !21
  %i.fn = select i1 %i.fg, ptr %i.fm, ptr %i.t    ; 8 uses
  %i.fo = sub nuw i64 %i.fk, %i.fe                ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.fo, i64 8) ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fk, %i.fe
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fe
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fc, ptr align 1 %i.fp, i64 %.sroa.speculated.i.i, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.sroa.speculated.i.i
  store i8 0, ptr %i.fq, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.fr = call i64 @llvm.usub.sat.i64(i64 %.028180, i64 4) ; 4 uses
  %i.fs = icmp ugt i64 %i.fr, %i.fk
  br i1 %i.fs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %.noexc91 unwind label %bb.aj

.noexc91:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ft = sub nuw i64 %i.fk, %i.fr                ; 2 uses
  %.sroa.speculated.i.i88 = call i64 @llvm.umin.i64(i64 %i.ft, i64 9) ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i90 = icmp eq i64 %i.fk, %i.fr
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i90, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fr
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr align 1 %i.fu, i64 %.sroa.speculated.i.i88, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.sroa.speculated.i.i88
  store i8 0, ptr %i.fv, align 1, !tbaa !9
  %.not.i.i = icmp ugt i64 %i.fo, 7
  br i1 %.not.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit: ; preds = %bb.ac
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.fc, ptr nonnull @.str.4, i64 %.sroa.speculated.i.i)
  %i.fw = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.fw, label %bb.ad, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  %bcmp.i.i96 = call i32 @bcmp(ptr nonnull %i.fc, ptr nonnull @.str.5, i64 %.sroa.speculated.i.i)
  %i.fx = icmp eq i32 %bcmp.i.i96, 0
  br i1 %i.fx, label %bb.ad, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97.thread

bb.ad:                                            ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  %i.fy = add i64 %.028180, 5                     ; 3 uses
  %i.fz = icmp ugt i64 %i.fy, %i.fk
  br i1 %i.fz, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ga = getelementptr i8, ptr %i.fn, i64 %i.fk  ; 2 uses
  %i.gb = ptrtoint ptr %i.ga to i64
  %gepdiff.i.i = sub nuw nsw i64 %i.fk, %i.fy     ; 2 uses
  %i.gc = icmp slt i64 %gepdiff.i.i, 5
  br i1 %i.gc, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %.lr.ph.i.i.i98

.lr.ph.i.i.i98:                                   ; preds = %bb.ae
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fy
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i.i.i98
  %i.ge = phi i64 [ %gepdiff.i.i, %.lr.ph.i.i.i98 ], [ %i.gt, %bb.ah ]
  %.02529.i.i.i99 = phi ptr [ %i.gd, %.lr.ph.i.i.i98 ], [ %i.gr, %bb.ah ]
  %.reass.i.reass.i.reass.i101 = add nsw i64 %i.ge, -4
  %i.gf = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i99, i32 noundef 32, i64 noundef %.reass.i.reass.i.reass.i101) #14 ; 6 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gh = load i32, ptr %i.gf, align 1
  %i.gi = xor i32 %i.gh, 1701344288
  %i.gj = getelementptr i8, ptr %i.gf, i64 4
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = zext i8 %i.gk to i32
  %i.gm = xor i32 %i.gl, 32
  %i.gn = or i32 %i.gi, %i.gm
  %i.go = icmp ne i32 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i105, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 2 uses
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.gb, %i.gs                    ; 2 uses
  %i.gu = icmp slt i64 %i.gt, 5
  br i1 %i.gu, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %bb.af, !llvm.loop !12

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i105: ; preds = %bb.ag
  %.pre20.i.i106 = ptrtoint ptr %i.gf to i64
  %i.gv = icmp eq ptr %i.gf, %i.ga
  %i.gw = ptrtoint ptr %i.fn to i64
  %i.gx = sub i64 %.pre20.i.i106, %i.gw
  br i1 %i.gv, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139

bb.ai:                                            ; preds = %bb.v
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit140

bb.aj:                                            ; preds = %bb.z
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97.thread: ; preds = %bb.ac, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97
  %.not.i.i108 = icmp ugt i64 %i.ft, 8
  br i1 %.not.i.i108, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97.thread
  %bcmp.i.i111 = call i32 @bcmp(ptr nonnull %i.fd, ptr nonnull @.str.6, i64 %.sroa.speculated.i.i88)
  %i.ha = icmp eq i32 %bcmp.i.i111, 0
  br i1 %i.ha, label %bb.ak, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112.thread

bb.ak:                                            ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112
  %i.hb = add i64 %.028180, 5                     ; 3 uses
  %i.hc = icmp ugt i64 %i.hb, %i.fk
  br i1 %i.hc, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hd = getelementptr i8, ptr %i.fn, i64 %i.fk  ; 2 uses
  %i.he = ptrtoint ptr %i.hd to i64
  %gepdiff.i.i113 = sub nuw nsw i64 %i.fk, %i.hb  ; 2 uses
  %i.hf = icmp slt i64 %gepdiff.i.i113, 5
  br i1 %i.hf, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %.lr.ph.i.i.i114

.lr.ph.i.i.i114:                                  ; preds = %bb.al
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.hb
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %.lr.ph.i.i.i114
  %i.hh = phi i64 [ %gepdiff.i.i113, %.lr.ph.i.i.i114 ], [ %i.hw, %bb.ao ]
  %.02529.i.i.i115 = phi ptr [ %i.hg, %.lr.ph.i.i.i114 ], [ %i.hu, %bb.ao ]
  %.reass.i.reass.i.reass.i117 = add nsw i64 %i.hh, -4
  %i.hi = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i115, i32 noundef 32, i64 noundef %.reass.i.reass.i.reass.i117) #14 ; 6 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hk = load i32, ptr %i.hi, align 1
  %i.hl = xor i32 %i.hk, 1701344288
  %i.hm = getelementptr i8, ptr %i.hi, i64 4
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = zext i8 %i.hn to i32
  %i.hp = xor i32 %i.ho, 32
  %i.hq = or i32 %i.hl, %i.hp
  %i.hr = icmp ne i32 %i.hq, 0
  %i.hs = zext i1 %i.hr to i32
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i121, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 1 ; 2 uses
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = sub i64 %i.he, %i.hv                    ; 2 uses
  %i.hx = icmp slt i64 %i.hw, 5
  br i1 %i.hx, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %bb.am, !llvm.loop !12

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i121: ; preds = %bb.an
  %.pre20.i.i122 = ptrtoint ptr %i.hi to i64
  %i.hy = icmp eq ptr %i.hi, %i.hd
  %i.hz = ptrtoint ptr %i.fn to i64
  %i.ia = sub i64 %.pre20.i.i122, %i.hz
  br i1 %i.hy, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112
  %i.ib = icmp ugt i64 %.028180, %i.fk
  br i1 %i.ib, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112.thread
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %.noexc124 unwind label %.loopexit.split-lp

.noexc124:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112.thread
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__erase_external_with_moveEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.028180, i64 noundef 5)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit126 unwind label %.loopexit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit126: ; preds = %bb.aq
  %i.ic = load i8, ptr %2, align 8                ; 2 uses
  %i.id = trunc i8 %i.ic to i1                    ; 2 uses
  %i.ie = load ptr, ptr %i.r, align 8
  %i.if = select i1 %i.id, ptr %i.ie, ptr %i.t    ; 3 uses
  %i.ig = load i64, ptr %i.v, align 8
  %i.ih = lshr i8 %i.ic, 1
  %i.ii = zext nneg i8 %i.ih to i64
  %i.ij = select i1 %i.id, i64 %i.ig, i64 %i.ii   ; 3 uses
  %i.ik = getelementptr i8, ptr %i.if, i64 %i.ij  ; 2 uses
  %i.il = ptrtoint ptr %i.ik to i64
end_hunk_0
begin_hunk_1_@_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev:bb.a

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #14 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #14
  resume { ptr, i32 } %i.b
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !11
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_out_of_rangeB8ne180100EPKc(ptr noundef nonnull @.str.7) #15
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__erase_external_with_moveEmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 8                 ; 3 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i8 %i.a, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = select i1 %i.b, ptr %i.i, ptr %i.j       ; 2 uses
  %i.l = sub i64 %i.g, %1                         ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %2) ; 3 uses
  %.not12.not = icmp ugt i64 %i.l, %2
  br i1 %.not12.not, label %bb.c, label %_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i64 %i.l, %.sroa.speculated
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.speculated
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.o, i64 %i.m, i1 false)
  %.pre = load i8, ptr %0, align 8
  br label %_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit

_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit: ; preds = %bb.c, %bb.b
  %i.p = phi i8 [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.q = sub i64 %i.g, %.sroa.speculated          ; 3 uses
  %i.r = trunc i8 %i.p to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit
  store i64 %i.q, ptr %i.c, align 8, !tbaa !9
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne180100EPcm.exit

bb.e:                                             ; preds = %_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit
  %i.s = trunc i64 %i.q to i8
  %i.t = shl i8 %i.s, 1
  store i8 %i.t, ptr %0, align 8
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne180100EPcm.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne180100EPcm.exit: ; preds = %bb.d, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q
  store i8 0, ptr %i.u, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne180100EPcm.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_out_of_rangeB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #14 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #14
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12out_of_rangeC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12out_of_range, i64 16), ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"vtable pointer", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = distinct !{!12, !20}
!13 = distinct !{!13, !20}
!14 = distinct !{!14, !20}
!15 = distinct !{!15, i1 false, !"_ZNKRSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne180100Emm"}
!16 = distinct !{!16, !15, !"_ZNKRSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne180100Emm: argument 0"}
!17 = distinct !{!17, !20}
!18 = distinct !{!18, !20}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!16}
!22 = !{!"any pointer", !5, i64 0}
!23 = !{!"p1 short", !22, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"short", !5, i64 0}
!26 = !{!25, !25, i64 0}
end_hunk_1
