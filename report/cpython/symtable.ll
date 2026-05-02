inline.NumInlined: 193
inline.NumDeleted: 37
begin_hunk_0_@symtable_visit_stmt:bb.a
  %.sroa.3209.8.insert.ext = zext i32 %i.ahp to i64
  %.sroa.3209.8.insert.insert = or disjoint i64 %.sroa.5210.8.insert.shift, %.sroa.3209.8.insert.ext
  %i.ahr = tail call fastcc i32 @symtable_record_directive(ptr noundef %0, ptr noundef %i.agr, i64 %.sroa.0207.0.insert.insert, i64 %.sroa.3209.8.insert.insert)
  %.not1394 = trunc nuw i32 %i.ahr to i1
  br i1 %.not1394, label %bb.fj, label %Py_DECREF.exit1643.thread

bb.fr:                                            ; preds = %bb.b
  %i.ahs = getelementptr i8, ptr %1, i64 8
end_hunk_0
begin_hunk_1_@symtable_visit_stmt:bb.a
  %.sroa.3171.8.insert.ext = zext i32 %i.ajg to i64
  %.sroa.3171.8.insert.insert = or disjoint i64 %.sroa.5172.8.insert.shift, %.sroa.3171.8.insert.ext
  %i.aji = tail call fastcc i32 @symtable_record_directive(ptr noundef %0, ptr noundef %i.aii, i64 %.sroa.0169.0.insert.insert, i64 %.sroa.3171.8.insert.insert)
  %.not1388 = trunc nuw i32 %i.aji to i1
  br i1 %.not1388, label %bb.fs, label %Py_DECREF.exit1643.thread

bb.ga:                                            ; preds = %bb.b
  %i.ajj = getelementptr i8, ptr %1, i64 8
end_hunk_1
begin_hunk_2_@symtable_visit_stmt:bb.a
  store i16 %i.auw, ptr %i.aut, align 4
  br label %Py_DECREF.exit1643

Py_DECREF.exit1643:                               ; preds = %bb.fs, %bb.fj, %bb.fa, %bb.bw, %bb.fr, %.lr.ph1976, %bb.fi, %.lr.ph1979, %bb.ez, %.lr.ph1990, %bb.bv, %.lr.ph2069, %.loopexit1902, %.critedge1853, %bb.hi, %bb.hk, %bb.hj, %.critedge1848, %.critedge1836, %.critedge1831, %bb.dp, %.loopexit1878, %.loopexit1874, %.loopexit, %bb.br, %bb.bq, %bb.bf, %bb.ag, %bb.ai, %bb.ah, %bb.ga, %.critedge1841, %bb.ev, %bb.ew, %bb.dq, %bb.dt, %bb.ds, %bb.co, %bb.cl, %bb.cm, %.critedge1822, %bb.bs, %bb.bu, %bb.b
  tail call void @Py_LeaveRecursiveCall() #7
  br label %Py_DECREF.exit1643.thread

