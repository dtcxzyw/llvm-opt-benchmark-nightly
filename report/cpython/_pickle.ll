inline.NumInlined: 778
inline.NumDeleted: 166
begin_hunk_0_@save:bb.a
  %.024.i.i = phi i64 [ %i.aai, %.preheader.i.i187 ], [ %i.zu, %bb.fm ] ; 2 uses
  %.023.i.i = phi i64 [ %i.aac, %.preheader.i.i187 ], [ %i.zv, %bb.fm ]
  %i.aaa = mul i64 %.023.i.i, 5
  %i.aab = add i64 %.024.i.i, %i.aaa
  %i.aac = add i64 %i.aab, 1                      ; 2 uses
  %i.aad = and i64 %i.aac, %.val148               ; 2 uses
  %i.aae = getelementptr [16 x i8], ptr %.val149, i64 %i.aad
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !97 ; 3 uses
end_hunk_0
begin_hunk_1_@PyMemoTable_Get:bb.a
  %.024.i = phi i64 [ %i.p, %.preheader.i ], [ %i.b, %bb.a ] ; 2 uses
  %.023.i = phi i64 [ %i.j, %.preheader.i ], [ %i.c, %bb.a ]
  %i.h = mul i64 %.023.i, 5
  %i.i = add i64 %.024.i, %i.h
  %i.j = add i64 %i.i, 1                          ; 2 uses
  %i.k = and i64 %i.j, %.0.val                    ; 2 uses
  %i.l = getelementptr [16 x i8], ptr %.24.val, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97   ; 3 uses
