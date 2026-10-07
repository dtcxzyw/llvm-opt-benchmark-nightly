Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/ftype-ieee-11073-float?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0_@sfloat_ieee_11073_fvalue_new:bb.a
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store i16 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @sfloat_ieee_11073_val_from_literal(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i1 zeroext %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 4 uses
  switch i8 %i.a, label %bb.b [
    i8 0, label %.loopexit145
    i8 46, label %.loopexit145
  ]

bb.b:                                             ; preds = %bb.a
  %.not128 = icmp eq i8 %i.a, 45                  ; 2 uses
  br i1 %.not128, label %bb.c, label %.critedge137

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %1, i64 1          ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  switch i8 %i.c, label %bb.j [
    i8 46, label %.loopexit145
    i8 73, label %bb.d
    i8 105, label %bb.d
    i8 0, label %.loopexit145
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.4)
  %.not135 = icmp eq i32 %i.d, 0
  br i1 %.not135, label %.loopexit145.sink.split, label %.loopexit145

.critedge137:                                     ; preds = %bb.b
  %i.e = and i8 %i.a, -33
  switch i8 %i.e, label %bb.h [
    i8 82, label %bb.e
    i8 78, label %bb.f
  ]

bb.e:                                             ; preds = %.critedge137
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.5)
  %.not134 = icmp eq i32 %i.f, 0
  br i1 %.not134, label %.loopexit145.sink.split, label %.loopexit145

bb.f:                                             ; preds = %.critedge137
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.6)
  %.not132 = icmp eq i32 %i.g, 0
  br i1 %.not132, label %.loopexit145.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.7)
  %.not133 = icmp eq i32 %i.h, 0
  br i1 %.not133, label %.loopexit145.sink.split, label %.loopexit145

bb.h:                                             ; preds = %.critedge137
  %i.i = icmp eq i8 %i.a, 43
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.8)
  %.not131 = icmp eq i32 %i.j, 0
  br i1 %.not131, label %.loopexit145.sink.split, label %.loopexit145

bb.j:                                             ; preds = %bb.c, %bb.h
  %.0112 = phi ptr [ %i.b, %bb.c ], [ %1, %bb.h ]
  %.0111 = phi i32 [ 2048, %bb.c ], [ 2047, %bb.h ] ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.1113 = phi ptr [ %.0112, %bb.j ], [ %i.m, %bb.k ] ; 3 uses
  %i.k = load i8, ptr %.1113, align 1             ; 2 uses
  %i.l = icmp eq i8 %i.k, 48
  %i.m = getelementptr i8, ptr %.1113, i64 1
  br i1 %i.l, label %bb.k, label %.preheader144, !llvm.loop !9

.preheader144:                                    ; preds = %bb.k, %bb.x
  %i.n = phi i8 [ %.pr, %bb.x ], [ %i.k, %bb.k ]  ; 2 uses
  %.2114 = phi ptr [ %i.at, %bb.x ], [ %.1113, %bb.k ] ; 13 uses
  %.0105 = phi i32 [ %.3108, %bb.x ], [ 0, %bb.k ] ; 15 uses
  %.0103 = phi i8 [ %spec.select138143, %bb.x ], [ 0, %bb.k ] ; 14 uses
  %.0 = phi i8 [ %.1, %bb.x ], [ 0, %bb.k ]       ; 12 uses
  switch i8 %i.n, label %.loopexit145 [
    i8 0, label %bb.y
    i8 48, label %bb.l
    i8 49, label %bb.n
    i8 50, label %bb.o
    i8 51, label %bb.p
    i8 52, label %bb.q
    i8 53, label %bb.r
    i8 54, label %bb.s
    i8 55, label %bb.t
    i8 56, label %bb.u
    i8 57, label %bb.v
    i8 46, label %bb.w
  ]

bb.l:                                             ; preds = %.preheader144
  %i.o = mul i32 %.0105, 10                       ; 2 uses
  %i.p = icmp ugt i32 %i.o, %.0111
  br i1 %i.p, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.q = add i8 %.0103, 1                         ; 2 uses
  %i.r = icmp sgt i8 %i.q, 7
  br i1 %i.r, label %.loopexit145, label %.loopexit

bb.n:                                             ; preds = %.preheader144
  %i.s = mul i32 %.0105, 10
  %i.t = or disjoint i32 %i.s, 1
  br label %.loopexit

bb.o:                                             ; preds = %.preheader144
  %i.u = mul i32 %.0105, 10
  %i.v = add i32 %i.u, 2
  br label %.loopexit

bb.p:                                             ; preds = %.preheader144
  %i.w = mul i32 %.0105, 10
  %i.x = add i32 %i.w, 3
  br label %.loopexit

bb.q:                                             ; preds = %.preheader144
  %i.y = mul i32 %.0105, 10
  %i.z = add i32 %i.y, 4
  br label %.loopexit

bb.r:                                             ; preds = %.preheader144
  %i.aa = mul i32 %.0105, 10
  %i.ab = add i32 %i.aa, 5
  br label %.loopexit

bb.s:                                             ; preds = %.preheader144
  %i.ac = mul i32 %.0105, 10
  %i.ad = add i32 %i.ac, 6
  br label %.loopexit