Py_DECREF.exit1643.thread:                        ; preds = %bb.gd, %.lr.ph1935, %.lr.ph1940, %bb.gi, %bb.gk, %bb.gm, %.lr.ph1951, %.lr.ph1956, %bb.hp, %.lr.ph1961, %.lr.ph1966, %.lr.ph1971, %bb.hy, %bb.fz, %bb.fy, %.lr.ph2458, %bb.fq, %bb.fp, %.lr.ph2460, %.lr.ph1988, %.lr.ph1993, %.lr.ph1998, %bb.en, %symtable_add_def_ctx.exit1711, %.lr.ph2003, %.lr.ph2008, %.lr.ph2013, %.lr.ph2018, %bb.ea, %symtable_add_def_ctx.exit, %.lr.ph2023, %.lr.ph2028, %.lr.ph2033, %bb.dk, %bb.dm, %.lr.ph2038, %.lr.ph2043, %bb.de, %.lr.ph2051, %bb.cz, %.lr.ph2059, %bb.cu, %.lr.ph2067, %.lr.ph2072, %.lr.ph2077, %bb.am, %.lr.ph2085, %.lr.ph2090, %.lr.ph2095, %.lr.ph2100, %bb.f, %bb.h, %bb.k, %.lr.ph2111, %.lr.ph2116, %bb.hb, %bb.ha, %bb.gx, %bb.gw, %bb.hk, %bb.gy, %.critedge1617, %bb.hc, %Py_DECREF.exit, %.critedge1620, %bb.fx, %bb.fo, %symtable_add_def_ctx.exit1711.thread, %symtable_add_def_ctx.exit.thread, %bb.ci, %bb.cg, %bb.ce, %bb.ca, %bb.br, %bb.bj, %.critedge1555, %bb.bn, %bb.bo, %bb.bp, %bb.be, %bb.aj, %bb.ao, %bb.ap, %.critedge1544, %.critedge1546, %bb.ax, %bb.ay, %.critedge1550, %bb.z, %bb.y, %bb.v, %bb.u, %bb.ai, %bb.w, %.critedge, %bb.aa, %Py_DECREF.exit1639, %.critedge1533, %bb.fg, %bb.hu, %bb.ht, %maybe_set_ste_coroutine_for_module.exit1698, %maybe_set_ste_coroutine_for_module.exit, %has_kwonlydefaults.exit1690, %bb.gf, %bb.ga, %.critedge1841, %bb.fc, %bb.ey, %bb.ew, %bb.eu, %bb.dt, %bb.dr, %bb.df, %bb.da, %bb.cv, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.ck, %bb.cj, %.critedge1822, %bb.bt, %bb.bg, %has_kwonlydefaults.exit, %bb.c, %bb.a, %Py_DECREF.exit1643
  %.161 = phi i32 [ 0, %bb.gw ], [ 1, %Py_DECREF.exit1643 ], [ 0, %.lr.ph2051 ], [ 0, %.lr.ph2067 ], [ 0, %bb.c ], [ 0, %bb.hp ], [ 0, %.lr.ph2059 ], [ 0, %bb.hu ], [ 0, %bb.a ], [ 0, %.lr.ph2043 ], [ 0, %.lr.ph1951 ], [ 0, %has_kwonlydefaults.exit ], [ 0, %bb.bg ], [ 0, %.lr.ph2028 ], [ 0, %bb.bt ], [ 0, %.lr.ph2111 ], [ 0, %bb.ck ], [ 0, %bb.cj ], [ 0, %.lr.ph2116 ], [ 0, %.critedge1822 ], [ 0, %bb.cn ], [ 0, %bb.cm ], [ 0, %bb.ci ], [ 0, %bb.cp ], [ 0, %bb.co ], [ 0, %bb.h ], [ 0, %bb.cq ], [ 0, %.lr.ph2100 ], [ 0, %bb.cv ], [ 0, %.lr.ph2090 ], [ 0, %bb.da ], [ 0, %bb.dr ], [ 0, %bb.df ], [ 0, %bb.am ], [ 0, %bb.cu ], [ 0, %bb.eu ], [ 0, %bb.dt ], [ 0, %bb.k ], [ 0, %bb.ew ], [ 0, %bb.fc ], [ 0, %.lr.ph2033 ], [ 0, %bb.fg ], [ 0, %bb.ey ], [ 0, %.lr.ph2008 ], [ 0, %bb.ha ], [ 0, %.critedge1841 ], [ 0, %.lr.ph1988 ], [ 0, %bb.ht ], [ 0, %maybe_set_ste_coroutine_for_module.exit1698 ], [ 0, %maybe_set_ste_coroutine_for_module.exit ], [ 0, %bb.en ], [ 0, %has_kwonlydefaults.exit1690 ], [ 0, %bb.dk ], [ 0, %.lr.ph1993 ], [ 0, %bb.gf ], [ 0, %bb.fq ], [ 0, %.lr.ph2018 ], [ 0, %.lr.ph1971 ], [ 0, %bb.ga ], [ 0, %.critedge1533 ], [ 0, %Py_DECREF.exit1639 ], [ 0, %bb.aa ], [ 0, %.critedge ], [ 0, %bb.w ], [ 0, %bb.ai ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %.critedge1550 ], [ 0, %bb.ay ], [ 0, %bb.gm ], [ 0, %bb.ax ], [ 0, %.critedge1546 ], [ 0, %.critedge1544 ], [ 0, %bb.gk ], [ 0, %bb.ap ], [ 0, %bb.gi ], [ 0, %.lr.ph1940 ], [ 0, %bb.ao ], [ 0, %bb.aj ], [ 0, %bb.be ], [ 0, %bb.bp ], [ 0, %bb.bo ], [ 0, %bb.bn ], [ 0, %.critedge1555 ], [ 0, %bb.bj ], [ 0, %bb.br ], [ 0, %bb.ca ], [ 0, %bb.ce ], [ 0, %bb.cg ], [ 0, %bb.f ], [ 0, %.lr.ph2095 ], [ 0, %.lr.ph2085 ], [ 0, %.lr.ph2013 ], [ 0, %.lr.ph2077 ], [ 0, %.lr.ph1966 ], [ 0, %symtable_add_def_ctx.exit.thread ], [ 0, %bb.cz ], [ 0, %bb.hk ], [ 0, %.lr.ph1956 ], [ 0, %.lr.ph2072 ], [ 0, %bb.de ], [ 0, %symtable_add_def_ctx.exit1711.thread ], [ 0, %bb.fz ], [ 0, %.lr.ph2023 ], [ 0, %.lr.ph2038 ], [ 0, %.lr.ph1998 ], [ 0, %bb.hb ], [ 0, %.lr.ph2003 ], [ 0, %bb.fo ], [ 0, %bb.gx ], [ 0, %bb.ea ], [ 0, %bb.fx ], [ 0, %bb.gy ], [ 0, %bb.hy ], [ 0, %.critedge1620 ], [ 0, %Py_DECREF.exit ], [ 0, %bb.hc ], [ 0, %.critedge1617 ], [ 0, %bb.dm ], [ 0, %symtable_add_def_ctx.exit ], [ 0, %symtable_add_def_ctx.exit1711 ], [ 0, %.lr.ph2460 ], [ 0, %bb.fp ], [ 0, %.lr.ph2458 ], [ 0, %bb.fy ], [ 0, %.lr.ph1961 ], [ 0, %.lr.ph1935 ], [ 0, %bb.gd ]
  ret i32 %.161
}

end_hunk_2
