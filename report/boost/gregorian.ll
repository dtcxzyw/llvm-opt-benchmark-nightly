Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/gregorian?download=true
inline.NumInlined: 183
inline.NumDeleted: 88
begin_hunk_0_@_ZNK5boost6locale4util18gregorian_calendar9get_valueENS0_6period5marks11period_markENS0_17abstract_calendar10value_typeE:bb.a
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.au:                                            ; preds = %bb.a
  switch i32 %2, label %bb.ax [
    i32 0, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 2, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 1, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 6, label %bb.av
    i32 4, label %bb.av
    i32 5, label %bb.av
    i32 3, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.h, %bb.h, %bb.h, %bb.au, %bb.au, %bb.au
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.aw:                                            ; preds = %bb.au
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !68
  %i.bl = srem i32 %i.bk, 12
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.ax:                                            ; preds = %bb.au
  %i.bm = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull @.str.64)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  tail call void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.ba:                                            ; preds = %bb.a
  switch i32 %2, label %bb.bd [
    i32 0, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 2, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 1, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 6, label %bb.bb
    i32 4, label %bb.bb
    i32 5, label %bb.bb
    i32 3, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.ba
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.bc:                                            ; preds = %bb.ba
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !68
  %i.bq = icmp sgt i32 %i.bp, 11
  %i.br = zext i1 %i.bq to i32
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.bd:                                            ; preds = %bb.ba
  %i.bs = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull @.str.64)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.bg:                                            ; preds = %bb.a
  switch i32 %2, label %bb.bi [
    i32 0, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 2, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 1, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 6, label %bb.bm
    i32 4, label %bb.bm
    i32 5, label %bb.bm
    i32 3, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !69
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.bi:                                            ; preds = %bb.bg
  %i.bw = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull @.str.64)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  tail call void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.bl:                                            ; preds = %bb.a
  switch i32 %2, label %bb.bo [
    i32 0, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 2, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 1, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 6, label %bb.bm
    i32 4, label %bb.bm
    i32 5, label %bb.bm
    i32 3, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bl, %bb.bl, %bb.bl
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.bn:                                            ; preds = %bb.bl
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !70
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.bo:                                            ; preds = %bb.bl
  %i.ca = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull @.str.64)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  tail call void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.br:                                            ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !24
  %i.ce = add nsw i32 %i.cd, 1
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.bs:                                            ; preds = %bb.a
  switch i32 %2, label %bb.by [
    i32 0, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 2, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 1, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 6, label %bb.bt
    i32 4, label %bb.bu
    i32 5, label %bb.bv
    i32 3, label %bb.bx
  ]

bb.bt:                                            ; preds = %bb.bs
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.bu:                                            ; preds = %bb.bs
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.bv:                                            ; preds = %bb.bs
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !40
  %.fr77 = freeze i32 %i.cg                       ; 2 uses
  %i.ch = add nsw i32 %.fr77, 1900                ; 2 uses
  %i.ci = srem i32 %i.ch, 400
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit33.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ck = srem i32 %i.ch, 100
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = and i32 %.fr77, 3
  %i.cn = icmp eq i32 %i.cm, 0
  %or.cond82 = and i1 %i.cn, %i.cl
  br i1 %or.cond82, label %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit33.thread, label %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit33.thread62

_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit33.thread: ; preds = %bb.bw, %bb.bv
  br label %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit33.thread62