bb.t:                                             ; preds = %.preheader144
  %i.ae = mul i32 %.0105, 10
  %i.af = add i32 %i.ae, 7
  br label %.loopexit

bb.u:                                             ; preds = %.preheader144
  %i.ag = mul i32 %.0105, 10
  %i.ah = add i32 %i.ag, 8
  br label %.loopexit

bb.v:                                             ; preds = %.preheader144
  %i.ai = mul i32 %.0105, 10
  %i.aj = add i32 %i.ai, 9
  br label %.loopexit

bb.w:                                             ; preds = %.preheader144
  %i.ak = trunc nuw i8 %.0 to i1
  br i1 %i.ak, label %.loopexit145, label %.preheader

.preheader:                                       ; preds = %bb.w
  %.3115148 = getelementptr i8, ptr %.2114, i64 1 ; 2 uses
  %i.al = load i8, ptr %.3115148, align 1
  %i.am = icmp eq i8 %i.al, 48
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.3115151 = phi ptr [ %.3115, %.lr.ph ], [ %.3115148, %.preheader ] ; 2 uses
  %.1104150 = phi i8 [ %.2, %.lr.ph ], [ %.0103, %.preheader ] ; 2 uses
  %.1106149 = phi i32 [ %.2107, %.lr.ph ], [ %.0105, %.preheader ] ; 2 uses
  %i.an = mul i32 %.1106149, 10                   ; 2 uses
  %.not130 = icmp ule i32 %i.an, %.0111           ; 2 uses
  %i.ao = icmp sgt i8 %.1104150, -12
  %.2107 = select i1 %.not130, i32 %i.an, i32 %.1106149 ; 2 uses
  %narrow = select i1 %.not130, i1 %i.ao, i1 false
  %spec.select = sext i1 %narrow to i8
  %.2 = add i8 %.1104150, %spec.select            ; 2 uses
  %.3115 = getelementptr i8, ptr %.3115151, i64 1 ; 2 uses
  %i.ap = load i8, ptr %.3115, align 1
  %i.aq = icmp eq i8 %i.ap, 48
  br i1 %i.aq, label %.lr.ph, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m
  %.4116 = phi ptr [ %.2114, %bb.m ], [ %.2114, %bb.l ], [ %.2114, %bb.n ], [ %.2114, %bb.o ], [ %.2114, %bb.p ], [ %.2114, %bb.q ], [ %.2114, %bb.r ], [ %.2114, %bb.s ], [ %.2114, %bb.t ], [ %.2114, %bb.u ], [ %.2114, %bb.v ], [ %.2114, %.preheader ], [ %.3115151, %.lr.ph ]
  %.3108 = phi i32 [ %.0105, %bb.m ], [ %i.o, %bb.l ], [ %i.t, %bb.n ], [ %i.v, %bb.o ], [ %i.x, %bb.p ], [ %i.z, %bb.q ], [ %i.ab, %bb.r ], [ %i.ad, %bb.s ], [ %i.af, %bb.t ], [ %i.ah, %bb.u ], [ %i.aj, %bb.v ], [ %.0105, %.preheader ], [ %.2107, %.lr.ph ] ; 2 uses
  %.3 = phi i8 [ %i.q, %bb.m ], [ %.0103, %bb.l ], [ %.0103, %bb.n ], [ %.0103, %bb.o ], [ %.0103, %bb.p ], [ %.0103, %bb.q ], [ %.0103, %bb.r ], [ %.0103, %bb.s ], [ %.0103, %bb.t ], [ %.0103, %bb.u ], [ %.0103, %bb.v ], [ %.0103, %.preheader ], [ %.2, %.lr.ph ]
  %.1 = phi i8 [ %.0, %bb.m ], [ %.0, %bb.l ], [ %.0, %bb.n ], [ %.0, %bb.o ], [ %.0, %bb.p ], [ %.0, %bb.q ], [ %.0, %bb.r ], [ %.0, %bb.s ], [ %.0, %bb.t ], [ %.0, %bb.u ], [ %.0, %bb.v ], [ 1, %.preheader ], [ 1, %.lr.ph ] ; 2 uses
  %i.ar = icmp ugt i32 %.3108, %.0111
  br i1 %i.ar, label %.loopexit145, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %.not = icmp eq i8 %i.n, 46
  %i.as = select i1 %.not, i8 0, i8 %.1
  %spec.select138143 = sub i8 %.3, %i.as
  %i.at = getelementptr i8, ptr %.4116, i64 1     ; 2 uses
  %.pr = load i8, ptr %i.at, align 1
  br label %.preheader144, !llvm.loop !11

bb.y:                                             ; preds = %.preheader144
  %i.au = sub i32 0, %.0105
  %i.av = and i32 %i.au, 4095
  %.4109 = select i1 %.not128, i32 %i.av, i32 %.0105 ; 2 uses
  %i.aw = icmp eq i32 %.4109, 0
  br i1 %i.aw, label %bb.aa, label %.lr.ph157.preheader

