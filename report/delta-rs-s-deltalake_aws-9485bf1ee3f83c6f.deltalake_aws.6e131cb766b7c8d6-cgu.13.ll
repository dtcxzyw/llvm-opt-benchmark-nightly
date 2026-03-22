begin_hunk_0
    i8 20, label %3350
  ]

default.unreachable1278:                          ; preds = %3350, %3156, %2985, %2810, %2567, %2334, %2090, %1917, %1900, %1714, %1518, %1369, %1204, %1046, %1035, %714, %522, %3
  unreachable

285:                                              ; preds = %3
end_hunk_0
begin_hunk_1
  %1908 = getelementptr inbounds nuw i8, ptr %1, i64 2016 ; [#uses=3 type=ptr]
  call void @llvm.experimental.noalias.scope.decl(metadata !2895)
  %.not.i462 = icmp eq i32 %.sroa.5894.0.copyload, 1000000002 ; [#uses=1 type=i1]
  br i1 %.not.i462, label %1913, label %1909

1909:                                             ; preds = %1905
  %1910 = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; [#uses=1 type=ptr]
end_hunk_1
begin_hunk_2
  %.pre1162 = load i32, ptr %.phi.trans.insert1161, align 8, !range !2900, !alias.scope !2901, !noalias !2904 ; [#uses=1 type=i32]
  %.phi.trans.insert1163 = getelementptr inbounds nuw i8, ptr %1, i64 2056 ; [#uses=1 type=ptr]
  %.pre1164 = load i32, ptr %.phi.trans.insert1163, align 8, !range !2900, !alias.scope !2901, !noalias !2904 ; [#uses=1 type=i32]
  %1911 = freeze i32 %.pre1162                    ; [#uses=1 type=i32]
  %1912 = freeze i32 %.pre1164                    ; [#uses=1 type=i32]
  br label %1917

1913:                                             ; preds = %1905
  %1914 = getelementptr inbounds nuw i8, ptr %1, i64 2024 ; [#uses=1 type=ptr]
  store i32 1000000001, ptr %1914, align 8, !alias.scope !2906, !noalias !2895
  %1915 = getelementptr inbounds nuw i8, ptr %1, i64 2040 ; [#uses=1 type=ptr]
  store i32 1000000001, ptr %1915, align 8, !alias.scope !2906, !noalias !2895
  %1916 = getelementptr inbounds nuw i8, ptr %1, i64 2056 ; [#uses=1 type=ptr]
  store i32 1000000001, ptr %1916, align 8, !alias.scope !2906, !noalias !2895
  br label %1917

1917:                                             ; preds = %1909, %1913
  %.fr1307 = phi i32 [ 1000000001, %1913 ], [ %1912, %1909 ] ; [#uses=2 type=i32]
  %.fr = phi i32 [ 1000000001, %1913 ], [ %1911, %1909 ] ; [#uses=2 type=i32]
  %1918 = phi i32 [ 1000000001, %1913 ], [ %.pre1160, %1909 ] ; [#uses=2 type=i32]
  %.sroa.5894.0.copyload.sink = phi i32 [ 1000000001, %1913 ], [ %.sroa.5894.0.copyload, %1909 ] ; [#uses=3 type=i32]
  %1919 = getelementptr inbounds nuw i8, ptr %1, i64 2072 ; [#uses=2 type=ptr]
  store i32 %.sroa.5894.0.copyload.sink, ptr %1919, align 8, !alias.scope !2898
  call void @llvm.experimental.noalias.scope.decl(metadata !2901)
end_hunk_2
begin_hunk_3
  store i32 %.sroa.4.0.i, ptr %1920, align 8, !alias.scope !2901, !noalias !2904
  %1922 = getelementptr inbounds nuw i8, ptr %1, i64 2032 ; [#uses=2 type=ptr]
  %1923 = getelementptr inbounds nuw i8, ptr %1, i64 2040 ; [#uses=1 type=ptr]
  %1924 = icmp eq i32 %.fr, 1000000001            ; [#uses=1 type=i1]
  %1925 = getelementptr inbounds nuw i8, ptr %1, i64 1968 ; [#uses=1 type=ptr]
  %.val16.i = load i64, ptr %1925, align 8, !alias.scope !2904, !noalias !2901 ; [#uses=1 type=i64]
  %.val17.i = load i64, ptr %1922, align 8, !alias.scope !2901, !noalias !2904 ; [#uses=1 type=i64]
  %spec.select = select i1 %1924, i64 %.val16.i, i64 %.val17.i ; [#uses=1 type=i64]
  store i64 %spec.select, ptr %1922, align 8, !alias.scope !2901, !noalias !2904
  store i32 %.fr, ptr %1923, align 8, !alias.scope !2901, !noalias !2904
  %1926 = getelementptr inbounds nuw i8, ptr %1, i64 2048 ; [#uses=2 type=ptr]
  %1927 = getelementptr inbounds nuw i8, ptr %1, i64 2056 ; [#uses=1 type=ptr]
  %1928 = icmp eq i32 %.fr1307, 1000000001        ; [#uses=1 type=i1]
  %1929 = getelementptr inbounds nuw i8, ptr %1, i64 1984 ; [#uses=1 type=ptr]
  %.val18.i = load i64, ptr %1929, align 8, !alias.scope !2904, !noalias !2901 ; [#uses=1 type=i64]
  %.val19.i = load i64, ptr %1926, align 8, !alias.scope !2901, !noalias !2904 ; [#uses=1 type=i64]
  %1930 = select i1 %1928, i64 %.val18.i, i64 %.val19.i ; [#uses=1 type=i64]
  store i64 %1930, ptr %1926, align 8, !alias.scope !2901, !noalias !2904
  store i32 %.fr1307, ptr %1927, align 8, !alias.scope !2901, !noalias !2904
  %1931 = getelementptr inbounds nuw i8, ptr %1, i64 2064 ; [#uses=2 type=ptr]
  %1932 = icmp eq i32 %.sroa.5894.0.copyload.sink, 1000000001 ; [#uses=1 type=i1]
  %1933 = getelementptr inbounds nuw i8, ptr %1, i64 2000 ; [#uses=1 type=ptr]
end_hunk_3
begin_hunk_4
    i64 2, label %1940
  ]

1936:                                             ; preds = %1917
  call void @llvm.lifetime.start.p0(ptr nonnull %258)
  invoke void @_RNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider11credentialsNtB2_23DefaultCredentialsChain7builder(ptr noalias noundef nonnull sret([1952 x i8]) align 8 captures(none) dereferenceable(1952) %258)
          to label %1948 unwind label %1946

1937:                                             ; preds = %1917
  %1938 = getelementptr inbounds nuw i8, ptr %1, i64 2586 ; [#uses=1 type=ptr]
  store i8 1, ptr %1938, align 2
  %1939 = getelementptr inbounds nuw i8, ptr %1, i64 2080 ; [#uses=1 type=ptr]
  store ptr null, ptr %1939, align 8
  br label %1985

1940:                                             ; preds = %1917
  %1941 = getelementptr inbounds nuw i8, ptr %1, i64 2580 ; [#uses=1 type=ptr]
  store i8 0, ptr %1941, align 4
  %1942 = getelementptr inbounds nuw i8, ptr %1, i64 664 ; [#uses=1 type=ptr]
end_hunk_4