_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit33.thread62: ; preds = %bb.bw, %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit33.thread
  %i.co = phi i32 [ 365, %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit33.thread ], [ 364, %bb.bw ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !42
  %i.cr = sub i32 %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !67
  %i.cu = add nsw i32 %i.cr, %i.ct
  %i.cv = srem i32 %i.cu, 7
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !24
  %reass.sub95 = sub i32 %i.cv, %i.cx
  %i.cy = add i32 %reass.sub95, 7
  %i.cz = srem i32 %i.cy, 7
  %reass.sub.i = sub nsw i32 %i.cz, %i.co
  %i.da = trunc nsw i32 %reass.sub.i to i16
  %.lhs.trunc = add nsw i16 %i.da, 700
  %i.db = urem i16 %.lhs.trunc, 7                 ; 2 uses
  %.zext = zext nneg i16 %i.db to i32
  %i.dc = icmp samesign ult i16 %i.db, 4
  %..i = select i1 %i.dc, i32 0, i32 65529
  %.0.neg.i = add nuw nsw i32 %i.co, %.zext
  %3 = add nuw nsw i32 %.0.neg.i, %..i
  %.lhs.trunc74 = trunc i32 %3 to i16
  %i.dd = udiv i16 %.lhs.trunc74, 7
  %narrow = add nuw nsw i16 %i.dd, 1
  %i.de = zext nneg i16 %narrow to i32
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.bx:                                            ; preds = %bb.bs
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !42 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !24
  %i.dl = add i32 %i.di, 7
  %i.dm = sub i32 %i.dl, %i.dk
  %i.dn = srem i32 %i.dm, 7
  %reass.sub94 = sub i32 %i.dn, %i.dg
  %i.do = add i32 %reass.sub94, 700
  %i.dp = srem i32 %i.do, 7                       ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 4
  %..i35 = select i1 %i.dq, i32 0, i32 -7
  %.0.neg.i36 = add i32 %i.dp, %i.dg
  %i.dr = add i32 %.0.neg.i36, %..i35             ; 2 uses
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit38

_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit38: ; preds = %bb.bx
  %i.dt = udiv i32 %i.dr, 7
  %i.du = add nuw nsw i32 %i.dt, 1
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.by:                                            ; preds = %bb.bs
  %i.dv = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull @.str.64)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  tail call void @__cxa_throw(ptr nonnull %i.dv, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cb:                                            ; preds = %bb.a
  switch i32 %2, label %bb.cg [
    i32 0, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 2, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 1, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 6, label %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit53.thread
    i32 4, label %bb.ck
    i32 5, label %bb.cc
    i32 3, label %bb.cf
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !40 ; 2 uses
  %i.dz = add nsw i32 %i.dy, 1900                 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !41
  %i.ec = srem i32 %i.dz, 400
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit.thread.i40, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ee = srem i32 %i.dz, 100
  %i.ef = icmp ne i32 %i.ee, 0
  %i.eg = and i32 %i.dy, 3
  %i.eh = icmp eq i32 %i.eg, 0
  %or.cond.i39 = and i1 %i.eh, %i.ef
  br i1 %or.cond.i39, label %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit.thread.i40, label %_ZN5boost6locale4util12_GLOBAL__N_113days_in_monthEii.exit41

_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit.thread.i40: ; preds = %bb.cd, %bb.cc
  br label %_ZN5boost6locale4util12_GLOBAL__N_113days_in_monthEii.exit41

_ZN5boost6locale4util12_GLOBAL__N_113days_in_monthEii.exit41: ; preds = %bb.cd, %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit.thread.i40
  %i.ei = phi ptr [ getelementptr inbounds nuw (i8, ptr @__const._ZN5boost6locale4util12_GLOBAL__N_113days_in_monthEii.tbl, i64 48), %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit.thread.i40 ], [ @__const._ZN5boost6locale4util12_GLOBAL__N_113days_in_monthEii.tbl, %bb.cd ]
  %i.ej = sext i32 %i.eb to i64
  %i.ek = getelementptr [4 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !31 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.en = load i32, ptr %i.em, align 4, !tbaa !66
  %i.eo = sub i32 %i.el, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !67
  %i.er = add nsw i32 %i.eo, %i.eq
  %i.es = srem i32 %i.er, 7
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !24
  %reass.sub92 = sub i32 %i.es, %i.eu
  %i.ev = add i32 %reass.sub92, 7
  %i.ew = srem i32 %i.ev, 7
  %reass.sub93 = sub i32 %i.ew, %i.el
  %i.ex = add i32 %reass.sub93, 700
  %i.ey = srem i32 %i.ex, 7                       ; 2 uses
  %i.ez = icmp slt i32 %i.ey, 4
  %..i43 = select i1 %i.ez, i32 0, i32 -7
  %.0.neg.i44 = add i32 %i.ey, %i.el
  %i.fa = add i32 %.0.neg.i44, %..i43             ; 2 uses
  %i.fb = icmp slt i32 %i.fa, 0
  br i1 %i.fb, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZN5boost6locale4util12_GLOBAL__N_113days_in_monthEii.exit41
  %i.fc = udiv i32 %i.fa, 7
  %i.fd = add nuw nsw i32 %i.fc, 1
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.cf:                                            ; preds = %bb.cb
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !66 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !67
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !24
  %i.fk = add i32 %i.fh, 7
  %i.fl = sub i32 %i.fk, %i.fj
  %i.fm = srem i32 %i.fl, 7
  %reass.sub = sub i32 %i.fm, %i.ff
  %i.fn = add i32 %reass.sub, 700
  %i.fo = srem i32 %i.fn, 7                       ; 2 uses
  %i.fp = icmp slt i32 %i.fo, 4
  %..i48 = select i1 %i.fp, i32 0, i32 -7
  %.0.neg.i49 = add i32 %i.fo, %i.ff
  %i.fq = add i32 %.0.neg.i49, %..i48             ; 2 uses
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit51

_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit51: ; preds = %bb.cf
  %i.fs = udiv i32 %i.fq, 7
  %i.ft = add nuw nsw i32 %i.fs, 1
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.cg:                                            ; preds = %bb.cb
  %i.fu = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull @.str.64)
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  tail call void @__cxa_throw(ptr nonnull %i.fu, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cj:                                            ; preds = %bb.a
  switch i32 %2, label %bb.cp [
    i32 0, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 2, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 1, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit
    i32 6, label %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit53.thread
    i32 4, label %bb.ck
    i32 5, label %bb.cl
    i32 3, label %bb.co
  ]

bb.ck:                                            ; preds = %bb.cb, %bb.cj
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.cl:                                            ; preds = %bb.cj
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !41
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %bb.cm, label %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit53.thread

bb.cm:                                            ; preds = %bb.cl
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !40 ; 2 uses
  %i.gb = add nsw i32 %i.ga, 1900                 ; 2 uses
  %i.gc = srem i32 %i.gb, 400
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit53.thread, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ge = srem i32 %i.gb, 100
  %i.gf = icmp ne i32 %i.ge, 0
  %i.gg = and i32 %i.ga, 3
  %i.gh = icmp eq i32 %i.gg, 0
  %or.cond = and i1 %i.gh, %i.gf
  br i1 %or.cond, label %_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit53.thread, label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

_ZN5boost6locale4util12_GLOBAL__N_17is_leapEi.exit53.thread: ; preds = %bb.cb, %bb.cj, %bb.cn, %bb.cm, %bb.cl
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.co:                                            ; preds = %bb.cj
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !66
  %i.gk = add nsw i32 %i.gj, -1
  %i.gl = sdiv i32 %i.gk, 7
  %i.gm = add nsw i32 %i.gl, 1
  br label %_ZNK5boost6locale4util18gregorian_calendar15get_week_numberEii.exit

bb.cp:                                            ; preds = %bb.cj
  %i.gn = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull @.str.64)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
end_hunk_0