.lr.ph157.preheader:                              ; preds = %bb.y
  %i.ax = sext i8 %.0103 to i32
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %bb.z
  %.6156 = phi i32 [ %i.bc, %bb.z ], [ %i.ax, %.lr.ph157.preheader ] ; 3 uses
  %.5110155 = phi i32 [ %i.az, %bb.z ], [ %.4109, %.lr.ph157.preheader ] ; 4 uses
  %i.ay = urem i32 %.5110155, 10
  %i.az = udiv i32 %.5110155, 10                  ; 2 uses
  %i.ba = icmp eq i32 %i.ay, 0
  %i.bb = icmp slt i32 %.6156, 7
  %or.cond10 = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond10, label %bb.z, label %.critedge

bb.z:                                             ; preds = %.lr.ph157
  %i.bc = add nsw i32 %.6156, 1                   ; 2 uses
  %.not129 = icmp ult i32 %.5110155, 10
  br i1 %.not129, label %.critedge, label %.lr.ph157, !llvm.loop !12

.critedge:                                        ; preds = %bb.z, %.lr.ph157
  %.5110.lcssa = phi i32 [ %.5110155, %.lr.ph157 ], [ %i.az, %bb.z ]
  %.6.lcssa = phi i32 [ %.6156, %.lr.ph157 ], [ %i.bc, %bb.z ] ; 2 uses
  %i.bd = icmp slt i32 %.6.lcssa, -8
  br i1 %i.bd, label %.loopexit145, label %bb.aa

bb.aa:                                            ; preds = %bb.y, %.critedge
  %.6.lcssa174 = phi i32 [ %.6.lcssa, %.critedge ], [ 0, %bb.y ]
  %.5110.lcssa173 = phi i32 [ %.5110.lcssa, %.critedge ], [ 0, %bb.y ]
  %i.be = shl nsw i32 %.6.lcssa174, 12
  %i.bf = or i32 %i.be, %.5110.lcssa173
  %i.bg = trunc i32 %i.bf to i16
  br label %.loopexit145.sink.split

.loopexit145.sink.split:                          ; preds = %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.aa
  %.sink = phi i16 [ %i.bg, %bb.aa ], [ 2047, %bb.g ], [ 2048, %bb.f ], [ 2049, %bb.e ], [ 2050, %bb.d ], [ 2046, %bb.i ]
  %i.bh = getelementptr i8, ptr %0, i64 8
  store i16 %.sink, ptr %i.bh, align 8
  br label %.loopexit145