end_hunk_1
begin_hunk_2_@memo_get:bb.a
  %.024.i.i = phi i64 [ %i.t, %.preheader.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %.023.i.i = phi i64 [ %i.n, %.preheader.i.i ], [ %i.g, %bb.a ]
  %i.l = mul i64 %.023.i.i, 5
  %i.m = add i64 %.024.i.i, %i.l
  %i.n = add i64 %i.m, 1                          ; 2 uses
  %i.o = and i64 %i.n, %.val                      ; 2 uses
  %i.p = getelementptr [16 x i8], ptr %.val19, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !97   ; 3 uses
end_hunk_2
begin_hunk_3_@save_frozenset:bb.a
  %.024.i.i = phi i64 [ %i.cm, %.preheader.i.i ], [ %i.by, %Py_DECREF.exit ] ; 2 uses
  %.023.i.i = phi i64 [ %i.cg, %.preheader.i.i ], [ %i.bz, %Py_DECREF.exit ]
  %i.ce = mul i64 %.023.i.i, 5
  %i.cf = add i64 %.024.i.i, %i.ce
  %i.cg = add i64 %i.cf, 1                        ; 2 uses
  %i.ch = and i64 %i.cg, %.val                    ; 2 uses
  %i.ci = getelementptr [16 x i8], ptr %.val66, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !97 ; 3 uses
end_hunk_3
begin_hunk_4_@save_tuple:bb.a
  %.024.i.i = phi i64 [ %i.cu, %.preheader.i.i ], [ %i.cg, %store_tuple_elements.exit ] ; 2 uses
  %.023.i.i = phi i64 [ %i.co, %.preheader.i.i ], [ %i.ch, %store_tuple_elements.exit ]
  %i.cm = mul i64 %.023.i.i, 5
  %i.cn = add i64 %.024.i.i, %i.cm
  %i.co = add i64 %i.cn, 1                        ; 2 uses
  %i.cp = and i64 %i.co, %.val56                  ; 2 uses
  %i.cq = getelementptr [16 x i8], ptr %.val57, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !97 ; 3 uses
end_hunk_4
begin_hunk_5_@save_tuple:bb.a
  %.024.i.i108 = phi i64 [ %i.hq, %.preheader.i.i107 ], [ %i.hc, %store_tuple_elements.exit105 ] ; 2 uses
  %.023.i.i109 = phi i64 [ %i.hk, %.preheader.i.i107 ], [ %i.hd, %store_tuple_elements.exit105 ]
  %i.hi = mul i64 %.023.i.i109, 5
  %i.hj = add i64 %.024.i.i108, %i.hi
  %i.hk = add i64 %i.hj, 1                        ; 2 uses
  %i.hl = and i64 %i.hk, %.val                    ; 2 uses
  %i.hm = getelementptr [16 x i8], ptr %.val55, i64 %i.hl
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !97 ; 3 uses
end_hunk_5
begin_hunk_6_@PyMemoTable_Set:bb.a
  %.024.i = phi i64 [ %i.q, %.preheader.i ], [ %i.c, %bb.a ] ; 2 uses
  %.023.i = phi i64 [ %i.k, %.preheader.i ], [ %i.d, %bb.a ]
  %i.i = mul i64 %.023.i, 5
  %i.j = add i64 %.024.i, %i.i
  %i.k = add i64 %i.j, 1                          ; 2 uses
  %i.l = and i64 %i.k, %.val
  %i.m = getelementptr [16 x i8], ptr %.val18, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97   ; 3 uses
end_hunk_6
begin_hunk_7_@PyMemoTable_Set:bb.a
  %.024.i.i = phi i64 [ %i.bn, %.preheader.i.i ], [ %i.az, %bb.k ] ; 2 uses
  %.023.i.i = phi i64 [ %i.bh, %.preheader.i.i ], [ %i.ba, %bb.k ]
  %i.bf = mul i64 %.023.i.i, 5
  %i.bg = add i64 %.024.i.i, %i.bf
  %i.bh = add i64 %i.bg, 1                        ; 2 uses
  %i.bi = and i64 %i.bh, %.val.i
  %i.bj = getelementptr [16 x i8], ptr %.val35.i, i64 %i.bi ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !97 ; 2 uses
end_hunk_7
begin_hunk_8_@load:bb.a

vector.memcheck1982:                              ; preds = %.lr.ph.i.i360
  %i.afm = ptrtoaddr ptr %i.afk to i64
  %i.afn = shl i64 %i.aef, 3
  %i.afo = add i64 %i.afn, %i.afm
  %i.afp = sub i64 %i.afg, %i.afo
  %diff.check1983 = icmp ugt i64 %i.afp, -33
  br i1 %diff.check1983, label %scalar.ph1984.preheader, label %vector.ph1986

vector.ph1986:                                    ; preds = %vector.memcheck1982
end_hunk_8
begin_hunk_9_@load:bb.a

vector.memcheck1999:                              ; preds = %.lr.ph.i.i385
  %i.ajt = ptrtoaddr ptr %i.ajr to i64
  %i.aju = shl i64 %i.aiy, 3
  %i.ajv = add i64 %i.aju, %i.ajt
  %i.ajw = sub i64 %i.ajn, %i.ajv
  %diff.check2000 = icmp ugt i64 %i.ajw, -33
  br i1 %diff.check2000, label %scalar.ph2001.preheader, label %vector.ph2003

vector.ph2003:                                    ; preds = %vector.memcheck1999
end_hunk_9
begin_hunk_10_@load:bb.a

vector.memcheck2016:                              ; preds = %.lr.ph.i.i406
  %i.anl = ptrtoaddr ptr %i.anj to i64
  %i.anm = shl i64 %i.amm, 3
  %i.ann = add i64 %i.anm, %i.anl
  %i.ano = sub i64 %i.anf, %i.ann
  %2 = add i64 %i.ano, 24
  %diff.check2017 = icmp ult i64 %2, 32
  br i1 %diff.check2017, label %scalar.ph2018.preheader, label %vector.ph2020

vector.ph2020:                                    ; preds = %vector.memcheck2016
end_hunk_10
begin_hunk_11_@load:bb.a

vector.memcheck2033:                              ; preds = %.lr.ph.i.i430
  %i.ary = ptrtoaddr ptr %i.arw to i64
  %i.arz = shl i64 %i.aqb, 3
  %i.asa = add i64 %i.arz, %i.ary
  %i.asb = sub i64 %i.ars, %i.asa
  %diff.check2034 = icmp ugt i64 %i.asb, -33
  br i1 %diff.check2034, label %scalar.ph2035.preheader, label %vector.ph2037

vector.ph2037:                                    ; preds = %vector.memcheck2033
end_hunk_11
begin_hunk_12_@_pickle_Pickler___sizeof__:bb.a
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !78
  %i.g = shl i64 %i.f, 4
  %2 = add i64 %.val20.i, %i.g
  %i.h = add i64 %2, 32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_12
begin_hunk_13_@_pickle_Unpickler___sizeof__:bb.a

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #16
  %i.r = add i64 %.1.i, %i.q
  %i.s = add i64 %i.r, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
end_hunk_13
begin_hunk_14_@_pickle_Unpickler___sizeof__:bb.a

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #16
  %i.w = add i64 %.2.i, %i.v
  %i.x = add i64 %i.w, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
end_hunk_14
begin_hunk_15_@_pickle_Unpickler___sizeof__:bb.a

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #16
  %i.ab = add i64 %.3.i, %i.aa
  %i.ac = add i64 %i.ab, 1
  br label %_pickle_Unpickler___sizeof___impl.exit

_pickle_Unpickler___sizeof___impl.exit:           ; preds = %bb.i, %bb.j
end_hunk_15