.loopexit145:                                     ; preds = %.loopexit, %.preheader144, %bb.w, %bb.m, %.loopexit145.sink.split, %bb.c, %bb.c, %.critedge, %bb.i, %bb.g, %bb.e, %bb.d, %bb.a, %bb.a
  %.0117 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.c ], [ false, %.critedge ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.e ], [ true, %.loopexit145.sink.split ], [ false, %bb.i ], [ false, %bb.m ], [ false, %bb.w ], [ false, %.preheader144 ], [ false, %.loopexit ]
  ret i1 %.0117
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @sfloat_ieee_11073_val_from_uinteger64(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @sfloat_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @sfloat_ieee_11073_val_from_sinteger64(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @sfloat_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @sfloat_ieee_11073_val_from_double(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, double %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @sfloat_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noalias ptr @sfloat_ieee_11073_val_to_repr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 8 uses
  %i.b = alloca [13 x i8], align 1                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i16, ptr %i.c, align 8              ; 7 uses
  %i.e = add i16 %i.d, -2046
  %or.cond = icmp ult i16 %i.e, 5
  br i1 %or.cond, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i16 %i.d to i64
  %i.g = getelementptr [8 x i8], ptr @switch.table.float_ieee_11073_val_to_repr, i64 %i.f
  %switch.gep = getelementptr i8, ptr %i.g, i64 -16368
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.h = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull %switch.load)
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.i = lshr i16 %i.d, 12
  %i.j = trunc nuw nsw i16 %i.i to i8             ; 2 uses
  %i.k = or disjoint i8 %i.j, -16
  %.not86 = icmp slt i16 %i.d, 0
  %.072 = select i1 %.not86, i8 %i.k, i8 %i.j     ; 5 uses
  %i.l = and i16 %i.d, 2047
  %i.m = and i16 %i.d, 2048
  %.not83 = icmp eq i16 %i.m, 0                   ; 2 uses
  %i.n = or i16 %i.d, -2048
  %i.o = sub nsw i16 0, %i.n
  %.071 = select i1 %.not83, i16 %i.l, i16 %i.o   ; 2 uses
  %i.p = zext nneg i16 %.071 to i32
  %i.q = icmp eq i16 %.071, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull @.str.9)
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  br i1 %.not83, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 45, ptr %i.b, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.070 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]      ; 7 uses
  %i.s = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 5, i32 noundef 2, i64 noundef 5, ptr noundef nonnull @.str.10, i32 noundef %i.p) ; 3 uses
  %i.t = sext i8 %.072 to i32                     ; 4 uses
  %i.u = icmp eq i8 %.072, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %.070 to i64               ; 2 uses
  %i.w = getelementptr i8, ptr %i.b, i64 %i.v
  %.mask85 = and i32 %i.s, 255                    ; 2 uses
  %i.x = zext nneg i32 %.mask85 to i64
  %i.y = sub nuw nsw i64 13, %i.v
  %i.z = call ptr @__memcpy_chk(ptr noundef %i.w, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.x, i64 noundef %i.y) #13, !alias.scope !28 ; 0 uses
  %i.aa = add nuw nsw i32 %.mask85, %.070
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp sgt i8 %.072, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = zext nneg i32 %.070 to i64              ; 2 uses
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.ac
  %.mask84 = and i32 %i.s, 255                    ; 2 uses
  %i.ae = zext nneg i32 %.mask84 to i64
  %i.af = sub nuw nsw i64 13, %i.ac
  %i.ag = call ptr @__memcpy_chk(ptr noundef %i.ad, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.ae, i64 noundef %i.af) #13, !alias.scope !29 ; 0 uses
  %i.ah = add nuw nsw i32 %.mask84, %.070         ; 3 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = getelementptr i8, ptr %i.b, i64 %i.ai
  %i.ak = zext nneg i8 %.072 to i64
  %i.al = sub nsw i64 13, %i.ai
  %i.am = icmp samesign ugt i32 %i.ah, 13
  %i.an = select i1 %i.am, i64 0, i64 %i.al       ; 2 uses
  %i.ao = icmp ne i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  %i.ap = call ptr @__memset_chk(ptr noundef %i.aj, i32 noundef 48, i64 noundef range(i64 -128, 129) %i.ak, i64 noundef %i.an) #13 ; 0 uses
  %i.aq = add nuw nsw i32 %i.ah, %i.t
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ar = sub nsw i32 0, %i.t                     ; 4 uses
  %i.as = and i32 %i.s, 255                       ; 7 uses
  %i.at = icmp samesign ugt i32 %i.as, %i.ar
  %i.au = zext nneg i32 %.070 to i64              ; 2 uses
  %i.av = getelementptr i8, ptr %i.b, i64 %i.au   ; 3 uses
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = add nsw i32 %i.as, %i.t                 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = sub nuw nsw i64 13, %i.au
  %i.az = call ptr @__memcpy_chk(ptr noundef %i.av, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.ax, i64 noundef %i.ay) #13, !alias.scope !30 ; 0 uses
  %i.ba = add nuw nsw i32 %i.aw, %.070            ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %i.b, i64 %i.bb
  store i8 46, ptr %i.bc, align 1
  %i.bd = add nsw i32 %i.ba, 1                    ; 3 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr i8, ptr %i.b, i64 %i.be
  %i.bg = zext nneg i32 %i.as to i64
  %i.bh = getelementptr i8, ptr %i.a, i64 %i.bg
  %i.bi = sext i8 %.072 to i64
  %i.bj = getelementptr i8, ptr %i.bh, i64 %i.bi
  %i.bk = zext nneg i32 %i.ar to i64
  %i.bl = sub nsw i64 13, %i.be
  %i.bm = icmp ugt i32 %i.bd, 13
  %i.bn = select i1 %i.bm, i64 0, i64 %i.bl       ; 2 uses
  %i.bo = icmp ne i64 %i.bn, -1
  call void @llvm.assume(i1 %i.bo)
  %i.bp = call ptr @__memcpy_chk(ptr noundef %i.bf, ptr noundef %i.bj, i64 noundef range(i64 -127, 256) %i.bk, i64 noundef %i.bn) #13, !alias.scope !31 ; 0 uses
  %i.bq = sub nsw i32 %i.bd, %i.t
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  store i8 48, ptr %i.av, align 1
  %i.br = getelementptr i8, ptr %i.av, i64 1
  store i8 46, ptr %i.br, align 1
  %i.bs = or disjoint i32 %.070, 2                ; 3 uses
  %.not = icmp eq i32 %i.as, %i.ar
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = sub nuw nsw i32 %i.ar, %i.as            ; 2 uses
  %i.bu = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bv = getelementptr i8, ptr %i.b, i64 %i.bu
  %i.bw = zext nneg i32 %i.bt to i64
  %i.bx = sub nuw nsw i64 13, %i.bu
  %i.by = call ptr @__memset_chk(ptr noundef %i.bv, i32 noundef 48, i64 noundef range(i64 -128, 129) %i.bw, i64 noundef %i.bx) #13 ; 0 uses
  %i.bz = add nuw nsw i32 %i.bt, %i.bs
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1 = phi i32 [ %i.bz, %bb.m ], [ %i.bs, %bb.l ] ; 3 uses
  %i.ca = zext nneg i32 %.1 to i64                ; 2 uses
  %i.cb = getelementptr i8, ptr %i.b, i64 %i.ca
  %i.cc = zext nneg i32 %i.as to i64
  %i.cd = sub nsw i64 13, %i.ca
  %i.ce = icmp samesign ugt i32 %.1, 13
  %i.cf = select i1 %i.ce, i64 0, i64 %i.cd       ; 2 uses
  %i.cg = icmp ne i64 %i.cf, -1
  call void @llvm.assume(i1 %i.cg)
  %i.ch = call ptr @__memcpy_chk(ptr noundef %i.cb, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.cc, i64 noundef %i.cf) #13, !alias.scope !32 ; 0 uses
  %i.ci = add nuw nsw i32 %.1, %i.as
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.k, %bb.g
  %.2 = phi i32 [ %i.aa, %bb.g ], [ %i.aq, %bb.i ], [ %i.bq, %bb.k ], [ %i.ci, %bb.n ]
  %i.cj = zext i32 %.2 to i64
  %i.ck = getelementptr i8, ptr %i.b, i64 %i.cj
  store i8 0, ptr %i.ck, align 1
  %i.cl = call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull %i.b)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %.073 = phi ptr [ %i.r, %bb.c ], [ %i.cl, %bb.o ]
end_hunk_0
begin_hunk_1_@float_ieee_11073_fvalue_new:bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @float_ieee_11073_val_from_literal(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i1 zeroext %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 4 uses
  switch i8 %i.a, label %bb.b [
    i8 0, label %.loopexit145
    i8 46, label %.loopexit145
  ]

bb.b:                                             ; preds = %bb.a
  %.not128 = icmp eq i8 %i.a, 45                  ; 2 uses
  br i1 %.not128, label %bb.c, label %.critedge137

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %1, i64 1          ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  switch i8 %i.c, label %bb.j [
    i8 46, label %.loopexit145
    i8 73, label %bb.d
    i8 105, label %bb.d
    i8 0, label %.loopexit145
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.4)
  %.not135 = icmp eq i32 %i.d, 0
  br i1 %.not135, label %.loopexit145.sink.split, label %.loopexit145

.critedge137:                                     ; preds = %bb.b
  %i.e = and i8 %i.a, -33
  switch i8 %i.e, label %bb.h [
    i8 82, label %bb.e
    i8 78, label %bb.f
  ]

bb.e:                                             ; preds = %.critedge137
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.5)
  %.not134 = icmp eq i32 %i.f, 0
  br i1 %.not134, label %.loopexit145.sink.split, label %.loopexit145

bb.f:                                             ; preds = %.critedge137
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.6)
  %.not132 = icmp eq i32 %i.g, 0
  br i1 %.not132, label %.loopexit145.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.7)
  %.not133 = icmp eq i32 %i.h, 0
  br i1 %.not133, label %.loopexit145.sink.split, label %.loopexit145

bb.h:                                             ; preds = %.critedge137
  %i.i = icmp eq i8 %i.a, 43
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.8)
  %.not131 = icmp eq i32 %i.j, 0
  br i1 %.not131, label %.loopexit145.sink.split, label %.loopexit145

bb.j:                                             ; preds = %bb.c, %bb.h
  %.0112 = phi ptr [ %i.b, %bb.c ], [ %1, %bb.h ]
  %.0111 = phi i32 [ 8388608, %bb.c ], [ 8388607, %bb.h ] ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.1113 = phi ptr [ %.0112, %bb.j ], [ %i.m, %bb.k ] ; 3 uses
  %i.k = load i8, ptr %.1113, align 1             ; 2 uses
  %i.l = icmp eq i8 %i.k, 48
  %i.m = getelementptr i8, ptr %.1113, i64 1
  br i1 %i.l, label %bb.k, label %.preheader144, !llvm.loop !36

.preheader144:                                    ; preds = %bb.k, %bb.x
  %i.n = phi i8 [ %.pr, %bb.x ], [ %i.k, %bb.k ]  ; 2 uses
  %.2114 = phi ptr [ %i.au, %bb.x ], [ %.1113, %bb.k ] ; 13 uses
  %.0105 = phi i32 [ %.3108, %bb.x ], [ 0, %bb.k ] ; 15 uses
  %.0103 = phi i16 [ %spec.select138, %bb.x ], [ 0, %bb.k ] ; 14 uses
  %.0 = phi i8 [ %.1, %bb.x ], [ 0, %bb.k ]       ; 12 uses
  switch i8 %i.n, label %.loopexit145 [
    i8 0, label %bb.y
    i8 48, label %bb.l
    i8 49, label %bb.n
    i8 50, label %bb.o
    i8 51, label %bb.p
    i8 52, label %bb.q
    i8 53, label %bb.r
    i8 54, label %bb.s
    i8 55, label %bb.t
    i8 56, label %bb.u
    i8 57, label %bb.v
    i8 46, label %bb.w
  ]

bb.l:                                             ; preds = %.preheader144
  %i.o = mul i32 %.0105, 10                       ; 2 uses
  %i.p = icmp ugt i32 %i.o, %.0111
  br i1 %i.p, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.q = add i16 %.0103, 1                        ; 2 uses
  %i.r = icmp slt i16 %i.q, 128
  br i1 %i.r, label %.loopexit145, label %.loopexit

bb.n:                                             ; preds = %.preheader144
  %i.s = mul i32 %.0105, 10
  %i.t = or disjoint i32 %i.s, 1
  br label %.loopexit

bb.o:                                             ; preds = %.preheader144
  %i.u = mul i32 %.0105, 10
  %i.v = add i32 %i.u, 2
  br label %.loopexit

bb.p:                                             ; preds = %.preheader144
  %i.w = mul i32 %.0105, 10
  %i.x = add i32 %i.w, 3
  br label %.loopexit

bb.q:                                             ; preds = %.preheader144
  %i.y = mul i32 %.0105, 10
  %i.z = add i32 %i.y, 4
  br label %.loopexit

bb.r:                                             ; preds = %.preheader144
  %i.aa = mul i32 %.0105, 10
  %i.ab = add i32 %i.aa, 5
  br label %.loopexit

bb.s:                                             ; preds = %.preheader144
  %i.ac = mul i32 %.0105, 10
  %i.ad = add i32 %i.ac, 6
  br label %.loopexit

bb.t:                                             ; preds = %.preheader144
  %i.ae = mul i32 %.0105, 10
  %i.af = add i32 %i.ae, 7
  br label %.loopexit

bb.u:                                             ; preds = %.preheader144
  %i.ag = mul i32 %.0105, 10
  %i.ah = add i32 %i.ag, 8
  br label %.loopexit

bb.v:                                             ; preds = %.preheader144
  %i.ai = mul i32 %.0105, 10
  %i.aj = add i32 %i.ai, 9
  br label %.loopexit

bb.w:                                             ; preds = %.preheader144
  %i.ak = trunc nuw i8 %.0 to i1
  br i1 %i.ak, label %.loopexit145, label %.preheader

.preheader:                                       ; preds = %bb.w
  %.3115148 = getelementptr i8, ptr %.2114, i64 1 ; 2 uses
  %i.al = load i8, ptr %.3115148, align 1
  %i.am = icmp eq i8 %i.al, 48
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.3115151 = phi ptr [ %.3115, %.lr.ph ], [ %.3115148, %.preheader ] ; 2 uses
  %.1104150 = phi i16 [ %.2, %.lr.ph ], [ %.0103, %.preheader ] ; 2 uses
  %.1106149 = phi i32 [ %.2107, %.lr.ph ], [ %.0105, %.preheader ] ; 2 uses
  %i.an = mul i32 %.1106149, 10                   ; 2 uses
  %.not130 = icmp ule i32 %i.an, %.0111           ; 2 uses
  %i.ao = icmp sgt i16 %.1104150, -135
  %.2107 = select i1 %.not130, i32 %i.an, i32 %.1106149 ; 2 uses
  %narrow = select i1 %.not130, i1 %i.ao, i1 false
  %spec.select = sext i1 %narrow to i16
  %.2 = add i16 %.1104150, %spec.select           ; 2 uses
  %.3115 = getelementptr i8, ptr %.3115151, i64 1 ; 2 uses
  %i.ap = load i8, ptr %.3115, align 1
  %i.aq = icmp eq i8 %i.ap, 48
  br i1 %i.aq, label %.lr.ph, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m
  %.4116 = phi ptr [ %.2114, %bb.m ], [ %.2114, %bb.l ], [ %.2114, %bb.n ], [ %.2114, %bb.o ], [ %.2114, %bb.p ], [ %.2114, %bb.q ], [ %.2114, %bb.r ], [ %.2114, %bb.s ], [ %.2114, %bb.t ], [ %.2114, %bb.u ], [ %.2114, %bb.v ], [ %.2114, %.preheader ], [ %.3115151, %.lr.ph ]
  %.3108 = phi i32 [ %.0105, %bb.m ], [ %i.o, %bb.l ], [ %i.t, %bb.n ], [ %i.v, %bb.o ], [ %i.x, %bb.p ], [ %i.z, %bb.q ], [ %i.ab, %bb.r ], [ %i.ad, %bb.s ], [ %i.af, %bb.t ], [ %i.ah, %bb.u ], [ %i.aj, %bb.v ], [ %.0105, %.preheader ], [ %.2107, %.lr.ph ] ; 2 uses
  %.3 = phi i16 [ %i.q, %bb.m ], [ %.0103, %bb.l ], [ %.0103, %bb.n ], [ %.0103, %bb.o ], [ %.0103, %bb.p ], [ %.0103, %bb.q ], [ %.0103, %bb.r ], [ %.0103, %bb.s ], [ %.0103, %bb.t ], [ %.0103, %bb.u ], [ %.0103, %bb.v ], [ %.0103, %.preheader ], [ %.2, %.lr.ph ]
  %.1 = phi i8 [ %.0, %bb.m ], [ %.0, %bb.l ], [ %.0, %bb.n ], [ %.0, %bb.o ], [ %.0, %bb.p ], [ %.0, %bb.q ], [ %.0, %bb.r ], [ %.0, %bb.s ], [ %.0, %bb.t ], [ %.0, %bb.u ], [ %.0, %bb.v ], [ 1, %.preheader ], [ 1, %.lr.ph ] ; 2 uses
  %i.ar = icmp ugt i32 %.3108, %.0111
  br i1 %i.ar, label %.loopexit145, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %.not = icmp eq i8 %i.n, 46
  %i.as = select i1 %.not, i8 0, i8 %.1
  %i.at = zext nneg i8 %i.as to i16
  %spec.select138 = sub i16 %.3, %i.at
  %i.au = getelementptr i8, ptr %.4116, i64 1     ; 2 uses
  %.pr = load i8, ptr %i.au, align 1
  br label %.preheader144, !llvm.loop !38

bb.y:                                             ; preds = %.preheader144
  %i.av = sub i32 0, %.0105
  %i.aw = and i32 %i.av, 16777215
  %.4109 = select i1 %.not128, i32 %i.aw, i32 %.0105 ; 2 uses
  %i.ax = icmp eq i32 %.4109, 0
  br i1 %i.ax, label %bb.aa, label %.lr.ph157.preheader

.lr.ph157.preheader:                              ; preds = %bb.y
  %i.ay = sext i16 %.0103 to i32
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %bb.z
  %.6156 = phi i32 [ %i.bd, %bb.z ], [ %i.ay, %.lr.ph157.preheader ] ; 3 uses
  %.5110155 = phi i32 [ %i.ba, %bb.z ], [ %.4109, %.lr.ph157.preheader ] ; 4 uses
  %i.az = urem i32 %.5110155, 10
  %i.ba = udiv i32 %.5110155, 10                  ; 2 uses
  %i.bb = icmp eq i32 %i.az, 0
  %i.bc = icmp slt i32 %.6156, 127
  %or.cond10 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond10, label %bb.z, label %.critedge

bb.z:                                             ; preds = %.lr.ph157
  %i.bd = add nsw i32 %.6156, 1                   ; 2 uses
  %.not129 = icmp ult i32 %.5110155, 10
  br i1 %.not129, label %.critedge, label %.lr.ph157, !llvm.loop !39

.critedge:                                        ; preds = %bb.z, %.lr.ph157
  %.5110.lcssa = phi i32 [ %.5110155, %.lr.ph157 ], [ %i.ba, %bb.z ]
  %.6.lcssa = phi i32 [ %.6156, %.lr.ph157 ], [ %i.bd, %bb.z ] ; 2 uses
  %i.be = icmp slt i32 %.6.lcssa, -128
  br i1 %i.be, label %.loopexit145, label %bb.aa

bb.aa:                                            ; preds = %bb.y, %.critedge
  %.6.lcssa174 = phi i32 [ %.6.lcssa, %.critedge ], [ 0, %bb.y ]
  %.5110.lcssa173 = phi i32 [ %.5110.lcssa, %.critedge ], [ 0, %bb.y ]
  %i.bf = shl i32 %.6.lcssa174, 24
  %i.bg = or i32 %i.bf, %.5110.lcssa173
  br label %.loopexit145.sink.split

.loopexit145.sink.split:                          ; preds = %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.aa
  %.sink = phi i32 [ %i.bg, %bb.aa ], [ 8388607, %bb.g ], [ 8388608, %bb.f ], [ 8388609, %bb.e ], [ 8388610, %bb.d ], [ 8388606, %bb.i ]
  %i.bh = getelementptr i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.bh, align 8
  br label %.loopexit145

.loopexit145:                                     ; preds = %.loopexit, %.preheader144, %bb.w, %bb.m, %.loopexit145.sink.split, %bb.c, %bb.c, %.critedge, %bb.i, %bb.g, %bb.e, %bb.d, %bb.a, %bb.a
  %.0117 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.c ], [ false, %.critedge ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.e ], [ true, %.loopexit145.sink.split ], [ false, %bb.i ], [ false, %bb.m ], [ false, %bb.w ], [ false, %.preheader144 ], [ false, %.loopexit ]
  ret i1 %.0117
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @float_ieee_11073_val_from_uinteger64(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @float_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @float_ieee_11073_val_from_sinteger64(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @float_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @float_ieee_11073_val_from_double(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, double %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @float_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noalias ptr @float_ieee_11073_val_to_repr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 8 uses
  %i.b = alloca [136 x i8], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8              ; 7 uses
  %i.e = add i32 %i.d, -8388606
  %or.cond = icmp ult i32 %i.e, 5
  br i1 %or.cond, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr [8 x i8], ptr @switch.table.float_ieee_11073_val_to_repr, i64 %i.f
  %switch.gep = getelementptr i8, ptr %i.g, i64 -67108848
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.h = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull %switch.load)
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.i = lshr i32 %i.d, 24
  %i.j = zext nneg i32 %i.i to i64
  %i.k = and i32 %i.d, 8388607
  %i.l = and i32 %i.d, 8388608
  %.not = icmp eq i32 %i.l, 0                     ; 2 uses
  %i.m = or i32 %i.d, -8388608
  %i.n = sub nsw i32 0, %i.m
  %.069 = select i1 %.not, i32 %i.k, i32 %i.n     ; 2 uses
  %i.o = icmp eq i32 %.069, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull @.str.9)
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 45, ptr %i.b, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.068 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]      ; 7 uses
  %i.q = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 8, i32 noundef 2, i64 noundef 8, ptr noundef nonnull @.str.10, i32 noundef %.069) ; 3 uses
  %i.r = ashr i32 %i.d, 24                        ; 7 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = zext nneg i32 %.068 to i64               ; 2 uses
  %i.u = getelementptr i8, ptr %i.b, i64 %i.t
  %.mask80 = and i32 %i.q, 255                    ; 2 uses
  %i.v = zext nneg i32 %.mask80 to i64
  %i.w = sub nuw nsw i64 136, %i.t
  %i.x = call ptr @__memcpy_chk(ptr noundef %i.u, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.v, i64 noundef %i.w) #13, !alias.scope !55 ; 0 uses
  %i.y = add nuw nsw i32 %.mask80, %.068
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.z = icmp sgt i32 %i.r, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = zext nneg i32 %.068 to i64              ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %i.aa
  %.mask79 = and i32 %i.q, 255                    ; 2 uses
  %i.ac = zext nneg i32 %.mask79 to i64
  %i.ad = sub nuw nsw i64 136, %i.aa
  %i.ae = call ptr @__memcpy_chk(ptr noundef %i.ab, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.ac, i64 noundef %i.ad) #13, !alias.scope !56 ; 0 uses
  %i.af = add nuw nsw i32 %.mask79, %.068         ; 3 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr i8, ptr %i.b, i64 %i.ag
  %sext = shl nuw i64 %i.j, 56
  %i.ai = ashr exact i64 %sext, 56
  %i.aj = sub nsw i64 136, %i.ag
  %i.ak = icmp samesign ugt i32 %i.af, 136
  %i.al = select i1 %i.ak, i64 0, i64 %i.aj       ; 2 uses
  %i.am = icmp ne i64 %i.al, -1
  call void @llvm.assume(i1 %i.am)
  %i.an = call ptr @__memset_chk(ptr noundef %i.ah, i32 noundef 48, i64 noundef range(i64 -128, 129) %i.ai, i64 noundef %i.al) #13 ; 0 uses
  %i.ao = add nuw nsw i32 %i.af, %i.r
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ap = sub nsw i32 0, %i.r                     ; 4 uses
  %i.aq = and i32 %i.q, 255                       ; 7 uses
  %i.ar = icmp samesign ugt i32 %i.aq, %i.ap
  %i.as = zext nneg i32 %.068 to i64              ; 2 uses
  %i.at = getelementptr i8, ptr %i.b, i64 %i.as   ; 3 uses
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = add nsw i32 %i.aq, %i.r                 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = sub nuw nsw i64 136, %i.as
  %i.ax = call ptr @__memcpy_chk(ptr noundef %i.at, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.av, i64 noundef %i.aw) #13, !alias.scope !57 ; 0 uses
  %i.ay = add nuw nsw i32 %i.au, %.068            ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %i.b, i64 %i.az
  store i8 46, ptr %i.ba, align 1
  %i.bb = add nsw i32 %i.ay, 1                    ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr i8, ptr %i.b, i64 %i.bc
  %i.be = zext nneg i32 %i.aq to i64
  %i.bf = getelementptr i8, ptr %i.a, i64 %i.be
  %i.bg = sext i32 %i.r to i64
  %i.bh = getelementptr i8, ptr %i.bf, i64 %i.bg
  %i.bi = zext nneg i32 %i.ap to i64
  %i.bj = sub nsw i64 136, %i.bc
  %i.bk = icmp ugt i32 %i.bb, 136
  %i.bl = select i1 %i.bk, i64 0, i64 %i.bj       ; 2 uses
  %i.bm = icmp ne i64 %i.bl, -1
  call void @llvm.assume(i1 %i.bm)
  %i.bn = call ptr @__memcpy_chk(ptr noundef %i.bd, ptr noundef %i.bh, i64 noundef range(i64 -127, 256) %i.bi, i64 noundef %i.bl) #13, !alias.scope !58 ; 0 uses
  %i.bo = sub nsw i32 %i.bb, %i.r
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  store i8 48, ptr %i.at, align 1
  %i.bp = getelementptr i8, ptr %i.at, i64 1
  store i8 46, ptr %i.bp, align 1
  %i.bq = or disjoint i32 %.068, 2                ; 3 uses
  %.not87 = icmp eq i32 %i.aq, %i.ap
  br i1 %.not87, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = sub nuw nsw i32 %i.ap, %i.aq            ; 2 uses
  %i.bs = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bt = getelementptr i8, ptr %i.b, i64 %i.bs
  %i.bu = zext nneg i32 %i.br to i64
  %i.bv = sub nuw nsw i64 136, %i.bs
  %i.bw = call ptr @__memset_chk(ptr noundef %i.bt, i32 noundef 48, i64 noundef range(i64 -128, 129) %i.bu, i64 noundef %i.bv) #13 ; 0 uses
  %i.bx = add nuw nsw i32 %i.br, %i.bq
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1 = phi i32 [ %i.bx, %bb.m ], [ %i.bq, %bb.l ] ; 2 uses
  %i.by = zext nneg i32 %.1 to i64                ; 2 uses
  %i.bz = getelementptr i8, ptr %i.b, i64 %i.by
  %i.ca = zext nneg i32 %i.aq to i64
  %i.cb = sub nuw nsw i64 136, %i.by
  %i.cc = call ptr @__memcpy_chk(ptr noundef %i.bz, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.ca, i64 noundef %i.cb) #13, !alias.scope !59 ; 0 uses
  %i.cd = add nuw nsw i32 %.1, %i.aq
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.k, %bb.g
  %.2 = phi i32 [ %i.y, %bb.g ], [ %i.ao, %bb.i ], [ %i.bo, %bb.k ], [ %i.cd, %bb.n ]
  %i.ce = zext i32 %.2 to i64
  %i.cf = getelementptr i8, ptr %i.b, i64 %i.ce
  store i8 0, ptr %i.cf, align 1
  %i.cg = call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull %i.b)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %.070 = phi ptr [ %i.p, %bb.c ], [ %i.cg, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %switch.lookup
  %.171 = phi ptr [ %i.h, %switch.lookup ], [ %.070, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.171
}
end_hunk_1
